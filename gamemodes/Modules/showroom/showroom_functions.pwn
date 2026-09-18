#include <YSI\y_hooks>
#define FIXED_VEHICLE_SELL_PRICE 3000

new SelectVeh[MAX_PLAYERS] = {0, ...};
new STREAMER_TAG_CP:ShowroomCheckpoint;
new PlayerText: ShowroomTD[MAX_PLAYERS][43];

ATRPShowroomTD(playerid)
{
    ShowroomTD[playerid][0] = CreatePlayerTextDraw(playerid, 161.000, 391.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ShowroomTD[playerid][0], 60.000, 20.000);
    PlayerTextDrawAlignment(playerid, ShowroomTD[playerid][0], 1);
    PlayerTextDrawColor(playerid, ShowroomTD[playerid][0], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, ShowroomTD[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, ShowroomTD[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, ShowroomTD[playerid][0], 255);
    PlayerTextDrawFont(playerid, ShowroomTD[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, ShowroomTD[playerid][0], 1);
    PlayerTextDrawSetSelectable(playerid, ShowroomTD[playerid][0], 1);

    ShowroomTD[playerid][1] = CreatePlayerTextDraw(playerid, 229.000, 391.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ShowroomTD[playerid][1], 60.000, 20.000);
    PlayerTextDrawAlignment(playerid, ShowroomTD[playerid][1], 1);
    PlayerTextDrawColor(playerid, ShowroomTD[playerid][1], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, ShowroomTD[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, ShowroomTD[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, ShowroomTD[playerid][1], 255);
    PlayerTextDrawFont(playerid, ShowroomTD[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, ShowroomTD[playerid][1], 1);
    PlayerTextDrawSetSelectable(playerid, ShowroomTD[playerid][1], 1);

    ShowroomTD[playerid][2] = CreatePlayerTextDraw(playerid, 296.000, 391.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ShowroomTD[playerid][2], 60.000, 20.000);
    PlayerTextDrawAlignment(playerid, ShowroomTD[playerid][2], 1);
    PlayerTextDrawColor(playerid, ShowroomTD[playerid][2], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, ShowroomTD[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, ShowroomTD[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, ShowroomTD[playerid][2], 255);
    PlayerTextDrawFont(playerid, ShowroomTD[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, ShowroomTD[playerid][2], 1);
    PlayerTextDrawSetSelectable(playerid, ShowroomTD[playerid][2], 1);

    ShowroomTD[playerid][3] = CreatePlayerTextDraw(playerid, 363.000, 391.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ShowroomTD[playerid][3], 60.000, 20.000);
    PlayerTextDrawAlignment(playerid, ShowroomTD[playerid][3], 1);
    PlayerTextDrawColor(playerid, ShowroomTD[playerid][3], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, ShowroomTD[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, ShowroomTD[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, ShowroomTD[playerid][3], 255);
    PlayerTextDrawFont(playerid, ShowroomTD[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, ShowroomTD[playerid][3], 1);
    PlayerTextDrawSetSelectable(playerid, ShowroomTD[playerid][3], 1);

    ShowroomTD[playerid][4] = CreatePlayerTextDraw(playerid, 430.000, 391.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ShowroomTD[playerid][4], 60.000, 20.000);
    PlayerTextDrawAlignment(playerid, ShowroomTD[playerid][4], 1);
    PlayerTextDrawColor(playerid, ShowroomTD[playerid][4], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, ShowroomTD[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, ShowroomTD[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, ShowroomTD[playerid][4], 255);
    PlayerTextDrawFont(playerid, ShowroomTD[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, ShowroomTD[playerid][4], 1);
    PlayerTextDrawSetSelectable(playerid, ShowroomTD[playerid][4], 1);

    ShowroomTD[playerid][5] = CreatePlayerTextDraw(playerid, 498.000, 391.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ShowroomTD[playerid][5], 60.000, 20.000);
    PlayerTextDrawAlignment(playerid, ShowroomTD[playerid][5], 1);
    PlayerTextDrawColor(playerid, ShowroomTD[playerid][5], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, ShowroomTD[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, ShowroomTD[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, ShowroomTD[playerid][5], 255);
    PlayerTextDrawFont(playerid, ShowroomTD[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, ShowroomTD[playerid][5], 1);
    PlayerTextDrawSetSelectable(playerid, ShowroomTD[playerid][5], 1);

    ShowroomTD[playerid][6] = CreatePlayerTextDraw(playerid, 161.000, 330.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ShowroomTD[playerid][6], 35.000, 34.000);
    PlayerTextDrawAlignment(playerid, ShowroomTD[playerid][6], 1);
    PlayerTextDrawColor(playerid, ShowroomTD[playerid][6], -16776961);
    PlayerTextDrawSetShadow(playerid, ShowroomTD[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, ShowroomTD[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, ShowroomTD[playerid][6], 255);
    PlayerTextDrawFont(playerid, ShowroomTD[playerid][6], 4);
    PlayerTextDrawSetProportional(playerid, ShowroomTD[playerid][6], 1);
    PlayerTextDrawSetSelectable(playerid, ShowroomTD[playerid][6], 1);

    ShowroomTD[playerid][7] = CreatePlayerTextDraw(playerid, 201.000, 330.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ShowroomTD[playerid][7], 35.000, 34.000);
    PlayerTextDrawAlignment(playerid, ShowroomTD[playerid][7], 1);
    PlayerTextDrawColor(playerid, ShowroomTD[playerid][7], -1);
    PlayerTextDrawSetShadow(playerid, ShowroomTD[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, ShowroomTD[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, ShowroomTD[playerid][7], 255);
    PlayerTextDrawFont(playerid, ShowroomTD[playerid][7], 4);
    PlayerTextDrawSetProportional(playerid, ShowroomTD[playerid][7], 1);
    PlayerTextDrawSetSelectable(playerid, ShowroomTD[playerid][7], 1);

    ShowroomTD[playerid][8] = CreatePlayerTextDraw(playerid, 161.000, 289.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ShowroomTD[playerid][8], 35.000, 34.000);
    PlayerTextDrawAlignment(playerid, ShowroomTD[playerid][8], 1);
    PlayerTextDrawColor(playerid, ShowroomTD[playerid][8], -2686721);
    PlayerTextDrawSetShadow(playerid, ShowroomTD[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, ShowroomTD[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, ShowroomTD[playerid][8], 255);
    PlayerTextDrawFont(playerid, ShowroomTD[playerid][8], 4);
    PlayerTextDrawSetProportional(playerid, ShowroomTD[playerid][8], 1);
    PlayerTextDrawSetSelectable(playerid, ShowroomTD[playerid][8], 1);

    ShowroomTD[playerid][9] = CreatePlayerTextDraw(playerid, 201.000, 289.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ShowroomTD[playerid][9], 35.000, 34.000);
    PlayerTextDrawAlignment(playerid, ShowroomTD[playerid][9], 1);
    PlayerTextDrawColor(playerid, ShowroomTD[playerid][9], -12254977);
    PlayerTextDrawSetShadow(playerid, ShowroomTD[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, ShowroomTD[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, ShowroomTD[playerid][9], 255);
    PlayerTextDrawFont(playerid, ShowroomTD[playerid][9], 4);
    PlayerTextDrawSetProportional(playerid, ShowroomTD[playerid][9], 1);
    PlayerTextDrawSetSelectable(playerid, ShowroomTD[playerid][9], 1);

    ShowroomTD[playerid][10] = CreatePlayerTextDraw(playerid, 161.000, 248.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ShowroomTD[playerid][10], 35.000, 34.000);
    PlayerTextDrawAlignment(playerid, ShowroomTD[playerid][10], 1);
    PlayerTextDrawColor(playerid, ShowroomTD[playerid][10], 52735);
    PlayerTextDrawSetShadow(playerid, ShowroomTD[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, ShowroomTD[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, ShowroomTD[playerid][10], 255);
    PlayerTextDrawFont(playerid, ShowroomTD[playerid][10], 4);
    PlayerTextDrawSetProportional(playerid, ShowroomTD[playerid][10], 1);
    PlayerTextDrawSetSelectable(playerid, ShowroomTD[playerid][10], 1);

    ShowroomTD[playerid][11] = CreatePlayerTextDraw(playerid, 201.000, 248.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ShowroomTD[playerid][11], 35.000, 34.000);
    PlayerTextDrawAlignment(playerid, ShowroomTD[playerid][11], 1);
    PlayerTextDrawColor(playerid, ShowroomTD[playerid][11], 512819199);
    PlayerTextDrawSetShadow(playerid, ShowroomTD[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, ShowroomTD[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, ShowroomTD[playerid][11], 255);
    PlayerTextDrawFont(playerid, ShowroomTD[playerid][11], 4);
    PlayerTextDrawSetProportional(playerid, ShowroomTD[playerid][11], 1);
    PlayerTextDrawSetSelectable(playerid, ShowroomTD[playerid][11], 1);

    ShowroomTD[playerid][12] = CreatePlayerTextDraw(playerid, 161.000, 208.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ShowroomTD[playerid][12], 35.000, 34.000);
    PlayerTextDrawAlignment(playerid, ShowroomTD[playerid][12], 1);
    PlayerTextDrawColor(playerid, ShowroomTD[playerid][12], 16711935);
    PlayerTextDrawSetShadow(playerid, ShowroomTD[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, ShowroomTD[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, ShowroomTD[playerid][12], 255);
    PlayerTextDrawFont(playerid, ShowroomTD[playerid][12], 4);
    PlayerTextDrawSetProportional(playerid, ShowroomTD[playerid][12], 1);
    PlayerTextDrawSetSelectable(playerid, ShowroomTD[playerid][12], 1);

    ShowroomTD[playerid][13] = CreatePlayerTextDraw(playerid, 201.000, 209.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ShowroomTD[playerid][13], 35.000, 34.000);
    PlayerTextDrawAlignment(playerid, ShowroomTD[playerid][13], 1);
    PlayerTextDrawColor(playerid, ShowroomTD[playerid][13], 255);
    PlayerTextDrawSetShadow(playerid, ShowroomTD[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, ShowroomTD[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, ShowroomTD[playerid][13], 255);
    PlayerTextDrawFont(playerid, ShowroomTD[playerid][13], 4);
    PlayerTextDrawSetProportional(playerid, ShowroomTD[playerid][13], 1);
    PlayerTextDrawSetSelectable(playerid, ShowroomTD[playerid][13], 1);

    ShowroomTD[playerid][14] = CreatePlayerTextDraw(playerid, 174.000, 385.000, "_");
    PlayerTextDrawTextSize(playerid, ShowroomTD[playerid][14], 33.000, 32.000);
    PlayerTextDrawAlignment(playerid, ShowroomTD[playerid][14], 1);
    PlayerTextDrawColor(playerid, ShowroomTD[playerid][14], -1);
    PlayerTextDrawSetShadow(playerid, ShowroomTD[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, ShowroomTD[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, ShowroomTD[playerid][14], 0);
    PlayerTextDrawFont(playerid, ShowroomTD[playerid][14], 5);
    PlayerTextDrawSetProportional(playerid, ShowroomTD[playerid][14], 0);
    PlayerTextDrawSetPreviewModel(playerid, ShowroomTD[playerid][14], 451);
    PlayerTextDrawSetPreviewRot(playerid, ShowroomTD[playerid][14], 0.000, 0.000, -81.000, 1.000);
    PlayerTextDrawSetPreviewVehCol(playerid, ShowroomTD[playerid][14], 0, 0);

    ShowroomTD[playerid][15] = CreatePlayerTextDraw(playerid, 242.000, 385.000, "_");
    PlayerTextDrawTextSize(playerid, ShowroomTD[playerid][15], 33.000, 32.000);
    PlayerTextDrawAlignment(playerid, ShowroomTD[playerid][15], 1);
    PlayerTextDrawColor(playerid, ShowroomTD[playerid][15], -1);
    PlayerTextDrawSetShadow(playerid, ShowroomTD[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, ShowroomTD[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, ShowroomTD[playerid][15], 0);
    PlayerTextDrawFont(playerid, ShowroomTD[playerid][15], 5);
    PlayerTextDrawSetProportional(playerid, ShowroomTD[playerid][15], 0);
    PlayerTextDrawSetPreviewModel(playerid, ShowroomTD[playerid][15], 560);
    PlayerTextDrawSetPreviewRot(playerid, ShowroomTD[playerid][15], 0.000, 0.000, -81.000, 1.000);
    PlayerTextDrawSetPreviewVehCol(playerid, ShowroomTD[playerid][15], 0, 0);

    ShowroomTD[playerid][16] = CreatePlayerTextDraw(playerid, 307.000, 385.000, "_");
    PlayerTextDrawTextSize(playerid, ShowroomTD[playerid][16], 33.000, 32.000);
    PlayerTextDrawAlignment(playerid, ShowroomTD[playerid][16], 1);
    PlayerTextDrawColor(playerid, ShowroomTD[playerid][16], -1);
    PlayerTextDrawSetShadow(playerid, ShowroomTD[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, ShowroomTD[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, ShowroomTD[playerid][16], 0);
    PlayerTextDrawFont(playerid, ShowroomTD[playerid][16], 5);
    PlayerTextDrawSetProportional(playerid, ShowroomTD[playerid][16], 0);
    PlayerTextDrawSetPreviewModel(playerid, ShowroomTD[playerid][16], 468);
    PlayerTextDrawSetPreviewRot(playerid, ShowroomTD[playerid][16], 0.000, 0.000, -81.000, 1.000);
    PlayerTextDrawSetPreviewVehCol(playerid, ShowroomTD[playerid][16], 0, 0);

    ShowroomTD[playerid][17] = CreatePlayerTextDraw(playerid, 377.000, 385.000, "_");
    PlayerTextDrawTextSize(playerid, ShowroomTD[playerid][17], 33.000, 32.000);
    PlayerTextDrawAlignment(playerid, ShowroomTD[playerid][17], 1);
    PlayerTextDrawColor(playerid, ShowroomTD[playerid][17], -1);
    PlayerTextDrawSetShadow(playerid, ShowroomTD[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, ShowroomTD[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, ShowroomTD[playerid][17], 0);
    PlayerTextDrawFont(playerid, ShowroomTD[playerid][17], 5);
    PlayerTextDrawSetProportional(playerid, ShowroomTD[playerid][17], 0);
    PlayerTextDrawSetPreviewModel(playerid, ShowroomTD[playerid][17], 403);
    PlayerTextDrawSetPreviewRot(playerid, ShowroomTD[playerid][17], 0.000, 0.000, -81.000, 1.000);
    PlayerTextDrawSetPreviewVehCol(playerid, ShowroomTD[playerid][17], 0, 0);

    ShowroomTD[playerid][18] = CreatePlayerTextDraw(playerid, 443.000, 385.000, "_");
    PlayerTextDrawTextSize(playerid, ShowroomTD[playerid][18], 33.000, 32.000);
    PlayerTextDrawAlignment(playerid, ShowroomTD[playerid][18], 1);
    PlayerTextDrawColor(playerid, ShowroomTD[playerid][18], -1);
    PlayerTextDrawSetShadow(playerid, ShowroomTD[playerid][18], 0);
    PlayerTextDrawSetOutline(playerid, ShowroomTD[playerid][18], 0);
    PlayerTextDrawBackgroundColor(playerid, ShowroomTD[playerid][18], 0);
    PlayerTextDrawFont(playerid, ShowroomTD[playerid][18], 5);
    PlayerTextDrawSetProportional(playerid, ShowroomTD[playerid][18], 0);
    PlayerTextDrawSetPreviewModel(playerid, ShowroomTD[playerid][18], 400);
    PlayerTextDrawSetPreviewRot(playerid, ShowroomTD[playerid][18], 0.000, 0.000, -81.000, 1.000);
    PlayerTextDrawSetPreviewVehCol(playerid, ShowroomTD[playerid][18], 0, 0);

    ShowroomTD[playerid][19] = CreatePlayerTextDraw(playerid, 509.000, 385.000, "_");
    PlayerTextDrawTextSize(playerid, ShowroomTD[playerid][19], 33.000, 32.000);
    PlayerTextDrawAlignment(playerid, ShowroomTD[playerid][19], 1);
    PlayerTextDrawColor(playerid, ShowroomTD[playerid][19], -1);
    PlayerTextDrawSetShadow(playerid, ShowroomTD[playerid][19], 0);
    PlayerTextDrawSetOutline(playerid, ShowroomTD[playerid][19], 0);
    PlayerTextDrawBackgroundColor(playerid, ShowroomTD[playerid][19], 0);
    PlayerTextDrawFont(playerid, ShowroomTD[playerid][19], 5);
    PlayerTextDrawSetProportional(playerid, ShowroomTD[playerid][19], 0);
    PlayerTextDrawSetPreviewModel(playerid, ShowroomTD[playerid][19], 567);
    PlayerTextDrawSetPreviewRot(playerid, ShowroomTD[playerid][19], 0.000, 0.000, -81.000, 1.000);
    PlayerTextDrawSetPreviewVehCol(playerid, ShowroomTD[playerid][19], 0, 0);

    ShowroomTD[playerid][20] = CreatePlayerTextDraw(playerid, 189.000, 382.000, "2 Pintu");
    PlayerTextDrawLetterSize(playerid, ShowroomTD[playerid][20], 0.170, 0.999);
    PlayerTextDrawAlignment(playerid, ShowroomTD[playerid][20], 2);
    PlayerTextDrawColor(playerid, ShowroomTD[playerid][20], -1329275137);
    PlayerTextDrawSetShadow(playerid, ShowroomTD[playerid][20], 0);
    PlayerTextDrawSetOutline(playerid, ShowroomTD[playerid][20], 0);
    PlayerTextDrawBackgroundColor(playerid, ShowroomTD[playerid][20], 150);
    PlayerTextDrawFont(playerid, ShowroomTD[playerid][20], 1);
    PlayerTextDrawSetProportional(playerid, ShowroomTD[playerid][20], 1);

    ShowroomTD[playerid][21] = CreatePlayerTextDraw(playerid, 258.000, 382.000, "4 Pintu");
    PlayerTextDrawLetterSize(playerid, ShowroomTD[playerid][21], 0.170, 0.999);
    PlayerTextDrawAlignment(playerid, ShowroomTD[playerid][21], 2);
    PlayerTextDrawColor(playerid, ShowroomTD[playerid][21], -1329275137);
    PlayerTextDrawSetShadow(playerid, ShowroomTD[playerid][21], 0);
    PlayerTextDrawSetOutline(playerid, ShowroomTD[playerid][21], 0);
    PlayerTextDrawBackgroundColor(playerid, ShowroomTD[playerid][21], 150);
    PlayerTextDrawFont(playerid, ShowroomTD[playerid][21], 1);
    PlayerTextDrawSetProportional(playerid, ShowroomTD[playerid][21], 1);

    ShowroomTD[playerid][22] = CreatePlayerTextDraw(playerid, 328.000, 382.000, "Motor/Sepeda");
    PlayerTextDrawLetterSize(playerid, ShowroomTD[playerid][22], 0.170, 0.999);
    PlayerTextDrawAlignment(playerid, ShowroomTD[playerid][22], 2);
    PlayerTextDrawColor(playerid, ShowroomTD[playerid][22], -1329275137);
    PlayerTextDrawSetShadow(playerid, ShowroomTD[playerid][22], 0);
    PlayerTextDrawSetOutline(playerid, ShowroomTD[playerid][22], 0);
    PlayerTextDrawBackgroundColor(playerid, ShowroomTD[playerid][22], 150);
    PlayerTextDrawFont(playerid, ShowroomTD[playerid][22], 1);
    PlayerTextDrawSetProportional(playerid, ShowroomTD[playerid][22], 1);

    ShowroomTD[playerid][23] = CreatePlayerTextDraw(playerid, 394.000, 382.000, "Truck");
    PlayerTextDrawLetterSize(playerid, ShowroomTD[playerid][23], 0.170, 0.999);
    PlayerTextDrawAlignment(playerid, ShowroomTD[playerid][23], 2);
    PlayerTextDrawColor(playerid, ShowroomTD[playerid][23], -1329275137);
    PlayerTextDrawSetShadow(playerid, ShowroomTD[playerid][23], 0);
    PlayerTextDrawSetOutline(playerid, ShowroomTD[playerid][23], 0);
    PlayerTextDrawBackgroundColor(playerid, ShowroomTD[playerid][23], 150);
    PlayerTextDrawFont(playerid, ShowroomTD[playerid][23], 1);
    PlayerTextDrawSetProportional(playerid, ShowroomTD[playerid][23], 1);

    ShowroomTD[playerid][24] = CreatePlayerTextDraw(playerid, 460.000, 382.000, "SUV & Wagon");
    PlayerTextDrawLetterSize(playerid, ShowroomTD[playerid][24], 0.170, 0.999);
    PlayerTextDrawAlignment(playerid, ShowroomTD[playerid][24], 2);
    PlayerTextDrawColor(playerid, ShowroomTD[playerid][24], -1329275137);
    PlayerTextDrawSetShadow(playerid, ShowroomTD[playerid][24], 0);
    PlayerTextDrawSetOutline(playerid, ShowroomTD[playerid][24], 0);
    PlayerTextDrawBackgroundColor(playerid, ShowroomTD[playerid][24], 150);
    PlayerTextDrawFont(playerid, ShowroomTD[playerid][24], 1);
    PlayerTextDrawSetProportional(playerid, ShowroomTD[playerid][24], 1);

    ShowroomTD[playerid][25] = CreatePlayerTextDraw(playerid, 528.000, 382.000, "Classic & Lowrider");
    PlayerTextDrawLetterSize(playerid, ShowroomTD[playerid][25], 0.170, 0.999);
    PlayerTextDrawAlignment(playerid, ShowroomTD[playerid][25], 2);
    PlayerTextDrawColor(playerid, ShowroomTD[playerid][25], -1329275137);
    PlayerTextDrawSetShadow(playerid, ShowroomTD[playerid][25], 0);
    PlayerTextDrawSetOutline(playerid, ShowroomTD[playerid][25], 0);
    PlayerTextDrawBackgroundColor(playerid, ShowroomTD[playerid][25], 150);
    PlayerTextDrawFont(playerid, ShowroomTD[playerid][25], 1);
    PlayerTextDrawSetProportional(playerid, ShowroomTD[playerid][25], 1);

    ShowroomTD[playerid][26] = CreatePlayerTextDraw(playerid, 500.000, 343.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ShowroomTD[playerid][26], 57.000, 22.000);
    PlayerTextDrawAlignment(playerid, ShowroomTD[playerid][26], 1);
    PlayerTextDrawColor(playerid, ShowroomTD[playerid][26], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, ShowroomTD[playerid][26], 0);
    PlayerTextDrawSetOutline(playerid, ShowroomTD[playerid][26], 0);
    PlayerTextDrawBackgroundColor(playerid, ShowroomTD[playerid][26], 255);
    PlayerTextDrawFont(playerid, ShowroomTD[playerid][26], 4);
    PlayerTextDrawSetProportional(playerid, ShowroomTD[playerid][26], 1);
    PlayerTextDrawSetSelectable(playerid, ShowroomTD[playerid][26], 1);

    ShowroomTD[playerid][27] = CreatePlayerTextDraw(playerid, 250.000, 343.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ShowroomTD[playerid][27], 57.000, 22.000);
    PlayerTextDrawAlignment(playerid, ShowroomTD[playerid][27], 1);
    PlayerTextDrawColor(playerid, ShowroomTD[playerid][27], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, ShowroomTD[playerid][27], 0);
    PlayerTextDrawSetOutline(playerid, ShowroomTD[playerid][27], 0);
    PlayerTextDrawBackgroundColor(playerid, ShowroomTD[playerid][27], 255);
    PlayerTextDrawFont(playerid, ShowroomTD[playerid][27], 4);
    PlayerTextDrawSetProportional(playerid, ShowroomTD[playerid][27], 1);
    PlayerTextDrawSetSelectable(playerid, ShowroomTD[playerid][27], 1);

    ShowroomTD[playerid][28] = CreatePlayerTextDraw(playerid, 276.000, 343.000, "<<<");
    PlayerTextDrawLetterSize(playerid, ShowroomTD[playerid][28], 0.488, 2.098);
    PlayerTextDrawAlignment(playerid, ShowroomTD[playerid][28], 2);
    PlayerTextDrawColor(playerid, ShowroomTD[playerid][28], -1);
    PlayerTextDrawSetShadow(playerid, ShowroomTD[playerid][28], 0);
    PlayerTextDrawSetOutline(playerid, ShowroomTD[playerid][28], 0);
    PlayerTextDrawBackgroundColor(playerid, ShowroomTD[playerid][28], 150);
    PlayerTextDrawFont(playerid, ShowroomTD[playerid][28], 1);
    PlayerTextDrawSetProportional(playerid, ShowroomTD[playerid][28], 1);

    ShowroomTD[playerid][29] = CreatePlayerTextDraw(playerid, 530.000, 343.000, ">>>");
    PlayerTextDrawLetterSize(playerid, ShowroomTD[playerid][29], 0.488, 2.098);
    PlayerTextDrawAlignment(playerid, ShowroomTD[playerid][29], 2);
    PlayerTextDrawColor(playerid, ShowroomTD[playerid][29], -1);
    PlayerTextDrawSetShadow(playerid, ShowroomTD[playerid][29], 0);
    PlayerTextDrawSetOutline(playerid, ShowroomTD[playerid][29], 0);
    PlayerTextDrawBackgroundColor(playerid, ShowroomTD[playerid][29], 150);
    PlayerTextDrawFont(playerid, ShowroomTD[playerid][29], 1);
    PlayerTextDrawSetProportional(playerid, ShowroomTD[playerid][29], 1);

    ShowroomTD[playerid][30] = CreatePlayerTextDraw(playerid, 162.000, 153.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ShowroomTD[playerid][30], 74.000, 50.000);
    PlayerTextDrawAlignment(playerid, ShowroomTD[playerid][30], 1);
    PlayerTextDrawColor(playerid, ShowroomTD[playerid][30], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, ShowroomTD[playerid][30], 0);
    PlayerTextDrawSetOutline(playerid, ShowroomTD[playerid][30], 0);
    PlayerTextDrawBackgroundColor(playerid, ShowroomTD[playerid][30], 255);
    PlayerTextDrawFont(playerid, ShowroomTD[playerid][30], 4);
    PlayerTextDrawSetProportional(playerid, ShowroomTD[playerid][30], 1);

    ShowroomTD[playerid][31] = CreatePlayerTextDraw(playerid, 160.000, 148.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ShowroomTD[playerid][31], 28.000, 3.000);
    PlayerTextDrawAlignment(playerid, ShowroomTD[playerid][31], 1);
    PlayerTextDrawColor(playerid, ShowroomTD[playerid][31], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, ShowroomTD[playerid][31], 0);
    PlayerTextDrawSetOutline(playerid, ShowroomTD[playerid][31], 0);
    PlayerTextDrawBackgroundColor(playerid, ShowroomTD[playerid][31], 255);
    PlayerTextDrawFont(playerid, ShowroomTD[playerid][31], 4);
    PlayerTextDrawSetProportional(playerid, ShowroomTD[playerid][31], 1);

    ShowroomTD[playerid][32] = CreatePlayerTextDraw(playerid, 158.000, 148.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ShowroomTD[playerid][32], 2.000, 33.000);
    PlayerTextDrawAlignment(playerid, ShowroomTD[playerid][32], 1);
    PlayerTextDrawColor(playerid, ShowroomTD[playerid][32], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, ShowroomTD[playerid][32], 0);
    PlayerTextDrawSetOutline(playerid, ShowroomTD[playerid][32], 0);
    PlayerTextDrawBackgroundColor(playerid, ShowroomTD[playerid][32], 255);
    PlayerTextDrawFont(playerid, ShowroomTD[playerid][32], 4);
    PlayerTextDrawSetProportional(playerid, ShowroomTD[playerid][32], 1);

    ShowroomTD[playerid][33] = CreatePlayerTextDraw(playerid, 209.000, 367.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ShowroomTD[playerid][33], 31.000, 3.000);
    PlayerTextDrawAlignment(playerid, ShowroomTD[playerid][33], 1);
    PlayerTextDrawColor(playerid, ShowroomTD[playerid][33], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, ShowroomTD[playerid][33], 0);
    PlayerTextDrawSetOutline(playerid, ShowroomTD[playerid][33], 0);
    PlayerTextDrawBackgroundColor(playerid, ShowroomTD[playerid][33], 255);
    PlayerTextDrawFont(playerid, ShowroomTD[playerid][33], 4);
    PlayerTextDrawSetProportional(playerid, ShowroomTD[playerid][33], 1);

    ShowroomTD[playerid][34] = CreatePlayerTextDraw(playerid, 238.000, 334.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ShowroomTD[playerid][34], 2.000, 33.000);
    PlayerTextDrawAlignment(playerid, ShowroomTD[playerid][34], 1);
    PlayerTextDrawColor(playerid, ShowroomTD[playerid][34], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, ShowroomTD[playerid][34], 0);
    PlayerTextDrawSetOutline(playerid, ShowroomTD[playerid][34], 0);
    PlayerTextDrawBackgroundColor(playerid, ShowroomTD[playerid][34], 255);
    PlayerTextDrawFont(playerid, ShowroomTD[playerid][34], 4);
    PlayerTextDrawSetProportional(playerid, ShowroomTD[playerid][34], 1);

    ShowroomTD[playerid][35] = CreatePlayerTextDraw(playerid, 198.000, 167.000, "Sultan~n~~g~$50,0000");
    PlayerTextDrawLetterSize(playerid, ShowroomTD[playerid][35], 0.209, 1.098);
    PlayerTextDrawAlignment(playerid, ShowroomTD[playerid][35], 2);
    PlayerTextDrawColor(playerid, ShowroomTD[playerid][35], -1);
    PlayerTextDrawSetShadow(playerid, ShowroomTD[playerid][35], 0);
    PlayerTextDrawSetOutline(playerid, ShowroomTD[playerid][35], 0);
    PlayerTextDrawBackgroundColor(playerid, ShowroomTD[playerid][35], 150);
    PlayerTextDrawFont(playerid, ShowroomTD[playerid][35], 1);
    PlayerTextDrawSetProportional(playerid, ShowroomTD[playerid][35], 1);

    ShowroomTD[playerid][36] = CreatePlayerTextDraw(playerid, 194.000, 141.000, "/");
    PlayerTextDrawLetterSize(playerid, ShowroomTD[playerid][36], 0.209, 1.098);
    PlayerTextDrawAlignment(playerid, ShowroomTD[playerid][36], 2);
    PlayerTextDrawColor(playerid, ShowroomTD[playerid][36], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, ShowroomTD[playerid][36], 0);
    PlayerTextDrawSetOutline(playerid, ShowroomTD[playerid][36], 0);
    PlayerTextDrawBackgroundColor(playerid, ShowroomTD[playerid][36], 150);
    PlayerTextDrawFont(playerid, ShowroomTD[playerid][36], 1);
    PlayerTextDrawSetProportional(playerid, ShowroomTD[playerid][36], 1);

    ShowroomTD[playerid][37] = CreatePlayerTextDraw(playerid, 192.000, 141.000, "/");
    PlayerTextDrawLetterSize(playerid, ShowroomTD[playerid][37], -0.219, 1.098);
    PlayerTextDrawAlignment(playerid, ShowroomTD[playerid][37], 2);
    PlayerTextDrawColor(playerid, ShowroomTD[playerid][37], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, ShowroomTD[playerid][37], 0);
    PlayerTextDrawSetOutline(playerid, ShowroomTD[playerid][37], 0);
    PlayerTextDrawBackgroundColor(playerid, ShowroomTD[playerid][37], 150);
    PlayerTextDrawFont(playerid, ShowroomTD[playerid][37], 1);
    PlayerTextDrawSetProportional(playerid, ShowroomTD[playerid][37], 1);

    ShowroomTD[playerid][38] = CreatePlayerTextDraw(playerid, 196.000, 142.000, "elorya Showroom");
    PlayerTextDrawLetterSize(playerid, ShowroomTD[playerid][38], 0.128, 1.098);
    PlayerTextDrawAlignment(playerid, ShowroomTD[playerid][38], 1);
    PlayerTextDrawColor(playerid, ShowroomTD[playerid][38], -1);
    PlayerTextDrawSetShadow(playerid, ShowroomTD[playerid][38], 0);
    PlayerTextDrawSetOutline(playerid, ShowroomTD[playerid][38], 0);
    PlayerTextDrawBackgroundColor(playerid, ShowroomTD[playerid][38], 150);
    PlayerTextDrawFont(playerid, ShowroomTD[playerid][38], 1);
    PlayerTextDrawSetProportional(playerid, ShowroomTD[playerid][38], 1);

    ShowroomTD[playerid][39] = CreatePlayerTextDraw(playerid, 319.000, 343.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ShowroomTD[playerid][39], 170.000, 22.000);
    PlayerTextDrawAlignment(playerid, ShowroomTD[playerid][39], 1);
    PlayerTextDrawColor(playerid, ShowroomTD[playerid][39], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, ShowroomTD[playerid][39], 0);
    PlayerTextDrawSetOutline(playerid, ShowroomTD[playerid][39], 0);
    PlayerTextDrawBackgroundColor(playerid, ShowroomTD[playerid][39], 255);
    PlayerTextDrawFont(playerid, ShowroomTD[playerid][39], 4);
    PlayerTextDrawSetProportional(playerid, ShowroomTD[playerid][39], 1);
    PlayerTextDrawSetSelectable(playerid, ShowroomTD[playerid][39], 1);

    ShowroomTD[playerid][40] = CreatePlayerTextDraw(playerid, 532.000, 125.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ShowroomTD[playerid][40], 26.000, 22.000);
    PlayerTextDrawAlignment(playerid, ShowroomTD[playerid][40], 1);
    PlayerTextDrawColor(playerid, ShowroomTD[playerid][40], -16776961);
    PlayerTextDrawSetShadow(playerid, ShowroomTD[playerid][40], 0);
    PlayerTextDrawSetOutline(playerid, ShowroomTD[playerid][40], 0);
    PlayerTextDrawBackgroundColor(playerid, ShowroomTD[playerid][40], 255);
    PlayerTextDrawFont(playerid, ShowroomTD[playerid][40], 4);
    PlayerTextDrawSetProportional(playerid, ShowroomTD[playerid][40], 1);
    PlayerTextDrawSetSelectable(playerid, ShowroomTD[playerid][40], 1);

    ShowroomTD[playerid][41] = CreatePlayerTextDraw(playerid, 403.000, 346.000, "Beli");
    PlayerTextDrawLetterSize(playerid, ShowroomTD[playerid][41], 0.358, 1.299);
    PlayerTextDrawAlignment(playerid, ShowroomTD[playerid][41], 2);
    PlayerTextDrawColor(playerid, ShowroomTD[playerid][41], -1);
    PlayerTextDrawSetShadow(playerid, ShowroomTD[playerid][41], 0);
    PlayerTextDrawSetOutline(playerid, ShowroomTD[playerid][41], 0);
    PlayerTextDrawBackgroundColor(playerid, ShowroomTD[playerid][41], 150);
    PlayerTextDrawFont(playerid, ShowroomTD[playerid][41], 1);
    PlayerTextDrawSetProportional(playerid, ShowroomTD[playerid][41], 1);

    ShowroomTD[playerid][42] = CreatePlayerTextDraw(playerid, 545.000, 130.000, "X");
    PlayerTextDrawLetterSize(playerid, ShowroomTD[playerid][42], 0.358, 1.299);
    PlayerTextDrawAlignment(playerid, ShowroomTD[playerid][42], 2);
    PlayerTextDrawColor(playerid, ShowroomTD[playerid][42], 255);
    PlayerTextDrawSetShadow(playerid, ShowroomTD[playerid][42], 0);
    PlayerTextDrawSetOutline(playerid, ShowroomTD[playerid][42], 0);
    PlayerTextDrawBackgroundColor(playerid, ShowroomTD[playerid][42], 150);
    PlayerTextDrawFont(playerid, ShowroomTD[playerid][42], 1);
    PlayerTextDrawSetProportional(playerid, ShowroomTD[playerid][42], 1);
    return 1;
}

Toggle_ShowroomTD(playerid, bool:toggle)
{
    if(!toggle)
    {
        for(new i; i < 43; i ++) PlayerTextDrawHide(playerid, ShowroomTD[playerid][i]);
        Toggle_AllTextdraws(playerid, true);
    }
    else
    {
        for(new i; i < 43; i ++) PlayerTextDrawShow(playerid, ShowroomTD[playerid][i]);
        for(new txd = 0; txd < 14; txd++) PlayerTextDrawHide(playerid, SPEEDONEW[playerid][txd]);
    }
    return 1;
}

hook OnPlayerConnect(playerid)
{
    ATRPShowroomTD(playerid);
    SetPVarInt(playerid, "SelectShowroomID", 0);
    SelectVeh[playerid] = 0;
    return 1;
}

hook OnPlayerDisconnect(playerid, reason)
{
    if(GetPVarInt(playerid, "SelectShowroomID") != 0)
    {
        DestroyVehicle(ShowroomVeh[playerid]);
        ShowroomVeh[playerid] = INVALID_VEHICLE_ID;
    }
    for(new x; x < 43; x ++) PlayerTextDrawDestroy(playerid, ShowroomTD[playerid][x]);
    return 1;
}

hook OnScriptInit()
{
    ShowroomCheckpoint = CreateDynamicCP(1177.988, -899.759, 43.374, 2.0, -1, -1, -1, 10.0);
    return 1;
}

hook OnPlayerEnterDynamicCP(playerid, STREAMER_TAG_CP:checkpointid)
{
    if(checkpointid == ShowroomCheckpoint)
    {
        ShowKey(playerid, "[Y] Menu Showroom");
    }
    return 1;
}

hook OnPlayerLeaveDynamicCP(playerid, STREAMER_TAG_CP:checkpointid)
{
    if(checkpointid == ShowroomCheckpoint)
    {
        HideShortKey(playerid);
    }
    return 1;
}

new MotorShowroom[10] = 
{
    509, 481, 510, 462, 461, 581, 521, 463, 468, 586
};

MotorCost(playerid)
{
    if(MotorShowroom[SelectVeh[playerid]] == 509) return 500;
    if(MotorShowroom[SelectVeh[playerid]] == 481) return 800;
    if(MotorShowroom[SelectVeh[playerid]] == 510) return 1500;
    if(MotorShowroom[SelectVeh[playerid]] == 462) return 2000;
    if(MotorShowroom[SelectVeh[playerid]] == 461) return 2500;
    if(MotorShowroom[SelectVeh[playerid]] == 581) return 3000;
    if(MotorShowroom[SelectVeh[playerid]] == 521) return 4000;
    if(MotorShowroom[SelectVeh[playerid]] == 463) return 3500;
    if(MotorShowroom[SelectVeh[playerid]] == 468) return 2800;
    if(MotorShowroom[SelectVeh[playerid]] == 586) return 3200;
    return 0;
}

new TrukShowroom[9] = 
{
    422, 482, 478, 554, 543, 440, 413, 418, 499
};

TrukCost(playerid)
{
    if(TrukShowroom[SelectVeh[playerid]] == 422) return 5500;
    if(TrukShowroom[SelectVeh[playerid]] == 482) return 6000;
    if(TrukShowroom[SelectVeh[playerid]] == 478) return 7000;
    if(TrukShowroom[SelectVeh[playerid]] == 554) return 7200;
    if(TrukShowroom[SelectVeh[playerid]] == 543) return 7500;
    if(TrukShowroom[SelectVeh[playerid]] == 440) return 8000;
    if(TrukShowroom[SelectVeh[playerid]] == 413) return 8500;
    if(TrukShowroom[SelectVeh[playerid]] == 418) return 9000;
    if(TrukShowroom[SelectVeh[playerid]] == 499) return 8000;
    return 0;
}

new SuvShowroom[7] = 
{
    579, 400, 404, 589, 505, 479, 458
};

SuvCost(playerid)
{
    if(SuvShowroom[SelectVeh[playerid]] == 579) return 6000;
    if(SuvShowroom[SelectVeh[playerid]] == 400) return 4500;
    if(SuvShowroom[SelectVeh[playerid]] == 404) return 5000;
    if(SuvShowroom[SelectVeh[playerid]] == 589) return 5500;
    if(SuvShowroom[SelectVeh[playerid]] == 505) return 6500;
    if(SuvShowroom[SelectVeh[playerid]] == 479) return 7000;
    if(SuvShowroom[SelectVeh[playerid]] == 458) return 7500;
    return 0;
}

new ClassicShowroom[6] = 
{
    536, 575, 534, 567, 576, 412
};

ClassicCost(playerid)
{
    if(ClassicShowroom[SelectVeh[playerid]] == 536) return 3000;
    if(ClassicShowroom[SelectVeh[playerid]] == 575) return 3500;
    if(ClassicShowroom[SelectVeh[playerid]] == 534) return 3200;
    if(ClassicShowroom[SelectVeh[playerid]] == 567) return 4000;
    if(ClassicShowroom[SelectVeh[playerid]] == 576) return 4200;
    if(ClassicShowroom[SelectVeh[playerid]] == 412) return 3800;
    return 0;
}

new CompactShowroom[14] = 
{
    602, 496, 401, 518, 527,
    589, 419, 533, 526, 545,
    474, 517, 600, 410
};

CompactCost(playerid)
{
    if(CompactShowroom[SelectVeh[playerid]] == 602) return 2500;
    if(CompactShowroom[SelectVeh[playerid]] == 496) return 2700;
    if(CompactShowroom[SelectVeh[playerid]] == 401) return 2800;
    if(CompactShowroom[SelectVeh[playerid]] == 518) return 3000;
    if(CompactShowroom[SelectVeh[playerid]] == 527) return 3200;
    if(CompactShowroom[SelectVeh[playerid]] == 589) return 3500;
    if(CompactShowroom[SelectVeh[playerid]] == 419) return 3700;
    if(CompactShowroom[SelectVeh[playerid]] == 533) return 3800;
    if(CompactShowroom[SelectVeh[playerid]] == 526) return 3900;
    if(CompactShowroom[SelectVeh[playerid]] == 545) return 4000;
    if(CompactShowroom[SelectVeh[playerid]] == 474) return 4200;
    if(CompactShowroom[SelectVeh[playerid]] == 517) return 4300;
    if(CompactShowroom[SelectVeh[playerid]] == 600) return 4400;
    if(CompactShowroom[SelectVeh[playerid]] == 410) return 4500;
    return 0;
}

new LuxuryShowroom[18] = 
{
    445, 507, 585, 466, 492, 546,
    551, 516, 426, 467, 547, 580,
    550, 566, 540, 421, 529, 560
};

LuxuryCost(playerid)
{
    if(LuxuryShowroom[SelectVeh[playerid]] == 445) return 23450;
    if(LuxuryShowroom[SelectVeh[playerid]] == 507) return 24250;
    if(LuxuryShowroom[SelectVeh[playerid]] == 585) return 25400;
    if(LuxuryShowroom[SelectVeh[playerid]] == 466) return 26150;
    if(LuxuryShowroom[SelectVeh[playerid]] == 492) return 27000;
    if(LuxuryShowroom[SelectVeh[playerid]] == 546) return 28000;
    if(LuxuryShowroom[SelectVeh[playerid]] == 551) return 29000;
    if(LuxuryShowroom[SelectVeh[playerid]] == 516) return 30000;
    if(LuxuryShowroom[SelectVeh[playerid]] == 426) return 31000;
    if(LuxuryShowroom[SelectVeh[playerid]] == 467) return 32000;
    if(LuxuryShowroom[SelectVeh[playerid]] == 547) return 33000;
    if(LuxuryShowroom[SelectVeh[playerid]] == 580) return 34000;
    if(LuxuryShowroom[SelectVeh[playerid]] == 550) return 35000;
    if(LuxuryShowroom[SelectVeh[playerid]] == 566) return 36000;
    if(LuxuryShowroom[SelectVeh[playerid]] == 540) return 37000;
    if(LuxuryShowroom[SelectVeh[playerid]] == 421) return 38000;
    if(LuxuryShowroom[SelectVeh[playerid]] == 529) return 39000;
    if(LuxuryShowroom[SelectVeh[playerid]] == 560) return 40000;
    return 0;
}

/* Other Func */
VehicleTruckSelect(playerid)
{
    if(IsValidVehicle(ShowroomVeh[playerid]))
    {
        DestroyVehicle(ShowroomVeh[playerid]);
        ShowroomVeh[playerid] = INVALID_VEHICLE_ID;
    }

    ShowroomVeh[playerid] = CreateVehicle(TrukShowroom[SelectVeh[playerid]], 1181.366, -921.356, 43.424, 281.044, AccountData[playerid][pTempValue2], AccountData[playerid][pTempValue2], 60000, 0);
    LinkVehicleToInterior(ShowroomVeh[playerid], GetPlayerInterior(playerid));
    SetVehicleVirtualWorld(ShowroomVeh[playerid], GetPlayerVirtualWorld(playerid));
    SetValidVehicleHealth(ShowroomVeh[playerid], 1000.0);
    
    //PutPlayerInVehicle(playerid, ShowroomVeh[playerid], 0);
    SetPlayerCameraPos(playerid, 1193.16, -919.18, 45.87);
    SetPlayerCameraLookAt(playerid, 1192.21, -919.38, 45.62);
    return 1;
}

VehicleSuvSelect(playerid)
{
    if(IsValidVehicle(ShowroomVeh[playerid]))
    {
        DestroyVehicle(ShowroomVeh[playerid]);
        ShowroomVeh[playerid] = INVALID_VEHICLE_ID;
    }

    ShowroomVeh[playerid] = CreateVehicle(SuvShowroom[SelectVeh[playerid]], 1181.366, -921.356, 43.424, 281.044, AccountData[playerid][pTempValue2], AccountData[playerid][pTempValue2], 60000, 0);
    LinkVehicleToInterior(ShowroomVeh[playerid], GetPlayerInterior(playerid));
    SetVehicleVirtualWorld(ShowroomVeh[playerid], GetPlayerVirtualWorld(playerid));
    SetValidVehicleHealth(ShowroomVeh[playerid], 1000.0);
    
    //PutPlayerInVehicle(playerid, ShowroomVeh[playerid], 0);
    SetPlayerCameraPos(playerid, 1193.16, -919.18, 45.87);
    SetPlayerCameraLookAt(playerid, 1192.21, -919.38, 45.62);
}

VehicleMotorSelect(playerid)
{
    if(IsValidVehicle(ShowroomVeh[playerid]))
    {
        DestroyVehicle(ShowroomVeh[playerid]);
        ShowroomVeh[playerid] = INVALID_VEHICLE_ID;
    }

    ShowroomVeh[playerid] = CreateVehicle(MotorShowroom[SelectVeh[playerid]], 1181.366, -921.356, 43.424, 281.044, AccountData[playerid][pTempValue2], AccountData[playerid][pTempValue2], 60000, 0);
    LinkVehicleToInterior(ShowroomVeh[playerid], GetPlayerInterior(playerid));
    SetVehicleVirtualWorld(ShowroomVeh[playerid], GetPlayerVirtualWorld(playerid));
    SetValidVehicleHealth(ShowroomVeh[playerid], 1000.0);
    
    //PutPlayerInVehicle(playerid, ShowroomVeh[playerid], 0);
    SetPlayerCameraPos(playerid, 1193.16, -919.18, 45.87);
    SetPlayerCameraLookAt(playerid, 1192.21, -919.38, 45.62);
}

VehicleLowriderSelect(playerid)
{
    if(IsValidVehicle(ShowroomVeh[playerid]))
    {
        DestroyVehicle(ShowroomVeh[playerid]);
        ShowroomVeh[playerid] = INVALID_VEHICLE_ID;
    }

    ShowroomVeh[playerid] = CreateVehicle(ClassicShowroom[SelectVeh[playerid]], 1181.366, -921.356, 43.424, 281.044, AccountData[playerid][pTempValue2], AccountData[playerid][pTempValue2], 60000, 0);
    LinkVehicleToInterior(ShowroomVeh[playerid], GetPlayerInterior(playerid));
    SetVehicleVirtualWorld(ShowroomVeh[playerid], GetPlayerVirtualWorld(playerid));
    SetValidVehicleHealth(ShowroomVeh[playerid], 1000.0);
    
    //PutPlayerInVehicle(playerid, ShowroomVeh[playerid], 0);
    SetPlayerCameraPos(playerid, 1193.16, -919.18, 45.87);
    SetPlayerCameraLookAt(playerid, 1192.21, -919.38, 45.62);
}

VehicleCompactSelect(playerid)
{
    if(IsValidVehicle(ShowroomVeh[playerid]))
    {
        DestroyVehicle(ShowroomVeh[playerid]);
        ShowroomVeh[playerid] = INVALID_VEHICLE_ID;
    }

    ShowroomVeh[playerid] = CreateVehicle(CompactShowroom[SelectVeh[playerid]], 1181.366, -921.356, 43.424, 281.044, AccountData[playerid][pTempValue2], AccountData[playerid][pTempValue2], 60000, 0);
    LinkVehicleToInterior(ShowroomVeh[playerid], GetPlayerInterior(playerid));
    SetVehicleVirtualWorld(ShowroomVeh[playerid], GetPlayerVirtualWorld(playerid));
    SetValidVehicleHealth(ShowroomVeh[playerid], 1000.0);
    
    //PutPlayerInVehicle(playerid, ShowroomVeh[playerid], 0);
    SetPlayerCameraPos(playerid, 1193.16, -919.18, 45.87);
    SetPlayerCameraLookAt(playerid, 1192.21, -919.38, 45.62);
}

VehicleLuxurySelect(playerid)
{
    if(IsValidVehicle(ShowroomVeh[playerid]))
    {
        DestroyVehicle(ShowroomVeh[playerid]);
        ShowroomVeh[playerid] = INVALID_VEHICLE_ID;
    }

    ShowroomVeh[playerid] = CreateVehicle(LuxuryShowroom[SelectVeh[playerid]], 1181.366, -921.356, 43.424, 281.044, AccountData[playerid][pTempValue2], AccountData[playerid][pTempValue2], 60000, 0);
    LinkVehicleToInterior(ShowroomVeh[playerid], GetPlayerInterior(playerid));
    SetVehicleVirtualWorld(ShowroomVeh[playerid], GetPlayerVirtualWorld(playerid));
    SetValidVehicleHealth(ShowroomVeh[playerid], 1000.0);
    
    //PutPlayerInVehicle(playerid, ShowroomVeh[playerid], 0);
    SetPlayerCameraPos(playerid, 1193.16, -919.18, 45.87);
    SetPlayerCameraLookAt(playerid, 1192.21, -919.38, 45.62);
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    if(newkeys & KEY_YES && GetPlayerState(playerid) == PLAYER_STATE_ONFOOT)
    {
        if(IsPlayerInDynamicCP(playerid, ShowroomCheckpoint))
        {
            AccountData[playerid][pTempValue2] = -1;
            if(AccountData[playerid][pInjured]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang pingsan!");
            EnableAntiCheatForPlayer(playerid, 4, false);
            
            Toggle_ShowroomTD(playerid, true);
            SetPlayerCameraPos(playerid, 1193.16, -919.18, 45.87);
            SetPlayerCameraLookAt(playerid, 1192.21, -919.38, 45.62);
            SetPlayerVirtualWorld(playerid, (playerid+1));
            HideShortKey(playerid);
            PlayerTextDrawSetString(playerid,ShowroomTD[playerid][35], "-~n~~g~$-");
            SelectTextDraw(playerid, 0xFF9999FF);
        }
    }
    return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    switch(dialogid)
    {
        case DIALOG_SHOWROOM_MENU:
        {
            if(!response)
            {
                SetPVarInt(playerid, "SelectShowroomID", 0);
                EnableAntiCheatForPlayer(playerid, 4, true);
                return 1;
            }
            
            if(AccountData[playerid][pInjured])
            {
                ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang pingsan!");
                return 1;
            }

            switch(listitem)
            {
                case 0: 
                {
                    SetPVarInt(playerid, "SelectShowroomID", 1); // truk
                    SetPlayerVirtualWorld(playerid, (playerid+1));
                    TogglePlayerControllable(playerid, 0);
                    VehicleTruckSelect(playerid);

                    PlayerTextDrawSetString(playerid, ShowroomTD[playerid][35], sprintf("%s~n~~g~%s", GetVehicleModelName(TrukShowroom[SelectVeh[playerid]]), FormatMoney(TrukCost(playerid))));
                    Toggle_ShowroomTD(playerid, true);
                    SelectTextDraw(playerid, 0xFF9999FF);
                }
                case 1: 
                {
                    SetPVarInt(playerid, "SelectShowroomID", 2); // SUV
                    SetPlayerVirtualWorld(playerid, (playerid+1));
                    TogglePlayerControllable(playerid, 0);
                    VehicleSuvSelect(playerid);

                    PlayerTextDrawSetString(playerid, ShowroomTD[playerid][35], sprintf("%s~n~~g~%s", GetVehicleModelName(SuvShowroom[SelectVeh[playerid]]), FormatMoney(SuvCost(playerid))));
                    Toggle_ShowroomTD(playerid, true);
                    SelectTextDraw(playerid, 0xFF9999FF);
                }
                case 2: 
                {
                    SetPVarInt(playerid, "SelectShowroomID", 3); // Motor
                    SetPlayerVirtualWorld(playerid, (playerid+1));
                    TogglePlayerControllable(playerid, 0);
                    VehicleMotorSelect(playerid);

                    PlayerTextDrawSetString(playerid, ShowroomTD[playerid][35], sprintf("%s~n~~g~%s", GetVehicleModelName(MotorShowroom[SelectVeh[playerid]]), FormatMoney(MotorCost(playerid))));
                    Toggle_ShowroomTD(playerid, true);
                    SelectTextDraw(playerid, 0xFF9999FF);
                }
                case 3: //
                {
                    SetPVarInt(playerid, "SelectShowroomID", 4); // Low ride
                    SetPlayerVirtualWorld(playerid, (playerid+1));
                    TogglePlayerControllable(playerid, 0);
                    VehicleLowriderSelect(playerid);

                    PlayerTextDrawSetString(playerid, ShowroomTD[playerid][35], sprintf("%s~n~~g~%s", GetVehicleModelName(ClassicShowroom[SelectVeh[playerid]]), FormatMoney(ClassicCost(playerid))));
                    Toggle_ShowroomTD(playerid, true);
                    SelectTextDraw(playerid, 0xFF9999FF);
                }
                case 4:
                {
                    SetPVarInt(playerid, "SelectShowroomID", 5); // Two Door
                    SetPlayerVirtualWorld(playerid, (playerid+1));
                    TogglePlayerControllable(playerid, 0);
                    VehicleCompactSelect(playerid);

                    PlayerTextDrawSetString(playerid, ShowroomTD[playerid][35], sprintf("%s~n~~g~%s", GetVehicleModelName(CompactShowroom[SelectVeh[playerid]]), FormatMoney(CompactCost(playerid))));
                    Toggle_ShowroomTD(playerid, true);
                    SelectTextDraw(playerid, 0xFF9999FF);
                }
                case 5:
                {
                    SetPVarInt(playerid, "SelectShowroomID", 6); // Luxury
                    SetPlayerVirtualWorld(playerid, (playerid+1));
                    TogglePlayerControllable(playerid, 0);
                    VehicleLuxurySelect(playerid);

                    PlayerTextDrawSetString(playerid, ShowroomTD[playerid][35], sprintf("%s~n~~g~%s", GetVehicleModelName(LuxuryShowroom[SelectVeh[playerid]]), FormatMoney(LuxuryCost(playerid))));
                    Toggle_ShowroomTD(playerid, true);
                    SelectTextDraw(playerid, 0xFF9999FF);
                }
            }
        }
        case DIALOG_SHOWROOM_SELL:
        {
            if(!response)
            {
                ShowTDN(playerid, NOTIFICATION_INFO, "Anda telah membatalkan pilihan");
                EnableAntiCheatForPlayer(playerid, 4, true);
                return 1;
            }

            AccountData[playerid][pListItem] = listitem;

            foreach(new i : PvtVehicles) if(PlayerVehicle[i][pVehExists])
            {
                if(strval(inputtext) == PlayerVehicle[i][pVehPhysic])
                {
                    if(PlayerVehicle[i][pVehOwnerID] != AccountData[playerid][pID]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan tersebut bukan milik anda!");
                    if(PlayerVehicle[i][pVehID] == INVALID_VEHICLE_ID)
                        return ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak dapat menjual kendaraan yang dalam status despawned");

                    new harga = PlayerVehicle[i][pVehPrice] / 2;

                    new str[600];
                    new engine_upgrade[16], body_upgrade[16];

                    format(engine_upgrade, sizeof(engine_upgrade), (PlayerVehicle[i][pVehEngineUpgrade] != 1) ? ""RED"None" : ""GREEN"Upgrade");
                    format(body_upgrade, sizeof(body_upgrade), (PlayerVehicle[i][pVehBodyUpgrade] != 3) ? ""RED"None" : ""GREEN"Upgrade");

                    format(str, sizeof(str), "Vehicle: %s\nPlate: %s\nEngine Upgrade: %s\nBody Upgrade: %s\nApakah kamu yakin ingin menjual ke negara dengan harga %s?",
                        GetVehicleModelName(PlayerVehicle[i][pVehModelID]),
                        PlayerVehicle[i][pVehPlate],
                        engine_upgrade,
                        body_upgrade,
                        FormatNumber(harga)
                    );

                    Dialog_Show(playerid, D_SELLCARDEALER, DIALOG_STYLE_MSGBOX, sprintf("%s's Sell Vehicle", GetVehicleModelName(PlayerVehicle[i][pVehModelID])), str, "Select", "Close");
                    SetPVarInt(playerid, "HargaJual", harga);
                    SetPVarInt(playerid, "SelectedVehicle", i);
                    return 1;
                }
            }
            return 1;
        }
    }
    return 1;
}

Dialog:D_SELLCARDEALER(playerid, response, listitem, inputtext[])
{
    if(response)
    {
        new total = GetPVarInt(playerid, "HargaJual");
        new i = GetPVarInt(playerid, "SelectedVehicle");

        if(Iter_Contains(PvtVehicles, i))
        {
            DestroyVehicle(PlayerVehicle[i][pVehPhysic]);
            GivePlayerMoneyEx(playerid, total);

            PlayerVehicle[i][pVehOwnerID] = -1;
            PlayerVehicle[i][pVehPhysic] = INVALID_VEHICLE_ID;

            new query[255];
            mysql_format(g_SQL, query, sizeof(query), "DELETE FROM `player_vehicles` WHERE `id`=%d", PlayerVehicle[i][pVehID]);
            mysql_tquery(g_SQL, query);
            Iter_Remove(PvtVehicles, i);

            ShowTDN(playerid, NOTIFICATION_SUKSES, "Berhasil menjual kendaraan!");
        }
    }
    return 1;
}
#if !defined INVALID_PLAYER_TEXT_DRAW
    #define INVALID_PLAYER_TEXT_DRAW PlayerText:65535
#endif
hook ClickDynPlayerTextdraw(playerid, PlayerText: playertextid)
{
    #define MAX_SHOWROOM_TD 43 // 0 - 42
    
    if(playertextid == INVALID_PLAYER_TEXT_DRAW) return 0;

    // validasi SelectVeh biar gak keluar batas
    if(SelectVeh[playerid] < 0 || SelectVeh[playerid] >= MAX_SHOWROOM_TD)
    SelectVeh[playerid] = 0;
    if(playertextid == ShowroomTD[playerid][0]) // 2pintu
    {
        SetPVarInt(playerid, "SelectShowroomID", 5);
        TogglePlayerControllable(playerid, 0);
        SelectVeh[playerid] = 0;
        VehicleCompactSelect(playerid);

        PlayerTextDrawSetString(playerid, ShowroomTD[playerid][35], sprintf("%s~n~~g~%s", GetVehicleModelName(CompactShowroom[SelectVeh[playerid]]), FormatMoney(CompactCost(playerid))));
    }
    else if(playertextid == ShowroomTD[playerid][1]) // 4pintu
    {
        SetPVarInt(playerid, "SelectShowroomID", 6);
        TogglePlayerControllable(playerid, 0);
        SelectVeh[playerid] = 0;
        VehicleLuxurySelect(playerid);

        PlayerTextDrawSetString(playerid, ShowroomTD[playerid][35], sprintf("%s~n~~g~%s", GetVehicleModelName(LuxuryShowroom[SelectVeh[playerid]]), FormatMoney(LuxuryCost(playerid))));
    }
    else if(playertextid == ShowroomTD[playerid][2]) // motor
    {
        SetPVarInt(playerid, "SelectShowroomID", 3);
        TogglePlayerControllable(playerid, 0);
        SelectVeh[playerid] = 0;
        VehicleMotorSelect(playerid);

        PlayerTextDrawSetString(playerid, ShowroomTD[playerid][35], sprintf("%s~n~~g~%s", GetVehicleModelName(MotorShowroom[SelectVeh[playerid]]), FormatMoney(MotorCost(playerid))));
    }
    else if(playertextid == ShowroomTD[playerid][3]) // truck
    {
        SetPVarInt(playerid, "SelectShowroomID", 1);
        TogglePlayerControllable(playerid, 0);
        SelectVeh[playerid] = 0;TogglePlayerControllable(playerid, 0);
        VehicleTruckSelect(playerid);

        PlayerTextDrawSetString(playerid, ShowroomTD[playerid][35], sprintf("%s~n~~g~%s", GetVehicleModelName(TrukShowroom[SelectVeh[playerid]]), FormatMoney(TrukCost(playerid))));
    }
    else if(playertextid == ShowroomTD[playerid][4]) // suv
    {
        SetPVarInt(playerid, "SelectShowroomID", 2);
        TogglePlayerControllable(playerid, 0);
        SelectVeh[playerid] = 0;
        VehicleSuvSelect(playerid);

        PlayerTextDrawSetString(playerid, ShowroomTD[playerid][35], sprintf("%s~n~~g~%s", GetVehicleModelName(SuvShowroom[SelectVeh[playerid]]), FormatMoney(SuvCost(playerid))));
    }
    else if(playertextid == ShowroomTD[playerid][5]) // classic
    {
        SetPVarInt(playerid, "SelectShowroomID", 4);
        TogglePlayerControllable(playerid, 0);
        SelectVeh[playerid] = 0;
        VehicleLowriderSelect(playerid);

        PlayerTextDrawSetString(playerid, ShowroomTD[playerid][35], sprintf("%s~n~~g~%s", GetVehicleModelName(ClassicShowroom[SelectVeh[playerid]]), FormatMoney(ClassicCost(playerid))));
    }
    new showroomID = GetPVarInt(playerid, "SelectShowroomID");
    if(playertextid == ShowroomTD[playerid][26])
    {
        if(showroomID != 0)
        {
            if(showroomID == 1) // Truk
            {
                if(SelectVeh[playerid] < sizeof(TrukShowroom)-1) SelectVeh[playerid]++;
                VehicleTruckSelect(playerid);
                PlayerTextDrawSetString(playerid, ShowroomTD[playerid][35],
                    sprintf("%s~n~~g~%s",
                    GetVehicleModelName(TrukShowroom[SelectVeh[playerid]]),
                    FormatMoney(TrukCost(playerid))));
                PlayerTextDrawShow(playerid, ShowroomTD[playerid][35]);
            }
            else if(showroomID == 2) // Suv
            {
                if(SelectVeh[playerid] < sizeof(SuvShowroom)-1) SelectVeh[playerid]++;
                VehicleSuvSelect(playerid);
                PlayerTextDrawSetString(playerid, ShowroomTD[playerid][35],
                    sprintf("%s~n~~g~%s",
                    GetVehicleModelName(SuvShowroom[SelectVeh[playerid]]),
                    FormatMoney(SuvCost(playerid))));
                PlayerTextDrawShow(playerid, ShowroomTD[playerid][35]);
            }
            else if(showroomID == 3) // Motor
            {
                if(SelectVeh[playerid] < sizeof(MotorShowroom)-1) SelectVeh[playerid]++;
                VehicleMotorSelect(playerid);

                PlayerTextDrawSetString(playerid, ShowroomTD[playerid][35], sprintf("%s~n~~g~%s", GetVehicleModelName(MotorShowroom[SelectVeh[playerid]]), FormatMoney(MotorCost(playerid))));
                PlayerTextDrawShow(playerid, ShowroomTD[playerid][35]);
            }
            else if(showroomID == 4) // Low ride
            {
                if(SelectVeh[playerid] < sizeof(ClassicShowroom)-1) SelectVeh[playerid]++;
                VehicleLowriderSelect(playerid);

                PlayerTextDrawSetString(playerid, ShowroomTD[playerid][35], sprintf("%s~n~~g~%s", GetVehicleModelName(ClassicShowroom[SelectVeh[playerid]]), FormatMoney(ClassicCost(playerid))));
                PlayerTextDrawShow(playerid, ShowroomTD[playerid][35]);
            }
            else if(showroomID == 5) // Compact
            {
                if(SelectVeh[playerid] < sizeof(CompactShowroom)-1) SelectVeh[playerid]++;
                VehicleCompactSelect(playerid);

                PlayerTextDrawSetString(playerid, ShowroomTD[playerid][35], sprintf("%s~n~~g~%s", GetVehicleModelName(CompactShowroom[SelectVeh[playerid]]), FormatMoney(CompactCost(playerid))));
                PlayerTextDrawShow(playerid, ShowroomTD[playerid][35]);
            }
            else if(showroomID == 6) // Luxury
            {
                if(SelectVeh[playerid] < sizeof(LuxuryShowroom)-1) SelectVeh[playerid]++;
                VehicleLuxurySelect(playerid);

                PlayerTextDrawSetString(playerid, ShowroomTD[playerid][35], sprintf("%s~n~~g~%s", GetVehicleModelName(LuxuryShowroom[SelectVeh[playerid]]), FormatMoney(LuxuryCost(playerid))));
                PlayerTextDrawShow(playerid, ShowroomTD[playerid][35]);
            }
        }
    }
    else if(playertextid == ShowroomTD[playerid][27])
    {
        if(showroomID != 0)
        {
            if(showroomID == 1) // Truk
            {
                if(SelectVeh[playerid] > 0) SelectVeh[playerid]--;
                VehicleTruckSelect(playerid);
                PlayerTextDrawSetString(playerid, ShowroomTD[playerid][35],
                    sprintf("%s~n~~g~%s",
                    GetVehicleModelName(TrukShowroom[SelectVeh[playerid]]),
                    FormatMoney(TrukCost(playerid))));
                PlayerTextDrawShow(playerid, ShowroomTD[playerid][35]);
            }
            else if(showroomID == 2) // Suv
            {
                if(SelectVeh[playerid] > 0) SelectVeh[playerid]--;
                VehicleSuvSelect(playerid);
                PlayerTextDrawSetString(playerid, ShowroomTD[playerid][35],
                    sprintf("%s~n~~g~%s",
                    GetVehicleModelName(SuvShowroom[SelectVeh[playerid]]),
                    FormatMoney(SuvCost(playerid))));
                PlayerTextDrawShow(playerid, ShowroomTD[playerid][35]);
            }
            else if(showroomID == 3) // Motor
            {
                if(SelectVeh[playerid] > 0) SelectVeh[playerid]--;
                VehicleMotorSelect(playerid);

                PlayerTextDrawSetString(playerid, ShowroomTD[playerid][35], sprintf("%s~n~~g~%s", GetVehicleModelName(MotorShowroom[SelectVeh[playerid]]), FormatMoney(MotorCost(playerid))));
                PlayerTextDrawShow(playerid, ShowroomTD[playerid][35]);
            }
            else if(showroomID == 4) // Lowrider
            {
                if(SelectVeh[playerid] > 0) SelectVeh[playerid]--;
                VehicleLowriderSelect(playerid);

                PlayerTextDrawSetString(playerid, ShowroomTD[playerid][35], sprintf("%s~n~~g~%s", GetVehicleModelName(ClassicShowroom[SelectVeh[playerid]]), FormatMoney(ClassicCost(playerid))));
                PlayerTextDrawShow(playerid, ShowroomTD[playerid][35]);
            }
            else if(showroomID == 5) // Compact
            {
                if(SelectVeh[playerid] > 0) SelectVeh[playerid]--;
                VehicleCompactSelect(playerid);

                PlayerTextDrawSetString(playerid, ShowroomTD[playerid][35], sprintf("%s~n~~g~%s", GetVehicleModelName(CompactShowroom[SelectVeh[playerid]]), FormatMoney(CompactCost(playerid))));
                PlayerTextDrawShow(playerid, ShowroomTD[playerid][35]);
            }
            else if(showroomID == 6) // Luxury
            {
                if(SelectVeh[playerid] > 0) SelectVeh[playerid]--;
                VehicleLuxurySelect(playerid);

                PlayerTextDrawSetString(playerid, ShowroomTD[playerid][35], sprintf("%s~n~~g~%s", GetVehicleModelName(LuxuryShowroom[SelectVeh[playerid]]), FormatMoney(LuxuryCost(playerid))));
                PlayerTextDrawShow(playerid, ShowroomTD[playerid][35]);
            }
        }
    }
    else if(playertextid == ShowroomTD[playerid][6]) // Merah
    {
        if(Iter_Contains(Vehicle, ShowroomVeh[playerid]))
        {
            ChangeVehicleColor(ShowroomVeh[playerid], 3, 3);
            AccountData[playerid][pTempValue2] = 3;
        }
    }
    else if(playertextid == ShowroomTD[playerid][7]) // putih
    {
        if(Iter_Contains(Vehicle, ShowroomVeh[playerid]))
        {
            ChangeVehicleColor(ShowroomVeh[playerid], 1, 1);
            AccountData[playerid][pTempValue2] = 1;
        }
    }
    else if(playertextid == ShowroomTD[playerid][8]) // kuning
    {
        if(Iter_Contains(Vehicle, ShowroomVeh[playerid]))
        {
            ChangeVehicleColor(ShowroomVeh[playerid], 194, 194);
            AccountData[playerid][pTempValue2] = 194;
        }
    }
    else if(playertextid == ShowroomTD[playerid][9]) // orange
    {
        if(Iter_Contains(Vehicle, ShowroomVeh[playerid]))
        {
            ChangeVehicleColor(ShowroomVeh[playerid], 6, 6);
            AccountData[playerid][pTempValue2] = 6;
        }
    }
    else if(playertextid == ShowroomTD[playerid][10]) // biru tua
    {
        if(Iter_Contains(Vehicle, ShowroomVeh[playerid]))
        {
            ChangeVehicleColor(ShowroomVeh[playerid], 79, 79);
            AccountData[playerid][pTempValue2] = 79;
        }
    }
    else if(playertextid == ShowroomTD[playerid][11]) // biru muda
    {
        if(Iter_Contains(Vehicle, ShowroomVeh[playerid]))
        {
            ChangeVehicleColor(ShowroomVeh[playerid], 2, 2);
            AccountData[playerid][pTempValue2] = 2;
        }
    }
    else if(playertextid == ShowroomTD[playerid][12]) // hijau muda
    {
        if(Iter_Contains(Vehicle, ShowroomVeh[playerid]))
        {
            ChangeVehicleColor(ShowroomVeh[playerid], 154, 154);
            AccountData[playerid][pTempValue2] = 154;
        }
    }
    else if(playertextid == ShowroomTD[playerid][13]) // ungu
    {
        if(Iter_Contains(Vehicle, ShowroomVeh[playerid]))
        {
            ChangeVehicleColor(ShowroomVeh[playerid], 0, 0);
            AccountData[playerid][pTempValue2] = 0;
        }
    }
    else if(playertextid == ShowroomTD[playerid][40]) // Keluar Showroom
    {  
        EnableAntiCheatForPlayer(playerid, 4, true);
        DestroyVehicle(ShowroomVeh[playerid]);
        ShowroomVeh[playerid] = INVALID_VEHICLE_ID;

        SetPlayerPositionEx(playerid, 1177.988, -899.759, 43.374, 265.1649, 1500);
        SetCameraBehindPlayer(playerid);
        SetPlayerVirtualWorld(playerid, 0);
        SetPVarInt(playerid, "SelectShowroomID", 0);
        SelectVeh[playerid] = 0;
        Toggle_ShowroomTD(playerid, false);
        CancelSelectTextDraw(playerid);
    }
    else if(playertextid == ShowroomTD[playerid][39]) // Buy
    {
        if(showroomID != 0)
        {
            if(showroomID == 1) // Truk
            {
                new count = 0, modelid = TrukShowroom[SelectVeh[playerid]], cost = TrukCost(playerid);
                if(modelid <= 0) return ShowTDN(playerid, NOTIFICATION_ERROR, "Model ID Kendaraan tidak valid!");
                if(AccountData[playerid][pMoney] < cost) return ShowTDN(playerid, NOTIFICATION_ERROR, "Uang anda tidak mencukupi!");
                foreach(new iter : PvtVehicles) if (PlayerVehicle[iter][pVehExists])
                {
                    if(PlayerVehicle[iter][pVehOwnerID] == AccountData[playerid][pID])
                    {
                        count ++;
                    }
                }

                if(count >= GetPlayerVehicleLimit(playerid)) return ShowTDN(playerid, NOTIFICATION_WARNING, "Slot kendaraan anda sudah penuh!");
                ShowTDN(playerid, NOTIFICATION_SUKSES, "Pembelian berhasil dilakukan.");
                TakePlayerMoneyEx(playerid, cost);
                ShowroomVehicle_Create(playerid, modelid, 1218.115, -887.210, 42.904, 186.802, AccountData[playerid][pTempValue2], AccountData[playerid][pTempValue2], cost);
                static shstr[128];
                format(shstr, sizeof(shstr), "Membeli kendaraan %s seharga %s", GetVehicleModelName(modelid), FormatMoney(cost));
                AddPMoneyLog(AccountData[playerid][pName], AccountData[playerid][pUCP], shstr, cost);
                
                Toggle_ShowroomTD(playerid, false);
                SetPVarInt(playerid, "SelectShowroomID", 0);
                SelectVeh[playerid] = 0;
            }
            else if(showroomID == 2) // Suv
            {
                new count = 0, modelid = SuvShowroom[SelectVeh[playerid]], cost = SuvCost(playerid);
                if(modelid <= 0) return ShowTDN(playerid, NOTIFICATION_ERROR, "Model ID Kendaraan tidak valid!");
                if(AccountData[playerid][pMoney] < cost) return ShowTDN(playerid, NOTIFICATION_ERROR, "Uang anda tidak mencukupi!");
                foreach(new iter : PvtVehicles) if (PlayerVehicle[iter][pVehExists])
                {
                    if(PlayerVehicle[iter][pVehOwnerID] == AccountData[playerid][pID])
                    {
                        count ++;
                    }
                }

                if(count >= GetPlayerVehicleLimit(playerid)) return ShowTDN(playerid, NOTIFICATION_WARNING, "Slot kendaraan anda sudah penuh!");
                ShowTDN(playerid, NOTIFICATION_SUKSES, "Pembelian berhasil dilakukan.");
                TakePlayerMoneyEx(playerid, cost);
                ShowroomVehicle_Create(playerid, modelid, 1218.115, -887.210, 42.904, 186.802, AccountData[playerid][pTempValue2], AccountData[playerid][pTempValue2], cost);
                static shstr[128];
                format(shstr, sizeof(shstr), "Membeli kendaraan %s seharga %s", GetVehicleModelName(modelid), FormatMoney(cost));
                AddPMoneyLog(AccountData[playerid][pName], AccountData[playerid][pUCP], shstr, cost);
                
                Toggle_ShowroomTD(playerid, false);
                SetPVarInt(playerid, "SelectShowroomID", 0);
                SelectVeh[playerid] = 0;
            }
            else if(showroomID == 3) // Motor
            {
                new count = 0, modelid = MotorShowroom[SelectVeh[playerid]], cost = MotorCost(playerid);
                if(modelid <= 0) return ShowTDN(playerid, NOTIFICATION_ERROR, "Model ID Kendaraan tidak valid!");
                if(AccountData[playerid][pMoney] < cost) return ShowTDN(playerid, NOTIFICATION_ERROR, "Uang anda tidak mencukupi!");
                foreach(new iter : PvtVehicles) if (PlayerVehicle[iter][pVehExists])
                {
                    if(PlayerVehicle[iter][pVehOwnerID] == AccountData[playerid][pID])
                    {
                        count ++;
                    }
                }

                if(count >= GetPlayerVehicleLimit(playerid)) return ShowTDN(playerid, NOTIFICATION_WARNING, "Slot kendaraan anda sudah penuh!");
                ShowTDN(playerid, NOTIFICATION_SUKSES, "Pembelian berhasil dilakukan.");
                TakePlayerMoneyEx(playerid, cost);
                ShowroomVehicle_Create(playerid, modelid, 1218.115, -887.210, 42.904, 186.802, AccountData[playerid][pTempValue2], AccountData[playerid][pTempValue2], cost);
                static shstr[128];
                format(shstr, sizeof(shstr), "Membeli kendaraan %s seharga %s", GetVehicleModelName(modelid), FormatMoney(cost));
                AddPMoneyLog(AccountData[playerid][pName], AccountData[playerid][pUCP], shstr, cost);
                
                Toggle_ShowroomTD(playerid, false);
                SetPVarInt(playerid, "SelectShowroomID", 0);
                SelectVeh[playerid] = 0;
            }
            else if(showroomID == 4) // Low
            {
                new count = 0, modelid = ClassicShowroom[SelectVeh[playerid]], cost = ClassicCost(playerid);
                if(modelid <= 0) return ShowTDN(playerid, NOTIFICATION_ERROR, "Model ID Kendaraan tidak valid!");
                if(AccountData[playerid][pMoney] < cost) return ShowTDN(playerid, NOTIFICATION_ERROR, "Uang anda tidak mencukupi!");
                foreach(new iter : PvtVehicles) if (PlayerVehicle[iter][pVehExists])
                {
                    if(PlayerVehicle[iter][pVehOwnerID] == AccountData[playerid][pID])
                    {
                        count ++;
                    }
                }

                if(count >= GetPlayerVehicleLimit(playerid)) return ShowTDN(playerid, NOTIFICATION_WARNING, "Slot kendaraan anda sudah penuh!");
                ShowTDN(playerid, NOTIFICATION_SUKSES, "Pembelian berhasil dilakukan.");
                TakePlayerMoneyEx(playerid, cost);
                ShowroomVehicle_Create(playerid, modelid, 1218.115, -887.210, 42.904, 186.802, AccountData[playerid][pTempValue2], AccountData[playerid][pTempValue2], cost);
                static shstr[128];
                format(shstr, sizeof(shstr), "Membeli kendaraan %s seharga %s", GetVehicleModelName(modelid), FormatMoney(cost));
                AddPMoneyLog(AccountData[playerid][pName], AccountData[playerid][pUCP], shstr, cost);
                
                Toggle_ShowroomTD(playerid, false);
                SetPVarInt(playerid, "SelectShowroomID", 0);
                SelectVeh[playerid] = 0;
            }
            else if(showroomID == 5) // Compact
            {
                new count = 0, modelid = CompactShowroom[SelectVeh[playerid]], cost = CompactCost(playerid);
                if(modelid <= 0) return ShowTDN(playerid, NOTIFICATION_ERROR, "Model ID Kendaraan tidak valid!");
                if(AccountData[playerid][pMoney] < cost) return ShowTDN(playerid, NOTIFICATION_ERROR, "Uang anda tidak mencukupi!");
                foreach(new iter : PvtVehicles) if (PlayerVehicle[iter][pVehExists])
                {
                    if(PlayerVehicle[iter][pVehOwnerID] == AccountData[playerid][pID])
                    {
                        count ++;
                    }
                }

                if(count >= GetPlayerVehicleLimit(playerid)) return ShowTDN(playerid, NOTIFICATION_WARNING, "Slot kendaraan anda sudah penuh!");
                ShowTDN(playerid, NOTIFICATION_SUKSES, "Pembelian berhasil dilakukan.");
                TakePlayerMoneyEx(playerid, cost);
                ShowroomVehicle_Create(playerid, modelid, 1218.115, -887.210, 42.904, 186.802, AccountData[playerid][pTempValue2], AccountData[playerid][pTempValue2], cost);
                static shstr[128];
                format(shstr, sizeof(shstr), "Membeli kendaraan %s seharga %s", GetVehicleModelName(modelid), FormatMoney(cost));
                AddPMoneyLog(AccountData[playerid][pName], AccountData[playerid][pUCP], shstr, cost);
                
                Toggle_ShowroomTD(playerid, false);
                SetPVarInt(playerid, "SelectShowroomID", 0);
                SelectVeh[playerid] = 0;
            }
            else if(showroomID == 6) // Luxury
            {
                new count = 0, modelid = LuxuryShowroom[SelectVeh[playerid]], cost = LuxuryCost(playerid);
                if(modelid <= 0) return ShowTDN(playerid, NOTIFICATION_ERROR, "Model ID Kendaraan tidak valid!");
                if(AccountData[playerid][pMoney] < cost) return ShowTDN(playerid, NOTIFICATION_ERROR, "Uang anda tidak mencukupi!");
                foreach(new iter : PvtVehicles) if (PlayerVehicle[iter][pVehExists])
                {
                    if(PlayerVehicle[iter][pVehOwnerID] == AccountData[playerid][pID])
                    {
                        count ++;
                    }
                }

                if(count >= GetPlayerVehicleLimit(playerid)) return ShowTDN(playerid, NOTIFICATION_WARNING, "Slot kendaraan anda sudah penuh!");
                ShowTDN(playerid, NOTIFICATION_SUKSES, "Pembelian berhasil dilakukan.");
                TakePlayerMoneyEx(playerid, cost);
                ShowroomVehicle_Create(playerid, modelid, 1218.115, -887.210, 42.904, 186.802, AccountData[playerid][pTempValue2], AccountData[playerid][pTempValue2], cost);
                static shstr[128];
                format(shstr, sizeof(shstr), "Membeli kendaraan %s seharga %s", GetVehicleModelName(modelid), FormatMoney(cost));
                AddPMoneyLog(AccountData[playerid][pName], AccountData[playerid][pUCP], shstr, cost);
                
                Toggle_ShowroomTD(playerid, false);
                SetPVarInt(playerid, "SelectShowroomID", 0);
                SelectVeh[playerid] = 0;
            }
        }
    }
    return 1;
}

ShowroomVehicle_Create(ownerid, modelid, Float:x, Float:y, Float:z, Float:angle, color1, color2, cost)
{
    static vehicleid;
    if ((vehicleid = Iter_Free(PvtVehicles)) != cellmin)
    {
        Iter_Add(PvtVehicles, vehicleid);

        PlayerVehicle[vehicleid][pVehExists] = true;
        PlayerVehicle[vehicleid][pVehModelID] = modelid;
        PlayerVehicle[vehicleid][pVehOwnerID] = AccountData[ownerid][pID];
        format(PlayerVehicle[vehicleid][pVehPlate], 64, "-");

        PlayerVehicle[vehicleid][pVehPos][0] = x;
        PlayerVehicle[vehicleid][pVehPos][1] = y;
        PlayerVehicle[vehicleid][pVehPos][2] = z;
        PlayerVehicle[vehicleid][pVehPos][3] = angle;

        PlayerVehicle[vehicleid][pVehInsuranced] = false;
        PlayerVehicle[vehicleid][pVehImpounded] = false;

        PlayerVehicle[vehicleid][pVehColor1] = color1;
        PlayerVehicle[vehicleid][pVehColor2] = color2;
        PlayerVehicle[vehicleid][pVehPaintjob] = -1;

        PlayerVehicle[vehicleid][pVehLocked] = false;
        PlayerVehicle[vehicleid][pVehFuel] = MAX_FUEL_FULL;
        PlayerVehicle[vehicleid][pVehHealth] = 1000.0;
        PlayerVehicle[vehicleid][pVehRental] = -1;
        PlayerVehicle[vehicleid][pVehRentTime] = 0;
        PlayerVehicle[vehicleid][pVehParked] = -1;
        PlayerVehicle[vehicleid][pVehHouseGarage] = -1;
        PlayerVehicle[vehicleid][pVehHelipadGarage] = -1;
        PlayerVehicle[vehicleid][pVehFamiliesGarage] = -1;
        PlayerVehicle[vehicleid][pVehFactStored] = -1;
        PlayerVehicle[vehicleid][pVehFaction] = FACTION_NONE;

        PlayerVehicle[vehicleid][pVehPrice] = cost;
        PlayerVehicle[vehicleid][pVehNeon] = 0;
        PlayerVehicle[vehicleid][cTogNeon] = 0;
        
        PlayerVehicle[vehicleid][pVehDamage][0] = 0;
        PlayerVehicle[vehicleid][pVehDamage][1] = 0;
        PlayerVehicle[vehicleid][pVehDamage][2] = 0;
        PlayerVehicle[vehicleid][pVehDamage][3] = 0;

        PlayerVehicle[vehicleid][pVehPlateTime] = 0;
        PlayerVehicle[vehicleid][pVehPlateOwn] = 0;
        PlayerVehicle[vehicleid][pVehInterior] = 0;
        PlayerVehicle[vehicleid][pVehWorld] = 0;

        PlayerVehicle[vehicleid][pVehEngineUpgrade] = 0;
        PlayerVehicle[vehicleid][pVehBodyUpgrade] = 0;
        PlayerVehicle[vehicleid][pVehBodyRepair] = 0;
        
        PlayerVehicle[vehicleid][pVehBroken] = 0;

        PlayerVehicle[vehicleid][vehDonation] = 0;
        PlayerVehicle[vehicleid][pVehCapacity] = 0;
        
        PlayerVehicle[vehicleid][pVehWeapon][0] = 0;
        PlayerVehicle[vehicleid][pVehWeapon][1] = 0;
        PlayerVehicle[vehicleid][pVehWeapon][2] = 0;
        PlayerVehicle[vehicleid][pVehAmmo][0] = 0;
        PlayerVehicle[vehicleid][pVehAmmo][1] = 0;
        PlayerVehicle[vehicleid][pVehAmmo][2] = 0;
        PlayerVehicle[vehicleid][pVehDCTime] = 0;

        for(new j = 0; j < 17; j ++) {
            PlayerVehicle[vehicleid][pVehMod][j] = 0;
        }

        PlayerVehicle[vehicleid][pVehPhysic] = CreateVehicle(PlayerVehicle[vehicleid][pVehModelID], PlayerVehicle[vehicleid][pVehPos][0], PlayerVehicle[vehicleid][pVehPos][1], PlayerVehicle[vehicleid][pVehPos][2], PlayerVehicle[vehicleid][pVehPos][3], PlayerVehicle[vehicleid][pVehColor1], PlayerVehicle[vehicleid][pVehColor2], 600000);
        VehicleCore[PlayerVehicle[vehicleid][pVehPhysic]][vCoreFuel] = PlayerVehicle[vehicleid][pVehFuel];
        SetVehicleNumberPlate(PlayerVehicle[vehicleid][pVehPhysic], PlayerVehicle[vehicleid][pVehPlate]);
        SetVehicleVirtualWorld(PlayerVehicle[vehicleid][pVehPhysic], PlayerVehicle[vehicleid][pVehWorld]);
        LinkVehicleToInterior(PlayerVehicle[vehicleid][pVehPhysic], PlayerVehicle[vehicleid][pVehInterior]);

        SetPlayerPositionEx(ownerid, 1218.115, -887.210, 42.904, 186.802, 1000);
        SetPlayerInteriorEx(ownerid, 0);
        SetPlayerVirtualWorldEx(ownerid, 0);
        AccountData[ownerid][pInDoor] = -1;
        AccountData[ownerid][pInHouse] = -1;
        AccountData[ownerid][pInRusun] = -1;
        AccountData[ownerid][pInFamily] = -1;
        AccountData[ownerid][pInBiz] = -1;
        SetCameraBehindPlayer(ownerid);
        CancelSelectTextDraw(ownerid);
        EnableAntiCheatForPlayer(ownerid, 4, true);

        mysql_tquery(g_SQL, "INSERT INTO `player_vehicles` (`PVeh_Faction`) VALUES('0')", "OnVehBuyCreated", "dd", ownerid, vehicleid);
        return vehicleid;
    }
    return -1;
}

/*ShowroomVehicle_Create(ownerid, modelid, Float:x, Float:y, Float:z, Float:angle, color1, color2, cost)
{
    new i = Iter_Free(PvtVehicles);
    if(i == INVALID_ITERATOR_SLOT) return printf("Tidak ada Iterator Free pada PvtVehicles");

    PlayerVehicle[i][pVehExists] = true;
    PlayerVehicle[i][pVehModelID] = modelid;
    PlayerVehicle[i][pVehOwnerID] = AccountData[ownerid][pID];
    format(PlayerVehicle[i][pVehPlate], 64, "-");

	PlayerVehicle[i][pVehPos][0] = x;
	PlayerVehicle[i][pVehPos][1] = y;
	PlayerVehicle[i][pVehPos][2] = z;
	PlayerVehicle[i][pVehPos][3] = angle;

	PlayerVehicle[i][pVehInsuranced] = false;
	PlayerVehicle[i][pVehImpounded] = false;

	PlayerVehicle[i][pVehColor1] = color1;
	PlayerVehicle[i][pVehColor2] = color2;
	PlayerVehicle[i][pVehPaintjob] = -1;

	PlayerVehicle[i][pVehLocked] = false;
	PlayerVehicle[i][pVehFuel] = MAX_FUEL_FULL;
	PlayerVehicle[i][pVehHealth] = 1000.0;
	PlayerVehicle[i][pVehRental] = -1;
	PlayerVehicle[i][pVehRentTime] = 0;
	PlayerVehicle[i][pVehParked] = -1;
	PlayerVehicle[i][pVehHouseGarage] = -1;
    PlayerVehicle[i][pVehHelipadGarage] = -1;
	PlayerVehicle[i][pVehFamiliesGarage] = -1;
	PlayerVehicle[i][pVehFactStored] = -1;
	PlayerVehicle[i][pVehFaction] = FACTION_NONE;

    PlayerVehicle[i][pVehPrice] = cost;
	PlayerVehicle[i][pVehNeon] = 0;
	PlayerVehicle[i][cTogNeon] = 0;
	
	PlayerVehicle[i][pVehDamage][0] = 0;
	PlayerVehicle[i][pVehDamage][1] = 0;
	PlayerVehicle[i][pVehDamage][2] = 0;
	PlayerVehicle[i][pVehDamage][3] = 0;

	PlayerVehicle[i][pVehPlateTime] = 0;
	PlayerVehicle[i][pVehPlateOwn] = 0;
	PlayerVehicle[i][pVehInterior] = 0;
	PlayerVehicle[i][pVehWorld] = 0;

    PlayerVehicle[i][pVehEngineUpgrade] = 0;
	PlayerVehicle[i][pVehBodyUpgrade] = 0;
	PlayerVehicle[i][pVehBodyRepair] = 0;
	
	PlayerVehicle[i][pVehBroken] = 0;

	PlayerVehicle[i][vehDonation] = 0;
	PlayerVehicle[i][pVehCapacity] = 0;
	
	PlayerVehicle[i][pVehWeapon][0] = 0;
	PlayerVehicle[i][pVehWeapon][1] = 0;
	PlayerVehicle[i][pVehWeapon][2] = 0;
	PlayerVehicle[i][pVehAmmo][0] = 0;
	PlayerVehicle[i][pVehAmmo][1] = 0;
	PlayerVehicle[i][pVehAmmo][2] = 0;
    PlayerVehicle[i][pVehDCTime] = 0;

    for(new j = 0; j < 17; j ++) {
        PlayerVehicle[i][pVehMod][j] = 0;
    }

    PlayerVehicle[i][pVehPhysic] = CreateVehicle(PlayerVehicle[i][pVehModelID], PlayerVehicle[i][pVehPos][0], PlayerVehicle[i][pVehPos][1], PlayerVehicle[i][pVehPos][2], PlayerVehicle[i][pVehPos][3], PlayerVehicle[i][pVehColor1], PlayerVehicle[i][pVehColor2], 600000, 0);
    VehicleCore[PlayerVehicle[i][pVehPhysic]][vCoreFuel] = PlayerVehicle[i][pVehFuel];
    SetVehicleNumberPlate(PlayerVehicle[i][pVehPhysic], PlayerVehicle[i][pVehPlate]);
    SetVehicleVirtualWorld(PlayerVehicle[i][pVehPhysic], PlayerVehicle[i][pVehWorld]);
    LinkVehicleToInterior(PlayerVehicle[i][pVehPhysic], PlayerVehicle[i][pVehInterior]);

    SetPlayerPositionEx(ownerid, 1218.115, -887.210, 42.904, 186.802, 1000);
    SetPlayerInteriorEx(ownerid, 0);
    SetPlayerVirtualWorldEx(ownerid, 0);
    AccountData[ownerid][pInDoor] = -1;
    AccountData[ownerid][pInHouse] = -1;
    AccountData[ownerid][pInRusun] = -1;
    AccountData[ownerid][pInFamily] = -1;
    AccountData[ownerid][pInBiz] = -1;
    SetCameraBehindPlayer(ownerid);
    CancelSelectTextDraw(ownerid);
    EnableAntiCheatForPlayer(ownerid, 4, true);

    Iter_Add(PvtVehicles, i);
    
    new cQuery[1048];
    mysql_format(g_SQL, cQuery, sizeof(cQuery), "INSERT INTO `player_vehicles` (`PVeh_OwnerID`, `PVeh_ModelID`, `PVeh_Price`, `PVeh_Fuel`, `PVeh_Health`, `PVeh_Plate`, `PVeh_Parked`, `PVeh_Housed`, `PVeh_Families`, `PVeh_FactionGarage`, `PVeh_Rental`, `PVeh_RentTime`, \
    `PVeh_PosX`, `PVeh_PosY`, `PVeh_PosZ`, `PVeh_PosA`, `PVeh_Color1`, `PVeh_Color2`, `PVeh_Paintjob`, `PVeh_World`, `PVeh_Interior`) VALUES ('%d', '%d', '%d', '%d', '%f', '%s', '%d', '%d', '%d', '%d', '%d', '%d', '%f', '%f', '%f', '%f', '%d', '%d', '%d', '%d', '%d')",
    PlayerVehicle[i][pVehOwnerID], PlayerVehicle[i][pVehModelID], PlayerVehicle[i][pVehPrice], PlayerVehicle[i][pVehFuel], PlayerVehicle[i][pVehHealth], PlayerVehicle[i][pVehPlate], PlayerVehicle[i][pVehParked], PlayerVehicle[i][pVehHouseGarage], PlayerVehicle[i][pVehFamiliesGarage], PlayerVehicle[i][pVehFactStored],
    PlayerVehicle[i][pVehRental], PlayerVehicle[i][pVehRentTime], PlayerVehicle[i][pVehPos][0], PlayerVehicle[i][pVehPos][1], PlayerVehicle[i][pVehPos][2], PlayerVehicle[i][pVehPos][3], PlayerVehicle[i][pVehColor1], PlayerVehicle[i][pVehColor2], PlayerVehicle[i][pVehPaintjob], PlayerVehicle[i][pVehWorld], PlayerVehicle[i][pVehInterior]);
    mysql_tquery(g_SQL, cQuery, "OnVehBuyCreated", "ii", ownerid, i);
    return 1;
}*/