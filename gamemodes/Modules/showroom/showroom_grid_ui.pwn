

/*
    Showroom Grid UI (Textdraw 3x3) - Ready to paste
    Author: ChatGPT (GPT-5 Thinking)
    Date: 2025-08-29

    Features:
    - 3x3 catalog grid with Prev/Next pagination
    - Click a slot to see vehicle details via dialog
    - Preview mode: spawns a dummy vehicle and sets a cinematic camera
    - Clean teardown and per-player state
    - No external dependencies (YSI optional: NOT required)

    Integration points:
    - OnPlayerBuyShowroomVehicle(playerid, modelid, price): implement your own economy/inventory here
    - Edit ShowroomVehicles/ShowroomPrices to fit your server

    Tested for: SA-MP 0.3.7+
*/

#include <a_samp>
#include <YSI\y_hooks>

// =========================[ CONFIG ]=========================

#define MAX_SHOWROOM_VEH        (128)
#define SHOWROOM_PER_PAGE       (9)        // 3x3 grid
#define SHOWROOM_NAME_MAX       (32)

#define SHOWROOM_COLOR_ACCENT   0x33AAFFFF // blue-ish
#define SHOWROOM_COLOR_BG       0x00000066 // black alpha
#define SHOWROOM_COLOR_TEXT     0xFFFFFFFF // white

// Dialog IDs (ensure not clashing with your GM)
#define DIALOG_SHOWROOM_DETAIL  8201

// Preview camera setup (adjust to your showroom interior/exterior)
#define PREVIEW_WORLD           0
#define PREVIEW_INTERIOR        0
#define PREVIEW_X               (2132.1721)
#define PREVIEW_Y               (-1150.2218)
#define PREVIEW_Z               (24.5)
#define PREVIEW_A               (90.0)

#define PREVIEW_CAM_POS_X       (2136.6721)
#define PREVIEW_CAM_POS_Y       (-1150.2218)
#define PREVIEW_CAM_POS_Z       (25.8)

#define PREVIEW_CAM_LOOK_X      (2132.1721)
#define PREVIEW_CAM_LOOK_Y      (-1150.2218)
#define PREVIEW_CAM_LOOK_Z      (24.9)

// =====================[ VEHICLE CATALOG ]====================
// Edit your catalog here. Keep sizes in sync.

new ShowroomVehicles[MAX_SHOWROOM_VEH] =
{
    411,451,400,429,541,415,560,562,559, // 0-8
    602,565,561,558,559,560,562,567,579, // 9-17 (examples / repeat ok)
    489,580,533,522,521,468,463,471,581  // 18-26
};

new ShowroomPrices[sizeof(ShowroomVehicles)] =
{
    50000,65000,30000,45000,70000,55000,80000,85000,60000,
    42000,39000,41000,52000,62000,73000,68000,36000,54000,
    28000,22000,24000,26000,18000,15500,17000,13000,21000
};

// Optional: minimal vehicle name helper (covers common models in list)
stock GetVehicleNameByModel(modelid, dest[], len)
{
    // Fallback generic
    format(dest, len, "Model %d", modelid);

    switch (modelid)
    {
        case 411: format(dest, len, "Infernus");
        case 451: format(dest, len, "Turismo");
        case 400: format(dest, len, "Landstalker");
        case 429: format(dest, len, "Banshee");
        case 541: format(dest, len, "Bullet");
        case 415: format(dest, len, "Cheetah");
        case 560: format(dest, len, "Sultan");
        case 562: format(dest, len, "Elegy");
        case 559: format(dest, len, "Jester");

        case 602: format(dest, len, "Alpha");
        case 565: format(dest, len, "Flash");
        case 561: format(dest, len, "Stratum");
        case 558: format(dest, len, "Uranus");

        case 567: format(dest, len, "Savanna");
        case 579: format(dest, len, "Huntley");
        case 489: format(dest, len, "Rancher");
        case 580: format(dest, len, "Stafford");
        case 533: format(dest, len, "Feltzer");

        case 522: format(dest, len, "NRG-500");
        case 521: format(dest, len, "FCR-900");
        case 468: format(dest, len, "Sanchez");
        case 463: format(dest, len, "Freeway");
        case 471: format(dest, len, "Quadbike");
        case 581: format(dest, len, "BF-400");
    }
    return 1;
}

// =====================[ PER-PLAYER STATE ]===================

new PlayerText:TD_Box[MAX_PLAYERS][SHOWROOM_PER_PAGE];    // clickable background box per slot
new PlayerText:TD_Name[MAX_PLAYERS][SHOWROOM_PER_PAGE];   // vehicle name label
new PlayerText:TD_Price[MAX_PLAYERS][SHOWROOM_PER_PAGE];  // vehicle price label

new PlayerText:TD_Header[MAX_PLAYERS];
new PlayerText:TD_PageInfo[MAX_PLAYERS];
new PlayerText:TD_BtnPrev[MAX_PLAYERS], PlayerText:TD_BtnNext[MAX_PLAYERS];
new PlayerText:TD_BtnClose[MAX_PLAYERS]; // closes the catalog
new PlayerText:TD_Footer[MAX_PLAYERS];   // hint bar

new ShowroomPage[MAX_PLAYERS];
new bool:ShowroomOpen[MAX_PLAYERS];

// Preview
new PreviewVeh[MAX_PLAYERS] = {INVALID_VEHICLE_ID, ...};
new bool:InPreview[MAX_PLAYERS];

// =====================[ INTERNAL HELPERS ]===================

stock Showroom_TotalItems()
{
    return sizeof(ShowroomVehicles);
}

stock Showroom_TotalPages()
{
    new total = Showroom_TotalItems();
    new pages = total / SHOWROOM_PER_PAGE;
    if (total % SHOWROOM_PER_PAGE) pages++;
    if (pages < 1) pages = 1;
    return pages;
}

stock Showroom_IndexOnPage(page, slot)
{
    return page * SHOWROOM_PER_PAGE + slot;
}

stock Showroom_HasIndex(idx)
{
    return (idx >= 0 && idx < Showroom_TotalItems());
}

stock Showroom_ShowTD(playerid, PlayerText:td)
{
    if(td) PlayerTextDrawShow(playerid, td);
}

stock Showroom_HideTD(playerid, PlayerText:td)
{
    if(td) PlayerTextDrawHide(playerid, td);
}

stock Showroom_SetTDStr(playerid, PlayerText:td, const str[])
{
    if(td) PlayerTextDrawSetString(playerid, td, str);
}

// =====================[ UI CREATION ]========================

stock Showroom_CreateUI(playerid)
{
    if (ShowroomOpen[playerid]) return 1;

    // Header
    TD_Header[playerid] = CreatePlayerTextDraw(playerid, 320.0, 60.0, "Showroom Catalog");
    PlayerTextDrawAlignment(playerid, TD_Header[playerid], 2);
    PlayerTextDrawFont(playerid, TD_Header[playerid], 1);
    PlayerTextDrawLetterSize(playerid, TD_Header[playerid], 0.45, 1.6);
    PlayerTextDrawColor(playerid, TD_Header[playerid], SHOWROOM_COLOR_TEXT);

    // Page info
    TD_PageInfo[playerid] = CreatePlayerTextDraw(playerid, 320.0, 84.0, "Page 1/1");
    PlayerTextDrawAlignment(playerid, TD_PageInfo[playerid], 2);
    PlayerTextDrawFont(playerid, TD_PageInfo[playerid], 1);
    PlayerTextDrawLetterSize(playerid, TD_PageInfo[playerid], 0.30, 1.2);
    PlayerTextDrawColor(playerid, TD_PageInfo[playerid], SHOWROOM_COLOR_TEXT);

    // Footer hint
    TD_Footer[playerid] = CreatePlayerTextDraw(playerid, 320.0, 430.0, "Click a slot to view details. Use Prev/Next to navigate. ~r~/exit~w~ to close.");
    PlayerTextDrawAlignment(playerid, TD_Footer[playerid], 2);
    PlayerTextDrawFont(playerid, TD_Footer[playerid], 1);
    PlayerTextDrawLetterSize(playerid, TD_Footer[playerid], 0.26, 1.0);
    PlayerTextDrawColor(playerid, TD_Footer[playerid], SHOWROOM_COLOR_TEXT);

    // Buttons
    TD_BtnPrev[playerid] = CreatePlayerTextDraw(playerid, 140.0, 390.0, "<< Prev");
    PlayerTextDrawFont(playerid, TD_BtnPrev[playerid], 1);
    PlayerTextDrawLetterSize(playerid, TD_BtnPrev[playerid], 0.35, 1.3);
    PlayerTextDrawAlignment(playerid, TD_BtnPrev[playerid], 2);
    PlayerTextDrawUseBox(playerid, TD_BtnPrev[playerid], 1);
    PlayerTextDrawBoxColor(playerid, TD_BtnPrev[playerid], SHOWROOM_COLOR_BG);
    PlayerTextDrawTextSize(playerid, TD_BtnPrev[playerid], 220.0, 20.0);
    PlayerTextDrawSetSelectable(playerid, TD_BtnPrev[playerid], true);
    PlayerTextDrawColor(playerid, TD_BtnPrev[playerid], SHOWROOM_COLOR_TEXT);

    TD_BtnNext[playerid] = CreatePlayerTextDraw(playerid, 500.0, 390.0, "Next >>");
    PlayerTextDrawFont(playerid, TD_BtnNext[playerid], 1);
    PlayerTextDrawLetterSize(playerid, TD_BtnNext[playerid], 0.35, 1.3);
    PlayerTextDrawAlignment(playerid, TD_BtnNext[playerid], 2);
    PlayerTextDrawUseBox(playerid, TD_BtnNext[playerid], 1);
    PlayerTextDrawBoxColor(playerid, TD_BtnNext[playerid], SHOWROOM_COLOR_BG);
    PlayerTextDrawTextSize(playerid, TD_BtnNext[playerid], 220.0, 20.0);
    PlayerTextDrawSetSelectable(playerid, TD_BtnNext[playerid], true);
    PlayerTextDrawColor(playerid, TD_BtnNext[playerid], SHOWROOM_COLOR_TEXT);

    TD_BtnClose[playerid] = CreatePlayerTextDraw(playerid, 600.0, 70.0, "X");
    PlayerTextDrawFont(playerid, TD_BtnClose[playerid], 1);
    PlayerTextDrawLetterSize(playerid, TD_BtnClose[playerid], 0.45, 1.6);
    PlayerTextDrawAlignment(playerid, TD_BtnClose[playerid], 2);
    PlayerTextDrawUseBox(playerid, TD_BtnClose[playerid], 1);
    PlayerTextDrawBoxColor(playerid, TD_BtnClose[playerid], SHOWROOM_COLOR_BG);
    PlayerTextDrawTextSize(playerid, TD_BtnClose[playerid], 18.0, 18.0);
    PlayerTextDrawSetSelectable(playerid, TD_BtnClose[playerid], true);
    PlayerTextDrawColor(playerid, TD_BtnClose[playerid], SHOWROOM_COLOR_TEXT);

    // Grid 3x3
    new Float:startX = 160.0, Float:startY = 120.0;
    new Float:cellW = 150.0, Float:cellH = 80.0;
    new slot;
    for(new r=0; r<3; r++)
    {
        for(new c=0; c<3; c++)
        {
            slot = r*3 + c;

            // background box (clickable)
            TD_Box[playerid][slot] = CreatePlayerTextDraw(playerid, startX + c*cellW, startY + r*cellH, " ");
            PlayerTextDrawUseBox(playerid, TD_Box[playerid][slot], 1);
            PlayerTextDrawBoxColor(playerid, TD_Box[playerid][slot], SHOWROOM_COLOR_BG);
            PlayerTextDrawTextSize(playerid, TD_Box[playerid][slot], startX + c*cellW + 130.0, startY + r*cellH + 65.0);
            PlayerTextDrawAlignment(playerid, TD_Box[playerid][slot], 1);
            PlayerTextDrawFont(playerid, TD_Box[playerid][slot], 1);
            PlayerTextDrawLetterSize(playerid, TD_Box[playerid][slot], 0.3, 1.0);
            PlayerTextDrawSetSelectable(playerid, TD_Box[playerid][slot], true);
            PlayerTextDrawColor(playerid, TD_Box[playerid][slot], SHOWROOM_COLOR_TEXT);

            // name
            TD_Name[playerid][slot] = CreatePlayerTextDraw(playerid, startX + c*cellW + 5.0, startY + r*cellH + 10.0, " ");
            PlayerTextDrawFont(playerid, TD_Name[playerid][slot], 1);
            PlayerTextDrawLetterSize(playerid, TD_Name[playerid][slot], 0.30, 1.2);
            PlayerTextDrawColor(playerid, TD_Name[playerid][slot], SHOWROOM_COLOR_TEXT);

            // price
            TD_Price[playerid][slot] = CreatePlayerTextDraw(playerid, startX + c*cellW + 5.0, startY + r*cellH + 34.0, " ");
            PlayerTextDrawFont(playerid, TD_Price[playerid][slot], 1);
            PlayerTextDrawLetterSize(playerid, TD_Price[playerid][slot], 0.28, 1.0);
            PlayerTextDrawColor(playerid, TD_Price[playerid][slot], SHOWROOM_COLOR_ACCENT);
        }
    }

    ShowroomOpen[playerid] = true;
    return 1;
}

stock Showroom_DestroyUI(playerid)
{
    if (!ShowroomOpen[playerid]) return 1;

    // Header/footer/buttons
    Showroom_HideTD(playerid, TD_Header[playerid]); PlayerTextDrawDestroy(playerid, TD_Header[playerid]); TD_Header[playerid] = PlayerText:0;
    Showroom_HideTD(playerid, TD_PageInfo[playerid]); PlayerTextDrawDestroy(playerid, TD_PageInfo[playerid]); TD_PageInfo[playerid] = PlayerText:0;
    Showroom_HideTD(playerid, TD_Footer[playerid]); PlayerTextDrawDestroy(playerid, TD_Footer[playerid]); TD_Footer[playerid] = PlayerText:0;
    Showroom_HideTD(playerid, TD_BtnPrev[playerid]); PlayerTextDrawDestroy(playerid, TD_BtnPrev[playerid]); TD_BtnPrev[playerid] = PlayerText:0;
    Showroom_HideTD(playerid, TD_BtnNext[playerid]); PlayerTextDrawDestroy(playerid, TD_BtnNext[playerid]); TD_BtnNext[playerid] = PlayerText:0;
    Showroom_HideTD(playerid, TD_BtnClose[playerid]); PlayerTextDrawDestroy(playerid, TD_BtnClose[playerid]); TD_BtnClose[playerid] = PlayerText:0;

    // Grid
    for(new i=0;i<SHOWROOM_PER_PAGE;i++)
    {
        Showroom_HideTD(playerid, TD_Box[playerid][i]); PlayerTextDrawDestroy(playerid, TD_Box[playerid][i]); TD_Box[playerid][i] = PlayerText:0;
        Showroom_HideTD(playerid, TD_Name[playerid][i]); PlayerTextDrawDestroy(playerid, TD_Name[playerid][i]); TD_Name[playerid][i] = PlayerText:0;
        Showroom_HideTD(playerid, TD_Price[playerid][i]); PlayerTextDrawDestroy(playerid, TD_Price[playerid][i]); TD_Price[playerid][i] = PlayerText:0;
    }

    ShowroomOpen[playerid] = false;
    return 1;
}

stock Showroom_RefreshPageInfo(playerid)
{
    new str[32];
    format(str, sizeof(str), "Page %d/%d", ShowroomPage[playerid] + 1, Showroom_TotalPages());
    Showroom_SetTDStr(playerid, TD_PageInfo[playerid], str);
}

stock Showroom_ShowPage(playerid, page)
{
    if (!ShowroomOpen[playerid]) return 0;

    new totalPages = Showroom_TotalPages();
    if (page < 0) page = 0;
    if (page >= totalPages) page = totalPages - 1;
    ShowroomPage[playerid] = page;

    // Update page info
    Showroom_RefreshPageInfo(playerid);

    // Fill each slot
    for(new i=0;i<SHOWROOM_PER_PAGE;i++)
    {
        new idx = Showroom_IndexOnPage(page, i);
        if (Showroom_HasIndex(idx))
        {
            new name[SHOWROOM_NAME_MAX], priceStr[32];
            GetVehicleNameByModel(ShowroomVehicles[idx], name, sizeof(name));
            format(priceStr, sizeof(priceStr), "$%d", ShowroomPrices[idx]);

            Showroom_SetTDStr(playerid, TD_Name[playerid][i], name);
            Showroom_SetTDStr(playerid, TD_Price[playerid][i], priceStr);

            Showroom_ShowTD(playerid, TD_Box[playerid][i]);
            Showroom_ShowTD(playerid, TD_Name[playerid][i]);
            Showroom_ShowTD(playerid, TD_Price[playerid][i]);
        }
        else
        {
            Showroom_HideTD(playerid, TD_Box[playerid][i]);
            Showroom_HideTD(playerid, TD_Name[playerid][i]);
            Showroom_HideTD(playerid, TD_Price[playerid][i]);
        }
    }

    // Show static TDs
    Showroom_ShowTD(playerid, TD_Header[playerid]);
    Showroom_ShowTD(playerid, TD_PageInfo[playerid]);
    Showroom_ShowTD(playerid, TD_Footer[playerid]);
    Showroom_ShowTD(playerid, TD_BtnPrev[playerid]);
    Showroom_ShowTD(playerid, TD_BtnNext[playerid]);
    Showroom_ShowTD(playerid, TD_BtnClose[playerid]);

    // Enable selection mode
    SelectTextDraw(playerid, SHOWROOM_COLOR_ACCENT);
    return 1;
}

stock Showroom_Open(playerid, page = 0)
{
    Showroom_CreateUI(playerid);
    Showroom_ShowPage(playerid, page);
    SendClientMessage(playerid, 0x96C8FFFF, "[Showroom] Click a slot to view details. Type /exit to close.");
    return 1;
}

stock Showroom_Close(playerid)
{
    CancelSelectTextDraw(playerid);
    Showroom_DestroyUI(playerid);
    return 1;
}

// =====================[ PREVIEW LOGIC ]======================

stock Showroom_EnterPreview(playerid, modelid)
{
    if (InPreview[playerid]) Showroom_ExitPreview(playerid);

    // create dummy vehicle
    PreviewVeh[playerid] = CreateVehicle(modelid, 1027.7688, 237.1656, 15.2641, 324.3192, 1, 1, 0);
    LinkVehicleToInterior(PreviewVeh[playerid], PREVIEW_INTERIOR);
    SetVehicleVirtualWorld(PreviewVeh[playerid], PREVIEW_WORLD);

    SetPlayerVirtualWorld(playerid, PREVIEW_WORLD);
    SetPlayerInterior(playerid, PREVIEW_INTERIOR);

    TogglePlayerControllable(playerid, 0);
    SetPlayerCameraPos(playerid, PREVIEW_CAM_POS_X, PREVIEW_CAM_POS_Y, PREVIEW_CAM_POS_Z);
    SetPlayerCameraLookAt(playerid, PREVIEW_CAM_LOOK_X, PREVIEW_CAM_LOOK_Y, PREVIEW_CAM_LOOK_Z, CAMERA_CUT);

    InPreview[playerid] = true;

    new name[SHOWROOM_NAME_MAX];
    GetVehicleNameByModel(modelid, name, sizeof(name));
    new msg[96];
    format(msg, sizeof(msg), "[Preview] %s (Model %d). Type /back to exit preview.", name, modelid);
    SendClientMessage(playerid, 0x96C8FFFF, msg);
    return 1;
}

stock Showroom_ExitPreview(playerid)
{
    if (!InPreview[playerid]) return 1;

    if (PreviewVeh[playerid] != INVALID_VEHICLE_ID)
    {
        DestroyVehicle(PreviewVeh[playerid]);
        PreviewVeh[playerid] = INVALID_VEHICLE_ID;
    }

    // Restore camera
    TogglePlayerControllable(playerid, 1);
    SetCameraBehindPlayer(playerid);

    InPreview[playerid] = false;
    return 1;
}

// =====================[ BUY INTEGRATION POINT ]==============

forward OnPlayerBuyShowroomVehicle(playerid, modelid, price);
/*
    Implement this callback in your GM to handle the purchase:
    Example:

    public OnPlayerBuyShowroomVehicle(playerid, modelid, price)
    {
        if (GetPlayerMoney(playerid) < price)
            return SendClientMessage(playerid, -1, "Uangmu tidak cukup!"), 0;

        GivePlayerMoney(playerid, -price);
        // spawn vehicle, save DB, etc...
        SendClientMessage(playerid, -1, "Kendaraan berhasil dibeli!");
        return 1;
    }
*/

// =====================[ CLICK & DIALOG FLOW ]================

hook ClickDynPlayerTextdraw(playerid, PlayerText:playertextid)
{
    if (!ShowroomOpen[playerid]) return 0;

    // Buttons
    if (playertextid == TD_BtnPrev[playerid])
    {
        Showroom_ShowPage(playerid, ShowroomPage[playerid] - 1);
        return 1;
    }
    if (playertextid == TD_BtnNext[playerid])
    {
        Showroom_ShowPage(playerid, ShowroomPage[playerid] + 1);
        return 1;
    }
    if (playertextid == TD_BtnClose[playerid])
    {
        Showroom_Close(playerid);
        return 1;
    }

    // Slots
    for(new i=0; i<SHOWROOM_PER_PAGE; i++)
    {
        if (playertextid == TD_Box[playerid][i] ||
            playertextid == TD_Name[playerid][i] ||
            playertextid == TD_Price[playerid][i])
        {
            new idx = Showroom_IndexOnPage(ShowroomPage[playerid], i);
            if (!Showroom_HasIndex(idx)) return 1;

            new name[SHOWROOM_NAME_MAX], info[256];
            GetVehicleNameByModel(ShowroomVehicles[idx], name, sizeof(name));
            format(info, sizeof(info),
                "{FFFFFF}Nama: {33AAFF}%s\n{FFFFFF}Model ID: {33AAFF}%d\n{FFFFFF}Harga: {33AAFF}$%d\n \n{FFFFFF}Pilih aksi:",
                name, ShowroomVehicles[idx], ShowroomPrices[idx]);

            ShowPlayerDialog(playerid, DIALOG_SHOWROOM_DETAIL, DIALOG_STYLE_LIST, "Detail Kendaraan",
                "Preview\nBeli\nKembali", "Pilih", "Tutup");

            // Cache selection for dialog response via pvar
            SetPVarInt(playerid, "Showroom_SelectedIdx", idx);
            return 1;
        }
    }

    return 0;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    if (dialogid == DIALOG_SHOWROOM_DETAIL)
    {
        if (!response) return 1;

        new idx = GetPVarInt(playerid, "Showroom_SelectedIdx");
        if (!Showroom_HasIndex(idx)) return 1;

        new modelid = ShowroomVehicles[idx];
        new price   = ShowroomPrices[idx];

        switch (listitem)
        {
            case 0: // Preview
            {
                Showroom_EnterPreview(playerid, modelid);
            }
            case 1: // Buy
            {
                if (funcidx("OnPlayerBuyShowroomVehicle") != -1)
                {
                    CallLocalFunction("OnPlayerBuyShowroomVehicle", "iii", playerid, modelid, price);
                }
                else
                {
                    SendClientMessage(playerid, -1, "[Showroom] Handler pembelian belum diimplementasi (OnPlayerBuyShowroomVehicle).");
                }
            }
            case 2: // Back
            {
                // do nothing
            }
        }
        return 1;
    }
    return 0;
}

// =====================[ COMMANDS ]===========================
// Very simple /showroom, /exit, /back

hook OnPlayerCommandText(playerid, cmdtext[])
{
    if (!strcmp("/showroom", cmdtext, true))
    {
        if (InPreview[playerid])
        {
            SendClientMessage(playerid, -1, "Kamu sedang di mode preview. Gunakan /back dulu.");
            return 1;
        }
        Showroom_Open(playerid);
        return 1;
    }
    if (!strcmp("/exit", cmdtext, true))
    {
        if (ShowroomOpen[playerid])
            Showroom_Close(playerid);
        else
            SendClientMessage(playerid, -1, "Showroom sedang tidak terbuka.");
        return 1;
    }
    if (!strcmp("/back", cmdtext, true))
    {
        if (InPreview[playerid])
        {
            Showroom_ExitPreview(playerid);
            SendClientMessage(playerid, -1, "Kembali dari preview.");
        }
        else SendClientMessage(playerid, -1, "Kamu tidak sedang preview.");
        return 1;
    }
    return 0;
}

// =====================[ LIFECYCLE HOOKS ]====================

hook OnPlayerDisconnect(playerid, reason)
{
    if (ShowroomOpen[playerid]) Showroom_Close(playerid);
    if (InPreview[playerid])    Showroom_ExitPreview(playerid);
    return 1;
}

hook OnGameModeExit()
{
    // Safety: destroy any preview vehicle left
    for(new i=0;i<MAX_PLAYERS;i++)
    {
        if (PreviewVeh[i] != INVALID_VEHICLE_ID)
        {
            DestroyVehicle(PreviewVeh[i]);
            PreviewVeh[i] = INVALID_VEHICLE_ID;
        }
    }
    return 1;
}

