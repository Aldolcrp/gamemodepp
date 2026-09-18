#include <YSI\y_hooks>
new PlayerText: Ui_Spawn[MAX_PLAYERS][37];

CreateSpawnTextdraws(playerid)
{
    Ui_Spawn[playerid][0] = CreatePlayerTextDraw(playerid, -4.000, -20.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, Ui_Spawn[playerid][0], 670.000, 580.000);
    PlayerTextDrawAlignment(playerid, Ui_Spawn[playerid][0], 1);
    PlayerTextDrawColor(playerid, Ui_Spawn[playerid][0], -2139062097);
    PlayerTextDrawSetShadow(playerid, Ui_Spawn[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Spawn[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Spawn[playerid][0], 255);
    PlayerTextDrawFont(playerid, Ui_Spawn[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Spawn[playerid][0], 1);

    Ui_Spawn[playerid][1] = CreatePlayerTextDraw(playerid, 459.000, 367.000, "_");
    PlayerTextDrawTextSize(playerid, Ui_Spawn[playerid][1], -244.000, -262.000);
    PlayerTextDrawAlignment(playerid, Ui_Spawn[playerid][1], 1);
    PlayerTextDrawColor(playerid, Ui_Spawn[playerid][1], -1);
    PlayerTextDrawSetShadow(playerid, Ui_Spawn[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Spawn[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Spawn[playerid][1], 85);
    PlayerTextDrawFont(playerid, Ui_Spawn[playerid][1], 5);
    PlayerTextDrawSetProportional(playerid, Ui_Spawn[playerid][1], 0);
    PlayerTextDrawSetPreviewModel(playerid, Ui_Spawn[playerid][1], 19166);
    PlayerTextDrawSetPreviewRot(playerid, Ui_Spawn[playerid][1], -90.000, 0.000, 0.000, 0.599);
    PlayerTextDrawSetPreviewVehCol(playerid, Ui_Spawn[playerid][1], 0, 0);

    Ui_Spawn[playerid][2] = CreatePlayerTextDraw(playerid, 459.000, 104.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, Ui_Spawn[playerid][2], 2.000, 263.000);
    PlayerTextDrawAlignment(playerid, Ui_Spawn[playerid][2], 1);
    PlayerTextDrawColor(playerid, Ui_Spawn[playerid][2], 16744447);
    PlayerTextDrawSetShadow(playerid, Ui_Spawn[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Spawn[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Spawn[playerid][2], 255);
    PlayerTextDrawFont(playerid, Ui_Spawn[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Spawn[playerid][2], 1);

    Ui_Spawn[playerid][3] = CreatePlayerTextDraw(playerid, 213.000, 102.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, Ui_Spawn[playerid][3], 248.000, 2.000);
    PlayerTextDrawAlignment(playerid, Ui_Spawn[playerid][3], 1);
    PlayerTextDrawColor(playerid, Ui_Spawn[playerid][3], 16744447);
    PlayerTextDrawSetShadow(playerid, Ui_Spawn[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Spawn[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Spawn[playerid][3], 255);
    PlayerTextDrawFont(playerid, Ui_Spawn[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Spawn[playerid][3], 1);

    Ui_Spawn[playerid][4] = CreatePlayerTextDraw(playerid, 213.000, 367.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, Ui_Spawn[playerid][4], 248.000, 2.000);
    PlayerTextDrawAlignment(playerid, Ui_Spawn[playerid][4], 1);
    PlayerTextDrawColor(playerid, Ui_Spawn[playerid][4], 16744447);
    PlayerTextDrawSetShadow(playerid, Ui_Spawn[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Spawn[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Spawn[playerid][4], 255);
    PlayerTextDrawFont(playerid, Ui_Spawn[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Spawn[playerid][4], 1);

    Ui_Spawn[playerid][5] = CreatePlayerTextDraw(playerid, 171.000, 80.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, Ui_Spawn[playerid][5], 333.000, 1.000);
    PlayerTextDrawAlignment(playerid, Ui_Spawn[playerid][5], 1);
    PlayerTextDrawColor(playerid, Ui_Spawn[playerid][5], 16744315);
    PlayerTextDrawSetShadow(playerid, Ui_Spawn[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Spawn[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Spawn[playerid][5], 255);
    PlayerTextDrawFont(playerid, Ui_Spawn[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Spawn[playerid][5], 1);

    Ui_Spawn[playerid][6] = CreatePlayerTextDraw(playerid, 336.000, 30.000, "0");
    PlayerTextDrawLetterSize(playerid, Ui_Spawn[playerid][6], 0.610, 2.599);
    PlayerTextDrawAlignment(playerid, Ui_Spawn[playerid][6], 2);
    PlayerTextDrawColor(playerid, Ui_Spawn[playerid][6], 16744447);
    PlayerTextDrawSetShadow(playerid, Ui_Spawn[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Spawn[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Spawn[playerid][6], 150);
    PlayerTextDrawFont(playerid, Ui_Spawn[playerid][6], 1);
    PlayerTextDrawSetProportional(playerid, Ui_Spawn[playerid][6], 1);

    Ui_Spawn[playerid][7] = CreatePlayerTextDraw(playerid, 336.000, 38.000, "AS");
    PlayerTextDrawLetterSize(playerid, Ui_Spawn[playerid][7], 0.590, 2.599);
    PlayerTextDrawAlignment(playerid, Ui_Spawn[playerid][7], 2);
    PlayerTextDrawColor(playerid, Ui_Spawn[playerid][7], 16744447);
    PlayerTextDrawSetShadow(playerid, Ui_Spawn[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Spawn[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Spawn[playerid][7], 150);
    PlayerTextDrawFont(playerid, Ui_Spawn[playerid][7], 1);
    PlayerTextDrawSetProportional(playerid, Ui_Spawn[playerid][7], 1);

    Ui_Spawn[playerid][8] = CreatePlayerTextDraw(playerid, 337.000, 60.000, "Spawn Location");
    PlayerTextDrawLetterSize(playerid, Ui_Spawn[playerid][8], 0.200, 1.800);
    PlayerTextDrawAlignment(playerid, Ui_Spawn[playerid][8], 2);
    PlayerTextDrawColor(playerid, Ui_Spawn[playerid][8], 16744447);
    PlayerTextDrawSetShadow(playerid, Ui_Spawn[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Spawn[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Spawn[playerid][8], 150);
    PlayerTextDrawFont(playerid, Ui_Spawn[playerid][8], 1);
    PlayerTextDrawSetProportional(playerid, Ui_Spawn[playerid][8], 1);

    Ui_Spawn[playerid][9] = CreatePlayerTextDraw(playerid, 337.000, 82.000, "Please select spawn location");
    PlayerTextDrawLetterSize(playerid, Ui_Spawn[playerid][9], 0.140, 1.400);
    PlayerTextDrawAlignment(playerid, Ui_Spawn[playerid][9], 2);
    PlayerTextDrawColor(playerid, Ui_Spawn[playerid][9], -1);
    PlayerTextDrawSetShadow(playerid, Ui_Spawn[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Spawn[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Spawn[playerid][9], 150);
    PlayerTextDrawFont(playerid, Ui_Spawn[playerid][9], 1);
    PlayerTextDrawSetProportional(playerid, Ui_Spawn[playerid][9], 1);

    Ui_Spawn[playerid][10] = CreatePlayerTextDraw(playerid, 405.000, 334.000, "0");
    PlayerTextDrawLetterSize(playerid, Ui_Spawn[playerid][10], 0.340, 0.900);
    PlayerTextDrawAlignment(playerid, Ui_Spawn[playerid][10], 2);
    PlayerTextDrawColor(playerid, Ui_Spawn[playerid][10], 16744447);
    PlayerTextDrawSetShadow(playerid, Ui_Spawn[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Spawn[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Spawn[playerid][10], 150);
    PlayerTextDrawFont(playerid, Ui_Spawn[playerid][10], 1);
    PlayerTextDrawSetProportional(playerid, Ui_Spawn[playerid][10], 1);

    Ui_Spawn[playerid][11] = CreatePlayerTextDraw(playerid, 405.000, 336.000, "AS");
    PlayerTextDrawLetterSize(playerid, Ui_Spawn[playerid][11], 0.270, 1.100);
    PlayerTextDrawAlignment(playerid, Ui_Spawn[playerid][11], 2);
    PlayerTextDrawColor(playerid, Ui_Spawn[playerid][11], 16744447);
    PlayerTextDrawSetShadow(playerid, Ui_Spawn[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Spawn[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Spawn[playerid][11], 150);
    PlayerTextDrawFont(playerid, Ui_Spawn[playerid][11], 1);
    PlayerTextDrawSetProportional(playerid, Ui_Spawn[playerid][11], 1);

    Ui_Spawn[playerid][12] = CreatePlayerTextDraw(playerid, 352.000, 311.000, "0");
    PlayerTextDrawLetterSize(playerid, Ui_Spawn[playerid][12], 0.340, 0.900);
    PlayerTextDrawAlignment(playerid, Ui_Spawn[playerid][12], 2);
    PlayerTextDrawColor(playerid, Ui_Spawn[playerid][12], 16744447);
    PlayerTextDrawSetShadow(playerid, Ui_Spawn[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Spawn[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Spawn[playerid][12], 150);
    PlayerTextDrawFont(playerid, Ui_Spawn[playerid][12], 1);
    PlayerTextDrawSetProportional(playerid, Ui_Spawn[playerid][12], 1);

    Ui_Spawn[playerid][13] = CreatePlayerTextDraw(playerid, 352.000, 313.000, "AS");
    PlayerTextDrawLetterSize(playerid, Ui_Spawn[playerid][13], 0.270, 1.100);
    PlayerTextDrawAlignment(playerid, Ui_Spawn[playerid][13], 2);
    PlayerTextDrawColor(playerid, Ui_Spawn[playerid][13], 16744447);
    PlayerTextDrawSetShadow(playerid, Ui_Spawn[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Spawn[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Spawn[playerid][13], 150);
    PlayerTextDrawFont(playerid, Ui_Spawn[playerid][13], 1);
    PlayerTextDrawSetProportional(playerid, Ui_Spawn[playerid][13], 1);

    Ui_Spawn[playerid][14] = CreatePlayerTextDraw(playerid, 436.000, 341.000, "0");
    PlayerTextDrawLetterSize(playerid, Ui_Spawn[playerid][14], 0.340, 0.900);
    PlayerTextDrawAlignment(playerid, Ui_Spawn[playerid][14], 2);
    PlayerTextDrawColor(playerid, Ui_Spawn[playerid][14], 16744447);
    PlayerTextDrawSetShadow(playerid, Ui_Spawn[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Spawn[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Spawn[playerid][14], 150);
    PlayerTextDrawFont(playerid, Ui_Spawn[playerid][14], 1);
    PlayerTextDrawSetProportional(playerid, Ui_Spawn[playerid][14], 1);

    Ui_Spawn[playerid][15] = CreatePlayerTextDraw(playerid, 436.000, 344.000, "AS");
    PlayerTextDrawLetterSize(playerid, Ui_Spawn[playerid][15], 0.270, 1.100);
    PlayerTextDrawAlignment(playerid, Ui_Spawn[playerid][15], 2);
    PlayerTextDrawColor(playerid, Ui_Spawn[playerid][15], 16744447);
    PlayerTextDrawSetShadow(playerid, Ui_Spawn[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Spawn[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Spawn[playerid][15], 150);
    PlayerTextDrawFont(playerid, Ui_Spawn[playerid][15], 1);
    PlayerTextDrawSetProportional(playerid, Ui_Spawn[playerid][15], 1);

    Ui_Spawn[playerid][16] = CreatePlayerTextDraw(playerid, 212.000, 373.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, Ui_Spawn[playerid][16], 123.000, 17.000);
    PlayerTextDrawAlignment(playerid, Ui_Spawn[playerid][16], 1);
    PlayerTextDrawColor(playerid, Ui_Spawn[playerid][16], 16744447);
    PlayerTextDrawSetShadow(playerid, Ui_Spawn[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Spawn[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Spawn[playerid][16], 255);
    PlayerTextDrawFont(playerid, Ui_Spawn[playerid][16], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Spawn[playerid][16], 1);
    PlayerTextDrawSetSelectable(playerid, Ui_Spawn[playerid][16], 1);

    Ui_Spawn[playerid][17] = CreatePlayerTextDraw(playerid, 338.000, 373.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, Ui_Spawn[playerid][17], 123.000, 17.000);
    PlayerTextDrawAlignment(playerid, Ui_Spawn[playerid][17], 1);
    PlayerTextDrawColor(playerid, Ui_Spawn[playerid][17], 16744447);
    PlayerTextDrawSetShadow(playerid, Ui_Spawn[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Spawn[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Spawn[playerid][17], 255);
    PlayerTextDrawFont(playerid, Ui_Spawn[playerid][17], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Spawn[playerid][17], 1);
    PlayerTextDrawSetSelectable(playerid, Ui_Spawn[playerid][17], 1);

    Ui_Spawn[playerid][18] = CreatePlayerTextDraw(playerid, 212.000, 394.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, Ui_Spawn[playerid][18], 123.000, 17.000);
    PlayerTextDrawAlignment(playerid, Ui_Spawn[playerid][18], 1);
    PlayerTextDrawColor(playerid, Ui_Spawn[playerid][18], 16744447);
    PlayerTextDrawSetShadow(playerid, Ui_Spawn[playerid][18], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Spawn[playerid][18], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Spawn[playerid][18], 255);
    PlayerTextDrawFont(playerid, Ui_Spawn[playerid][18], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Spawn[playerid][18], 1);
    PlayerTextDrawSetSelectable(playerid, Ui_Spawn[playerid][18], 1);

    Ui_Spawn[playerid][19] = CreatePlayerTextDraw(playerid, 338.000, 394.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, Ui_Spawn[playerid][19], 123.000, 17.000);
    PlayerTextDrawAlignment(playerid, Ui_Spawn[playerid][19], 1);
    PlayerTextDrawColor(playerid, Ui_Spawn[playerid][19], -1962934017);
    PlayerTextDrawSetShadow(playerid, Ui_Spawn[playerid][19], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Spawn[playerid][19], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Spawn[playerid][19], 255);
    PlayerTextDrawFont(playerid, Ui_Spawn[playerid][19], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Spawn[playerid][19], 1);
    PlayerTextDrawSetSelectable(playerid, Ui_Spawn[playerid][19], 1);

    Ui_Spawn[playerid][20] = CreatePlayerTextDraw(playerid, 352.000, 313.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, Ui_Spawn[playerid][20], 17.000, 1.000);
    PlayerTextDrawAlignment(playerid, Ui_Spawn[playerid][20], 1);
    PlayerTextDrawColor(playerid, Ui_Spawn[playerid][20], 16744447);
    PlayerTextDrawSetShadow(playerid, Ui_Spawn[playerid][20], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Spawn[playerid][20], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Spawn[playerid][20], 255);
    PlayerTextDrawFont(playerid, Ui_Spawn[playerid][20], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Spawn[playerid][20], 1);

    Ui_Spawn[playerid][21] = CreatePlayerTextDraw(playerid, 367.000, 310.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, Ui_Spawn[playerid][21], 32.000, 8.000);
    PlayerTextDrawAlignment(playerid, Ui_Spawn[playerid][21], 1);
    PlayerTextDrawColor(playerid, Ui_Spawn[playerid][21], 16744447);
    PlayerTextDrawSetShadow(playerid, Ui_Spawn[playerid][21], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Spawn[playerid][21], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Spawn[playerid][21], 255);
    PlayerTextDrawFont(playerid, Ui_Spawn[playerid][21], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Spawn[playerid][21], 1);
    PlayerTextDrawSetSelectable(playerid, Ui_Spawn[playerid][21], 1);

    Ui_Spawn[playerid][22] = CreatePlayerTextDraw(playerid, 387.000, 336.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, Ui_Spawn[playerid][22], 17.000, 1.000);
    PlayerTextDrawAlignment(playerid, Ui_Spawn[playerid][22], 1);
    PlayerTextDrawColor(playerid, Ui_Spawn[playerid][22], 16744447);
    PlayerTextDrawSetShadow(playerid, Ui_Spawn[playerid][22], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Spawn[playerid][22], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Spawn[playerid][22], 255);
    PlayerTextDrawFont(playerid, Ui_Spawn[playerid][22], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Spawn[playerid][22], 1);

    Ui_Spawn[playerid][23] = CreatePlayerTextDraw(playerid, 358.000, 332.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, Ui_Spawn[playerid][23], 32.000, 8.000);
    PlayerTextDrawAlignment(playerid, Ui_Spawn[playerid][23], 1);
    PlayerTextDrawColor(playerid, Ui_Spawn[playerid][23], 16744447);
    PlayerTextDrawSetShadow(playerid, Ui_Spawn[playerid][23], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Spawn[playerid][23], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Spawn[playerid][23], 255);
    PlayerTextDrawFont(playerid, Ui_Spawn[playerid][23], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Spawn[playerid][23], 1);
    PlayerTextDrawSetSelectable(playerid, Ui_Spawn[playerid][23], 1);

    Ui_Spawn[playerid][24] = CreatePlayerTextDraw(playerid, 437.000, 344.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, Ui_Spawn[playerid][24], 1.000, -12.000);
    PlayerTextDrawAlignment(playerid, Ui_Spawn[playerid][24], 1);
    PlayerTextDrawColor(playerid, Ui_Spawn[playerid][24], 16744447);
    PlayerTextDrawSetShadow(playerid, Ui_Spawn[playerid][24], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Spawn[playerid][24], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Spawn[playerid][24], 255);
    PlayerTextDrawFont(playerid, Ui_Spawn[playerid][24], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Spawn[playerid][24], 1);

    Ui_Spawn[playerid][25] = CreatePlayerTextDraw(playerid, 406.000, 324.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, Ui_Spawn[playerid][25], 32.000, 8.000);
    PlayerTextDrawAlignment(playerid, Ui_Spawn[playerid][25], 1);
    PlayerTextDrawColor(playerid, Ui_Spawn[playerid][25], 16744447);
    PlayerTextDrawSetShadow(playerid, Ui_Spawn[playerid][25], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Spawn[playerid][25], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Spawn[playerid][25], 255);
    PlayerTextDrawFont(playerid, Ui_Spawn[playerid][25], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Spawn[playerid][25], 1);
    PlayerTextDrawSetSelectable(playerid, Ui_Spawn[playerid][25], 1);

    Ui_Spawn[playerid][26] = CreatePlayerTextDraw(playerid, 337.000, 82.000, "Please select spawn location");
    PlayerTextDrawLetterSize(playerid, Ui_Spawn[playerid][26], 0.140, 1.400);
    PlayerTextDrawAlignment(playerid, Ui_Spawn[playerid][26], 2);
    PlayerTextDrawColor(playerid, Ui_Spawn[playerid][26], -1);
    PlayerTextDrawSetShadow(playerid, Ui_Spawn[playerid][26], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Spawn[playerid][26], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Spawn[playerid][26], 150);
    PlayerTextDrawFont(playerid, Ui_Spawn[playerid][26], 1);
    PlayerTextDrawSetProportional(playerid, Ui_Spawn[playerid][26], 1);

    Ui_Spawn[playerid][27] = CreatePlayerTextDraw(playerid, 373.000, 331.000, "Airport");
    PlayerTextDrawLetterSize(playerid, Ui_Spawn[playerid][27], 0.150, 0.900);
    PlayerTextDrawAlignment(playerid, Ui_Spawn[playerid][27], 2);
    PlayerTextDrawColor(playerid, Ui_Spawn[playerid][27], 255);
    PlayerTextDrawSetShadow(playerid, Ui_Spawn[playerid][27], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Spawn[playerid][27], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Spawn[playerid][27], 150);
    PlayerTextDrawFont(playerid, Ui_Spawn[playerid][27], 1);
    PlayerTextDrawSetProportional(playerid, Ui_Spawn[playerid][27], 1);

    Ui_Spawn[playerid][28] = CreatePlayerTextDraw(playerid, 382.000, 309.000, "Carnaval");
    PlayerTextDrawLetterSize(playerid, Ui_Spawn[playerid][28], 0.150, 0.900);
    PlayerTextDrawAlignment(playerid, Ui_Spawn[playerid][28], 2);
    PlayerTextDrawColor(playerid, Ui_Spawn[playerid][28], 255);
    PlayerTextDrawSetShadow(playerid, Ui_Spawn[playerid][28], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Spawn[playerid][28], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Spawn[playerid][28], 150);
    PlayerTextDrawFont(playerid, Ui_Spawn[playerid][28], 1);
    PlayerTextDrawSetProportional(playerid, Ui_Spawn[playerid][28], 1);

    Ui_Spawn[playerid][29] = CreatePlayerTextDraw(playerid, 421.000, 323.000, "Pelabuhan");
    PlayerTextDrawLetterSize(playerid, Ui_Spawn[playerid][29], 0.150, 0.900);
    PlayerTextDrawAlignment(playerid, Ui_Spawn[playerid][29], 2);
    PlayerTextDrawColor(playerid, Ui_Spawn[playerid][29], 255);
    PlayerTextDrawSetShadow(playerid, Ui_Spawn[playerid][29], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Spawn[playerid][29], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Spawn[playerid][29], 150);
    PlayerTextDrawFont(playerid, Ui_Spawn[playerid][29], 1);
    PlayerTextDrawSetProportional(playerid, Ui_Spawn[playerid][29], 1);

    Ui_Spawn[playerid][30] = CreatePlayerTextDraw(playerid, 271.000, 377.000, "Faction");
    PlayerTextDrawLetterSize(playerid, Ui_Spawn[playerid][30], 0.180, 1.100);
    PlayerTextDrawAlignment(playerid, Ui_Spawn[playerid][30], 2);
    PlayerTextDrawColor(playerid, Ui_Spawn[playerid][30], 255);
    PlayerTextDrawSetShadow(playerid, Ui_Spawn[playerid][30], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Spawn[playerid][30], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Spawn[playerid][30], 150);
    PlayerTextDrawFont(playerid, Ui_Spawn[playerid][30], 1);
    PlayerTextDrawSetProportional(playerid, Ui_Spawn[playerid][30], 1);

    Ui_Spawn[playerid][31] = CreatePlayerTextDraw(playerid, 396.000, 377.000, "Rusun");
    PlayerTextDrawLetterSize(playerid, Ui_Spawn[playerid][31], 0.180, 1.100);
    PlayerTextDrawAlignment(playerid, Ui_Spawn[playerid][31], 2);
    PlayerTextDrawColor(playerid, Ui_Spawn[playerid][31], 255);
    PlayerTextDrawSetShadow(playerid, Ui_Spawn[playerid][31], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Spawn[playerid][31], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Spawn[playerid][31], 150);
    PlayerTextDrawFont(playerid, Ui_Spawn[playerid][31], 1);
    PlayerTextDrawSetProportional(playerid, Ui_Spawn[playerid][31], 1);

    Ui_Spawn[playerid][32] = CreatePlayerTextDraw(playerid, 271.000, 397.000, "House");
    PlayerTextDrawLetterSize(playerid, Ui_Spawn[playerid][32], 0.180, 1.100);
    PlayerTextDrawAlignment(playerid, Ui_Spawn[playerid][32], 2);
    PlayerTextDrawColor(playerid, Ui_Spawn[playerid][32], 255);
    PlayerTextDrawSetShadow(playerid, Ui_Spawn[playerid][32], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Spawn[playerid][32], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Spawn[playerid][32], 150);
    PlayerTextDrawFont(playerid, Ui_Spawn[playerid][32], 1);
    PlayerTextDrawSetProportional(playerid, Ui_Spawn[playerid][32], 1);

    Ui_Spawn[playerid][33] = CreatePlayerTextDraw(playerid, 399.000, 397.000, "Last Location");
    PlayerTextDrawLetterSize(playerid, Ui_Spawn[playerid][33], 0.180, 1.100);
    PlayerTextDrawAlignment(playerid, Ui_Spawn[playerid][33], 2);
    PlayerTextDrawColor(playerid, Ui_Spawn[playerid][33], 255);
    PlayerTextDrawSetShadow(playerid, Ui_Spawn[playerid][33], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Spawn[playerid][33], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Spawn[playerid][33], 150);
    PlayerTextDrawFont(playerid, Ui_Spawn[playerid][33], 1);
    PlayerTextDrawSetProportional(playerid, Ui_Spawn[playerid][33], 1);

    Ui_Spawn[playerid][34] = CreatePlayerTextDraw(playerid, 425.000, 395.000, "--");
    PlayerTextDrawLetterSize(playerid, Ui_Spawn[playerid][34], 0.320, 1.300);
    PlayerTextDrawAlignment(playerid, Ui_Spawn[playerid][34], 2);
    PlayerTextDrawColor(playerid, Ui_Spawn[playerid][34], 255);
    PlayerTextDrawSetShadow(playerid, Ui_Spawn[playerid][34], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Spawn[playerid][34], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Spawn[playerid][34], 150);
    PlayerTextDrawFont(playerid, Ui_Spawn[playerid][34], 1);
    PlayerTextDrawSetProportional(playerid, Ui_Spawn[playerid][34], 1);

    Ui_Spawn[playerid][35] = CreatePlayerTextDraw(playerid, 432.000, 398.000, ">");
    PlayerTextDrawLetterSize(playerid, Ui_Spawn[playerid][35], 0.270, 0.900);
    PlayerTextDrawAlignment(playerid, Ui_Spawn[playerid][35], 2);
    PlayerTextDrawColor(playerid, Ui_Spawn[playerid][35], 255);
    PlayerTextDrawSetShadow(playerid, Ui_Spawn[playerid][35], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Spawn[playerid][35], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Spawn[playerid][35], 150);
    PlayerTextDrawFont(playerid, Ui_Spawn[playerid][35], 1);
    PlayerTextDrawSetProportional(playerid, Ui_Spawn[playerid][35], 1);

    Ui_Spawn[playerid][36] = CreatePlayerTextDraw(playerid, 213.000, 104.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, Ui_Spawn[playerid][36], 2.000, 263.000);
    PlayerTextDrawAlignment(playerid, Ui_Spawn[playerid][36], 1);
    PlayerTextDrawColor(playerid, Ui_Spawn[playerid][36], 16744447);
    PlayerTextDrawSetShadow(playerid, Ui_Spawn[playerid][36], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Spawn[playerid][36], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Spawn[playerid][36], 255);
    PlayerTextDrawFont(playerid, Ui_Spawn[playerid][36], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Spawn[playerid][36], 1);
}

hook OnPlayerConnect(playerid)
{
    CreateSpawnTextdraws(playerid);
    return 1;
}

hook OnPlayerDisconnect(playerid, reason)
{
    for(new x = 0; x < 37; x++)
    {
        PlayerTextDrawDestroy(playerid, Ui_Spawn[playerid][x]);
    }
    return 1;
}

ShowSpawnTextdraws(playerid)
{
    for(new x = 0; x < 37; x++)
    {
        PlayerTextDrawShow(playerid, Ui_Spawn[playerid][x]);
    }
    PlayerTextDrawSetString(playerid, Ui_Spawn[playerid][30], GetFactName(playerid));
    SelectTextDraw(playerid, X11_GRAY0);
    return 1;
}

HideSpawnTextdraws(playerid)
{
    for(new x = 0; x < 37; x++)
    {
        PlayerTextDrawHide(playerid, Ui_Spawn[playerid][x]);
    }
    CancelSelectTextDraw(playerid);
    return 1;
}

hook ClickDynPlayerTextdraw(playerid, PlayerText: playertextid)
{
    if(playertextid == Ui_Spawn[playerid][23])//Bandara ls
	{
        if(AccountData[playerid][pInjured] == 1 && AccountData[playerid][pInjuredTime] != 0)
        {
            HideSpawnTextdraws(playerid);
            SetCameraBehindPlayer(playerid);
            SetSpawnInfo(playerid, NO_TEAM, AccountData[playerid][pSkin],
            AccountData[playerid][pPosX], AccountData[playerid][pPosY], AccountData[playerid][pPosZ], AccountData[playerid][pPosA],
            0, 0, 0, 0, 0, 0);
            SpawnPlayer(playerid);

            SetPlayerVirtualWorldEx(playerid, AccountData[playerid][pWorld]);
            SetPlayerInteriorEx(playerid, AccountData[playerid][pInt]);

            SetPlayerPositionEx(playerid, AccountData[playerid][pPosX],
                AccountData[playerid][pPosY], AccountData[playerid][pPosZ],
                AccountData[playerid][pPosA]);

            LoadPlayerJob(playerid);
            RefreshFactionMap(playerid);
            ShowHbeTextdraws(playerid);
            SetPlayerColor(playerid, COLOR_WHITE);
            GameTextForPlayer(playerid, "MEMUAT OBJECT...", 6000, 4);
        }
        else if(AccountData[playerid][pArrest] > 0)
        {
            SetPlayerArrest(playerid, AccountData[playerid][pArrest]);
            AccountData[playerid][playerClickSpawn] = 1;
            HideSpawnTextdraws(playerid);
            SetCameraBehindPlayer(playerid);
            SetSpawnInfo(playerid, NO_TEAM, AccountData[playerid][pSkin],
            AccountData[playerid][pPosX], AccountData[playerid][pPosY], AccountData[playerid][pPosZ], AccountData[playerid][pPosA],
            0, 0, 0, 0, 0, 0);
            SpawnPlayer(playerid);

            SetPlayerVirtualWorldEx(playerid, AccountData[playerid][pWorld]);
            SetPlayerInteriorEx(playerid, AccountData[playerid][pInt]);

            SetPlayerPositionEx(playerid, AccountData[playerid][pPosX],
                AccountData[playerid][pPosY], AccountData[playerid][pPosZ],
                AccountData[playerid][pPosA]);

            LoadPlayerJob(playerid);
            RefreshFactionMap(playerid);
            ShowHbeTextdraws(playerid);
            SetPlayerColor(playerid, COLOR_WHITE);
            GameTextForPlayer(playerid, "MEMUAT OBJECT...", 6000, 4);
        }
        else if(AccountData[playerid][pJail] > 0)
        {
            SpawnPlayerInJail(playerid);
            AccountData[playerid][playerClickSpawn] = 1;
            HideSpawnTextdraws(playerid);
            SetCameraBehindPlayer(playerid);
            SetSpawnInfo(playerid, NO_TEAM, AccountData[playerid][pSkin],
            AccountData[playerid][pPosX], AccountData[playerid][pPosY], AccountData[playerid][pPosZ], AccountData[playerid][pPosA],
            0, 0, 0, 0, 0, 0);
            SpawnPlayer(playerid);

            SetPlayerVirtualWorldEx(playerid, AccountData[playerid][pWorld]);
            SetPlayerInteriorEx(playerid, AccountData[playerid][pInt]);

            SetPlayerPositionEx(playerid, AccountData[playerid][pPosX],
                AccountData[playerid][pPosY], AccountData[playerid][pPosZ],
                AccountData[playerid][pPosA]);

            LoadPlayerJob(playerid);
            RefreshFactionMap(playerid);
            ShowHbeTextdraws(playerid);
            SetPlayerColor(playerid, COLOR_WHITE);
            GameTextForPlayer(playerid, "MEMUAT OBJECT...", 6000, 4);
        }
        else
        {
            new rand = random(sizeof(SpawnBandara));
            AccountData[playerid][pPosX] = SpawnBandara[rand][0];
            AccountData[playerid][pPosY] = SpawnBandara[rand][1];
            AccountData[playerid][pPosZ] = SpawnBandara[rand][2];
            AccountData[playerid][pPosA] = SpawnBandara[rand][3];
            SetPlayerInteriorEx(playerid, 0);
            SetPlayerVirtualWorldEx(playerid, 0);

            SetPlayerPositionEx(playerid, AccountData[playerid][pPosX], AccountData[playerid][pPosY], AccountData[playerid][pPosZ], AccountData[playerid][pPosA], 6000);
            HideSpawnTextdraws(playerid);
            ShowTDN(playerid, NOTIFICATION_SUKSES, "Anda berhasil spawn di Bandara Los Santos.");
            Streamer_UpdateEx(playerid, AccountData[playerid][pPosX], AccountData[playerid][pPosY], AccountData[playerid][pPosZ]);
            SetTimerEx("HideCam", 3000, false, "i", playerid);
            InterpolateCameraPos(playerid, AccountData[playerid][pPosX]-2.5, AccountData[playerid][pPosY],250.00,AccountData[playerid][pPosX]-2.5, AccountData[playerid][pPosY], AccountData[playerid][pPosZ]+2.5,2500,CAMERA_MOVE);
            InterpolateCameraLookAt(playerid, AccountData[playerid][pPosX], AccountData[playerid][pPosY], AccountData[playerid][pPosZ], AccountData[playerid][pPosX], AccountData[playerid][pPosY], AccountData[playerid][pPosZ], 2500, CAMERA_MOVE);
            AccountData[playerid][playerClickSpawn] = 1;
        }
	}
	if(playertextid == Ui_Spawn[playerid][25])//pelabuhan
	{
        if(AccountData[playerid][pInjured] == 1 && AccountData[playerid][pInjuredTime] != 0)
        {
            HideSpawnTextdraws(playerid);
            SetCameraBehindPlayer(playerid);
            SetSpawnInfo(playerid, NO_TEAM, AccountData[playerid][pSkin],
            AccountData[playerid][pPosX], AccountData[playerid][pPosY], AccountData[playerid][pPosZ], AccountData[playerid][pPosA],
            0, 0, 0, 0, 0, 0);
            SpawnPlayer(playerid);

            SetPlayerVirtualWorldEx(playerid, AccountData[playerid][pWorld]);
            SetPlayerInteriorEx(playerid, AccountData[playerid][pInt]);

            SetPlayerPositionEx(playerid, AccountData[playerid][pPosX],
                AccountData[playerid][pPosY], AccountData[playerid][pPosZ],
                AccountData[playerid][pPosA]);

            LoadPlayerJob(playerid);
            RefreshFactionMap(playerid);
            ShowHbeTextdraws(playerid);
            SetPlayerColor(playerid, COLOR_WHITE);
            GameTextForPlayer(playerid, "MEMUAT OBJECT...", 6000, 4);
        }
        else if(AccountData[playerid][pArrest] > 0)
        {
            SetPlayerArrest(playerid, AccountData[playerid][pArrest]);
            AccountData[playerid][playerClickSpawn] = 1;
            HideSpawnTextdraws(playerid);
            SetCameraBehindPlayer(playerid);
            SetSpawnInfo(playerid, NO_TEAM, AccountData[playerid][pSkin],
            AccountData[playerid][pPosX], AccountData[playerid][pPosY], AccountData[playerid][pPosZ], AccountData[playerid][pPosA],
            0, 0, 0, 0, 0, 0);
            SpawnPlayer(playerid);

            SetPlayerVirtualWorldEx(playerid, AccountData[playerid][pWorld]);
            SetPlayerInteriorEx(playerid, AccountData[playerid][pInt]);

            SetPlayerPositionEx(playerid, AccountData[playerid][pPosX],
                AccountData[playerid][pPosY], AccountData[playerid][pPosZ],
                AccountData[playerid][pPosA]);

            LoadPlayerJob(playerid);
            RefreshFactionMap(playerid);
            ShowHbeTextdraws(playerid);
            SetPlayerColor(playerid, COLOR_WHITE);
            GameTextForPlayer(playerid, "MEMUAT OBJECT...", 6000, 4);
        }
        else if(AccountData[playerid][pJail] > 0)
        {
            SpawnPlayerInJail(playerid);
            AccountData[playerid][playerClickSpawn] = 1;
            HideSpawnTextdraws(playerid);
            SetCameraBehindPlayer(playerid);
            SetSpawnInfo(playerid, NO_TEAM, AccountData[playerid][pSkin],
            AccountData[playerid][pPosX], AccountData[playerid][pPosY], AccountData[playerid][pPosZ], AccountData[playerid][pPosA],
            0, 0, 0, 0, 0, 0);
            SpawnPlayer(playerid);

            SetPlayerVirtualWorldEx(playerid, AccountData[playerid][pWorld]);
            SetPlayerInteriorEx(playerid, AccountData[playerid][pInt]);

            SetPlayerPositionEx(playerid, AccountData[playerid][pPosX],
                AccountData[playerid][pPosY], AccountData[playerid][pPosZ],
                AccountData[playerid][pPosA]);

            LoadPlayerJob(playerid);
            RefreshFactionMap(playerid);
            ShowHbeTextdraws(playerid);
            SetPlayerColor(playerid, COLOR_WHITE);
            GameTextForPlayer(playerid, "MEMUAT OBJECT...", 6000, 4);
        }
        else
        {
            new rand = random(sizeof(SpawnPelabuhan));
            AccountData[playerid][pPosX] = SpawnPelabuhan[rand][0];
            AccountData[playerid][pPosY] = SpawnPelabuhan[rand][1];
            AccountData[playerid][pPosZ] = SpawnPelabuhan[rand][2];
            AccountData[playerid][pPosA] = SpawnPelabuhan[rand][3];
            SetPlayerInteriorEx(playerid, 0);
            SetPlayerVirtualWorldEx(playerid, 0);

            SetPlayerPositionEx(playerid, AccountData[playerid][pPosX], AccountData[playerid][pPosY], AccountData[playerid][pPosZ], AccountData[playerid][pPosA], 8000);
            HideSpawnTextdraws(playerid);
            ShowTDN(playerid, NOTIFICATION_SUKSES, "Anda berhasil spawn di Terminal Pelabuhan.");
            Streamer_UpdateEx(playerid, AccountData[playerid][pPosX], AccountData[playerid][pPosY], AccountData[playerid][pPosZ]);
            SetTimerEx("HideCam", 3000, false, "i", playerid);
            InterpolateCameraPos(playerid, AccountData[playerid][pPosX]-2.5, AccountData[playerid][pPosY],250.00,AccountData[playerid][pPosX]-2.5, AccountData[playerid][pPosY], AccountData[playerid][pPosZ]+2.5,2500,CAMERA_MOVE);
            InterpolateCameraLookAt(playerid, AccountData[playerid][pPosX], AccountData[playerid][pPosY], AccountData[playerid][pPosZ], AccountData[playerid][pPosX], AccountData[playerid][pPosY], AccountData[playerid][pPosZ], 2500, CAMERA_MOVE);
            AccountData[playerid][playerClickSpawn] = 1;
        }
	}
    if(playertextid == Ui_Spawn[playerid][21])//karnaval
    {
        if(AccountData[playerid][pInjured] == 1 && AccountData[playerid][pInjuredTime] != 0)
        {
            HideSpawnTextdraws(playerid);
            SetCameraBehindPlayer(playerid);
            SetSpawnInfo(playerid, NO_TEAM, AccountData[playerid][pSkin],
            AccountData[playerid][pPosX], AccountData[playerid][pPosY], AccountData[playerid][pPosZ], AccountData[playerid][pPosA],
            0, 0, 0, 0, 0, 0);
            SpawnPlayer(playerid);

            SetPlayerVirtualWorldEx(playerid, AccountData[playerid][pWorld]);
            SetPlayerInteriorEx(playerid, AccountData[playerid][pInt]);

            SetPlayerPositionEx(playerid, AccountData[playerid][pPosX],
                AccountData[playerid][pPosY], AccountData[playerid][pPosZ],
                AccountData[playerid][pPosA]);

            LoadPlayerJob(playerid);
            RefreshFactionMap(playerid);
            ShowHbeTextdraws(playerid);
            SetPlayerColor(playerid, COLOR_WHITE);
            GameTextForPlayer(playerid, "MEMUAT OBJECT...", 6000, 4);
        }
        else if(AccountData[playerid][pArrest] > 0)
        {
            SetPlayerArrest(playerid, AccountData[playerid][pArrest]);
            AccountData[playerid][playerClickSpawn] = 1;
            HideSpawnTextdraws(playerid);
            SetCameraBehindPlayer(playerid);
            SetSpawnInfo(playerid, NO_TEAM, AccountData[playerid][pSkin],
            AccountData[playerid][pPosX], AccountData[playerid][pPosY], AccountData[playerid][pPosZ], AccountData[playerid][pPosA],
            0, 0, 0, 0, 0, 0);
            SpawnPlayer(playerid);

            SetPlayerVirtualWorldEx(playerid, AccountData[playerid][pWorld]);
            SetPlayerInteriorEx(playerid, AccountData[playerid][pInt]);

            SetPlayerPositionEx(playerid, AccountData[playerid][pPosX],
                AccountData[playerid][pPosY], AccountData[playerid][pPosZ],
                AccountData[playerid][pPosA]);

            LoadPlayerJob(playerid);
            RefreshFactionMap(playerid);
            ShowHbeTextdraws(playerid);
            SetPlayerColor(playerid, COLOR_WHITE);
            GameTextForPlayer(playerid, "MEMUAT OBJECT...", 6000, 4);
        }
        else if(AccountData[playerid][pJail] > 0)
        {
            SpawnPlayerInJail(playerid);
            AccountData[playerid][playerClickSpawn] = 1;
            HideSpawnTextdraws(playerid);
            SetCameraBehindPlayer(playerid);
            SetSpawnInfo(playerid, NO_TEAM, AccountData[playerid][pSkin],
            AccountData[playerid][pPosX], AccountData[playerid][pPosY], AccountData[playerid][pPosZ], AccountData[playerid][pPosA],
            0, 0, 0, 0, 0, 0);
            SpawnPlayer(playerid);

            SetPlayerVirtualWorldEx(playerid, AccountData[playerid][pWorld]);
            SetPlayerInteriorEx(playerid, AccountData[playerid][pInt]);

            SetPlayerPositionEx(playerid, AccountData[playerid][pPosX],
                AccountData[playerid][pPosY], AccountData[playerid][pPosZ],
                AccountData[playerid][pPosA]);

            LoadPlayerJob(playerid);
            RefreshFactionMap(playerid);
            ShowHbeTextdraws(playerid);
            SetPlayerColor(playerid, COLOR_WHITE);
            GameTextForPlayer(playerid, "MEMUAT OBJECT...", 6000, 4);
        }
        else
        {
            SetPlayerPositionEx(playerid, 1482.0356, -1724.5726, 13.5469, 86.649, 6000);
            SetPlayerVirtualWorldEx(playerid, 0);
            SetPlayerInteriorEx(playerid, 0);
            Streamer_UpdateEx(playerid, AccountData[playerid][pPosX], AccountData[playerid][pPosY], AccountData[playerid][pPosZ]);
            SetTimerEx("HideCam", 3000, false, "i", playerid);
            HideSpawnTextdraws(playerid);
            AccountData[playerid][playerClickSpawn] = 1;
            InterpolateCameraPos(playerid, 1482.0356-2.5, -1724.5726, 250.00,1482.0356-2.5, -1724.5726, 13.5469+2.5,2500,CAMERA_MOVE);
            InterpolateCameraLookAt(playerid, 1482.0356, -1724.5726, 13.5469, 1482.0356, -1724.5726, 13.5469, 2500, CAMERA_MOVE);
            ShowTDN(playerid, NOTIFICATION_SUKSES, "Anda berhasil spawn di Karnaval.");
        }
    }
	if(playertextid == Ui_Spawn[playerid][17])//rusun
	{
        if(AccountData[playerid][pInjured] == 1 && AccountData[playerid][pInjuredTime] != 0)
        {
            HideSpawnTextdraws(playerid);
            SetCameraBehindPlayer(playerid);
            SetSpawnInfo(playerid, NO_TEAM, AccountData[playerid][pSkin],
            AccountData[playerid][pPosX], AccountData[playerid][pPosY], AccountData[playerid][pPosZ], AccountData[playerid][pPosA],
            0, 0, 0, 0, 0, 0);
            SpawnPlayer(playerid);

            SetPlayerVirtualWorldEx(playerid, AccountData[playerid][pWorld]);
            SetPlayerInteriorEx(playerid, AccountData[playerid][pInt]);

            SetPlayerPositionEx(playerid, AccountData[playerid][pPosX],
                AccountData[playerid][pPosY], AccountData[playerid][pPosZ],
                AccountData[playerid][pPosA]);

            LoadPlayerJob(playerid);
            RefreshFactionMap(playerid);
            ShowHbeTextdraws(playerid);
            SetPlayerColor(playerid, COLOR_WHITE);
            GameTextForPlayer(playerid, "MEMUAT OBJECT...", 6000, 4);
        }
        else if(AccountData[playerid][pArrest] > 0)
        {
            SetPlayerArrest(playerid, AccountData[playerid][pArrest]);
            AccountData[playerid][playerClickSpawn] = 1;
            HideSpawnTextdraws(playerid);
            SetCameraBehindPlayer(playerid);
            SetSpawnInfo(playerid, NO_TEAM, AccountData[playerid][pSkin],
            AccountData[playerid][pPosX], AccountData[playerid][pPosY], AccountData[playerid][pPosZ], AccountData[playerid][pPosA],
            0, 0, 0, 0, 0, 0);
            SpawnPlayer(playerid);

            SetPlayerVirtualWorldEx(playerid, AccountData[playerid][pWorld]);
            SetPlayerInteriorEx(playerid, AccountData[playerid][pInt]);

            SetPlayerPositionEx(playerid, AccountData[playerid][pPosX],
                AccountData[playerid][pPosY], AccountData[playerid][pPosZ],
                AccountData[playerid][pPosA]);

            LoadPlayerJob(playerid);
            RefreshFactionMap(playerid);
            ShowHbeTextdraws(playerid);
            SetPlayerColor(playerid, COLOR_WHITE);
            GameTextForPlayer(playerid, "MEMUAT OBJECT...", 6000, 4);
        }
        else if(AccountData[playerid][pJail] > 0)
        {
            SpawnPlayerInJail(playerid);
            AccountData[playerid][playerClickSpawn] = 1;
            HideSpawnTextdraws(playerid);
            SetCameraBehindPlayer(playerid);
            SetSpawnInfo(playerid, NO_TEAM, AccountData[playerid][pSkin],
            AccountData[playerid][pPosX], AccountData[playerid][pPosY], AccountData[playerid][pPosZ], AccountData[playerid][pPosA],
            0, 0, 0, 0, 0, 0);
            SpawnPlayer(playerid);

            SetPlayerVirtualWorldEx(playerid, AccountData[playerid][pWorld]);
            SetPlayerInteriorEx(playerid, AccountData[playerid][pInt]);

            SetPlayerPositionEx(playerid, AccountData[playerid][pPosX],
                AccountData[playerid][pPosY], AccountData[playerid][pPosZ],
                AccountData[playerid][pPosA]);

            LoadPlayerJob(playerid);
            RefreshFactionMap(playerid);
            ShowHbeTextdraws(playerid);
            SetPlayerColor(playerid, COLOR_WHITE);
            GameTextForPlayer(playerid, "MEMUAT OBJECT...", 6000, 4);
        }
        else
        {
            if(AccountData[playerid][pOwnedRusun] == -1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda belum memiliki rusun!");
            foreach(new rsid : Rusun)
            {
                if(RusunData[rsid][rusunOwnerID] == AccountData[playerid][pID])
                {
                    AccountData[playerid][pPosX] =  RusunData[rsid][rusunExtPos][0];
                    AccountData[playerid][pPosY] =  RusunData[rsid][rusunExtPos][1];
                    AccountData[playerid][pPosZ] =  RusunData[rsid][rusunExtPos][2];
                    AccountData[playerid][pPosA] =  RusunData[rsid][rusunExtPos][3];
                    SetPlayerInteriorEx(playerid, 0);
                    SetPlayerVirtualWorldEx(playerid, 0);

                    SetPlayerPositionEx(playerid, AccountData[playerid][pPosX], AccountData[playerid][pPosY], AccountData[playerid][pPosZ], AccountData[playerid][pPosA], 8000);
                    HideSpawnTextdraws(playerid);
                    ShowTDN(playerid, NOTIFICATION_SUKSES, "Anda berhasil spawn di Rusun Pribadi.");
                    Streamer_UpdateEx(playerid, AccountData[playerid][pPosX], AccountData[playerid][pPosY], AccountData[playerid][pPosZ]);
                    SetTimerEx("HideCam", 3000, false, "i", playerid);
                    InterpolateCameraPos(playerid, AccountData[playerid][pPosX]-2.5, AccountData[playerid][pPosY],250.00,AccountData[playerid][pPosX]-2.5, AccountData[playerid][pPosY], AccountData[playerid][pPosZ]+2.5,2500,CAMERA_MOVE);
                    InterpolateCameraLookAt(playerid, AccountData[playerid][pPosX], AccountData[playerid][pPosY], AccountData[playerid][pPosZ], AccountData[playerid][pPosX], AccountData[playerid][pPosY], AccountData[playerid][pPosZ], 2500, CAMERA_MOVE);
                    AccountData[playerid][playerClickSpawn] = 1;
                }
            }
        }
	}
	if (playertextid == Ui_Spawn[playerid][18]) // House
    {
        if(AccountData[playerid][pInjured] == 1 && AccountData[playerid][pInjuredTime] != 0)
        {
            HideSpawnTextdraws(playerid);
            SetCameraBehindPlayer(playerid);
            SetSpawnInfo(playerid, NO_TEAM, AccountData[playerid][pSkin],
            AccountData[playerid][pPosX], AccountData[playerid][pPosY], AccountData[playerid][pPosZ], AccountData[playerid][pPosA],
            0, 0, 0, 0, 0, 0);
            SpawnPlayer(playerid);

            SetPlayerVirtualWorldEx(playerid, AccountData[playerid][pWorld]);
            SetPlayerInteriorEx(playerid, AccountData[playerid][pInt]);

            SetPlayerPositionEx(playerid, AccountData[playerid][pPosX],
                AccountData[playerid][pPosY], AccountData[playerid][pPosZ],
                AccountData[playerid][pPosA]);

            LoadPlayerJob(playerid);
            RefreshFactionMap(playerid);
            ShowHbeTextdraws(playerid);
            SetPlayerColor(playerid, COLOR_WHITE);
            GameTextForPlayer(playerid, "MEMUAT OBJECT...", 6000, 4);
        }
        else if(AccountData[playerid][pArrest] > 0)
        {
            SetPlayerArrest(playerid, AccountData[playerid][pArrest]);
            AccountData[playerid][playerClickSpawn] = 1;
            HideSpawnTextdraws(playerid);
            SetCameraBehindPlayer(playerid);
            SetSpawnInfo(playerid, NO_TEAM, AccountData[playerid][pSkin],
            AccountData[playerid][pPosX], AccountData[playerid][pPosY], AccountData[playerid][pPosZ], AccountData[playerid][pPosA],
            0, 0, 0, 0, 0, 0);
            SpawnPlayer(playerid);

            SetPlayerVirtualWorldEx(playerid, AccountData[playerid][pWorld]);
            SetPlayerInteriorEx(playerid, AccountData[playerid][pInt]);

            SetPlayerPositionEx(playerid, AccountData[playerid][pPosX],
                AccountData[playerid][pPosY], AccountData[playerid][pPosZ],
                AccountData[playerid][pPosA]);

            LoadPlayerJob(playerid);
            RefreshFactionMap(playerid);
            ShowHbeTextdraws(playerid);
            SetPlayerColor(playerid, COLOR_WHITE);
            GameTextForPlayer(playerid, "MEMUAT OBJECT...", 6000, 4);
        }
        else if(AccountData[playerid][pJail] > 0)
        {
            SpawnPlayerInJail(playerid);
            AccountData[playerid][playerClickSpawn] = 1;
            HideSpawnTextdraws(playerid);
            SetCameraBehindPlayer(playerid);
            SetSpawnInfo(playerid, NO_TEAM, AccountData[playerid][pSkin],
            AccountData[playerid][pPosX], AccountData[playerid][pPosY], AccountData[playerid][pPosZ], AccountData[playerid][pPosA],
            0, 0, 0, 0, 0, 0);
            SpawnPlayer(playerid);

            SetPlayerVirtualWorldEx(playerid, AccountData[playerid][pWorld]);
            SetPlayerInteriorEx(playerid, AccountData[playerid][pInt]);

            SetPlayerPositionEx(playerid, AccountData[playerid][pPosX],
                AccountData[playerid][pPosY], AccountData[playerid][pPosZ],
                AccountData[playerid][pPosA]);

            LoadPlayerJob(playerid);
            RefreshFactionMap(playerid);
            ShowHbeTextdraws(playerid);
            SetPlayerColor(playerid, COLOR_WHITE);
            GameTextForPlayer(playerid, "MEMUAT OBJECT...", 6000, 4);
        }
        else
        {
            if (AccountData[playerid][pOwnedHouse] == -1 && AccountData[playerid][pFriendHouseID] == -1)
            return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak memiliki rumah!");

            new count = 0, str[256], dialogStr[2048];
            format(dialogStr, sizeof(dialogStr), "House ID\tLokasi Rumah\tType\n");

            foreach (new hid : House)
            {
                if (HouseData[hid][hsOwnerID] == AccountData[playerid][pID] || AccountData[playerid][pFriendHouseID] == hid)
                {
                    new typeName[32];
                    GetHouseName(hid, typeName, sizeof(typeName));
                    format(str, sizeof(str), "%d\t%s\t%s\n", hid, GetLocation(HouseData[hid][hsExtPos][0], HouseData[hid][hsExtPos][1], HouseData[hid][hsExtPos][2]), typeName);
                    strcat(dialogStr, str);
                    count++;
                }
            }

            if (count == 0)
                return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak memiliki rumah!");

            if (count == 1)
            {
                foreach (new hid : House)
                {
                    if (HouseData[hid][hsOwnerID] == AccountData[playerid][pID] || AccountData[playerid][pFriendHouseID] == hid)
                    {
                        SpawnPlayerAtHouse(playerid, hid);
                        return 1;
                    }
                }
            }

            Dialog_Show(playerid, DIALOG_SPAWN_HOUSELIST, DIALOG_STYLE_TABLIST_HEADERS,
                "Pilih Rumah Untuk Spawn", dialogStr, "Spawn", "Batal");
        }
    }
	if(playertextid == Ui_Spawn[playerid][16])//Faction
	{
        if(AccountData[playerid][pInjured] == 1 && AccountData[playerid][pInjuredTime] != 0)
        {
            HideSpawnTextdraws(playerid);
            SetCameraBehindPlayer(playerid);
            SetSpawnInfo(playerid, NO_TEAM, AccountData[playerid][pSkin],
            AccountData[playerid][pPosX], AccountData[playerid][pPosY], AccountData[playerid][pPosZ], AccountData[playerid][pPosA],
            0, 0, 0, 0, 0, 0);
            SpawnPlayer(playerid);

            SetPlayerVirtualWorldEx(playerid, AccountData[playerid][pWorld]);
            SetPlayerInteriorEx(playerid, AccountData[playerid][pInt]);

            SetPlayerPositionEx(playerid, AccountData[playerid][pPosX],
                AccountData[playerid][pPosY], AccountData[playerid][pPosZ],
                AccountData[playerid][pPosA]);

            LoadPlayerJob(playerid);
            RefreshFactionMap(playerid);
            ShowHbeTextdraws(playerid);
            SetPlayerColor(playerid, COLOR_WHITE);
            GameTextForPlayer(playerid, "MEMUAT OBJECT...", 6000, 4);
        }
        else if(AccountData[playerid][pArrest] > 0)
        {
            SetPlayerArrest(playerid, AccountData[playerid][pArrest]);
            AccountData[playerid][playerClickSpawn] = 1;
            HideSpawnTextdraws(playerid);
            SetCameraBehindPlayer(playerid);
            SetSpawnInfo(playerid, NO_TEAM, AccountData[playerid][pSkin],
            AccountData[playerid][pPosX], AccountData[playerid][pPosY], AccountData[playerid][pPosZ], AccountData[playerid][pPosA],
            0, 0, 0, 0, 0, 0);
            SpawnPlayer(playerid);

            SetPlayerVirtualWorldEx(playerid, AccountData[playerid][pWorld]);
            SetPlayerInteriorEx(playerid, AccountData[playerid][pInt]);

            SetPlayerPositionEx(playerid, AccountData[playerid][pPosX],
                AccountData[playerid][pPosY], AccountData[playerid][pPosZ],
                AccountData[playerid][pPosA]);

            LoadPlayerJob(playerid);
            RefreshFactionMap(playerid);
            ShowHbeTextdraws(playerid);
            SetPlayerColor(playerid, COLOR_WHITE);
            GameTextForPlayer(playerid, "MEMUAT OBJECT...", 6000, 4);
        }
        else if(AccountData[playerid][pJail] > 0)
        {
            SpawnPlayerInJail(playerid);
            AccountData[playerid][playerClickSpawn] = 1;
            HideSpawnTextdraws(playerid);
            SetCameraBehindPlayer(playerid);
            SetSpawnInfo(playerid, NO_TEAM, AccountData[playerid][pSkin],
            AccountData[playerid][pPosX], AccountData[playerid][pPosY], AccountData[playerid][pPosZ], AccountData[playerid][pPosA],
            0, 0, 0, 0, 0, 0);
            SpawnPlayer(playerid);

            SetPlayerVirtualWorldEx(playerid, AccountData[playerid][pWorld]);
            SetPlayerInteriorEx(playerid, AccountData[playerid][pInt]);

            SetPlayerPositionEx(playerid, AccountData[playerid][pPosX],
                AccountData[playerid][pPosY], AccountData[playerid][pPosZ],
                AccountData[playerid][pPosA]);

            LoadPlayerJob(playerid);
            RefreshFactionMap(playerid);
            ShowHbeTextdraws(playerid);
            SetPlayerColor(playerid, COLOR_WHITE);
            GameTextForPlayer(playerid, "MEMUAT OBJECT...", 6000, 4);
        }
        else
        {
            if(AccountData[playerid][pFaction] == FACTION_NONE) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak dari faction manapun!");
            {
                if(AccountData[playerid][pFaction] == FACTION_POLISI)
                {
                    HideSpawnTextdraws(playerid);
                    ShowTDN(playerid, NOTIFICATION_SUKSES, "Anda berhasil spawn di kantor police.");
                    TogglePlayerControllable(playerid, false);
                    SetCameraBehindPlayer(playerid);
                    SetPlayerInteriorEx(playerid, 0);
                    Toggle_AllTextdraws(playerid, true);
                    SetPlayerVirtualWorldEx(playerid, 0);
                    AccountData[playerid][pFreeze] = 1;
                    AccountData[playerid][playerClickSpawn] = 1;
                    SetPlayerPositionEx(playerid, 1778.210, -1782.465, 14.105, 6000);
                    Streamer_UpdateEx(playerid, AccountData[playerid][pPosX], AccountData[playerid][pPosY], AccountData[playerid][pPosZ]);
                }
                else if(AccountData[playerid][pFaction] == FACTION_EMS)
                {
                    HideSpawnTextdraws(playerid);
                    ShowTDN(playerid, NOTIFICATION_SUKSES, "Anda berhasil spawn di rumah sakit.");
                    TogglePlayerControllable(playerid, false);
                    SetCameraBehindPlayer(playerid);
                    SetPlayerInteriorEx(playerid, 0);
                    Toggle_AllTextdraws(playerid, true);
                    SetPlayerVirtualWorldEx(playerid, 0);
                    AccountData[playerid][pFreeze] = 1;
                    AccountData[playerid][playerClickSpawn] = 1;
                    SetPlayerPositionEx(playerid, 1317.350, -1354.152, 13.669, 6000);
                    Streamer_UpdateEx(playerid, AccountData[playerid][pPosX], AccountData[playerid][pPosY], AccountData[playerid][pPosZ]);
                }
                else if(AccountData[playerid][pFaction] == FACTION_BENGKEL)
                {
                    HideSpawnTextdraws(playerid);
                    ShowTDN(playerid, NOTIFICATION_SUKSES, "Anda berhasil spawn di bengkel mekanik.");
                    TogglePlayerControllable(playerid, false);
                    SetCameraBehindPlayer(playerid);
                    SetPlayerInteriorEx(playerid, 0);
                    Toggle_AllTextdraws(playerid, true);
                    SetPlayerVirtualWorldEx(playerid, 0);
                    AccountData[playerid][pFreeze] = 1;
                    AccountData[playerid][playerClickSpawn] = 1;
                    SetPlayerPositionEx(playerid, 208.446, -268.516, 1.597, 6000);
                    Streamer_UpdateEx(playerid, AccountData[playerid][pPosX], AccountData[playerid][pPosY], AccountData[playerid][pPosZ]);
                }
                else if(AccountData[playerid][pFaction] == FACTION_PEDAGANG)
                {
                    HideSpawnTextdraws(playerid);
                    ShowTDN(playerid, NOTIFICATION_SUKSES, "Anda berhasil spawn di restaurant.");
                    TogglePlayerControllable(playerid, false);
                    SetCameraBehindPlayer(playerid);
                    SetPlayerInteriorEx(playerid, 0);
                    SetPlayerVirtualWorldEx(playerid, 0);
                    Toggle_AllTextdraws(playerid, true);
                    AccountData[playerid][pFreeze] = 1;
                    AccountData[playerid][playerClickSpawn] = 1;
                    SetPlayerPositionEx(playerid, 953.919, -1653.237, 13.679, 6000);
                    Streamer_UpdateEx(playerid, AccountData[playerid][pPosX], AccountData[playerid][pPosY], AccountData[playerid][pPosZ]);
                }
                else if(AccountData[playerid][pFaction] == FACTION_TRANS)
                {
                    HideSpawnTextdraws(playerid);
                    ShowTDN(playerid, NOTIFICATION_SUKSES, "Anda berhasil spawn di kantor trans.");
                    TogglePlayerControllable(playerid, false);
                    SetCameraBehindPlayer(playerid);
                    SetPlayerInteriorEx(playerid, 0);
                    SetPlayerVirtualWorldEx(playerid, 0);
                    Toggle_AllTextdraws(playerid, true);
                    AccountData[playerid][pFreeze] = 1;
                    AccountData[playerid][playerClickSpawn] = 1;
                    SetPlayerPositionEx(playerid, 1547.8783, -2163.1912, 13.7381, 178.5889, 6000);
                    Streamer_UpdateEx(playerid, AccountData[playerid][pPosX], AccountData[playerid][pPosY], AccountData[playerid][pPosZ]);
                }
                else if(AccountData[playerid][pFaction] == FACTION_PEMERINTAH)
                {
                    HideSpawnTextdraws(playerid);
                    ShowTDN(playerid, NOTIFICATION_SUKSES, "Anda berhasil spawn di gedung pemerintah.");
                    TogglePlayerControllable(playerid, false);
                    SetCameraBehindPlayer(playerid);
                    SetPlayerInteriorEx(playerid, 6);
                    SetPlayerVirtualWorldEx(playerid, 0);
                    Toggle_AllTextdraws(playerid, true);
                    AccountData[playerid][pFreeze] = 1;
                    SetPlayerPositionEx(playerid, 1480.296, -1809.199, 13.672, 178.5889, 6000);
                    AccountData[playerid][playerClickSpawn] = 1;
                    Streamer_UpdateEx(playerid, AccountData[playerid][pPosX], AccountData[playerid][pPosY], AccountData[playerid][pPosZ]);
                }
            }
        }
	}
	if(playertextid == Ui_Spawn[playerid][19])//Last location
	{
		AccountData[playerid][pPosX] = AccountData[playerid][pPosX];
		AccountData[playerid][pPosY] = AccountData[playerid][pPosY];
		AccountData[playerid][pPosZ] = AccountData[playerid][pPosZ];
		AccountData[playerid][pPosA] = AccountData[playerid][pPosA];
		SetPlayerInteriorEx(playerid, AccountData[playerid][pInt]);
		SetPlayerVirtualWorldEx(playerid, AccountData[playerid][pWorld]);

		SetPlayerPositionEx(playerid, AccountData[playerid][pPosX], AccountData[playerid][pPosY], AccountData[playerid][pPosZ], AccountData[playerid][pPosA], 6000);
		HideSpawnTextdraws(playerid);
		AccountData[playerid][pFreeze] = 1;
		ShowTDN(playerid, NOTIFICATION_SUKSES, "Anda berhasil spawn di last location.");
		Streamer_UpdateEx(playerid, AccountData[playerid][pPosX], AccountData[playerid][pPosY], AccountData[playerid][pPosZ]);
        InterpolateCameraPos(playerid, AccountData[playerid][pPosX]-2.5, AccountData[playerid][pPosY],250.00,AccountData[playerid][pPosX]-2.5, AccountData[playerid][pPosY], AccountData[playerid][pPosZ]+2.5,2500,CAMERA_MOVE);
		InterpolateCameraLookAt(playerid, AccountData[playerid][pPosX], AccountData[playerid][pPosY], AccountData[playerid][pPosZ], AccountData[playerid][pPosX], AccountData[playerid][pPosY], AccountData[playerid][pPosZ], 2500, CAMERA_MOVE);
        SetTimerEx("HideCam", 3000, false, "i", playerid);
	}
    return 1;
}

forward HideCam(playerid);
public HideCam(playerid)
{
    AccountData[playerid][playerClickSpawn] = 1;
	TogglePlayerControllable(playerid, false);
    Toggle_AllTextdraws(playerid, true);
    SetCameraBehindPlayer(playerid);
    return 1;
}

stock SpawnPlayerAtHouse(playerid, hid)
{
    AccountData[playerid][pPosX] = HouseData[hid][hsExtPos][0];
    AccountData[playerid][pPosY] = HouseData[hid][hsExtPos][1];
    AccountData[playerid][pPosZ] = HouseData[hid][hsExtPos][2];
    AccountData[playerid][pPosA] = HouseData[hid][hsExtPos][3];

    SetPlayerInteriorEx(playerid, 0);
    SetPlayerVirtualWorldEx(playerid, 0);
    SetPlayerPositionEx(playerid,
        AccountData[playerid][pPosX],
        AccountData[playerid][pPosY],
        AccountData[playerid][pPosZ],
        AccountData[playerid][pPosA],
        8000
    );

    HideSpawnTextdraws(playerid);
    ShowTDN(playerid, NOTIFICATION_SUKSES, "Anda berhasil spawn di Rumah Pribadi.");
    Streamer_UpdateEx(playerid,
        AccountData[playerid][pPosX],
        AccountData[playerid][pPosY],
        AccountData[playerid][pPosZ]
    );

    SetTimerEx("HideCam", 3000, false, "i", playerid);
    InterpolateCameraPos(playerid,
        AccountData[playerid][pPosX] - 2.5,
        AccountData[playerid][pPosY],
        250.00,
        AccountData[playerid][pPosX] - 2.5,
        AccountData[playerid][pPosY],
        AccountData[playerid][pPosZ] + 2.5,
        2500, CAMERA_MOVE
    );
    InterpolateCameraLookAt(playerid,
        AccountData[playerid][pPosX],
        AccountData[playerid][pPosY],
        AccountData[playerid][pPosZ],
        AccountData[playerid][pPosX],
        AccountData[playerid][pPosY],
        AccountData[playerid][pPosZ],
        2500, CAMERA_MOVE
    );

    AccountData[playerid][playerClickSpawn] = 1;
    return 1;
}

Dialog:DIALOG_SPAWN_HOUSELIST(playerid, response, listitem, inputtext[])
{
    if (!response) return 1;

    new hid;
    if (sscanf(inputtext, "d", hid))
        return ShowTDN(playerid, NOTIFICATION_ERROR, "Pilihan tidak valid!");

    if(!Iter_Contains(House, hid))
        return ShowTDN(playerid, NOTIFICATION_ERROR, "Rumah tidak valid!");

    SpawnPlayerAtHouse(playerid, hid);
    return 1;
}