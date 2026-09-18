#include <YSI\y_hooks>

new PlayerText: Toggle_UI[MAX_PLAYERS][7];
new Float:EditSensi[MAX_PLAYERS] = 5.0;

enum E_EDITOR_MODE
{
    EDITOR_HUD
};
new E_EDITOR_MODE:PlayerEditorMode[MAX_PLAYERS];

CreateToggleUI(playerid)
{
    Toggle_UI[playerid][0] = CreatePlayerTextDraw(playerid, 153.000, 327.000, "LD_BEAT:left");
    PlayerTextDrawTextSize(playerid, Toggle_UI[playerid][0], 25.000, 27.000);
    PlayerTextDrawAlignment(playerid, Toggle_UI[playerid][0], 1);
    PlayerTextDrawColor(playerid, Toggle_UI[playerid][0], -1);
    PlayerTextDrawSetShadow(playerid, Toggle_UI[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, Toggle_UI[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, Toggle_UI[playerid][0], 255);
    PlayerTextDrawFont(playerid, Toggle_UI[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, Toggle_UI[playerid][0], 1);
    PlayerTextDrawSetSelectable(playerid, Toggle_UI[playerid][0], 1);

    Toggle_UI[playerid][1] = CreatePlayerTextDraw(playerid, 210.000, 326.000, "LD_BEAT:right");
    PlayerTextDrawTextSize(playerid, Toggle_UI[playerid][1], 25.000, 27.000);
    PlayerTextDrawAlignment(playerid, Toggle_UI[playerid][1], 1);
    PlayerTextDrawColor(playerid, Toggle_UI[playerid][1], -1);
    PlayerTextDrawSetShadow(playerid, Toggle_UI[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, Toggle_UI[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, Toggle_UI[playerid][1], 255);
    PlayerTextDrawFont(playerid, Toggle_UI[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, Toggle_UI[playerid][1], 1);
    PlayerTextDrawSetSelectable(playerid, Toggle_UI[playerid][1], 1);

    Toggle_UI[playerid][2] = CreatePlayerTextDraw(playerid, 182.000, 287.000, "LD_BEAT:up");
    PlayerTextDrawTextSize(playerid, Toggle_UI[playerid][2], 25.000, 27.000);
    PlayerTextDrawAlignment(playerid, Toggle_UI[playerid][2], 1);
    PlayerTextDrawColor(playerid, Toggle_UI[playerid][2], -1);
    PlayerTextDrawSetShadow(playerid, Toggle_UI[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, Toggle_UI[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, Toggle_UI[playerid][2], 255);
    PlayerTextDrawFont(playerid, Toggle_UI[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, Toggle_UI[playerid][2], 1);
    PlayerTextDrawSetSelectable(playerid, Toggle_UI[playerid][2], 1);

    Toggle_UI[playerid][3] = CreatePlayerTextDraw(playerid, 183.000, 365.000, "LD_BEAT:down");
    PlayerTextDrawTextSize(playerid, Toggle_UI[playerid][3], 25.000, 27.000);
    PlayerTextDrawAlignment(playerid, Toggle_UI[playerid][3], 1);
    PlayerTextDrawColor(playerid, Toggle_UI[playerid][3], -1);
    PlayerTextDrawSetShadow(playerid, Toggle_UI[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, Toggle_UI[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, Toggle_UI[playerid][3], 255);
    PlayerTextDrawFont(playerid, Toggle_UI[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, Toggle_UI[playerid][3], 1);
    PlayerTextDrawSetSelectable(playerid, Toggle_UI[playerid][3], 1);

    Toggle_UI[playerid][4] = CreatePlayerTextDraw(playerid, 184.000, 327.000, "LD_CHAT:thumbup");
    PlayerTextDrawTextSize(playerid, Toggle_UI[playerid][4], 22.000, 22.000);
    PlayerTextDrawAlignment(playerid, Toggle_UI[playerid][4], 1);
    PlayerTextDrawColor(playerid, Toggle_UI[playerid][4], -1);
    PlayerTextDrawSetShadow(playerid, Toggle_UI[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, Toggle_UI[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, Toggle_UI[playerid][4], 255);
    PlayerTextDrawFont(playerid, Toggle_UI[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, Toggle_UI[playerid][4], 1);
    PlayerTextDrawSetSelectable(playerid, Toggle_UI[playerid][4], 1);

    Toggle_UI[playerid][5] = CreatePlayerTextDraw(playerid, 220.000, 377.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, Toggle_UI[playerid][5], 75.000, 13.000);
    PlayerTextDrawAlignment(playerid, Toggle_UI[playerid][5], 1);
    PlayerTextDrawColor(playerid, Toggle_UI[playerid][5], 1768516095);
    PlayerTextDrawSetShadow(playerid, Toggle_UI[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, Toggle_UI[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, Toggle_UI[playerid][5], 255);
    PlayerTextDrawFont(playerid, Toggle_UI[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, Toggle_UI[playerid][5], 1);
    PlayerTextDrawSetSelectable(playerid, Toggle_UI[playerid][5], 1);

    Toggle_UI[playerid][6] = CreatePlayerTextDraw(playerid, 259.000, 377.000, "Sensivity 5.0");
    PlayerTextDrawLetterSize(playerid, Toggle_UI[playerid][6], 0.180, 1.099);
    PlayerTextDrawAlignment(playerid, Toggle_UI[playerid][6], 2);
    PlayerTextDrawColor(playerid, Toggle_UI[playerid][6], -1);
    PlayerTextDrawSetShadow(playerid, Toggle_UI[playerid][6], 1);
    PlayerTextDrawSetOutline(playerid, Toggle_UI[playerid][6], 1);
    PlayerTextDrawBackgroundColor(playerid, Toggle_UI[playerid][6], 150);
    PlayerTextDrawFont(playerid, Toggle_UI[playerid][6], 1);
    PlayerTextDrawSetProportional(playerid, Toggle_UI[playerid][6], 1);
    return 1;
}

hook OnPlayerConnect(playerid)
{
    CreateToggleUI(playerid);
    return 1;
}

stock ShowEditorUi(playerid)
{
    for(new i = 0; i < 7; i++)
    {
        PlayerTextDrawShow(playerid, Toggle_UI[playerid][i]);
    }
    PlayerTextDrawSetString(playerid, Toggle_UI[playerid][6], "Sensitivity 5.0");
    EditSensi[playerid] = 5.0;
    SelectTextDraw(playerid, X11_GRAY);
    return 1;
}

stock HideEditorUi(playerid)
{
    for(new i = 0; i < 7; i++)
    {
        PlayerTextDrawHide(playerid, Toggle_UI[playerid][i]);
    }
    CancelSelectTextDraw(playerid);
    return 1;
}

hook ClickDynPlayerTextdraw(playerid, PlayerText: playertextid)
{
    if(playertextid == Toggle_UI[playerid][0]) // Kiri
    {  
        if (PlayerEditorMode[playerid] == EDITOR_HUD)
        {
            for(new i = 0; i < MAX_TDHBE1; i++)
            {
                TDHBE1_PosX[playerid][i] -= EditSensi[playerid];
                if (HbeNewv2[playerid][i] != PlayerText:INVALID_TEXT_DRAW)
                PlayerTextDrawSetPos(playerid, HbeNewv2[playerid][i], TDHBE1_PosX[playerid][i], TDHBE1_PosY[playerid][i]);
            }
        }
    }
    if(playertextid == Toggle_UI[playerid][1]) // Kanan
    {
        if (PlayerEditorMode[playerid] == EDITOR_HUD)
        {
            for(new i = 0; i < MAX_TDHBE1; i++)
            {
                TDHBE1_PosX[playerid][i] += EditSensi[playerid];
                if (HbeNewv2[playerid][i] != PlayerText:INVALID_TEXT_DRAW)
                PlayerTextDrawSetPos(playerid, HbeNewv2[playerid][i], TDHBE1_PosX[playerid][i], TDHBE1_PosY[playerid][i]);
            }
        }
    }
    if(playertextid == Toggle_UI[playerid][2]) // Atas
    {
        if (PlayerEditorMode[playerid] == EDITOR_HUD)
        {
            for(new i = 0; i < MAX_TDHBE1; i++)
            {
                TDHBE1_PosY[playerid][i] -= EditSensi[playerid];
                if (HbeNewv2[playerid][i] != PlayerText:INVALID_TEXT_DRAW)
                PlayerTextDrawSetPos(playerid, HbeNewv2[playerid][i], TDHBE1_PosX[playerid][i], TDHBE1_PosY[playerid][i]);
            }
            
        }
    }
    if(playertextid == Toggle_UI[playerid][3]) // Bawah
    {
        if (PlayerEditorMode[playerid] == EDITOR_HUD)
        {
            for(new i = 0; i < MAX_TDHBE1; i++)
            {
                TDHBE1_PosY[playerid][i] += EditSensi[playerid];
                if (HbeNewv2[playerid][i] != PlayerText:INVALID_TEXT_DRAW)
                PlayerTextDrawSetPos(playerid, HbeNewv2[playerid][i], TDHBE1_PosX[playerid][i], TDHBE1_PosY[playerid][i]);
            }
            
        }
    }
    if(playertextid == Toggle_UI[playerid][4]) // Save
    {
        if (PlayerEditorMode[playerid] == EDITOR_HUD)
        {
            SaveTextdrawHbe1(playerid);
            HideEditorUi(playerid);
            ShowTDN(playerid, NOTIFICATION_SUKSES, "Posisi UI Hbe1 berhasil tersave ke database!");
            
        }
    }
    if(playertextid == Toggle_UI[playerid][5]) // Sensi
    {
        Dialog_Show(playerid, DialogSetSensi, DIALOG_STYLE_INPUT,
        "Atur Sensitivitas Textdraw",
        "Masukkan nilai sensitivitas (contoh: 1.0 atau 10.5)\n\nSemakin besar nilainya, semakin jauh gesernya.",
        "Set", "Batal");
    }
    return 1;
}

Dialog:DialogSetSensi(playerid, response, listitem, inputtext[])
{
    if (!response) return 1;

    new Float:value = floatstr(inputtext);
    if (value <= 0.0)
    {
        SendClientMessage(playerid, -1, "[Error] Nilai sensitivitas harus lebih besar dari 0!");
        return 1;
    }

    EditSensi[playerid] = value;
    new msg[64];
    format(msg, sizeof msg, "Sensitivity %.1f", value);
    PlayerTextDrawSetString(playerid, Toggle_UI[playerid][6], msg);
    return 1;
}