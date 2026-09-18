#include <YSI\y_hooks>
new pTimerMancing[MAX_PLAYERS] = {-1, ...};
new pTimerSellFish[MAX_PLAYERS] = {-1, ...};

new STREAMER_TAG_AREA:FishingArea[7];
new STREAMER_TAG_AREA:SellFishArea;
new STREAMER_TAG_AREA:SellFishIlegalArea;

new PlayerText: TDFish[MAX_PLAYERS][4];
new PlayerText: Model_Fish[MAX_PLAYERS];
new PlayerText: ProgressBarFish[MAX_PLAYERS];
new Float: ProgressValue[MAX_PLAYERS];
new PlayerText: TimerBar[MAX_PLAYERS];
new FishingTimer[MAX_PLAYERS];
new TimerTime[MAX_PLAYERS];

static Float:FishingPoint[][] = 
{
    {405.542, -2115.333, 3.949},
    {395.077, -2115.333, 3.949},
    {390.077, -2115.333, 3.949},
    {385.077, -2115.333, 3.949},
    {380.077, -2115.333, 3.949},
    {375.077, -2115.333, 3.949},
    {371.217, -2115.333, 3.949}
};

hook OnPlayerConnect(playerid)
{
    pTimerMancing[playerid] = -1;
    pTimerSellFish[playerid] = -1;
    return 1;
}

hook OnPlayerDisconnect(playerid, reason)
{
    KillTimer(pTimerMancing[playerid]);
    KillTimer(pTimerSellFish[playerid]);
    pTimerMancing[playerid] = -1;
    pTimerSellFish[playerid] = -1;
    return 1;
}

hook OnGameModeInit()
{
    for(new x = 0; x < 7; x ++)
    {
        FishingArea[x] = CreateDynamicSphere(FishingPoint[x][0], FishingPoint[x][1], FishingPoint[x][2], 2.0, 0, 0, -1), CreateDynamic3DTextLabel(""GREEN"[Y]"WHITE" Memancing", -1, FishingPoint[x][0], FishingPoint[x][1], FishingPoint[x][2], 15.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, 0, 0, -1, 15.0, -1, 0);
    }
    SellFishArea = CreateDynamicSphere(-2057.3674, -2464.5283, 31.1797, 2.0, 0, 0, -1); 
    SellFishIlegalArea = CreateDynamicSphere(2160.7388, -102.3210, 2.7500, 2.0, 0, 0, -1);
    CreateDynamic3DTextLabel(""GREEN"[Y]"WHITE" Jual Hiu/Penyu", -1, 2160.7388, -102.3210, 2.7500, 15.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, 0, 0, -1, 15.0, -1, 0);
    CreateDynamic3DTextLabel(""GREEN"[Y]"WHITE" Jual Ikan", -1, -2057.3674, -2464.5283, 31.1797, 15.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, 0, 0, -1, 15.0, -1, 0);
    return 1;
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    if(newkeys & KEY_YES && GetPlayerState(playerid) == PLAYER_STATE_ONFOOT)
    {
        if(IsPlayerInDynamicArea(playerid, SellFishArea))
        {
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang melakukan sesuatu, tunggu hingga progress selesai!");
            if(!PlayerHasItem(playerid, "Ikan Tawar")) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak memiliki ikan tawar untuk dijual!");

            AccountData[playerid][ActivityTime] = 1;
            PlayerTextDrawSetString(playerid, ProgressBar[playerid][3], "MENJUAL IKAN");
            ShowProgressBar(playerid);

            ApplyAnimationEx(playerid, "BD_FIRE", "wash_up", 4.1, 1, 0, 0, 0, 0, 1);
            pTimerSellFish[playerid] = SetTimerEx("SellingFish", 1000, true, "d", playerid);
        }

        if(IsPlayerInDynamicArea(playerid, SellFishIlegalArea))
        {
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang melakukan sesuatu, tunggu hingga progress selesai!");
            new count;
            foreach(new i : Player) if (IsPlayerConnected(i)) if (SQL_IsCharacterLogged(i))
            {
                if(AccountData[i][pFaction] == FACTION_POLISI && AccountData[i][pDutyPD]) count++;
            }
            if(count <= 3) return ShowTDN(playerid, NOTIFICATION_ERROR, "Minimal 3 Polisi Duty");
            
            ShowPlayerDialog(playerid, DIALOG_SELLFISH_ILEGAL, DIALOG_STYLE_LIST, ""TTR"Astral City Roleplay "WHITE"- Sell Ilegal Fish",
            "Ikan Hiu\nPenyu", "Pilih", "Batal");
        }

        for(new x = 0; x < 7; x ++)
        {
            if(IsPlayerInDynamicArea(playerid, FishingArea[x]))
            {
                if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang melakukan sesuatu, tunggu sampai progress selesai!");
                if(!PlayerHasItem(playerid, "Pancingan")) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak memiliki pancingan!");
                if(!PlayerHasItem(playerid, "Umpan")) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak memiliki umpan!");
                if(GetTotalWeightFloat(playerid) > 50) return ShowTDN(playerid, NOTIFICATION_ERROR, "Inventory anda telah penuh!");
                if(AccountData[playerid][pInjured]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang pingsan!");

                AccountData[playerid][ActivityTime] = 1;
                ApplyAnimationEx(playerid, "SWORD", "sword_block", 50.0, 0, 1, 0, 1, 1, 1);
                SetPlayerAttachedObject(playerid, 9,18632,6,0.079376,0.037070,0.007706,181.482910,0.000000,0.000000,1.000000,1.000000,1.000000);
                SetTimerEx("DelayFishing", 3000, false, "d", playerid);
            }
        }
    }
    return 1;
}
hook ClickDynPlayerTextdraw(playerid, PlayerText: playertextid)
{
    if(playertextid == Model_Fish[playerid])
    {
        new isi = RandomMinMax(5, 20);
        MoveFish(playerid, float(isi));

        if(ProgressValue[playerid] >= 100.0)
        {
            AccountData[playerid][ActivityTime] = 0;
        
            ClearAnimations(playerid, 1);
            StopLoopingAnim(playerid);
            SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
            ApplyAnimation(playerid, "CARRY", "crry_prtial", 4.0, 0, 0, 0, 0, 0, 1);
            RemovePlayerAttachedObject(playerid, 9);

            Inventory_Remove(playerid, "Umpan");
            ShowItemBox(playerid, "Removed 1x", "Umpan", 1603);

            new rands = RandomEx(1, 58), randikan = RandomEx(3, 10);
            switch(rands)
            {
                case 1..10:
                {
                    Inventory_Add(playerid, "Ikan Tawar", 1604, randikan);
                    ShowItemBox(playerid, sprintf("Received %dx", randikan), "Ikan Tawar", 1604);
                }
                case 11..21:
                {
                    SendClientMessageEx(playerid, -1, "[i] Pancingan mu terbawa ikan besar dan jatuh ke dasar laut");
                    Inventory_Remove(playerid, "Pancingan");
                }
                case 22..31:
                {
                    SendClientMessage(playerid, -1, "[i] Anda zonk mendapatkan sampah makanan");
                    Inventory_Add(playerid, "Sampah Makanan", 2840);
                    ShowItemBox(playerid, "Received 1x", "Sampah Makanan", 2840);
                }
                case 32..50:
                {
                    Inventory_Add(playerid, "Ikan Tawar", 1604);
                    ShowItemBox(playerid, "Removed 1x", "Umpan", 1603);
                    ShowItemBox(playerid, "Received 1x", "Ikan Tawar", 1604);
                }
                case 51..53:
                {
                    Inventory_Add(playerid, "Ikan Tawar", 1604, 50);
                    ShowItemBox(playerid, "Received 50x", "Ikan Tawar", 1604);
                    Info(playerid, "Anda beruntung karena mendapatkan "YELLOW"50"WHITE" ikan hari ini");
                }
                case 54..55:
                {
                    Inventory_Add(playerid, "Penyu", 1609);
                    ShowItemBox(playerid, "Received 1x", "Penyu", 1609);
                }
                case 56..57:
                {
                    Inventory_Add(playerid, "Hiu", 1608);
                    ShowItemBox(playerid, "Received 1x", "Hiu", 1608);
                }
            }
            CancelFishing(playerid);
            return 1;
        }
    }
    if(playertextid == TDFish[playerid][2])
    {
        ShowTDN(playerid, NOTIFICATION_WARNING, "Kamu membatalkan mancing.");
        CancelFishing(playerid);
        return 1;
    }
    return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    switch(dialogid)
    {
        case DIALOG_SELLFISH_ILEGAL:
        {
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang melakukan sesuatu, tunggu sampai progress selesai!");
            switch(listitem)
            {
                case 0: //hiu
                {
                    if(!PlayerHasItem(playerid, "Hiu")) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak memiliki ikan hiu!");
                    
                    AccountData[playerid][ActivityTime] = 1;
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][3], "JUAL HIU");
                    ShowProgressBar(playerid);

                    ApplyAnimationEx(playerid, "BD_FIRE", "wash_up", 4.1, 1, 0, 0, 0, 0, 1);
                    pTimerSellFish[playerid] = SetTimerEx("SellShark", 1000, true, "i", playerid);
                }
                case 1: //penyu
                {
                    if(!PlayerHasItem(playerid, "Penyu")) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak memiliki penyu!");
                    
                    AccountData[playerid][ActivityTime] = 1;
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][3], "JUAL PENYU");
                    ShowProgressBar(playerid);

                    ApplyAnimationEx(playerid, "BD_FIRE", "wash_up", 4.1, 1, 0, 0, 0, 0, 1);
                    pTimerSellFish[playerid] = SetTimerEx("SellPenyu", 1000, true, "i", playerid);
                }
            }
        }
    }
    return 1;
}

/* Other Func */
forward DelayFishing(playerid);
public DelayFishing(playerid)
{
    Mulai(playerid);
    MoveFish(playerid);
    StartFishingTimer(playerid);
    SelectTextDraw(playerid, 0xFF0000FF);
    return 1;
}

forward SellPenyu(playerid);
public SellPenyu(playerid)
{
    if(!IsPlayerConnected(playerid))
    {
        KillTimer(pTimerSellFish[playerid]);
        pTimerSellFish[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        return 0;
    }

    if(!IsPlayerInDynamicArea(playerid, SellFishIlegalArea))
    {
        KillTimer(pTimerSellFish[playerid]);
        pTimerSellFish[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);

        ClearAnimations(playerid, 1);
        StopLoopingAnim(playerid);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(!IsValidDynamicArea(SellFishIlegalArea))
    {
        KillTimer(pTimerSellFish[playerid]);
        pTimerSellFish[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);

        ClearAnimations(playerid, 1);
        StopLoopingAnim(playerid);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(!PlayerHasItem(playerid, "Penyu"))
    {
        KillTimer(pTimerSellFish[playerid]);
        pTimerSellFish[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);

        ClearAnimations(playerid, 1);
        StopLoopingAnim(playerid);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak memiliki penyu!");
        return 0;
    }

    if(AccountData[playerid][pInjured])
    {
        KillTimer(pTimerSellFish[playerid]);
        pTimerSellFish[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);

        ClearAnimations(playerid, 1);
        StopLoopingAnim(playerid);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang pingsan!");
        return 0;
    }

    if(AccountData[playerid][ActivityTime] >= 15)
    {
        KillTimer(pTimerSellFish[playerid]);
        pTimerSellFish[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);

        ClearAnimations(playerid, 1);
        StopLoopingAnim(playerid);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);

        new count = Inventory_Count(playerid, "Penyu");
        new price = count * 150;

        SendClientMessageEx(playerid, -1, "[i] Anda mendapatkan "RED"%s"WHITE" uang merah dari hasil penjualan penyu sejumlah "YELLOW"%dx", FormatMoney(price), count);
        Inventory_Remove(playerid, "Penyu", count);
        ShowItemBox(playerid, sprintf("Removed %dx", count), "Penyu", 1609);
        AccountData[playerid][pRedMoney] += price;
    }
    else
    {
        AccountData[playerid][ActivityTime] ++;

        static Float:progressvalue;
        progressvalue = AccountData[playerid][ActivityTime] * 85/15;
        PlayerTextDrawTextSize(playerid, ProgressBar[playerid][2], progressvalue, 15.0);
        PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
        return 0;
    }
    return 1;
}

forward SellShark(playerid);
public SellShark(playerid)
{
    if(!IsPlayerConnected(playerid))
    {
        KillTimer(pTimerSellFish[playerid]);
        pTimerSellFish[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        return 0;
    }

    if(!IsPlayerInDynamicArea(playerid, SellFishIlegalArea))
    {
        KillTimer(pTimerSellFish[playerid]);
        pTimerSellFish[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);

        ClearAnimations(playerid, 1);
        StopLoopingAnim(playerid);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(!IsValidDynamicArea(SellFishIlegalArea))
    {
        KillTimer(pTimerSellFish[playerid]);
        pTimerSellFish[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);

        ClearAnimations(playerid, 1);
        StopLoopingAnim(playerid);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(!PlayerHasItem(playerid, "Hiu"))
    {
        KillTimer(pTimerSellFish[playerid]);
        pTimerSellFish[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);

        ClearAnimations(playerid, 1);
        StopLoopingAnim(playerid);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak memiliki ikan hiu!");
        return 0;
    }

    if(AccountData[playerid][pInjured])
    {
        KillTimer(pTimerSellFish[playerid]);
        pTimerSellFish[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);

        ClearAnimations(playerid, 1);
        StopLoopingAnim(playerid);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang pingsan!");
        return 0;
    }

    if(AccountData[playerid][ActivityTime] >= 15)
    {
        KillTimer(pTimerSellFish[playerid]);
        pTimerSellFish[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);

        ClearAnimations(playerid, 1);
        StopLoopingAnim(playerid);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);

        new count = Inventory_Count(playerid, "Hiu");
        new price = count * 250;

        SendClientMessageEx(playerid, -1, "[i] Anda mendapatkan "RED"%s"WHITE" uang merah dari hasil penjualan hiu sejumlah "YELLOW"%dx", FormatMoney(price), count);
        Inventory_Remove(playerid, "Hiu", count);
        ShowItemBox(playerid, sprintf("Removed %dx", count), "Hiu", 1608);
        AccountData[playerid][pRedMoney] += price;
    }
    else
    {
        AccountData[playerid][ActivityTime] ++;

        static Float:progressvalue;
        progressvalue = AccountData[playerid][ActivityTime] * 85/15;
        PlayerTextDrawTextSize(playerid, ProgressBar[playerid][2], progressvalue, 15.0);
        PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
        return 0;
    }
    return 1;
}

forward SellingFish(playerid);
public SellingFish(playerid)
{
    if(!IsPlayerConnected(playerid))
    {
        KillTimer(pTimerSellFish[playerid]);
        pTimerSellFish[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        return 0;
    }

    if(!IsValidDynamicArea(SellFishArea))
    {
        KillTimer(pTimerSellFish[playerid]);
        pTimerSellFish[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);

        ClearAnimations(playerid, 1);
        StopLoopingAnim(playerid);
        ApplyAnimation(playerid, "CARRY", "crry_prtial", 4.0, 0, 0, 0, 0, 0, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(!IsPlayerInDynamicArea(playerid, SellFishArea))
    {
        KillTimer(pTimerSellFish[playerid]);
        pTimerSellFish[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);

        ClearAnimations(playerid, 1);
        StopLoopingAnim(playerid);
        ApplyAnimation(playerid, "CARRY", "crry_prtial", 4.0, 0, 0, 0, 0, 0, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(AccountData[playerid][pInjured])
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang pingsan!");
        KillTimer(pTimerSellFish[playerid]);
        pTimerSellFish[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);

        ClearAnimations(playerid, 1);
        StopLoopingAnim(playerid);
        ApplyAnimation(playerid, "CARRY", "crry_prtial", 4.0, 0, 0, 0, 0, 0, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }
    
    if(AccountData[playerid][ActivityTime] >= 15)
    {
        KillTimer(pTimerSellFish[playerid]);
        pTimerSellFish[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);

        ClearAnimations(playerid, 1);
        StopLoopingAnim(playerid);
        ApplyAnimation(playerid, "CARRY", "crry_prtial", 4.0, 0, 0, 0, 0, 0, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
    
        new value = Inventory_Count(playerid, "Ikan Tawar");
        ShowItemBox(playerid, sprintf("Removed %dx", value), "Ikan Tawar", 1604);
        ShowItemBox(playerid, sprintf("Received %s", FormatMoney(value * 3)), "Uang", 1212);
        Inventory_Remove(playerid, "Ikan Tawar", value);
        GivePlayerMoneyEx(playerid, (value * 3));
    }
    else
    {
        AccountData[playerid][ActivityTime] ++;

        static Float:progressvalue;
        progressvalue = AccountData[playerid][ActivityTime] * 85/15;
        PlayerTextDrawTextSize(playerid, ProgressBar[playerid][2], progressvalue, 15.0);
        PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
        return 0;
    }
    return 1;
}

stock Mulai(playerid)
{
    TDFish[playerid][0] = CreatePlayerTextDraw(playerid, 305.000, 116.000, "_");
    PlayerTextDrawLetterSize(playerid, TDFish[playerid][0], 0.300, 29.000);
    PlayerTextDrawTextSize(playerid, TDFish[playerid][0], 0.000, 414.000);
    PlayerTextDrawAlignment(playerid, TDFish[playerid][0], 2);
    PlayerTextDrawColor(playerid, TDFish[playerid][0], -1);
    PlayerTextDrawUseBox(playerid, TDFish[playerid][0], 1);
    PlayerTextDrawBoxColor(playerid, TDFish[playerid][0], 150);
    PlayerTextDrawSetShadow(playerid, TDFish[playerid][0], 1);
    PlayerTextDrawSetOutline(playerid, TDFish[playerid][0], 1);
    PlayerTextDrawBackgroundColor(playerid, TDFish[playerid][0], 150);
    PlayerTextDrawFont(playerid, TDFish[playerid][0], 1);
    PlayerTextDrawSetProportional(playerid, TDFish[playerid][0], 1);

    TDFish[playerid][1] = CreatePlayerTextDraw(playerid, 103.000, 122.000, "PARTICLE:waterclear256");
    PlayerTextDrawTextSize(playerid, TDFish[playerid][1], 404.000, 232.000);
    PlayerTextDrawAlignment(playerid, TDFish[playerid][1], 1);
    PlayerTextDrawColor(playerid, TDFish[playerid][1], 1097458175);
    PlayerTextDrawSetShadow(playerid, TDFish[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, TDFish[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, TDFish[playerid][1], 255);
    PlayerTextDrawFont(playerid, TDFish[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, TDFish[playerid][1], 1);

    TDFish[playerid][2] = CreatePlayerTextDraw(playerid, 483.000, 359.000, "Cancel");
    PlayerTextDrawLetterSize(playerid, TDFish[playerid][2], 0.300, 1.500);
    PlayerTextDrawTextSize(playerid, TDFish[playerid][2], 15.000, 40.000);
    PlayerTextDrawAlignment(playerid, TDFish[playerid][2], 2);
    PlayerTextDrawColor(playerid, TDFish[playerid][2], -1);
    PlayerTextDrawSetShadow(playerid, TDFish[playerid][2], 1);
    PlayerTextDrawSetOutline(playerid, TDFish[playerid][2], 1);
    PlayerTextDrawBackgroundColor(playerid, TDFish[playerid][2], 150);
    PlayerTextDrawFont(playerid, TDFish[playerid][2], 2);
    PlayerTextDrawSetProportional(playerid, TDFish[playerid][2], 1);
    PlayerTextDrawSetSelectable(playerid, TDFish[playerid][2], 1);

    TDFish[playerid][3] = CreatePlayerTextDraw(playerid, 103.000, 355.000, "Progress");
    PlayerTextDrawLetterSize(playerid, TDFish[playerid][3], 0.300, 2.099);
    PlayerTextDrawAlignment(playerid, TDFish[playerid][3], 1);
    PlayerTextDrawColor(playerid, TDFish[playerid][3], -1);
    PlayerTextDrawSetShadow(playerid, TDFish[playerid][3], 1);
    PlayerTextDrawSetOutline(playerid, TDFish[playerid][3], 1);
    PlayerTextDrawBackgroundColor(playerid, TDFish[playerid][3], 150);
    PlayerTextDrawFont(playerid, TDFish[playerid][3], 2);
    PlayerTextDrawSetProportional(playerid, TDFish[playerid][3], 1);

    for(new i = 0; i < 4; i++)
        PlayerTextDrawShow(playerid, TDFish[playerid][i]);
    
    ProgressBarFish[playerid] = CreatePlayerTextDraw(playerid, 100.000, 358.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, ProgressBarFish[playerid], 0.000, 17.000);
    PlayerTextDrawAlignment(playerid, ProgressBarFish[playerid], 1);
    PlayerTextDrawColor(playerid, ProgressBarFish[playerid], 6553855);
    PlayerTextDrawSetShadow(playerid, ProgressBarFish[playerid], 0);
    PlayerTextDrawSetOutline(playerid, ProgressBarFish[playerid], 0);
    PlayerTextDrawBackgroundColor(playerid, ProgressBarFish[playerid], 255);
    PlayerTextDrawFont(playerid, ProgressBarFish[playerid], 4);
    PlayerTextDrawSetProportional(playerid, ProgressBarFish[playerid], 1);
    PlayerTextDrawShow(playerid, ProgressBarFish[playerid]);


    ProgressValue[playerid] = 0.0;
    return 1;
}

stock MoveFish(playerid, Float:value = 0.0)
{
    new Float:FishPos[2];
    FishPos[0] = RandomFloat(110.0, 450.0);
    FishPos[1] = RandomFloat(130.0, 300.0);

    if(value != 0) PlayerTextDrawDestroy(playerid, Model_Fish[playerid]);

    Model_Fish[playerid] = CreatePlayerTextDraw(playerid, FishPos[0], FishPos[1], "_");
    PlayerTextDrawTextSize(playerid, Model_Fish[playerid], 50.000, 50.000);
    PlayerTextDrawAlignment(playerid, Model_Fish[playerid], 1);
    PlayerTextDrawColor(playerid, Model_Fish[playerid], -1);
    PlayerTextDrawSetShadow(playerid, Model_Fish[playerid], 0);
    PlayerTextDrawSetOutline(playerid, Model_Fish[playerid], 0);
    PlayerTextDrawBackgroundColor(playerid, Model_Fish[playerid], 85);
    PlayerTextDrawFont(playerid, Model_Fish[playerid], 5);
    PlayerTextDrawSetProportional(playerid, Model_Fish[playerid], 0);
    PlayerTextDrawSetPreviewModel(playerid, Model_Fish[playerid], 19630);
    PlayerTextDrawSetPreviewRot(playerid, Model_Fish[playerid], 0.000, 0.000, 0.000, 1.000);
    PlayerTextDrawSetPreviewVehCol(playerid, Model_Fish[playerid], 0, 0);
    PlayerTextDrawSetSelectable(playerid, Model_Fish[playerid], 1);
    PlayerTextDrawShow(playerid, Model_Fish[playerid]);

    if(value > 0.0)
    {
        ProgressValue[playerid] += value;
        if(ProgressValue[playerid] > 100.0) ProgressValue[playerid] = 100.0;

        new Float:size = (73.0 * ProgressValue[playerid]) / 100.0;
        PlayerTextDrawTextSize(playerid, ProgressBarFish[playerid], size, 17.0);
        PlayerTextDrawShow(playerid, ProgressBarFish[playerid]);
    }
    return 1;
}

stock CancelFishing(playerid)
{
    for(new i = 0; i < 4; i++)
    {
        if(TDFish[playerid][i] != PlayerText:INVALID_TEXT_DRAW) 
        {
            PlayerTextDrawDestroy(playerid, TDFish[playerid][i]);
            TDFish[playerid][i] = PlayerText:INVALID_TEXT_DRAW;
        }
    }
    if(Model_Fish[playerid] != PlayerText:INVALID_TEXT_DRAW)
    {
        PlayerTextDrawDestroy(playerid, Model_Fish[playerid]);
        Model_Fish[playerid] = PlayerText:INVALID_TEXT_DRAW;
    }
    if(ProgressBarFish[playerid] != PlayerText:INVALID_TEXT_DRAW)
    {
        PlayerTextDrawDestroy(playerid, ProgressBarFish[playerid]);
        ProgressBarFish[playerid] = PlayerText:INVALID_TEXT_DRAW;
    }
    if(TimerBar[playerid] != PlayerText:INVALID_TEXT_DRAW)
    {
        PlayerTextDrawDestroy(playerid, TimerBar[playerid]);
        TimerBar[playerid] = PlayerText:INVALID_TEXT_DRAW;
    }
    CancelSelectTextDraw(playerid);
    AccountData[playerid][ActivityTime] = 0;
        
    ClearAnimations(playerid, 1);
    StopLoopingAnim(playerid);
    SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
    ApplyAnimation(playerid, "CARRY", "crry_prtial", 4.0, 0, 0, 0, 0, 0, 1);
    RemovePlayerAttachedObject(playerid, 9);


    if(FishingTimer[playerid] != 0)
    {
        KillTimer(FishingTimer[playerid]);
        FishingTimer[playerid] = 0;
    }
    return 1;
}

stock StartFishingTimer(playerid)
{
    TimerTime[playerid] = 10;

    TimerBar[playerid] = CreatePlayerTextDraw(playerid, 97.000, 100.000, "LD_SPAC:black");
    PlayerTextDrawTextSize(playerid, TimerBar[playerid], 417.000, 7.000);
    PlayerTextDrawAlignment(playerid, TimerBar[playerid], 1);
    PlayerTextDrawColor(playerid, TimerBar[playerid], 255);
    PlayerTextDrawSetShadow(playerid, TimerBar[playerid], 0);
    PlayerTextDrawSetOutline(playerid, TimerBar[playerid], 0);
    PlayerTextDrawBackgroundColor(playerid, TimerBar[playerid], 255);
    PlayerTextDrawFont(playerid, TimerBar[playerid], 4);
    PlayerTextDrawSetProportional(playerid, TimerBar[playerid], 1);
    PlayerTextDrawShow(playerid, TimerBar[playerid]);

    if(FishingTimer[playerid] != 0) KillTimer(FishingTimer[playerid]);
    FishingTimer[playerid] = SetTimerEx("OnFishingUpdate", 1000, true, "i", playerid);
}

forward OnFishingUpdate(playerid);
public OnFishingUpdate(playerid)
{
    if(--TimerTime[playerid] <= 0)
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Waktu habis! Kamu gagal menangkap ikan.");
        CancelFishing(playerid);
        return 1;
    }

    new Float:progress = (TimerTime[playerid] / 10.0) * 417.000;
    PlayerTextDrawTextSize(playerid, TimerBar[playerid], progress, 7.000);
    PlayerTextDrawShow(playerid, TimerBar[playerid]);
    return 1;
}