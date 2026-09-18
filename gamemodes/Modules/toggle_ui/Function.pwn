#include <YSI\y_hooks>

// Default koordinat X
new Float:DefaultHbe1_X[MAX_TDHBE1] =
{
    151.000, 151.000, 151.000, 151.000, 150.000, 229.000, 137.000, 141.000, 138.000, 238.000, 235.000,
    241.000, 142.000, 168.000, 194.000, 162.000, 188.000, 213.000, 162.000, 188.000, 213.000, 219.000, 220.000,
    219.000, 218.000, 229.000, 229.000, 229.000, 229.000, 229.000, 229.000, 147.000, 147.000, 149.000, 174.000, 176.000,
    179.000, 176.000, 198.000, 206.000, 203.000, 205.000
};

// Default koordinat Y
new Float:DefaultHbe1_Y[MAX_TDHBE1] =
{
    430.000, 415.000, 415.000, 430.000, 421.000, 406.000, 408.000, 408.000, 411.000, 430.000, 427.000, 427.000, 385.000, 385.000,
    385.000, 385.000, 385.000, 385.000, 403.000, 403.000, 403.000, 380.000, 385.000, 390.000, 401.000, 384.000, 391.000, 399.000,
    384.000, 391.000, 399.000, 389.000, 393.000, 396.000, 390.000, 389.000, 396.000, 399.000, 386.000, 390.000, 390.000, 398.000,
};

stock SaveTextdrawHbe1(playerid)
{
    new query[8192];
    new pid = AccountData[playerid][pID];

    format(query, sizeof(query),
        "INSERT INTO textdraw_hud (playerid,");

    for (new i = 1; i <= 21; i++)
    {
        format(query, sizeof(query), "%s td%d_x, td%d_y%s",
            query, i, i, (i == 21) ? ")" : ",");
    }

    format(query, sizeof(query), "%s VALUES (%d,", query, pid);

    for (new i = 0; i < 21; i++)
    {
        format(query, sizeof(query), "%s %f, %f%s",
            query,
            TDHBE1_PosX[playerid][i],
            TDHBE1_PosY[playerid][i],
            (i == 20) ? ")" : ",");
    }

    format(query, sizeof(query), "%s ON DUPLICATE KEY UPDATE ", query);

    for (new i = 1; i <= 21; i++)
    {
        format(query, sizeof(query), "%s td%d_x=VALUES(td%d_x), td%d_y=VALUES(td%d_y)%s",
            query, i, i, i, i, (i == 21) ? "" : ",");
    }

    mysql_tquery(g_SQL, query);

    format(query, sizeof(query),
        "INSERT INTO textdraw_hud (playerid,");

    for (new i = 22; i <= 42; i++)
    {
        format(query, sizeof(query), "%s td%d_x, td%d_y%s",
            query, i, i, (i == 42) ? ")" : ",");
    }

    format(query, sizeof(query), "%s VALUES (%d,", query, pid);

    for (new i = 21; i < 42; i++)
    {
        format(query, sizeof(query), "%s %f, %f%s",
            query,
            TDHBE1_PosX[playerid][i],
            TDHBE1_PosY[playerid][i],
            (i == 41) ? ")" : ",");
    }

    format(query, sizeof(query), "%s ON DUPLICATE KEY UPDATE ", query);

    for (new i = 22; i <= 42; i++)
    {
        format(query, sizeof(query), "%s td%d_x=VALUES(td%d_x), td%d_y=VALUES(td%d_y)%s",
            query, i, i, i, i, (i == 42) ? "" : ",");
    }

    mysql_tquery(g_SQL, query);

    return 1;
}

stock LoadTextdrawHbe1(playerid)
{
    new query[128];
    format(query, sizeof(query),
        "SELECT * FROM textdraw_hud WHERE playerid=%d",
        AccountData[playerid][pID]
    );
    mysql_tquery(g_SQL, query, "OnLoadTextdrawHbe1", "i", playerid);
}

forward OnLoadTextdrawHbe1(playerid);
public OnLoadTextdrawHbe1(playerid)
{
    new rows, fields;
    cache_get_data(rows, fields);

    new tmp[32], field_x[24], field_y[24];

    if (rows)
    {
        for (new i = 0; i < MAX_TDHBE1; i++)
        {
            format(field_x, sizeof(field_x), "td%d_x", i + 1);
            format(field_y, sizeof(field_y), "td%d_y", i + 1);

            cache_get_field_content(0, field_x, tmp, sizeof(tmp));
            if (strlen(tmp) > 0)
                TDHBE1_PosX[playerid][i] = floatstr(tmp);
            else
                TDHBE1_PosX[playerid][i] = DefaultHbe1_X[i];

            cache_get_field_content(0, field_y, tmp, sizeof(tmp));
            if (strlen(tmp) > 0)
                TDHBE1_PosY[playerid][i] = floatstr(tmp);
            else
                TDHBE1_PosY[playerid][i] = DefaultHbe1_Y[i];

            if (HbeNewv2[playerid][i] != PlayerText:INVALID_TEXT_DRAW)
            {
                PlayerTextDrawSetPos(playerid, HbeNewv2[playerid][i], TDHBE1_PosX[playerid][i], TDHBE1_PosY[playerid][i]);
            }
        }
    }
    else
    {
        SaveTextdrawHbe1(playerid);
        for (new i = 0; i < MAX_TDHBE1; i++)
        {
            TDHBE1_PosX[playerid][i] = DefaultHbe1_X[i];
            TDHBE1_PosY[playerid][i] = DefaultHbe1_Y[i];

            if (HbeNewv2[playerid][i] != PlayerText:INVALID_TEXT_DRAW)
            {
                PlayerTextDrawSetPos(playerid, HbeNewv2[playerid][i], TDHBE1_PosX[playerid][i], TDHBE1_PosY[playerid][i]);
            }
        }
    }
    return 1;
}

CMD:resethud(playerid, params[])
{
    for (new i = 0; i < MAX_TDHBE1; i++)
    {
        TDHBE1_PosX[playerid][i] = DefaultHbe1_X[i];
        TDHBE1_PosY[playerid][i] = DefaultHbe1_Y[i];

        if (HbeNewv2[playerid][i] != PlayerText:INVALID_TEXT_DRAW)
        {
            PlayerTextDrawSetPos(playerid, HbeNewv2[playerid][i], TDHBE1_PosX[playerid][i], TDHBE1_PosY[playerid][i]);
        }
    }
    SaveTextdrawHbe1(playerid);
    SendClientMessage(playerid, -1, "HUD kamu sudah direset!");
    return 1;
}