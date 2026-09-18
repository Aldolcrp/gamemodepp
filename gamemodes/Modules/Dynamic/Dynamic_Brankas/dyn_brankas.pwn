#include <YSI\y_hooks>

#define MAX_BRANKAS 100

new BrankasPickup[MAX_BRANKAS];
new Text3D:BrankasLabel[MAX_BRANKAS];
new BrankasOpen[MAX_PLAYERS];
new BrankasProcessing[MAX_PLAYERS];
new InvItemList[MAX_PLAYERS][1024];
new BrankasItemList[MAX_PLAYERS][1024];

enum e_BrankasData {
    bool:brUsed,
    brID,
    brOwnerID,
    brOwnerName[24],
    Float:brPos[3]
};
new BrankasData[MAX_BRANKAS][e_BrankasData];

stock GetFreeBrankasID()
{
    new usedbrankas[MAX_BRANKAS];
    for(new i = 0; i < MAX_BRANKAS; i++)
    {
        if(BrankasPickup[i] != 0)
            usedbrankas[i] = 1;
    }
    for(new id = 0; id < MAX_BRANKAS; id++)
    {
        if(!usedbrankas[id]) return id;
    }
    return -1;
}

forward OnLoadBrankas();
public OnLoadBrankas()
{
    for(new i = 0; i < MAX_BRANKAS; i++)
    {
        if(IsValidDynamicPickup(BrankasPickup[i])) DestroyDynamicPickup(BrankasPickup[i]);
        if(IsValidDynamic3DTextLabel(BrankasLabel[i])) DestroyDynamic3DTextLabel(BrankasLabel[i]);
        BrankasPickup[i] = 0;
        BrankasLabel[i] = Text3D:0;
    }

    new rows = cache_num_rows();
    if(!rows) return 1;

    for(new i; i < rows; i++)
    {
        new id;
        cache_get_value_name_int(i, "ID", id);
        if(id < 0 || id >= MAX_BRANKAS) continue;

        BrankasData[id][brID] = id;
        BrankasData[id][brUsed] = true;
        cache_get_value_name_int(i, "OwnerID", BrankasData[id][brOwnerID]);
        cache_get_value_name(i, "OwnerName", BrankasData[id][brOwnerName], 24);
        cache_get_value_name_float(i, "PosX", BrankasData[id][brPos][0]);
        cache_get_value_name_float(i, "PosY", BrankasData[id][brPos][1]);
        cache_get_value_name_float(i, "PosZ", BrankasData[id][brPos][2]);

        BrankasPickup[id] = CreateDynamicPickup(19918, 23, BrankasData[id][brPos][0], BrankasData[id][brPos][1], BrankasData[id][brPos][2], -1, -1, -1, 8.0);      
        new str[128];
        format(str, sizeof str, ""GRAY"Brankas ID: %d\n{FFFFFF}Owner: %s\nTekan {00FF00}Y {FFFFFF}untuk membuka", BrankasData[id][brID], BrankasData[id][brOwnerName]);
        BrankasLabel[id] = CreateDynamic3DTextLabel(str, -1,
            BrankasData[id][brPos][0],
            BrankasData[id][brPos][1],
            BrankasData[id][brPos][2] + 0.5,
            8.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0);
    }
    return 1;
}

CMD:addbrankas(playerid, params[])
{
    if(AccountData[playerid][pAdmin] < 4)
        return PermissionError(playerid);

    new newID = GetFreeBrankasID();
    if(newID == -1) return SendClientMessage(playerid, -1, "Tidak ada ID brankas kosong.");

    new Float:x, Float:y, Float:z;
    GetPlayerPos(playerid, x, y, z);

    new name[MAX_PLAYER_NAME];
    GetPlayerName(playerid, name, sizeof name);

    new query[256];
    mysql_format(g_SQL, query, sizeof query,
        "INSERT INTO brankas_warga (ID, OwnerID, OwnerName, PosX, PosY, PosZ) \
         VALUES (%d, %d, '%e', %f, %f, %f)",
        newID, AccountData[playerid][pID], name, x, y, z);
    mysql_tquery(g_SQL, query, "OnBrankasCreated", "d", playerid);

    return 1;
}

forward OnBrankasCreated(playerid, idx);
public OnBrankasCreated(playerid, idx)
{
    new lastID = cache_insert_id();
    if(lastID >= 0 && lastID < MAX_BRANKAS)
    {
        BrankasData[lastID][brUsed] = true;
    }
    ShowTDN(playerid, NOTIFICATION_SUKSES, "Brankas berhasil ditambahkan.");
    mysql_tquery(g_SQL, "SELECT * FROM `brankas_warga`", "OnLoadBrankas");
    return 1;
}

CMD:destroybrankas(playerid, params[])
{
    if (AccountData[playerid][pAdmin] < 4)
        return PermissionError(playerid);

    new targetID;
    if (sscanf(params, "d", targetID))
        return SendClientMessage(playerid, -1, "Usage: /destroybrankas <BrankasID>");

    if(targetID < 0 || targetID >= MAX_BRANKAS || BrankasPickup[targetID] == 0)
        return SendClientMessage(playerid, -1, "Brankas tidak ditemukan.");

    if (IsValidDynamicPickup(BrankasPickup[targetID])) DestroyDynamicPickup(BrankasPickup[targetID]);
    if (IsValidDynamic3DTextLabel(BrankasLabel[targetID])) DestroyDynamic3DTextLabel(BrankasLabel[targetID]);

    BrankasPickup[targetID] = 0;
    BrankasLabel[targetID] = Text3D:0;
    BrankasData[targetID][brUsed] = false;
    BrankasData[targetID][brOwnerName][0] = EOS;

    new query[256];
    mysql_format(g_SQL, query, sizeof(query), "DELETE FROM `brankas_items` WHERE `BrankasID`=%d", targetID);
    mysql_tquery(g_SQL, query);

    mysql_format(g_SQL, query, sizeof(query), "DELETE FROM `brankas_warga` WHERE `ID`=%d", targetID);
    mysql_tquery(g_SQL, query);

    mysql_tquery(g_SQL, "SELECT * FROM `brankas_warga`", "OnLoadBrankas");

    new msg[96];
    format(msg, sizeof msg, "[Brankas] Admin %s telah menghancurkan brankas ID %d.", AccountData[playerid][pAdminname], targetID);
    SendClientMessageToAll(-1, msg);

    return 1;
}

CMD:editbrankas(playerid, params[])
{
    if(AccountData[playerid][pAdmin] < 4)
        return PermissionError(playerid);
    new action[16], id, value[64];
    if(sscanf(params, "s[16]dS()[64]", action, id, value))
        return SendClientMessage(playerid, -1, "Usage: /editbrankas [location/owner] [id] [value]");

    if(!BrankasData[id][brUsed]) return SendClientMessage(playerid, -1, "Brankas tidak valid.");

    if(!strcmp(action, "location"))
    {
        if (IsValidDynamicPickup(BrankasPickup[id])) DestroyDynamicPickup(BrankasPickup[id]);
        if (IsValidDynamic3DTextLabel(BrankasLabel[id])) DestroyDynamic3DTextLabel(BrankasLabel[id]);
        new Float:x, Float:y, Float:z;
        GetPlayerPos(playerid, x, y, z);

        BrankasData[id][brPos][0] = x;
        BrankasData[id][brPos][1] = y;
        BrankasData[id][brPos][2] = z;

        new query[256];
        format(query, sizeof query, 
            "UPDATE brankas_warga SET PosX=%f, PosY=%f, PosZ=%f WHERE ID=%d",
            x, y, z, BrankasData[id][brID]);
        mysql_tquery(g_SQL, query);

        mysql_tquery(g_SQL, "SELECT * FROM `brankas_warga`", "OnLoadBrankas");
        ShowTDN(playerid, NOTIFICATION_SUKSES, "Lokasi brankas berhasil diupdate dan pickup direfresh.");
    }
    else if(!strcmp(action, "owner"))
    {
        if (IsValidDynamicPickup(BrankasPickup[id])) DestroyDynamicPickup(BrankasPickup[id]);
        if (IsValidDynamic3DTextLabel(BrankasLabel[id])) DestroyDynamic3DTextLabel(BrankasLabel[id]);

        new newownerid = strval(value);
        if(!IsPlayerConnected(newownerid))
            return SendClientMessage(playerid, -1, "Player tidak online!");

        new name[MAX_PLAYER_NAME];
        GetPlayerName(newownerid, name, sizeof name);

        BrankasData[id][brOwnerID] = AccountData[newownerid][pID];
        format(BrankasData[id][brOwnerName], 24, "%s", name);

        new query[256];
        format(query, sizeof query, "UPDATE brankas_warga SET OwnerID=%d, OwnerName='%s' WHERE ID=%d",
            AccountData[newownerid][pID], name, BrankasData[id][brID]);
        mysql_tquery(g_SQL, query);
        mysql_tquery(g_SQL, "SELECT * FROM `brankas_warga`", "OnLoadBrankas");
        ShowTDN(playerid, NOTIFICATION_SUKSES, "Owner brankas berhasil diupdate.");
    }
    return 1;
}

CMD:gotobrankas(playerid, params[])
{
    if (AccountData[playerid][pAdmin] < 4)
        return PermissionError(playerid);

    new id;
    if (sscanf(params, "d", id))
        return SendClientMessage(playerid, -1, "Usage: /gotobrankas <ID>");

    if (id < 0 || id >= MAX_BRANKAS || !BrankasData[id][brUsed])
        return SendClientMessage(playerid, -1, "Brankas dengan ID itu tidak valid.");

    SetPlayerPos(playerid,
        BrankasData[id][brPos][0],
        BrankasData[id][brPos][1],
        BrankasData[id][brPos][2] + 1.0);

    new msg[96];
    format(msg, sizeof msg, "Kamu telah teleport ke Brankas ID %d (Owner: %s).",
        id, BrankasData[id][brOwnerName]);
    SendClientMessage(playerid, -1, msg);

    return 1;
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    if(newkeys & KEY_YES)
    {
        for(new i = 0; i < MAX_BRANKAS; i++)
        {
            if(BrankasData[i][brUsed] && 
            IsPlayerInRangeOfPoint(playerid, 2.0, BrankasData[i][brPos][0], BrankasData[i][brPos][1], BrankasData[i][brPos][2]))
            {
                if(BrankasData[i][brOwnerID] != AccountData[playerid][pID])
                {
                    ShowTDN(playerid, NOTIFICATION_ERROR, "Kamu bukan pemilik brankas ini.");
                    return 1;
                }

                BrankasOpen[playerid] = i;
                ShowPlayerDialog(playerid, DIALOG_BRANKAS_MENU, DIALOG_STYLE_LIST,
                    "{FFCC00}Brankas Menu",
                    "Deposit Item\nWithdraw Item",
                    "Pilih", "Tutup");
                break;
            }
        }
    }
    return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    // ===== MENU UTAMA BRANKAS =====
    if (dialogid == DIALOG_BRANKAS_MENU)
    {
        if (!response)
        {
            AccountData[playerid][menuShowed] = false;
            return ShowTDN(playerid, NOTIFICATION_INFO, "Anda membatalkan pilihan.");
        }

        new brankas_id = BrankasOpen[playerid];

        switch (listitem)
        {
            case 0: // Deposit -> ambil seluruh inventory player yang qty>0
            {
                new query[256];
                mysql_format(g_SQL, query, sizeof(query),
                    "SELECT invID, invItem, invModel, invQuantity FROM inventory WHERE ID=%d AND invQuantity > 0 ORDER BY invItem ASC",
                    AccountData[playerid][pID]
                );
                mysql_tquery(g_SQL, query, "OnBrankasDepositList", "d", playerid);
            }

            case 1: // Withdraw -> ambil seluruh item brankas
            {
                new query[256];
                mysql_format(g_SQL, query, sizeof(query),
                    "SELECT fItemID, fItemName, fItemModel, fItemQuantity FROM brankas_items WHERE BrankasID=%d ORDER BY fItemName ASC",
                    BrankasData[brankas_id][brID]
                );
                mysql_tquery(g_SQL, query, "OnBrankasWithdrawList", "d", playerid);
            }
        }
        return 1;
    }
    if (dialogid == DIALOG_BRANKAS_DEPOSIT && response)
    {
        if (listitem < 0 || listitem >= MAX_BRANKAS)
            return ShowTDN(playerid, NOTIFICATION_ERROR, "Pilihan item tidak valid.");

        new selectedInvID = InvItemList[playerid][listitem];
        if (selectedInvID <= 0)
            return ShowTDN(playerid, NOTIFICATION_ERROR, "Item tidak valid.");

        new query[256];
        mysql_format(g_SQL, query, sizeof(query),
            "SELECT invID, invItem, invModel, invQuantity FROM inventory WHERE invID=%d LIMIT 1",
            selectedInvID);
        mysql_tquery(g_SQL, query, "OnDepositItem", "d", playerid);
        return 1;
    }
    if (dialogid == DIALOG_BRANKAS_WITHDRAW && response)
    {
        if (listitem < 0 || listitem >= MAX_BRANKAS)
            return ShowTDN(playerid, NOTIFICATION_ERROR, "Pilihan item tidak valid.");

        new selectedItemID = BrankasItemList[playerid][listitem];
        if (selectedItemID <= 0)
            return ShowTDN(playerid, NOTIFICATION_ERROR, "Item tidak valid.");

        new query[256];
        mysql_format(g_SQL, query, sizeof(query),
            "SELECT fItemID, fItemName, fItemModel, fItemQuantity FROM brankas_items WHERE fItemID=%d LIMIT 1",
            selectedItemID);
        mysql_tquery(g_SQL, query, "OnWithdrawItem", "d", playerid);
        return 1;
    }
    if (dialogid == DIALOG_BRANKAS_DEPOSIT_AMOUNT && response)
    {
        if (BrankasProcessing[playerid])
            return ShowTDN(playerid, NOTIFICATION_INFO, "Sedang memproses permintaan, tunggu sebentar!");
        BrankasProcessing[playerid] = true;

        if (isnull(inputtext) || !IsNumeric(inputtext))
        {
            BrankasProcessing[playerid] = false;
            return ShowTDN(playerid, NOTIFICATION_ERROR, "Jumlah tidak valid.");
        }

        new amount = strval(inputtext);
        new itemname[64];
        new modelid = GetPVarInt(playerid, "Brankas_ItemModel");
        GetPVarString(playerid, "Brankas_ItemName", itemname, sizeof(itemname));

        new avail = Inventory_Count(playerid, itemname);
        if (amount <= 0 || amount > avail)
        {
            BrankasProcessing[playerid] = false;
            return ShowTDN(playerid, NOTIFICATION_ERROR, "Jumlah item di inventory tidak mencukupi.");
        }

        new brankas_id = BrankasOpen[playerid];

        SetPVarInt(playerid, "Brankas_DepositQty", amount);
        SetPVarInt(playerid, "Brankas_DepositModel", modelid);
        SetPVarString(playerid, "Brankas_DepositName", itemname);

        new query[512];
        mysql_format(g_SQL, query, sizeof(query),
            "INSERT INTO brankas_items (BrankasID, fItemName, fItemModel, fItemQuantity) VALUES (%d, '%e', %d, %d) ON DUPLICATE KEY UPDATE fItemQuantity = fItemQuantity + %d",
            BrankasData[brankas_id][brID], itemname, modelid, amount, amount);
        mysql_tquery(g_SQL, query, "OnBrankasDeposit", "i", playerid);
        return 1;
    }

    // ===== DIALOG: Input jumlah withdraw =====
    if (dialogid == DIALOG_BRANKAS_WITHDRAW_AMOUNT && response)
    {
        if (isnull(inputtext) || !IsNumeric(inputtext))
            return ShowTDN(playerid, NOTIFICATION_ERROR, "Jumlah tidak valid.");

        new amount = strval(inputtext);
        new qty = GetPVarInt(playerid, "Brankas_ItemQty");
        if (amount <= 0 || amount > qty)
            return ShowTDN(playerid, NOTIFICATION_ERROR, "Jumlah tidak valid.");

        new itemname[64];
        GetPVarString(playerid, "Brankas_ItemName", itemname, sizeof(itemname));
        new modelid = GetPVarInt(playerid, "Brankas_ItemModel");
        new iid = GetPVarInt(playerid, "Brankas_ItemID");

        Inventory_Add(playerid, itemname, modelid, amount);
        ShowItemBox(playerid, sprintf("Received %dx", amount), itemname, modelid);

        new query[256];
        if (qty - amount <= 0)
            mysql_format(g_SQL, query, sizeof(query), "DELETE FROM brankas_items WHERE fItemID=%d", iid);
        else
            mysql_format(g_SQL, query, sizeof(query), "UPDATE brankas_items SET fItemQuantity = fItemQuantity - %d WHERE fItemID=%d", amount, iid);

        mysql_tquery(g_SQL, query);
        ShowTDN(playerid, NOTIFICATION_SUKSES, "Item berhasil diambil dari brankas.");
        return 1;
    }

    return 0;
}

// ================== CALLBACKS / FORWARDS ==================

forward OnBrankasDeposit(playerid);
public OnBrankasDeposit(playerid)
{
    if (!IsPlayerConnected(playerid)) return 1;

    new amount = GetPVarInt(playerid, "Brankas_DepositQty");
    new modelid = GetPVarInt(playerid, "Brankas_DepositModel");
    new itemname[64]; GetPVarString(playerid, "Brankas_DepositName", itemname, sizeof(itemname));

    Inventory_Remove(playerid, itemname, amount);
    ShowItemBox(playerid, sprintf("Removed %dx", amount), itemname, modelid);

    ShowTDN(playerid, NOTIFICATION_SUKSES, "Item berhasil disimpan ke brankas.");

    DeletePVar(playerid, "Brankas_DepositQty");
    DeletePVar(playerid, "Brankas_DepositModel");
    DeletePVar(playerid, "Brankas_DepositName");
    BrankasProcessing[playerid] = false;
    return 1;
}

forward OnBrankasDepositList(playerid);
public OnBrankasDepositList(playerid)
{
    new rows = cache_num_rows();
    if (!rows)
    {
        return ShowPlayerDialog(playerid, DIALOG_BRANKAS_MENU, DIALOG_STYLE_MSGBOX,
            "{FF0000}Brankas - Deposit", "Kamu tidak punya item untuk disimpan.", "Tutup", "");
    }

    // clear InvItemList for player first (safer)
    for (new k = 0; k < MAX_BRANKAS; k++) InvItemList[playerid][k] = 0;

    new str[4096], itemname[64], amount, iid;
    format(str, sizeof(str), "Nama Item\tJumlah\n");

    for (new i = 0; i < rows && i < MAX_BRANKAS; i++)
    {
        cache_get_value_name_int(i, "invID", iid);
        cache_get_value_name(i, "invItem", itemname);
        cache_get_value_name_int(i, "invQuantity", amount);

        InvItemList[playerid][i] = iid; // simpan invID inventory player
        strcat(str, sprintf("%s\t%d\n", itemname, amount));
    }

    ShowPlayerDialog(playerid, DIALOG_BRANKAS_DEPOSIT, DIALOG_STYLE_TABLIST_HEADERS,
        "{33CCFF}Deposit ke Brankas", str, "Pilih", "Batal");
    return 1;
}

forward OnBrankasWithdrawList(playerid);
public OnBrankasWithdrawList(playerid)
{
    new rows = cache_num_rows();
    if (!rows)
    {
        return ShowPlayerDialog(playerid, DIALOG_BRANKAS_MENU, DIALOG_STYLE_MSGBOX,
            "{FF0000}Brankas - Withdraw", "Brankas ini kosong.", "Tutup", "");
    }
    for (new k = 0; k < MAX_BRANKAS; k++) BrankasItemList[playerid][k] = 0;

    new str[4096], itemname[64], amount, iid;
    format(str, sizeof(str), "Nama Item\tJumlah\n");

    for (new i = 0; i < rows && i < MAX_BRANKAS; i++)
    {
        cache_get_value_name_int(i, "fItemID", iid);
        cache_get_value_name(i, "fItemName", itemname);
        cache_get_value_name_int(i, "fItemQuantity", amount);

        BrankasItemList[playerid][i] = iid; // simpan ID real item di brankas
        strcat(str, sprintf("%s\t%d\n", itemname, amount));
    }

    ShowPlayerDialog(playerid, DIALOG_BRANKAS_WITHDRAW, DIALOG_STYLE_TABLIST_HEADERS,
        "{33CCFF}Ambil dari Brankas", str, "Ambil", "Batal");
    return 1;
}

forward OnDepositItem(playerid);
public OnDepositItem(playerid)
{
    if (!cache_num_rows()) return 1;

    new itemname[64], modelid, qty;
    cache_get_value_name(0, "invItem", itemname);
    cache_get_value_name_int(0, "invModel", modelid);
    cache_get_value_name_int(0, "invQuantity", qty);

    if (qty <= 0) { SendClientMessage(playerid, -1, "Item tidak valid."); return 1; }

    SetPVarString(playerid, "Brankas_ItemName", itemname);
    SetPVarInt(playerid, "Brankas_ItemModel", modelid);
    SetPVarInt(playerid, "Brankas_ItemQty", qty);

    new str[128];
    format(str, sizeof(str), "Kamu punya %d %s.\nMasukkan jumlah yang ingin disimpan:", qty, itemname);

    ShowPlayerDialog(playerid, DIALOG_BRANKAS_DEPOSIT_AMOUNT, DIALOG_STYLE_INPUT,
        "{33CCFF}Jumlah Deposit", str, "Simpan", "Batal");
    return 1;
}

forward OnWithdrawItem(playerid);
public OnWithdrawItem(playerid)
{
    if (!cache_num_rows()) return 1;

    new itemname[64], modelid, qty, iid;
    cache_get_value_name(0, "fItemName", itemname);
    cache_get_value_name_int(0, "fItemModel", modelid);
    cache_get_value_name_int(0, "fItemQuantity", qty);
    cache_get_value_name_int(0, "fItemID", iid);

    if (qty <= 0) { SendClientMessage(playerid, -1, "Item tidak valid."); return 1; }

    SetPVarString(playerid, "Brankas_ItemName", itemname);
    SetPVarInt(playerid, "Brankas_ItemModel", modelid);
    SetPVarInt(playerid, "Brankas_ItemQty", qty);
    SetPVarInt(playerid, "Brankas_ItemID", iid);

    new str[128];
    format(str, sizeof(str), "Tersedia %d %s di brankas.\nMasukkan jumlah yang ingin diambil:", qty, itemname);

    ShowPlayerDialog(playerid, DIALOG_BRANKAS_WITHDRAW_AMOUNT, DIALOG_STYLE_INPUT,
        "{33CCFF}Jumlah Withdraw", str, "Ambil", "Batal");
    return 1;
}