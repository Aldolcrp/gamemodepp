#include <YSI\y_hooks>
new
    boomSlot[4] = {-1, -1, -1, -1},
    boomTimer[4] = {-1, -1, -1, -1},
    PlayerText:BoomCarTD[MAX_PLAYERS][9];

// Hooks
hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    if((newkeys & KEY_YES))
    {
        if(IsPlayerInRangeOfPoint(playerid, 5.0, 382.174, -1908.342, 7.835))
        {
            new
                str[512]
            ;

            format(str, sizeof(str), 
            "Slot\tHarga ticket / durasi\n\
            %s\t"GREEN"$500 "WHITE"/ 1 menit\n\
            %s\t"GREEN"$500 "WHITE"/ 1 menit\n\
            %s\t"GREEN"$500 "WHITE"/ 1 menit\n\
            %s\t"GREEN"$500 "WHITE"/ 1 menit", boomSlot[0] != -1 ? ""YELLOW"Terisi" : ""GREY"Kosong", boomSlot[1] != -1 ? ""YELLOW"Terisi" : ""GREY"Kosong", boomSlot[2] != -1 ? ""YELLOW"Terisi" : ""GREY"Kosong", boomSlot[3] != -1 ? ""YELLOW"Terisi" : ""GREY"Kosong");
            Dialog_Show(playerid, ticketBoom, DIALOG_STYLE_TABLIST_HEADERS, "Ticket BomBomCar", str, "Pilih", "Tutup");
        }
    }
    return 1;
}

Dialog:ticketBoom(playerid, response, listitem, inputtext[])
{
    if(response)
    {
        if(boomSlot[listitem] != -1)
            return ShowTDN(playerid, NOTIFICATION_ERROR, "Ticket ini sudah dibeli!, mohon tunggu sebentar!");

        SetPVarInt(playerid, "UseBomCar", listitem+1);
        Dialog_Show(playerid, ticketBuy, DIALOG_STYLE_INPUT, "Ticket BomBomCar", "Harga untuk bermain 1 menit $500\nAnda ingin bermain berapa menit?", "Pay", "Tutup");
    }
    return 1;
}

Dialog:ticketBuy(playerid, response, listitem, inputtext[])
{
    if(response)
    {
        new id = GetPVarInt(playerid, "UseBomCar") - 1,
            time = strval(inputtext);

        if(boomSlot[id] != -1)
            return ShowTDN(playerid, NOTIFICATION_ERROR, "Ticket ini sudah dibeli!, mohon tunggu sebentar!");

        if(time < 1 || time > 10)
            return ShowTDN(playerid, NOTIFICATION_ERROR, "Durasi minimal 1 menit dan maksimal 10 menit!");

        if(AccountData[playerid][pMoney] < (500 * time))
            return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak memiliki cukup uang!");
        
        boomCar(playerid, id, time);
    }
    return 1;
}

boomCar(playerid, id, time)
{
    if(IsPlayerInRangeOfPoint(playerid, 5.0, 382.174, -1908.342, 7.835))
    {
        new cost = 500 * time;
        if(AccountData[playerid][pMoney] < cost)
            return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak memiliki cukup uang!");

        boomSlot[id] = playerid;
        TakePlayerMoneyEx(playerid, cost);

        new timer = time * 60;
        boomTimer[id] = timer;
        VehicleRental_Create(playerid, 539, timer, 99, 392.939, -1908.150, 8.162, 183.609, random(225), random(225), 2000, GetPlayerVirtualWorld(playerid), GetPlayerInterior(playerid));
        
        PlayerTextDrawSetString(playerid, BoomCarTD[playerid][7], sprintf("Waktu bermain anda tersisa ~bl~%d menit %d detik", (timer / 60), (timer % 60)));
        forex(i, 9)
        {
            PlayerTextDrawShow(playerid, BoomCarTD[playerid][i]);
        }

        // Start the timer
        // stop UpdateBoomCarTime(playerid, id);
        // repeat UpdateBoomCarTime(playerid, id);
    }
    else
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak berada di dekat pembelian ticket!");
    }
    return 1;
}

createBoomTD(playerid)
{
    BoomCarTD[playerid][0] = CreatePlayerTextDraw(playerid, 1.000, 180.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoomCarTD[playerid][0], 95.000, 70.000);
    PlayerTextDrawAlignment(playerid, BoomCarTD[playerid][0], 1);
    PlayerTextDrawColor(playerid, BoomCarTD[playerid][0], -167773441);
    PlayerTextDrawSetShadow(playerid, BoomCarTD[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, BoomCarTD[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, BoomCarTD[playerid][0], 255);
    PlayerTextDrawFont(playerid, BoomCarTD[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, BoomCarTD[playerid][0], 1);

    BoomCarTD[playerid][1] = CreatePlayerTextDraw(playerid, 1.000, 180.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoomCarTD[playerid][1], 95.000, 17.000);
    PlayerTextDrawAlignment(playerid, BoomCarTD[playerid][1], 1);
    PlayerTextDrawColor(playerid, BoomCarTD[playerid][1], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, BoomCarTD[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, BoomCarTD[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, BoomCarTD[playerid][1], 255);
    PlayerTextDrawFont(playerid, BoomCarTD[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, BoomCarTD[playerid][1], 1);

    BoomCarTD[playerid][2] = CreatePlayerTextDraw(playerid, 89.000, 178.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, BoomCarTD[playerid][2], 13.000, 13.000);
    PlayerTextDrawAlignment(playerid, BoomCarTD[playerid][2], 1);
    PlayerTextDrawColor(playerid, BoomCarTD[playerid][2], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, BoomCarTD[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, BoomCarTD[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, BoomCarTD[playerid][2], 255);
    PlayerTextDrawFont(playerid, BoomCarTD[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, BoomCarTD[playerid][2], 1);

    BoomCarTD[playerid][3] = CreatePlayerTextDraw(playerid, 95.000, 183.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoomCarTD[playerid][3], 5.000, 14.000);
    PlayerTextDrawAlignment(playerid, BoomCarTD[playerid][3], 1);
    PlayerTextDrawColor(playerid, BoomCarTD[playerid][3], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, BoomCarTD[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, BoomCarTD[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, BoomCarTD[playerid][3], 255);
    PlayerTextDrawFont(playerid, BoomCarTD[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, BoomCarTD[playerid][3], 1);

    BoomCarTD[playerid][4] = CreatePlayerTextDraw(playerid, 89.000, 239.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, BoomCarTD[playerid][4], 13.000, 13.000);
    PlayerTextDrawAlignment(playerid, BoomCarTD[playerid][4], 1);
    PlayerTextDrawColor(playerid, BoomCarTD[playerid][4], -167773441);
    PlayerTextDrawSetShadow(playerid, BoomCarTD[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, BoomCarTD[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, BoomCarTD[playerid][4], 255);
    PlayerTextDrawFont(playerid, BoomCarTD[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, BoomCarTD[playerid][4], 1);

    BoomCarTD[playerid][5] = CreatePlayerTextDraw(playerid, 96.000, 197.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoomCarTD[playerid][5], 4.000, 48.000);
    PlayerTextDrawAlignment(playerid, BoomCarTD[playerid][5], 1);
    PlayerTextDrawColor(playerid, BoomCarTD[playerid][5], -167773441);
    PlayerTextDrawSetShadow(playerid, BoomCarTD[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, BoomCarTD[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, BoomCarTD[playerid][5], 255);
    PlayerTextDrawFont(playerid, BoomCarTD[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, BoomCarTD[playerid][5], 1);

    BoomCarTD[playerid][6] = CreatePlayerTextDraw(playerid, 45.000, 183.000, "BoomCar Timer");
    PlayerTextDrawLetterSize(playerid, BoomCarTD[playerid][6], 0.180, 1.099);
    PlayerTextDrawAlignment(playerid, BoomCarTD[playerid][6], 2);
    PlayerTextDrawColor(playerid, BoomCarTD[playerid][6], 572732671);
    PlayerTextDrawSetShadow(playerid, BoomCarTD[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, BoomCarTD[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, BoomCarTD[playerid][6], 150);
    PlayerTextDrawFont(playerid, BoomCarTD[playerid][6], 1);
    PlayerTextDrawSetProportional(playerid, BoomCarTD[playerid][6], 1);

    BoomCarTD[playerid][7] = CreatePlayerTextDraw(playerid, 48.000, 208.000, "Waktu bermain anda tersisa ~bl~5 menit 20 detik");
    PlayerTextDrawLetterSize(playerid, BoomCarTD[playerid][7], 0.170, 1.199);
    PlayerTextDrawTextSize(playerid, BoomCarTD[playerid][7], 199.000, 81.000);
    PlayerTextDrawAlignment(playerid, BoomCarTD[playerid][7], 2);
    PlayerTextDrawColor(playerid, BoomCarTD[playerid][7], 572732671);
    PlayerTextDrawSetShadow(playerid, BoomCarTD[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, BoomCarTD[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, BoomCarTD[playerid][7], 150);
    PlayerTextDrawFont(playerid, BoomCarTD[playerid][7], 1);
    PlayerTextDrawSetProportional(playerid, BoomCarTD[playerid][7], 1);

    BoomCarTD[playerid][8] = CreatePlayerTextDraw(playerid, 40.000, 170.000, "HUD:radar_impound");
    PlayerTextDrawTextSize(playerid, BoomCarTD[playerid][8], 15.000, 15.000);
    PlayerTextDrawAlignment(playerid, BoomCarTD[playerid][8], 1);
    PlayerTextDrawColor(playerid, BoomCarTD[playerid][8], -1);
    PlayerTextDrawSetShadow(playerid, BoomCarTD[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, BoomCarTD[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, BoomCarTD[playerid][8], 255);
    PlayerTextDrawFont(playerid, BoomCarTD[playerid][8], 4);
    PlayerTextDrawSetProportional(playerid, BoomCarTD[playerid][8], 1);
    return 1;
}

hook OnPlayerConnect(playerid)
{
    SetPVarInt(playerid, "UseBomCar", false);
    createBoomTD(playerid);
    return 1;
}

hook OnPlayerDC(playerid, reason)
{
    if (GetPVarInt(playerid, "UseBomCar"))
    {
        new id = GetPVarInt(playerid, "UseBomCar") - 1;
        boomSlot[id] = -1;
        boomTimer[id] = -1;
        // stop UpdateBoomCarTime(playerid, id);
    }
    return 1;
} 
hook OnGameModeInit()
{
    CreateDynamic3DTextLabel(""ASTRALCITY_GREEN"[Y]"WHITE" Membeli Ticket", -1, 382.174, -1908.342, 7.835, 15.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, 0, 0, -1, 15.0, -1, 0);
    return 1;
}

ptask BomBomCarUpdate[900](playerid)
{
    if(!AccountData[playerid][pSpawned])
        return 0;

    // Check all slots for this player
    for(new slot = 0; slot < 4; slot++)
    {
        if(boomSlot[slot] == playerid && boomTimer[slot] > 0)
        {
            boomTimer[slot]--;
            PlayerTextDrawSetString(playerid, BoomCarTD[playerid][7], sprintf("Waktu bermain anda tersisa ~bl~%d menit %d detik", (boomTimer[slot] / 60), (boomTimer[slot] % 60)));
            PlayerTextDrawShow(playerid, BoomCarTD[playerid][7]);

            if(boomTimer[slot] <= 0)
            {
                boomSlot[slot] = -1;
                boomTimer[slot] = -1;
                forex(i, 9)
                {
                    PlayerTextDrawHide(playerid, BoomCarTD[playerid][i]);
                }
                ShowTDN(playerid, NOTIFICATION_INFO, "Waktu bermain BomBomCar anda telah habis!");
            }
        }
    }
    return 1;
}