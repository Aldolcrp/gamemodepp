#include <YSI_Coding\y_hooks>

enum E_Notify
{
    NotifyIcon,
    NotifyMessage[320],
    NotifySize
}
new NotifInfo[MAX_PLAYERS][4][E_Notify],
    MaxPlayerNotify[MAX_PLAYERS],
    PlayerText: gNotifTextdraw[MAX_PLAYERS][4 * 14],
    NotifIndex[MAX_PLAYERS]
;

timer NotifyHide[5000](playerid)
{
    if(!NotifIndex[playerid]) return 1;
    -- NotifIndex[playerid];
    MaxPlayerNotify[playerid] --;
    for(new i = -1; ++ i < 14;)
    {
        PlayerTextDrawDestroy(playerid, gNotifTextdraw[playerid][(NotifIndex[playerid] * 14) + i]);
    }
    return 1;
}

ShowTDN(playerid, notifid, text[])
{
    if(AccountData[playerid][pStyleNotif] == 1) // TD
    {
        switch(notifid)
        {
            case NOTIFICATION_ERROR:
            {
                if(MaxPlayerNotify[playerid] >= 4) return false;
                PlayerPlaySound(playerid, 1085, 0, 0, 0);
                ShowNotificationMessage(playerid, text, 1);
            }
            case NOTIFICATION_INFO:
            {
                if(MaxPlayerNotify[playerid] >= 4) return false;
                PlayerPlaySound(playerid, 1139, 0, 0, 0);
                ShowNotificationMessage(playerid, text, 2);
            }
            case NOTIFICATION_SUKSES:
            {
                if(MaxPlayerNotify[playerid] >= 4) return false;
                PlayerPlaySound(playerid, 5203, 0, 0, 0);
                ShowNotificationMessage(playerid, text, 3);
            }
            case NOTIFICATION_SYNTAX:
            {
                if(MaxPlayerNotify[playerid] >= 4) return false;
                PlayerPlaySound(playerid, 5201, 0, 0, 0);
                ShowNotificationMessage(playerid, text, 4);
            }
            case NOTIFICATION_WARNING:
            {
                if(MaxPlayerNotify[playerid] >= 4) return false;
                PlayerPlaySound(playerid, 4203, 0, 0, 0);
                ShowNotificationMessage(playerid, text, 5);
            }
        }
    }
    else if(AccountData[playerid][pStyleNotif] == 2)
    {
        switch(notifid)
        {
            case NOTIFICATION_ERROR:
            {
                Error(playerid, "%s", text);
            }
            case NOTIFICATION_INFO:
            {
                Info(playerid, "%s", text);
            }
            case NOTIFICATION_SUKSES:
            {
                Info(playerid, "%s", text);
            }
            case NOTIFICATION_SYNTAX:
            {
                Syntax(playerid, "%s", text);
            }
            case NOTIFICATION_WARNING:
            {
                Warning(playerid, "%s", text);
            }
        }
    }
    return 1;
}

stock ShowNotificationMessage(playerid, const string[], icon)
{
    if(MaxPlayerNotify[playerid] >= 4) return 1;
    MaxPlayerNotify[playerid] ++;
    for (new x = -1; ++ x < NotifIndex[playerid];)
    {
        for(new i = -1; ++ i < 14;) {
            PlayerTextDrawDestroy(playerid, gNotifTextdraw[playerid][(x * 14) + i]);
        }

        NotifInfo[playerid][NotifIndex[playerid] - x] = NotifInfo[playerid][(NotifIndex[playerid] - x) - 1];
    }
    format(NotifInfo[playerid][0][NotifyMessage], 320, "%s", string);
    NotifInfo[playerid][0][NotifyIcon] = icon;
    NotifInfo[playerid][0][NotifySize] = 3;

    ++ NotifIndex[playerid];
    new Float:new_x = 0.0;
    for(new x = -1; ++ x < NotifIndex[playerid];)
    {
        CreateNotify(playerid, x, x * 14, new_x);
        new_x += (NotifInfo[playerid][x][NotifySize] * 7.25) + 45.0;
    }

    defer NotifyHide(playerid);
    return 1;
}

stock CreateNotify(playerid, index, i, Float:new_x)
{
    new lines = NotifInfo[playerid][index][NotifySize];
    new Float:x = (lines * 14) + new_x;
    new Float:newpos = x - 45.0;
    if(NotifInfo[playerid][index][NotifyIcon] == 1)
    {
        gNotifTextdraw[playerid][i] = CreatePlayerTextDraw(playerid, 538.000, 151.000+newpos, "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 92.000, 17.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1329275137);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 536.000, 143.000+newpos, "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 14.000, 14.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1329275137);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 618.000, 143.000+newpos, "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 14.000, 14.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1329275137);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 543.000, 145.000+newpos, "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 83.000, 17.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1329275137);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 538.000, 168.000+newpos, "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 92.000, 33.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 536.000, 194.000+newpos, "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 14.000, 13.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 618.000, 194.000+newpos, "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 14.000, 13.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 542.000, 173.000+newpos, "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 84.000, 32.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 541.000, 146.000+newpos, "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 20.000, 21.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 542.000, 147.000+newpos, "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 18.000, 19.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -16776961);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 548.000, 151.000+newpos, "X");
        PlayerTextDrawLetterSize(playerid, gNotifTextdraw[playerid][i], 0.230, 1.099);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 150);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 2);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 562.000, 152.000+newpos, "ERROR");
        PlayerTextDrawLetterSize(playerid, gNotifTextdraw[playerid][i], 0.220, 0.899);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -7681);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 150);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 545.000, 170.000+newpos, NotifInfo[playerid][index][NotifyMessage]);
        PlayerTextDrawLetterSize(playerid, gNotifTextdraw[playerid][i], 0.140, 0.899);
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 623.000, 0.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 150);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);
    }
    if(NotifInfo[playerid][index][NotifyIcon] == 2)
    {
        gNotifTextdraw[playerid][i] = CreatePlayerTextDraw(playerid, 538.000, 151.000+newpos, "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 92.000, 17.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1329275137);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 536.000, 143.000+newpos, "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 14.000, 14.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1329275137);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 618.000, 143.000+newpos, "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 14.000, 14.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1329275137);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 543.000, 145.000+newpos, "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 83.000, 17.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1329275137);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 538.000, 168.000+newpos, "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 92.000, 33.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 536.000, 194.000+newpos, "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 14.000, 13.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 618.000, 194.000+newpos, "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 14.000, 13.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 542.000, 173.000+newpos, "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 84.000, 32.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 541.000, 146.000+newpos, "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 20.000, 21.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 542.000, 147.000+newpos, "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 18.000, 19.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], 0x00fff7AA);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 550.000, 151.000+newpos, "i");
        PlayerTextDrawLetterSize(playerid, gNotifTextdraw[playerid][i], 0.230, 1.098);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 150);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 2);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 562.000, 152.000+newpos, "INFORMATION");
        PlayerTextDrawLetterSize(playerid, gNotifTextdraw[playerid][i], 0.219, 0.898);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -7681);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 150);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 545.000, 170.000+newpos, NotifInfo[playerid][index][NotifyMessage]);
        PlayerTextDrawLetterSize(playerid, gNotifTextdraw[playerid][i], 0.140, 0.898);
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 623.000, 0.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 150);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);
    }
    if(NotifInfo[playerid][index][NotifyIcon] == 3)
    {
        gNotifTextdraw[playerid][i] = CreatePlayerTextDraw(playerid, 538.000, 151.000+newpos, "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 92.000, 17.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1329275137);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 536.000, 143.000+newpos, "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 14.000, 14.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1329275137);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 618.000, 143.000+newpos, "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 14.000, 14.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1329275137);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 543.000, 145.000+newpos, "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 83.000, 17.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1329275137);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 538.000, 168.000+newpos, "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 92.000, 33.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 536.000, 194.000+newpos, "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 14.000, 13.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 618.000, 194.000+newpos, "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 14.000, 13.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 542.000, 173.000+newpos, "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 84.000, 32.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 541.000, 146.000+newpos, "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 20.000, 21.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 542.000, 147.000+newpos, "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 18.000, 19.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], 852308735);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 550.000, 155.000+newpos, "/");
        PlayerTextDrawLetterSize(playerid, gNotifTextdraw[playerid][i], 0.329, 0.599);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 150);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 2);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 553.000, 152.000+newpos, "/");
        PlayerTextDrawLetterSize(playerid, gNotifTextdraw[playerid][i], -0.399, 0.999);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 150);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 2);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 562.000, 152.000+newpos, "SUKSES");
        PlayerTextDrawLetterSize(playerid, gNotifTextdraw[playerid][i], 0.220, 0.899);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -7681);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 150);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 545.000, 170.000+newpos, NotifInfo[playerid][index][NotifyMessage]);
        PlayerTextDrawLetterSize(playerid, gNotifTextdraw[playerid][i], 0.140, 0.899);
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 623.000, 0.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 150);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);
    }
    if(NotifInfo[playerid][index][NotifyIcon] == 4)
    {
        gNotifTextdraw[playerid][i] = CreatePlayerTextDraw(playerid, 538.000, 151.000+newpos, "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 92.000, 17.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1329275137);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 536.000, 143.000+newpos, "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 14.000, 14.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1329275137);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 618.000, 143.000+newpos, "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 14.000, 14.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1329275137);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 543.000, 145.000+newpos, "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 83.000, 17.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1329275137);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 538.000, 168.000+newpos, "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 92.000, 33.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 536.000, 194.000+newpos, "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 14.000, 13.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 618.000, 194.000+newpos, "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 14.000, 13.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 542.000, 173.000+newpos, "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 84.000, 32.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 541.000, 146.000+newpos, "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 20.000, 21.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 542.000, 147.000+newpos, "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 18.000, 19.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], 1887473919);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 550.000, 151.000+newpos, "!");
        PlayerTextDrawLetterSize(playerid, gNotifTextdraw[playerid][i], 0.230, 1.098);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 150);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 2);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 562.000, 152.000+newpos, "SYNTAX");
        PlayerTextDrawLetterSize(playerid, gNotifTextdraw[playerid][i], 0.219, 0.898);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -7681);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 150);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 545.000, 170.000+newpos, NotifInfo[playerid][index][NotifyMessage]);
        PlayerTextDrawLetterSize(playerid, gNotifTextdraw[playerid][i], 0.140, 0.898);
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 623.000, 0.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 150);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);
    }
    if(NotifInfo[playerid][index][NotifyIcon] == 5)
    {
        gNotifTextdraw[playerid][i] = CreatePlayerTextDraw(playerid, 538.000, 151.000+newpos, "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 92.000, 17.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1329275137);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 536.000, 143.000+newpos, "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 14.000, 14.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1329275137);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 618.000, 143.000+newpos, "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 14.000, 14.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1329275137);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 543.000, 145.000+newpos, "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 83.000, 17.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1329275137);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 538.000, 168.000+newpos, "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 92.000, 33.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 536.000, 194.000+newpos, "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 14.000, 13.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 618.000, 194.000+newpos, "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 14.000, 13.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 542.000, 173.000+newpos, "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 84.000, 32.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 541.000, 146.000+newpos, "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 20.000, 21.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 542.000, 147.000+newpos, "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 18.000, 19.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -12254977);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 4);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 550.000, 151.000+newpos, "!");
        PlayerTextDrawLetterSize(playerid, gNotifTextdraw[playerid][i], 0.230, 1.098);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -1);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 150);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 2);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 562.000, 152.000+newpos, "WARNING");
        PlayerTextDrawLetterSize(playerid, gNotifTextdraw[playerid][i], 0.219, 0.898);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], -7681);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 150);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);

        gNotifTextdraw[playerid][++i] = CreatePlayerTextDraw(playerid, 545.000, 170.000+newpos, NotifInfo[playerid][index][NotifyMessage]);
        PlayerTextDrawLetterSize(playerid, gNotifTextdraw[playerid][i], 0.140, 0.898);
        PlayerTextDrawTextSize(playerid, gNotifTextdraw[playerid][i], 623.000, 0.000);
        PlayerTextDrawAlignment(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawColor(playerid, gNotifTextdraw[playerid][i], 255);
        PlayerTextDrawSetShadow(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawSetOutline(playerid, gNotifTextdraw[playerid][i], 0);
        PlayerTextDrawBackgroundColor(playerid, gNotifTextdraw[playerid][i], 150);
        PlayerTextDrawFont(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawSetProportional(playerid, gNotifTextdraw[playerid][i], 1);
        PlayerTextDrawShow(playerid, gNotifTextdraw[playerid][i]);
    }
    return 1;
}