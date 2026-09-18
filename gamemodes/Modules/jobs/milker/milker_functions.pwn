#include <YSI\y_hooks>

new pTakingSusuTimer[MAX_PLAYERS] = {-1, ...};
new pProcessSusuTimer[MAX_PLAYERS] = {-1, ...};

enum E_SUSUSTUFF
{
    STREAMER_TAG_AREA:SusuJobArea,
    STREAMER_TAG_AREA:SusuProcessArea[4],

    STREAMER_TAG_PICKUP:SusuJobPickup,

    STREAMER_TAG_OBJECT:CowObject,
    STREAMER_TAG_MAP_ICON:MilkerIcon,
    STREAMER_TAG_AREA:CowPointArea[4],
    STREAMER_TAG_CP:CowPointCP[4],

    bool:DuringTakeSusu
};
new PlayerSusuVars[MAX_PLAYERS][E_SUSUSTUFF];

stock const Float: CowPoint[][] = 
{
    {225.492, 1130.848, 12.595},
    {225.614, 1137.141, 12.872},
    {226.286, 1140.608, 12.937},
    {226.104, 1145.800, 13.103}
};

stock const Float: ProccesSusuPoint[][] = 
{
    {256.037, 1114.530, 12.557},
    {251.148, 1114.533, 12.557},
    {246.560, 1114.530, 12.557},
    {241.829, 1114.532, 12.557}
};

function LoadVarsMilker(playerid)
{
    UnloadVarsMilker(playerid);

    PlayerSusuVars[playerid][SusuJobArea] = CreateDynamicCircle(291.678, 1138.407, 2.2, 0, 0, playerid);
    PlayerSusuVars[playerid][MilkerIcon] = CreateDynamicMapIcon(251.614, 1137.234, 11.062, 38, -1, 0, 0, playerid, 9999.0, MAPICON_GLOBAL, -1, 1);
}

function UnloadVarsMilker(playerid)
{
    if(IsValidDynamicArea(PlayerSusuVars[playerid][SusuJobArea]))
        DestroyDynamicArea(PlayerSusuVars[playerid][SusuJobArea]);
    PlayerSusuVars[playerid][SusuJobArea] = STREAMER_TAG_AREA: -1;
    
    if(IsValidDynamicMapIcon(PlayerSusuVars[playerid][MilkerIcon]))
        DestroyDynamicMapIcon(PlayerSusuVars[playerid][MilkerIcon]);
    PlayerSusuVars[playerid][MilkerIcon] = STREAMER_TAG_MAP_ICON: -1;

    for(new x = 0; x < 4; x++)
    {
        if(IsValidDynamicArea(PlayerSusuVars[playerid][CowPointArea][x]))
        if(DestroyDynamicArea(PlayerSusuVars[playerid][CowPointArea][x]))
            PlayerSusuVars[playerid][CowPointArea][x] = STREAMER_TAG_AREA: INVALID_STREAMER_ID;

        if(IsValidDynamicCP(PlayerSusuVars[playerid][CowPointCP][x]))
        if(DestroyDynamicCP(PlayerSusuVars[playerid][CowPointCP][x]))
            PlayerSusuVars[playerid][CowPointCP][x] = STREAMER_TAG_CP: INVALID_STREAMER_ID;

        if(IsValidDynamicArea(PlayerSusuVars[playerid][SusuProcessArea][x]))
        if(DestroyDynamicArea(PlayerSusuVars[playerid][SusuProcessArea][x]))
            PlayerSusuVars[playerid][SusuProcessArea][x] = STREAMER_TAG_AREA: INVALID_STREAMER_ID;
    }
    PlayerSusuVars[playerid][DuringTakeSusu] = false;
    return 1;
}

hook OnGameModeInitEx()
{
    CreateDynamicActor(158, 291.678, 1138.407, 8.585, 81.507, 1, 100.0, 0, 0, -1, 50.0, -1, 0);
    CreateDynamic3DTextLabel(""GREEN"[Y]"WHITE" Mulai bekerja", -1, 291.678, 1138.407, 8.585, 10.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, 0, 0, -1, 10.0, -1, 0);
    return 1;
}

hook OnPlayerConnect(playerid)
{
    pTakingSusuTimer[playerid] = -1;
    pProcessSusuTimer[playerid] = -1;
    return 1;
}

hook OnPlayerDisconnect(playerid, reason)
{
    KillTimer(pTakingSusuTimer[playerid]);
    KillTimer(pProcessSusuTimer[playerid]);
    pTakingSusuTimer[playerid] = -1;
    pProcessSusuTimer[playerid] = -1;
    return 1;
}

forward TakeSusu(playerid);
public TakeSusu(playerid)
{
    if (!IsPlayerConnected(playerid))
    {
        KillTimer(pTakingSusuTimer[playerid]);
        pTakingSusuTimer[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        return 0;
    }

    if (!IsValidDynamicArea(PlayerSusuVars[playerid][CowPointArea]) || !IsPlayerInDynamicArea(playerid, PlayerSusuVars[playerid][CowPointArea]))
    {
        KillTimer(pTakingSusuTimer[playerid]);
        pTakingSusuTimer[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        ClearAnimations(playerid, 1);
        StopLoopingAnim(playerid);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if (AccountData[playerid][pBeratItem] >= 50.0)
    {
        KillTimer(pTakingSusuTimer[playerid]);
        pTakingSusuTimer[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        ClearAnimations(playerid, 1);
        StopLoopingAnim(playerid);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        ShowTDN(playerid, NOTIFICATION_ERROR, "Inventory Anda Penuh!");
        return 0;
    }

    if (AccountData[playerid][pInjured] == 1)
    {
        KillTimer(pTakingSusuTimer[playerid]);
        pTakingSusuTimer[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        ClearAnimations(playerid, 1);
        StopLoopingAnim(playerid);
        return 0;
    }

    if (AccountData[playerid][ActivityTime] >= 105)
    {
        KillTimer(pTakingSusuTimer[playerid]);
        pTakingSusuTimer[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        ClearAnimations(playerid, 1);
        StopLoopingAnim(playerid);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);

        if (IsValidDynamicArea(PlayerSusuVars[playerid][CowPointArea]))
        {
            DestroyDynamicArea(PlayerSusuVars[playerid][CowPointArea]);
            PlayerSusuVars[playerid][CowPointArea] = STREAMER_TAG_AREA:INVALID_STREAMER_ID;
        }

        if (IsValidDynamicCP(PlayerSusuVars[playerid][CowPointCP]))
        {
            DestroyDynamicCP(PlayerSusuVars[playerid][CowPointCP]);
            PlayerSusuVars[playerid][CowPointCP] = STREAMER_TAG_CP:INVALID_STREAMER_ID;
        }

        new randIndex = random(sizeof(CowPoint));
        new Float:posX = CowPoint[randIndex][0];
        new Float:posY = CowPoint[randIndex][1];
        new Float:posZ = CowPoint[randIndex][2];

        PlayerSusuVars[playerid][CowPointArea] = CreateDynamicSphere(posX, posY, posZ, 1.5, 0, 0, playerid);
        PlayerSusuVars[playerid][CowPointCP] = CreateDynamicCP(posX, posY, posZ, 1.0, 0, 0, playerid);

        new randmilk = RandomEx(1, 7);
        Inventory_Add(playerid, "Susu Murni", 19570, randmilk);

        new str[128];
        format(str, sizeof str, "ADDED %dx", randmilk);
        ShowItemBox(playerid, str, "Susu Murni", 19570);

        ShowTDN(playerid, NOTIFICATION_SUKSES, "Selesai memerah susu, lanjut ke sapi berikutnya!");
    }
    else
    {
        AccountData[playerid][ActivityTime] += 17.5;
        new Float:progressvalue = AccountData[playerid][ActivityTime] * 85 / 105;
        PlayerTextDrawTextSize(playerid, ProgressBar[playerid][2], progressvalue, 15.0);
        PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
    }

    return 1;
}

forward ProcessSusu(playerid, x);
public ProcessSusu(playerid, x)
{
    if(!IsPlayerConnected(playerid))
    {
        KillTimer(pProcessSusuTimer[playerid]);
        pProcessSusuTimer[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        return 0;
    }

    if(!IsValidDynamicArea(PlayerSusuVars[playerid][SusuProcessArea][x]))
    {
        KillTimer(pProcessSusuTimer[playerid]);
        pProcessSusuTimer[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);

        ClearAnimations(playerid, 1);
        StopLoopingAnim(playerid);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(!IsPlayerInDynamicArea(playerid, PlayerSusuVars[playerid][SusuProcessArea][x]))
    {
        KillTimer(pProcessSusuTimer[playerid]);
        pProcessSusuTimer[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);

        ClearAnimations(playerid, 1);
        StopLoopingAnim(playerid);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(AccountData[playerid][pBeratItem] >= 50.0)
    {
        KillTimer(pProcessSusuTimer[playerid]);
        pProcessSusuTimer[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);

        ClearAnimations(playerid, 1);
        StopLoopingAnim(playerid);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(Inventory_Count(playerid, "Susu Murni") < 5 && Inventory_Count(playerid, "Botol") < 1)
    {
        KillTimer(pProcessSusuTimer[playerid]);
        pProcessSusuTimer[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);

        ClearAnimations(playerid, 1);
        StopLoopingAnim(playerid);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        ShowTDN(playerid, NOTIFICATION_ERROR, "Butuh 5x Susu Murni & 1x Botol");
        return 0;
    }

    if(Inventory_Count(playerid, "Susu Murni") < 5)
    {
        KillTimer(pProcessSusuTimer[playerid]);
        pProcessSusuTimer[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);

        ClearAnimations(playerid, 1);
        StopLoopingAnim(playerid);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        ShowTDN(playerid, NOTIFICATION_ERROR, "Susu Murni Tidak Cukup!");
        return 0;
    }

    if(Inventory_Count(playerid, "Botol") < 1)
    {
        KillTimer(pProcessSusuTimer[playerid]);
        pProcessSusuTimer[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);

        ClearAnimations(playerid, 1);
        StopLoopingAnim(playerid);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        ShowTDN(playerid, NOTIFICATION_ERROR, "Botol tidak cukup!");
        return 0;
    }

    if(AccountData[playerid][pInjured] == 1)
    {
        KillTimer(pProcessSusuTimer[playerid]);
        pProcessSusuTimer[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);

        ClearAnimations(playerid, 1);
        StopLoopingAnim(playerid);
        return 0;
    }

    if(AccountData[playerid][ActivityTime] >= 121)
    {
        KillTimer(pProcessSusuTimer[playerid]);
        pProcessSusuTimer[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);

        ClearAnimations(playerid, 1);
        StopLoopingAnim(playerid);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);

        Inventory_Remove(playerid, "Susu Murni", 5);
        Inventory_Remove(playerid, "Botol");
        Inventory_Add(playerid, "Susu Olahan", 19570);
        ShowItemBox(playerid, "ADDED 1x", "Susu Olahan", 19570);
        
    }
    else
    {
        AccountData[playerid][ActivityTime] += 12.1;

        new Float:progressvalue;
        progressvalue = AccountData[playerid][ActivityTime] * 85/121;
        PlayerTextDrawTextSize(playerid, ProgressBar[playerid][2], progressvalue, 15.0);
        PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
    }
    return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    switch(dialogid)
    {
        case DIALOG_SUSU_START:
        {
            if(!response) return 0;
            switch(listitem)
            {
                case 0:
                {
                    if (PlayerSusuVars[playerid][DuringTakeSusu])
                        return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sudah memulai pekerjaan ini");

                    ShowTDN(playerid, NOTIFICATION_SUKSES, "Anda berhasil memulai pekerjaan");
                    PlayerSusuVars[playerid][DuringTakeSusu] = true;
                    new randIndex = RandomEx(0, sizeof(CowPoint) / sizeof(CowPoint[]));

                    new Float:posX = CowPoint[randIndex][0];
                    new Float:posY = CowPoint[randIndex][1];
                    new Float:posZ = CowPoint[randIndex][2];

                    PlayerSusuVars[playerid][CowPointArea][0] = CreateDynamicSphere(posX, posY, posZ, 1.5, 0, 0, playerid);
                    PlayerSusuVars[playerid][CowPointCP][0] = CreateDynamicCP(posX, posY, posZ, 1.0, 0, 0, playerid);for(new x = 0; x < 4; x++)
                    {
                        PlayerSusuVars[playerid][SusuProcessArea][x] = CreateDynamicSphere(ProccesSusuPoint[x][0], ProccesSusuPoint[x][1], ProccesSusuPoint[x][2], 1.5, 0, 0, playerid);
                    }
                }
                case 1:
                {
                    if(!PlayerSusuVars[playerid][DuringTakeSusu]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda belum memulai pekerjaan ini!");
                    for(new x = 0; x < 4; x++)
                    {
                        if(IsValidDynamicArea(PlayerSusuVars[playerid][CowPointArea][x]))
                        if(DestroyDynamicArea(PlayerSusuVars[playerid][CowPointArea][x]))
                            PlayerSusuVars[playerid][CowPointArea][x] = STREAMER_TAG_AREA: INVALID_STREAMER_ID;

                        if(IsValidDynamicCP(PlayerSusuVars[playerid][CowPointCP][x]))
                        if(DestroyDynamicCP(PlayerSusuVars[playerid][CowPointCP][x]))
                            PlayerSusuVars[playerid][CowPointCP][x] = STREAMER_TAG_CP: INVALID_STREAMER_ID;

                        if(IsValidDynamicArea(PlayerSusuVars[playerid][SusuProcessArea][x]))
                        if(DestroyDynamicArea(PlayerSusuVars[playerid][SusuProcessArea][x]))
                            PlayerSusuVars[playerid][SusuProcessArea][x] = STREAMER_TAG_AREA: INVALID_STREAMER_ID;
                    }
                    PlayerSusuVars[playerid][DuringTakeSusu] = false;
                    ShowTDN(playerid, NOTIFICATION_SUKSES, "Anda berhasil menyelesaikan pekerjaan");
                }
            }
        }
    }
    return 0;
}

hook OnPlayerEnterDynArea(playerid, STREAMER_TAG_AREA:areaid)
{
    if(GetPlayerJob(playerid) == JOB_MILKER && GetPlayerState(playerid) == PLAYER_STATE_ONFOOT)
    {
        if (IsPlayerInDynamicArea(playerid, PlayerSusuVars[playerid][CowPointArea]))
        {
            if (areaid == PlayerSusuVars[playerid][CowPointArea])
            {
                ShowKey(playerid, "[Y] Peras susu");
            }
        }
        if(areaid == PlayerSusuVars[playerid][SusuJobArea])
        {
            ShowKey(playerid, "[Y]- Memulai");
        }
        for(new x = 0; x < 4; x++)
        {
            if(areaid == PlayerSusuVars[playerid][SusuProcessArea][x])
            {
                ShowKey(playerid, "[Y]- Olah Susu");
            }
        }
    }
    return 1;
}

hook OnPlayerLeaveDynArea(playerid, STREAMER_TAG_AREA:areaid)
{
    if(areaid == PlayerSusuVars[playerid][CowPointArea]) 
    {
        HideShortKey(playerid);
    }
    if(areaid == PlayerSusuVars[playerid][SusuJobArea])
    {
        HideShortKey(playerid);
    }
    for(new x = 0; x < 4; x++)
    {
        if(areaid == PlayerSusuVars[playerid][SusuProcessArea][x])
        {
            HideShortKey(playerid);
        }
    }
    return 1;
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    if(newkeys & KEY_YES && GetPlayerState(playerid) == PLAYER_STATE_ONFOOT)
    {
        if(AccountData[playerid][pJob] == JOB_MILKER)
        {
            if(IsPlayerInDynamicArea(playerid, PlayerSusuVars[playerid][SusuJobArea]))
            {
                ShowPlayerDialog(playerid, DIALOG_SUSU_START, DIALOG_STYLE_LIST, ""TTR"Astral City Roleplay "WHITE"- Pemerah Susu",
                "Mulai Perah susu\nSelesaikan Pekerjaan", "Pilih", "Batal");
            }

            if (IsPlayerInDynamicArea(playerid, PlayerSusuVars[playerid][CowPointArea]))
            {
                if (!PlayerSusuVars[playerid][DuringTakeSusu])
                    return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda belum memulai pekerjaan ini!");

                if (AccountData[playerid][ActivityTime] != 0)
                    return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang melakukan sesuatu, harap tunggu!");

                AccountData[playerid][ActivityTime] = 1;
                pTakingSusuTimer[playerid] = SetTimerEx("TakeSusu", 1000, true, "i", playerid);

                PlayerTextDrawSetString(playerid, ProgressBar[playerid][3], "MEMERAH SUSU");
                ShowProgressBar(playerid);

                ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 4.0, 1, 0, 0, 0, 0, 1);
            }
            for(new x = 0; x < 4; x++)
            {
                if(IsPlayerInDynamicArea(playerid, PlayerSusuVars[playerid][SusuProcessArea][x]))
                {
                    if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang melakukan sesuatu, harap tunggu!");

                    AccountData[playerid][ActivityTime] = 1;
                    pProcessSusuTimer[playerid] = SetTimerEx("ProcessSusu", 1000, true, "dd", playerid, x);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][3], "MENGOLAH SUSU");
                    ShowProgressBar(playerid);
                    ApplyAnimation(playerid, "BD_FIRE", "wash_up", 4.1, 1, 0, 0, 0, 0, 1);
                }
            }
        }
    }
    return 1;
}