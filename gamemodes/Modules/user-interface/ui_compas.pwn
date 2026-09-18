#include <YSI\y_hooks>
#include <a_samp>

//variables
new PlayerText:RayyzixCompas[MAX_PLAYERS][11];
new bool:CompassVisible[MAX_PLAYERS];
new CompassTimer[MAX_PLAYERS];
new Float:LastAngle[MAX_PLAYERS];

// Data arah kompas
new const CompassDirs[8][] = {"N","NE","E","SE","S","SW","W","NW"};
new const CompassDeg[8]    = {0,45,90,135,180,225,270,315};

hook OnPlayerStateChange(playerid, newstate, oldstate)
{
    if(newstate == PLAYER_STATE_DRIVER || newstate == PLAYER_STATE_PASSENGER)
    {
        if(!CompassVisible[playerid])
        {
            CompassVisible[playerid] = true;
            GetPlayerFacingAngle(playerid, LastAngle[playerid]);
            for(new i = 0; i < 11; i++)
            {
                PlayerTextDrawShow(playerid, RayyzixCompas[playerid][i]);
            }
            CompassTimer[playerid] = SetTimerEx("Compass_UpdateTimer",100, true, "i", playerid);
            for(new i = 0; i < 4; i++) PlayerTextDrawHide(playerid, TDNameServer[playerid][i]);
        }
    }
    else if(oldstate == PLAYER_STATE_DRIVER || oldstate == PLAYER_STATE_PASSENGER)
    {
        if(CompassVisible[playerid])
        {
            CompassVisible[playerid] = false;
            for(new i = 0; i < 11; i++)
            {
                PlayerTextDrawHide(playerid, RayyzixCompas[playerid][i]);
            }
            if(CompassTimer[playerid])
            {
                KillTimer(CompassTimer[playerid]);
                CompassTimer[playerid] = 0;
            }
            for(new i = 0; i < 4; i++) PlayerTextDrawShow(playerid, TDNameServer[playerid][i]);
        }
    }
    return 0;
}

hook OnPlayerConnect(playerid)
{
    CompassVisible[playerid] = false;
    CompassTimer[playerid] = 0;
    LastAngle[playerid] = 0.0;
    
    RayyzixCompas[playerid][0] = CreatePlayerTextDraw(playerid, 225.000, 3.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, RayyzixCompas[playerid][0], 193.000, 19.000);
    PlayerTextDrawAlignment(playerid, RayyzixCompas[playerid][0], 1);
    PlayerTextDrawColor(playerid, RayyzixCompas[playerid][0], 50);
    PlayerTextDrawSetShadow(playerid, RayyzixCompas[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, RayyzixCompas[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, RayyzixCompas[playerid][0], 255);
    PlayerTextDrawFont(playerid, RayyzixCompas[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, RayyzixCompas[playerid][0], 1);

    RayyzixCompas[playerid][1] = CreatePlayerTextDraw(playerid, 320.000, 5.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, RayyzixCompas[playerid][1], 1.000, 2.000);
    PlayerTextDrawAlignment(playerid, RayyzixCompas[playerid][1], 1);
    PlayerTextDrawColor(playerid, RayyzixCompas[playerid][1], -613379073);
    PlayerTextDrawSetShadow(playerid, RayyzixCompas[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, RayyzixCompas[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, RayyzixCompas[playerid][1], 255);
    PlayerTextDrawFont(playerid, RayyzixCompas[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, RayyzixCompas[playerid][1], 1);

    RayyzixCompas[playerid][2] = CreatePlayerTextDraw(playerid, 243.000, 8.000, "NE");
    PlayerTextDrawLetterSize(playerid, RayyzixCompas[playerid][2], 0.140, 0.699);
    PlayerTextDrawAlignment(playerid, RayyzixCompas[playerid][2], 1);
    PlayerTextDrawColor(playerid, RayyzixCompas[playerid][2], -613379073);
    PlayerTextDrawSetShadow(playerid, RayyzixCompas[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, RayyzixCompas[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, RayyzixCompas[playerid][2], 150);
    PlayerTextDrawFont(playerid, RayyzixCompas[playerid][2], 2);
    PlayerTextDrawSetProportional(playerid, RayyzixCompas[playerid][2], 1);

    RayyzixCompas[playerid][3] = CreatePlayerTextDraw(playerid, 268.000, 8.000, "50");
    PlayerTextDrawLetterSize(playerid, RayyzixCompas[playerid][3], 0.140, 0.699);
    PlayerTextDrawAlignment(playerid, RayyzixCompas[playerid][3], 1);
    PlayerTextDrawColor(playerid, RayyzixCompas[playerid][3], -1);
    PlayerTextDrawSetShadow(playerid, RayyzixCompas[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, RayyzixCompas[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, RayyzixCompas[playerid][3], 150);
    PlayerTextDrawFont(playerid, RayyzixCompas[playerid][3], 2);
    PlayerTextDrawSetProportional(playerid, RayyzixCompas[playerid][3], 1);

    RayyzixCompas[playerid][4] = CreatePlayerTextDraw(playerid, 293.000, 8.000, "75");
    PlayerTextDrawLetterSize(playerid, RayyzixCompas[playerid][4], 0.140, 0.699);
    PlayerTextDrawAlignment(playerid, RayyzixCompas[playerid][4], 1);
    PlayerTextDrawColor(playerid, RayyzixCompas[playerid][4], -1);
    PlayerTextDrawSetShadow(playerid, RayyzixCompas[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, RayyzixCompas[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, RayyzixCompas[playerid][4], 150);
    PlayerTextDrawFont(playerid, RayyzixCompas[playerid][4], 2);
    PlayerTextDrawSetProportional(playerid, RayyzixCompas[playerid][4], 1);

    RayyzixCompas[playerid][5] = CreatePlayerTextDraw(playerid, 318.000, 8.000, "W");
    PlayerTextDrawLetterSize(playerid, RayyzixCompas[playerid][5], 0.128, 0.699);
    PlayerTextDrawAlignment(playerid, RayyzixCompas[playerid][5], 1);
    PlayerTextDrawColor(playerid, RayyzixCompas[playerid][5], -1);
    PlayerTextDrawSetShadow(playerid, RayyzixCompas[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, RayyzixCompas[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, RayyzixCompas[playerid][5], 150);
    PlayerTextDrawFont(playerid, RayyzixCompas[playerid][5], 2);
    PlayerTextDrawSetProportional(playerid, RayyzixCompas[playerid][5], 1);

    RayyzixCompas[playerid][6] = CreatePlayerTextDraw(playerid, 341.000, 8.000, "105");
    PlayerTextDrawLetterSize(playerid, RayyzixCompas[playerid][6], 0.140, 0.699);
    PlayerTextDrawAlignment(playerid, RayyzixCompas[playerid][6], 1);
    PlayerTextDrawColor(playerid, RayyzixCompas[playerid][6], -1);
    PlayerTextDrawSetShadow(playerid, RayyzixCompas[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, RayyzixCompas[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, RayyzixCompas[playerid][6], 150);
    PlayerTextDrawFont(playerid, RayyzixCompas[playerid][6], 2);
    PlayerTextDrawSetProportional(playerid, RayyzixCompas[playerid][6], 1);

    RayyzixCompas[playerid][7] = CreatePlayerTextDraw(playerid, 366.000, 8.000, "120");
    PlayerTextDrawLetterSize(playerid, RayyzixCompas[playerid][7], 0.140, 0.699);
    PlayerTextDrawAlignment(playerid, RayyzixCompas[playerid][7], 1);
    PlayerTextDrawColor(playerid, RayyzixCompas[playerid][7], -1);
    PlayerTextDrawSetShadow(playerid, RayyzixCompas[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, RayyzixCompas[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, RayyzixCompas[playerid][7], 150);
    PlayerTextDrawFont(playerid, RayyzixCompas[playerid][7], 2);
    PlayerTextDrawSetProportional(playerid, RayyzixCompas[playerid][7], 1);

    RayyzixCompas[playerid][8] = CreatePlayerTextDraw(playerid, 391.000, 8.000, "SE");
    PlayerTextDrawLetterSize(playerid, RayyzixCompas[playerid][8], 0.140, 0.699);
    PlayerTextDrawAlignment(playerid, RayyzixCompas[playerid][8], 1);
    PlayerTextDrawColor(playerid, RayyzixCompas[playerid][8], -613379073);
    PlayerTextDrawSetShadow(playerid, RayyzixCompas[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, RayyzixCompas[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, RayyzixCompas[playerid][8], 150);
    PlayerTextDrawFont(playerid, RayyzixCompas[playerid][8], 2);
    PlayerTextDrawSetProportional(playerid, RayyzixCompas[playerid][8], 1);

    RayyzixCompas[playerid][9] = CreatePlayerTextDraw(playerid, 394.000, 5.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, RayyzixCompas[playerid][9], 1.000, 2.000);
    PlayerTextDrawAlignment(playerid, RayyzixCompas[playerid][9], 1);
    PlayerTextDrawColor(playerid, RayyzixCompas[playerid][9], -613379073);
    PlayerTextDrawSetShadow(playerid, RayyzixCompas[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, RayyzixCompas[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, RayyzixCompas[playerid][9], 255);
    PlayerTextDrawFont(playerid, RayyzixCompas[playerid][9], 4);
    PlayerTextDrawSetProportional(playerid, RayyzixCompas[playerid][9], 1);

    RayyzixCompas[playerid][10] = CreatePlayerTextDraw(playerid, 247.000, 5.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, RayyzixCompas[playerid][10], 1.000, 2.000);
    PlayerTextDrawAlignment(playerid, RayyzixCompas[playerid][10], 1);
    PlayerTextDrawColor(playerid, RayyzixCompas[playerid][10], -613379073);
    PlayerTextDrawSetShadow(playerid, RayyzixCompas[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, RayyzixCompas[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, RayyzixCompas[playerid][10], 255);
    PlayerTextDrawFont(playerid, RayyzixCompas[playerid][10], 4);
    PlayerTextDrawSetProportional(playerid, RayyzixCompas[playerid][10], 1);
    return 1;
}

hook OnPlayerDisconnect(playerid, reason)
{
    if(CompassTimer[playerid])
    {
        KillTimer(CompassTimer[playerid]);
        CompassTimer[playerid] = 0;
    }
    
    for(new i = 0; i < 11; i++)
    {
        PlayerTextDrawDestroy(playerid, RayyzixCompas[playerid][i]);
    }
    return 1;
}

forward Compass_UpdateTimer(playerid);
public Compass_UpdateTimer(playerid)
{
    if(!CompassVisible[playerid]) return 1;

    new Float:angle;
    if(IsPlayerInAnyVehicle(playerid))
        GetVehicleZAngle(GetPlayerVehicleID(playerid), angle);
    else
        GetPlayerFacingAngle(playerid, angle);

    new Float:diff = angle - LastAngle[playerid];
    if(diff > 180.0) diff -= 360.0;
    else if(diff < -180.0) diff += 360.0;
    LastAngle[playerid] += diff * 0.2;

    if(LastAngle[playerid] >= 360.0) LastAngle[playerid] -= 360.0;
    else if(LastAngle[playerid] < 0.0) LastAngle[playerid] += 360.0;

    new idx = floatround(LastAngle[playerid] / 45.0) % 8;

    for(new i = 0; i < 11; i++)
        PlayerTextDrawShow(playerid, RayyzixCompas[playerid][i]);

    new left  = (idx + 7) % 8;
    new right = (idx + 1) % 8;

    PlayerTextDrawSetString(playerid, RayyzixCompas[playerid][5], CompassDirs[idx]);

    PlayerTextDrawSetString(playerid, RayyzixCompas[playerid][2], CompassDirs[left]);
    PlayerTextDrawSetString(playerid, RayyzixCompas[playerid][3], sprintf("%d", (CompassDeg[left] + 330) % 360));
    PlayerTextDrawSetString(playerid, RayyzixCompas[playerid][4], sprintf("%d", CompassDeg[left]));

    PlayerTextDrawSetString(playerid, RayyzixCompas[playerid][6], sprintf("%d", CompassDeg[right]));
    PlayerTextDrawSetString(playerid, RayyzixCompas[playerid][7], sprintf("%d", (CompassDeg[right] + 15) % 360));
    PlayerTextDrawSetString(playerid, RayyzixCompas[playerid][8], CompassDirs[right]);

    for(new i = 2; i <= 8; i++)
        PlayerTextDrawShow(playerid, RayyzixCompas[playerid][i]);

    return 1;
}

CMD:compass(playerid, params[])
{
    if(CompassVisible[playerid])
    {
        CompassVisible[playerid] = false;
        for(new i = 0; i < 11; i++)
        {
            PlayerTextDrawHide(playerid, RayyzixCompas[playerid][i]);
        }
        if(CompassTimer[playerid])
        {
            KillTimer(CompassTimer[playerid]);
            CompassTimer[playerid] = 0;
        }
        SendClientMessage(playerid, -1, "Compass: "WHITE"Disabled");
        for(new i = 0; i < 4; i++) PlayerTextDrawShow(playerid, TDNameServer[playerid][i]);
    }
    else
    {
        CompassVisible[playerid] = true;
        GetPlayerFacingAngle(playerid, LastAngle[playerid]);
        for(new i = 0; i < 11; i++)
        {
            PlayerTextDrawShow(playerid, RayyzixCompas[playerid][i]);
        }
        for(new i = 0; i < 4; i++) PlayerTextDrawHide(playerid, TDNameServer[playerid][i]);
        CompassTimer[playerid] = SetTimerEx("Compass_UpdateTimer", 100, true, "i", playerid);
        SendClientMessage(playerid, -1, "Compass: "WHITE"Enabled");
    }
    return 1;
} 