#include <YSI\y_hooks>

#define NEWBIE_PROTECTION 36000

new PlayerTimer[MAX_PLAYERS];
new STREAMER_TAG_3D_TEXT_LABEL:g_WargaBaruLabel[MAX_PLAYERS];

stock bool:IsValidDyn3DTextLabel(STREAMER_TAG_3D_TEXT_LABEL:labelid)
{
    return labelid != STREAMER_TAG_3D_TEXT_LABEL:INVALID_STREAMER_ID;
}

stock RemoveWargaBaruLabel(playerid)
{
    if (IsValidDyn3DTextLabel(g_WargaBaruLabel[playerid]))
    {
        DestroyDynamic3DTextLabel(g_WargaBaruLabel[playerid]);
        g_WargaBaruLabel[playerid] = STREAMER_TAG_3D_TEXT_LABEL:INVALID_STREAMER_ID;
    }
}

stock CreateWargaBaruLabel(playerid)
{
    RemoveWargaBaruLabel(playerid);
    g_WargaBaruLabel[playerid] = CreateDynamic3DTextLabel("[Warga Baru]", 0xFFFFFFAA, 0.0, 0.0, 0.6, 15.0, playerid, INVALID_VEHICLE_ID, 1);
}

forward LoadNewbieProtection(playerid);
public LoadNewbieProtection(playerid)
{
    new query[256];
    format(query, sizeof(query),
        "SELECT Char_NewbieTime FROM player_characters WHERE pID=%d",
        AccountData[playerid][pID]);

    mysql_tquery(g_SQL, query, "OnNewbieLoaded", "i", playerid);
}

forward OnNewbieLoaded(playerid);
public OnNewbieLoaded(playerid)
{
    new rows, fields;
    cache_get_data(rows, fields);

    if(rows)
    {
        cache_get_value_name_int(0, "Char_NewbieTime", PlayerProtect[playerid]);
    }
    else
    {
        PlayerProtect[playerid] = 0;
    }

    if(PlayerProtect[playerid] > 0)
    {
        for(new i = 0; i < 5; i++) PlayerTextDrawShow(playerid, WargabaruTD[playerid][i]);
        PlayerTimer[playerid] = SetTimerEx("UpdateProtection", 1000, true, "i", playerid);
        CreateWargaBaruLabel(playerid);
    }
}

stock NewbieRegister(playerid)
{
    PlayerProtect[playerid] = NEWBIE_PROTECTION;

    new query[256];
    format(query, sizeof(query),
        "UPDATE player_characters SET Char_NewbieTime=%d WHERE pID=%d",
        NEWBIE_PROTECTION, AccountData[playerid][pID]);
    mysql_tquery(g_SQL, query);

    for(new i = 0; i < 5; i++) PlayerTextDrawShow(playerid, WargabaruTD[playerid][i]);

    if(PlayerTimer[playerid]) KillTimer(PlayerTimer[playerid]);
    PlayerTimer[playerid] = SetTimerEx("UpdateProtection", 1000, true, "i", playerid);

    CreateWargaBaruLabel(playerid);
}

hook OnPlayerDisconnect(playerid, reason)
{
    if(PlayerProtect[playerid] > 0)
    {
        new query[256];
        format(query, sizeof(query),
            "UPDATE player_characters SET Char_NewbieTime=%d WHERE pID=%d",
            PlayerProtect[playerid], AccountData[playerid][pID]);
        mysql_tquery(g_SQL, query);
    }

    if(PlayerTimer[playerid])
    {
        KillTimer(PlayerTimer[playerid]);
        PlayerTimer[playerid] = 0;
    }

    RemoveWargaBaruLabel(playerid);
    return 1;
}

forward UpdateProtection(playerid);
public UpdateProtection(playerid)
{
    if(!IsPlayerConnected(playerid)) return 0;

    if(PlayerProtect[playerid] > 0)
    {
        PlayerProtect[playerid]--;

        new h, m, str[64];
        h = PlayerProtect[playerid] / 3600;
        m = (PlayerProtect[playerid] % 3600) / 60;

        format(str, sizeof(str), "Waktu Tersisa: %d jam %02d menit", h, m);
        PlayerTextDrawSetString(playerid, WargabaruTD[playerid][2], str);

        if(PlayerProtect[playerid] == 0)
        {
            for(new i = 0; i < 5; i++) PlayerTextDrawHide(playerid, WargabaruTD[playerid][i]);
            SendClientMessage(playerid, -1, "{00FF00}[Proteksi] Masa proteksi Anda telah berakhir.");

            RemoveWargaBaruLabel(playerid);

            new query[256];
            format(query, sizeof(query),
                "UPDATE player_characters SET Char_NewbieTime=0 WHERE pID=%d",
                AccountData[playerid][pID]);
            mysql_tquery(g_SQL, query);

            if(PlayerTimer[playerid])
            {
                KillTimer(PlayerTimer[playerid]);
                PlayerTimer[playerid] = 0;
            }
        }
    }
    return 1;
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    if (newkeys & KEY_FIRE && GetPlayerState(playerid) == PLAYER_STATE_ONFOOT)
    {
        if(PlayerProtect[playerid] > 0)
        {
            new h, m;
            h = PlayerProtect[playerid] / 3600;
            m = (PlayerProtect[playerid] % 3600) / 60;

            SendClientMessageEx(playerid, 0x00FF00FF, "[Proteksi] Anda masih berada dalam masa proteksi warga baru.");
            SendClientMessageEx(playerid, 0x00FF00FF, "Selama masa ini anda tidak bisa menyerang pemain lain.");
            SendClientMessageEx(playerid, 0x00FF00FF, "Sisa waktu proteksi: %d jam %02d menit.",  h, m);

            ApplyAnimationEx(playerid, "PED", "FALL_collapse", 4.1, 0, 1, 0, 0, 0, 1);
            new Float:POS[3];
            GetPlayerPos(playerid, POS[0], POS[1], POS[2]);
            SetPlayerPos(playerid, POS[0], POS[1], POS[2] - 0.2);
            ClearAnimations(playerid, 1);
            SetPlayerArmedWeapon(playerid, 0);
            AccountData[playerid][pFreeze] = true;
            TogglePlayerControllable(playerid, 0);
            SetTimerEx("delaykram", 1000, false, "d", playerid);
        }
    }
    return 1;
}

forward delaykram(playerid);
public delaykram(playerid)
{
    AccountData[playerid][pFreeze] = false;
    TogglePlayerControllable(playerid, 1);
    return 1;
}

CMD:addnewbie(playerid, params[])
{
    if(AccountData[playerid][pAdmin] < 3)
        return PermissionError(playerid);

    new targetid;
    if(sscanf(params, "u", targetid)) return SendClientMessage(playerid, -1, "Usage: /addnewbie [playerid]");

    if(!IsPlayerConnected(targetid))
        return SendClientMessage(playerid, -1, "Player tidak online.");

    PlayerProtect[targetid] = NEWBIE_PROTECTION;

    new query[256];
    format(query, sizeof(query),
        "UPDATE player_characters SET Char_NewbieTime=%d WHERE pID=%d",
        NEWBIE_PROTECTION, AccountData[targetid][pID]);
    mysql_tquery(g_SQL, query);

    for(new i = 0; i < 5; i++) PlayerTextDrawShow(targetid, WargabaruTD[targetid][i]);

    if(PlayerTimer[targetid]) KillTimer(PlayerTimer[targetid]);
    PlayerTimer[targetid] = SetTimerEx("UpdateProtection", 1000, true, "i", targetid);

    CreateWargaBaruLabel(targetid);

    SendClientMessageEx(targetid, X11_TOMATO, "AdmCmd: %s memberikan status warga baru kepada anda", AccountData[playerid][pAdminname]);
    SendStaffMessage(X11_TOMATO, "AdmCmd: %s memberikan status warga baru kepada %s", AccountData[playerid][pAdminname], AccountData[targetid][pName]);
    return 1;
}

CMD:removenewbie(playerid, params[])
{
    if(AccountData[playerid][pAdmin] < 3)
        return PermissionError(playerid);

    new targetid;
    if(sscanf(params, "u", targetid)) return SendClientMessage(playerid, -1, "Usage: /removenewbie [playerid]");

    if(!IsPlayerConnected(targetid))
        return SendClientMessage(playerid, -1, "Player tidak online.");

    PlayerProtect[targetid] = 0;
    for(new i = 0; i < 5; i++) PlayerTextDrawHide(targetid, WargabaruTD[targetid][i]);

    if(PlayerTimer[targetid])
    {
        KillTimer(PlayerTimer[targetid]);
        PlayerTimer[targetid] = 0;
    }

    RemoveWargaBaruLabel(targetid);

    new query[256];
    format(query, sizeof(query),
        "UPDATE player_characters SET Char_NewbieTime=0 WHERE pID=%d",
        AccountData[targetid][pID]);
    mysql_tquery(g_SQL, query);

    SendClientMessageEx(targetid, X11_TOMATO, "AdmCmd: %s menghapus status warga baru kepada anda", AccountData[playerid][pAdminname]);
    SendStaffMessage(X11_TOMATO, "AdmCmd: %s menghapus status warga baru kepada %s", AccountData[playerid][pAdminname], AccountData[targetid][pName]);
    return 1;
}