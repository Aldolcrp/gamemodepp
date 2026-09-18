/* Create Script Menu Pedagang By Rayyzix - Final Fixed */

#include <YSI\y_hooks>

#define MAX_PDGMENU        8
#define MAX_ORDER_LENGTH   512
#define MAX_ORDERS         50
#define MAX_ACC_LOGS       100
#define TABLE_ACC_LOGS "pedagang_acc_logs"

#define DIALOG_LOGS_ACC_LIST   9950
#define DIALOG_LOGS_ACC_DETAIL 9951
#define DIALOG_PEDAGANG_TOTAL 9904
#define DIALOG_PEDAGANG_PAYMENT   5300
#define DIALOG_PEDAGANG_ORDERS    5301
#define DIALOG_PEDAGANG_ACTION    5302
#define DIALOG_PEDAGANG_CONFIRM   5303
#define DIALOG_PEDAGANG_DENY      5304

#define PRICE_BUBUR_PEDAS    200
#define PRICE_NASI_PECEL     350
#define PRICE_BAKSO          290
#define PRICE_NASI_GORENG    400
#define PRICE_SUSU           200
#define PRICE_CHOCO_MATCHA   290
#define PRICE_ES_TEH         350
#define PRICE_KOPI_KENANGAN  400

new bool:MenuPedagangOpen[MAX_PLAYERS];
new SelectedMenu[MAX_PLAYERS];
new SelectedQty[MAX_PLAYERS][MAX_PDGMENU];
new TotalPrice[MAX_PLAYERS];
new OrderList[MAX_PLAYERS][MAX_ORDER_LENGTH];
new AmountAll[MAX_PLAYERS];

enum e_OrderData {
    ordBuyer[24],
    ordList[512],
    ordTotal,
    ordMethod[16]
};

new ActiveOrders[MAX_ORDERS][e_OrderData];
new OrderCount;

hook OnGameModeInit()
{
    CreateDynamic3DTextLabel(""GREEN"[Y]"WHITE" Menu Pedagang", -1, 2880.888, -1994.837, 11.138, 10.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, 0, 0, -1, 10.0, -1, 0);
    CreateDynamicPickup(2682, 23, 2880.888, -1994.837, 10.200, -1, -1, -1, 10.0);
    return 1;
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    if(newkeys & KEY_YES && GetPlayerState(playerid) == PLAYER_STATE_ONFOOT)
    {
        if(IsPlayerInRangeOfPoint(playerid, 2.0, 2880.888, -1994.837, 11.138))
        {
            ShowMenuPedagang(playerid);
        }
    }
    return 1;
}

stock GetPlayerNameEx(playerid)
{
    static name[MAX_PLAYER_NAME];
    GetPlayerName(playerid, name, sizeof(name));
    return name;
}

stock GetMenuName(index)
{
    static nm[32];
    switch(index)
    {
        case 0: format(nm, sizeof(nm), "Bubur Pedas");
        case 1: format(nm, sizeof(nm), "Nasi Pecel");
        case 2: format(nm, sizeof(nm), "Bakso");
        case 3: format(nm, sizeof(nm), "Nasi Goreng");
        case 4: format(nm, sizeof(nm), "Choco Matcha");
        case 5: format(nm, sizeof(nm), "Kopi Kenangan");
        case 6: format(nm, sizeof(nm), "Es Teh");
        case 7: format(nm, sizeof(nm), "Susu");
    }
    return nm;
}

stock GetMenuPrice(index)
{
    switch(index)
    {
        case 0: return PRICE_BUBUR_PEDAS;
        case 1: return PRICE_NASI_PECEL;
        case 2: return PRICE_BAKSO;
        case 3: return PRICE_NASI_GORENG;
        case 4: return PRICE_CHOCO_MATCHA;
        case 5: return PRICE_KOPI_KENANGAN;
        case 6: return PRICE_ES_TEH;
        case 7: return PRICE_SUSU;
    }
    return 0;
}

stock ShowMenuPedagang(playerid)
{
    for(new i = 0; i < 54; i++) PlayerTextDrawShow(playerid, MenuPDG[playerid][i]);
    PlayerTextDrawSetString(playerid, MenuPDG[playerid][49], "0");
    SelectTextDraw(playerid, -1);
    AmountAll[playerid] = 0;
    MenuPedagangOpen[playerid] = true;

    SelectedMenu[playerid] = -1;
    for (new i = 0; i < MAX_PDGMENU; i++)
        SelectedQty[playerid][i] = 0;

    TotalPrice[playerid] = 0;
    OrderList[playerid][0] = EOS;
}

stock HideMenuPedagang(playerid)
{
    for(new i = 0; i < 54; i++) PlayerTextDrawHide(playerid, MenuPDG[playerid][i]);
    MenuPedagangOpen[playerid] = false;
    CancelSelectTextDraw(playerid);
    return 1;
}

stock UpdateOrderList(playerid)
{
    TotalPrice[playerid] = 0;
    OrderList[playerid][0] = EOS;

    for (new i = 0; i < MAX_PDGMENU; i++)
    {
        if (SelectedQty[playerid][i] > 0)
        {
            new temp[64];
            format(temp, sizeof(temp), "%s x%d ($%d)\n",
                GetMenuName(i),
                SelectedQty[playerid][i],
                SelectedQty[playerid][i] * GetMenuPrice(i));
            strcat(OrderList[playerid], temp);
            TotalPrice[playerid] += SelectedQty[playerid][i] * GetMenuPrice(i);
        }
    }
}

stock GetPlayerIDFromName(const name[])
{
    new targetid = INVALID_PLAYER_ID;
    new pname[MAX_PLAYER_NAME];

    for (new i = 0; i < MAX_PLAYERS; i++)
    {
        if (!IsPlayerConnected(i))
            continue;

        GetPlayerName(i, pname, sizeof(pname));
        if (!strcmp(pname, name, true))
        {
            targetid = i;
            break;
        }
    }
    return targetid;
}

stock AddAccLogDB(const pedagang[], harga, bool:isCash)
{
    new q[256];
    if (isCash)
    {
        mysql_format(g_SQL, q, sizeof(q),
            "INSERT INTO `%s` (`pedagang_name`, `total_acc`, `total_cash`) VALUES ('%e', 1, %d) \
            ON DUPLICATE KEY UPDATE `total_acc`=`total_acc`+1, `total_cash`=`total_cash`+%d",
            TABLE_ACC_LOGS, pedagang, harga, harga);
    }
    else
    {
        mysql_format(g_SQL, q, sizeof(q),
            "INSERT INTO `%s` (`pedagang_name`, `total_acc`, `total_bank`) VALUES ('%e', 1, %d) \
            ON DUPLICATE KEY UPDATE `total_acc`=`total_acc`+1, `total_bank`=`total_bank`+%d",
            TABLE_ACC_LOGS, pedagang, harga, harga);
    }
    mysql_tquery(g_SQL, q);
    return 1;
}

forward OnShowLogsAccList(playerid);
public OnShowLogsAccList(playerid)
{
    new rows, fields;
    cache_get_data(rows, fields);
    if (rows == 0)
        return ShowTDN(playerid, NOTIFICATION_WARNING, "Belum ada data ACC pesanan.");

    new output[1024];
    format(output, sizeof(output), "Nama Pedagang\tTotal ACC\n");

    for (new i = 0; i < rows; i++)
    {
        new name[24];
        new acc;
        cache_get_field_content(i, "pedagang_name", name);
        acc = cache_get_field_int(i, "total_acc");

        new line[64];
        format(line, sizeof(line), "%s\t%d\n", name, acc);
        strcat(output, line);
    }

    ShowPlayerDialog(playerid, DIALOG_LOGS_ACC_LIST, DIALOG_STYLE_TABLIST_HEADERS,
        "Logs ACC Pesanan Pedagang", output, "Lihat", "Tutup");
    return 1;
}

forward OnShowLogsAccDetail(playerid);
public OnShowLogsAccDetail(playerid)
{
    new rows, fields;
    cache_get_data(rows, fields);
    if (rows == 0)
        return ShowTDN(playerid, NOTIFICATION_WARNING, "Data tidak ditemukan.");

    new name[24];
    new total_acc, total_cash, total_bank;
    cache_get_field_content(0, "pedagang_name", name);
    total_acc = cache_get_field_int(0, "total_acc");
    total_cash = cache_get_field_int(0, "total_cash");
    total_bank = cache_get_field_int(0, "total_bank");

    new msg[256];
    format(msg, sizeof(msg),
        "Nama Pedagang: %s\nTotal ACC: %d kali\n\nPendapatan dari Cash: $%d\nPendapatan dari Bank: $%d\n\nTotal Keseluruhan: $%d",
        name, total_acc, total_cash, total_bank, total_cash + total_bank);

    ShowPlayerDialog(playerid, DIALOG_LOGS_ACC_DETAIL, DIALOG_STYLE_MSGBOX,
        "Detail ACC Pedagang", msg, "Tutup", "");
    return 1;
}

CMD:listpesanan(playerid, params[])
{
    if(AccountData[playerid][pFaction] != FACTION_PEDAGANG) 
        return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda bukan seorang pedagang!");

    if(OrderCount == 0)
        return ShowTDN(playerid, NOTIFICATION_WARNING, "Belum ada pesanan pelanggan!");

    new output[1024];
    output[0] = EOS;

    for(new i = 0; i < OrderCount; i++)
    {
        format(output, sizeof(output), "%s%s (Total: $%d)\n", output, ActiveOrders[i][ordBuyer], ActiveOrders[i][ordTotal]);
    }
    ShowPlayerDialog(playerid, DIALOG_PEDAGANG_ORDERS, DIALOG_STYLE_LIST, "Daftar Pesanan Pelanggan", output, "Lihat", "Tutup");
    return 1;
}

hook ClickDynPlayerTextdraw(playerid, PlayerText:playertextid)
{
    if(!MenuPedagangOpen[playerid]) return 0;

    if(playertextid == MenuPDG[playerid][50])
        return HideMenuPedagang(playerid);

    if(playertextid == MenuPDG[playerid][15])
    {
        if(!strlen(OrderList[playerid]))
            return ShowTDN(playerid, NOTIFICATION_WARNING, "Belum ada pesanan!");

        new msg[512];
        format(msg, sizeof(msg), "Pesanan Anda:\n%s\nTotal Harga: $%d", 
            OrderList[playerid], TotalPrice[playerid]);
        ShowPlayerDialog(playerid, DIALOG_PEDAGANG_TOTAL, DIALOG_STYLE_MSGBOX, 
            "Rincian Pesanan", msg, "OK", "");
        return 1;
    }
    if(playertextid == MenuPDG[playerid][12])
    {
        if(!strlen(OrderList[playerid]))
            return ShowTDN(playerid, NOTIFICATION_WARNING, "Belum ada pesanan!");

        ShowPlayerDialog(playerid, DIALOG_PEDAGANG_PAYMENT, DIALOG_STYLE_LIST,
            "Pilih Metode Pembayaran",
            "Bayar dengan Uang Cash\nBayar dengan Uang Bank",
            "Pilih", "Batal");
        return 1;
    }
    if(playertextid >= MenuPDG[playerid][1] && playertextid <= MenuPDG[playerid][8])
    {
        SelectedMenu[playerid] = _:playertextid - _:MenuPDG[playerid][1];
        new nm[32];
        format(nm, sizeof(nm), GetMenuName(SelectedMenu[playerid]));
        new msg[64];
        format(msg, sizeof(msg), "Kamu memilih menu %s", nm);
        ShowTDN(playerid, NOTIFICATION_INFO, msg);
    }
    if (playertextid == MenuPDG[playerid][46])
    {
        if (SelectedMenu[playerid] == -1)
            return ShowTDN(playerid, NOTIFICATION_INFO, "Pilih menu dulu sebelum menambah jumlah!");

        new menu = SelectedMenu[playerid];
        if (SelectedQty[playerid][menu] < 99)
            SelectedQty[playerid][menu]++;
        AmountAll[playerid]++;

        UpdateOrderList(playerid);
        new jumlah_str[8];
        format(jumlah_str, sizeof(jumlah_str), "%d", AmountAll[playerid]);
        PlayerTextDrawSetString(playerid, MenuPDG[playerid][49], jumlah_str);
    }
    if (playertextid == MenuPDG[playerid][45])
    {
        if (SelectedMenu[playerid] == -1)
            return ShowTDN(playerid, NOTIFICATION_WARNING, "Pilih menu dulu sebelum mengurangi jumlah!");

        new menu = SelectedMenu[playerid];
        if (SelectedQty[playerid][menu] > 0)
        {
            SelectedQty[playerid][menu]--;
            if(AmountAll[playerid] > 0) AmountAll[playerid]--;
        }

        UpdateOrderList(playerid);
        new jumlah_str[8];
        format(jumlah_str, sizeof(jumlah_str), "%d", AmountAll[playerid]);
        PlayerTextDrawSetString(playerid, MenuPDG[playerid][49], jumlah_str);
    }
    return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    if(dialogid == DIALOG_PEDAGANG_PAYMENT && response)
    {
        new method[16];
        if(listitem == 0) format(method, sizeof(method), "Cash");
        else format(method, sizeof(method), "Bank");

        if(OrderCount >= MAX_ORDERS)
            return ShowTDN(playerid, NOTIFICATION_WARNING, "Kapasitas pesanan penuh!");

        format(ActiveOrders[OrderCount][ordBuyer], 24, "%s", GetPlayerNameEx(playerid));
        format(ActiveOrders[OrderCount][ordList], 512, "%s", OrderList[playerid]);
        format(ActiveOrders[OrderCount][ordMethod], 16, "%s", method);
        ActiveOrders[OrderCount][ordTotal] = TotalPrice[playerid];
        OrderCount++;

        ShowTDN(playerid, NOTIFICATION_SUKSES, "Pesanan berhasil dibuat! Tunggu konfirmasi dari pedagang.");
        HideMenuPedagang(playerid);
    }
    else if(dialogid == DIALOG_PEDAGANG_ORDERS && response)
    {
        if(listitem >= 0 && listitem < OrderCount)
        {
            SetPVarInt(playerid, "selected_order", listitem);

            ShowPlayerDialog(playerid, DIALOG_PEDAGANG_ACTION, DIALOG_STYLE_LIST,
                "Pilih Tindakan Pesanan",
                "ACC Pesanan\nTolak Pesanan",
                "Pilih", "Batal");
        }
    }
    else if(dialogid == DIALOG_PEDAGANG_ACTION && response)
    {
        new idx = GetPVarInt(playerid, "selected_order");
        if(idx < 0 || idx >= OrderCount) return 1;

        if(listitem == 0)
        {
            new msg[512];
            format(msg, sizeof(msg), 
                "Nama: %s\n\n%sTotal: $%d\nMetode: %s\n\nApakah kamu ingin ACC pesanan ini?",
                ActiveOrders[idx][ordBuyer],
                ActiveOrders[idx][ordList],
                ActiveOrders[idx][ordTotal],
                ActiveOrders[idx][ordMethod]
            );

            SetPVarInt(playerid, "acc_selected", idx);
            ShowPlayerDialog(playerid, DIALOG_PEDAGANG_CONFIRM, DIALOG_STYLE_MSGBOX,
                "Konfirmasi ACC Pesanan", msg, "ACC", "Batal");
        }
        else if(listitem == 1)
        {
            new msg[256];
            format(msg, sizeof(msg), "Apakah kamu yakin ingin menolak pesanan dari %s?", ActiveOrders[idx][ordBuyer]);
            SetPVarInt(playerid, "deny_selected", idx);
            ShowPlayerDialog(playerid, DIALOG_PEDAGANG_DENY, DIALOG_STYLE_MSGBOX,
                "Konfirmasi Penolakan Pesanan", msg, "Ya", "Tidak");
        }
    }
    else if(dialogid == DIALOG_PEDAGANG_CONFIRM && response)
    {
        new idx = GetPVarInt(playerid, "acc_selected");
        if(idx < 0 || idx >= OrderCount) return 1;

        new buyerid = GetPlayerIDFromName(ActiveOrders[idx][ordBuyer]);
        new harga = ActiveOrders[idx][ordTotal];

        if(buyerid != INVALID_PLAYER_ID)
        {
            if(!strcmp(ActiveOrders[idx][ordMethod], "Cash"))
            {
                if(AccountData[buyerid][pMoney] < harga)
                    return ShowTDN(playerid, NOTIFICATION_ERROR, "Pembeli tidak memiliki cukup uang tunai!");

                TakePlayerMoneyEx(buyerid, harga);
                GivePlayerMoneyEx(playerid, harga);
            }
            else
            {
                if(AccountData[buyerid][pBankMoney] < harga)
                    return ShowTDN(playerid, NOTIFICATION_ERROR, "Saldo bank pembeli tidak cukup!");

                AccountData[buyerid][pBankMoney] -= harga;
                AccountData[playerid][pBankMoney] += harga;

                new q[256];
                mysql_format(g_SQL, q, sizeof(q),
                    "UPDATE `player_characters` SET `Char_BankMoney`=%d WHERE `pID`=%d",
                    AccountData[buyerid][pBankMoney],
                    AccountData[buyerid][pID]);
                mysql_tquery(g_SQL, q);

                mysql_format(g_SQL, q, sizeof(q),
                    "UPDATE `player_characters` SET `Char_BankMoney`=%d WHERE `pID`=%d",
                    AccountData[playerid][pBankMoney],
                    AccountData[playerid][pID]);
                mysql_tquery(g_SQL, q);
            }

            // Tambahkan log ACC ke database
            AddAccLogDB(GetPlayerNameEx(playerid), harga, !strcmp(ActiveOrders[idx][ordMethod], "Cash"));

            // Kirim notifikasi ke pembeli
            ShowTDN(buyerid, NOTIFICATION_SUKSES, "Pesananmu telah di-ACC oleh pedagang!");

            // Pesan ke pedagang
            new msg[128];
            format(msg, sizeof(msg), "Pesanan dari %s telah di-ACC dan dibayar $%d.", ActiveOrders[idx][ordBuyer], harga);
            ShowTDN(playerid, NOTIFICATION_SUKSES, msg);

            printf("[PEDAGANG LOGS] %s meng-ACC pesanan dari %s senilai $%d (%s)",
                GetPlayerNameEx(playerid),
                ActiveOrders[idx][ordBuyer],
                harga,
                ActiveOrders[idx][ordMethod]);
        }

        // Hapus pesanan yang sudah di-ACC dari daftar
        for (new i = idx; i < OrderCount - 1; i++)
        {
            format(ActiveOrders[i][ordBuyer], 24, "%s", ActiveOrders[i + 1][ordBuyer]);
            format(ActiveOrders[i][ordList], 512, "%s", ActiveOrders[i + 1][ordList]);
            format(ActiveOrders[i][ordMethod], 16, "%s", ActiveOrders[i + 1][ordMethod]);
            ActiveOrders[i][ordTotal] = ActiveOrders[i + 1][ordTotal];
        }
        OrderCount--;
    }
    else if (dialogid == DIALOG_PEDAGANG_DENY && response)
    {
        new idx = GetPVarInt(playerid, "deny_selected");
        if (idx < 0 || idx >= OrderCount) return 1;

        new buyerid = GetPlayerIDFromName(ActiveOrders[idx][ordBuyer]);
        if (buyerid != INVALID_PLAYER_ID)
        {
            ShowTDN(buyerid, NOTIFICATION_WARNING, "Pesananmu ditolak oleh pedagang.");
        }

        new msg[128];
        format(msg, sizeof(msg), "Pesanan dari %s telah ditolak dan dihapus.", ActiveOrders[idx][ordBuyer]);
        ShowTDN(playerid, NOTIFICATION_WARNING, msg);

        printf("[PEDAGANG LOGS] %s menolak pesanan dari %s (Total $%d)",
            GetPlayerNameEx(playerid),
            ActiveOrders[idx][ordBuyer],
            ActiveOrders[idx][ordTotal]);

        // Hapus pesanan
        for (new i = idx; i < OrderCount - 1; i++)
        {
            format(ActiveOrders[i][ordBuyer], 24, "%s", ActiveOrders[i + 1][ordBuyer]);
            format(ActiveOrders[i][ordList], 512, "%s", ActiveOrders[i + 1][ordList]);
            format(ActiveOrders[i][ordMethod], 16, "%s", ActiveOrders[i + 1][ordMethod]);
            ActiveOrders[i][ordTotal] = ActiveOrders[i + 1][ordTotal];
        }
        OrderCount--;
    }

    else if (dialogid == DIALOG_LOGS_ACC_LIST && response)
    {
        new name[24];
        sscanf(inputtext, "s[24]", name); // ambil nama pedagang dari baris yang diklik

        new query[128];
        mysql_format(g_SQL, query, sizeof(query),
            "SELECT * FROM `%s` WHERE `pedagang_name`='%e' LIMIT 1", TABLE_ACC_LOGS, name);
        mysql_tquery(g_SQL, query, "OnShowLogsAccDetail", "i", playerid);
    }
    return 1;
}