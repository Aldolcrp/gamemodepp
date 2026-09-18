#include <YSI\y_hooks>

new PlayerText: InventoryTD[MAX_PLAYERS][15];
new PlayerText: BoxInv[MAX_PLAYERS][MAX_INVENTORY];
new PlayerText: NameInv[MAX_PLAYERS][MAX_INVENTORY];
new PlayerText: PrevMod[MAX_PLAYERS][MAX_INVENTORY];
new PlayerText: QuantityInv[MAX_PLAYERS][MAX_INVENTORY];
new PlayerText: LineInv[MAX_PLAYERS][MAX_INVENTORY];
new PlayerText: InventoryFIX[MAX_PLAYERS];

new PlayerText:InventoryTD2[MAX_PLAYERS][2];
new PlayerText:BoxInv2[MAX_PLAYERS][MAX_INVENTORY];
new PlayerText:NameInv2[MAX_PLAYERS][MAX_INVENTORY];
new PlayerText:PrevMod2[MAX_PLAYERS][MAX_INVENTORY];
new PlayerText:QuantityInv2[MAX_PLAYERS][MAX_INVENTORY];
new PlayerText:LineInv2[MAX_PLAYERS][MAX_INVENTORY];

CreateInventoryTextdraw(playerid)
{	
	InventoryFIX[playerid] = CreatePlayerTextDraw(playerid, 270.000, 628.000, "Gambar teks baru");
    PlayerTextDrawLetterSize(playerid, InventoryFIX[playerid], 0.300, 1.500);
    PlayerTextDrawAlignment(playerid, InventoryFIX[playerid], 1);
    PlayerTextDrawColor(playerid, InventoryFIX[playerid], -1);
    PlayerTextDrawSetShadow(playerid, InventoryFIX[playerid], 1);
    PlayerTextDrawSetOutline(playerid, InventoryFIX[playerid], 1);
    PlayerTextDrawBackgroundColor(playerid, InventoryFIX[playerid], 150);
    PlayerTextDrawFont(playerid, InventoryFIX[playerid], 1);
    PlayerTextDrawSetProportional(playerid, InventoryFIX[playerid], 1);

	InventoryTD[playerid][0] = CreatePlayerTextDraw(playerid, 319.000, 191.000, "11");
	PlayerTextDrawLetterSize(playerid, InventoryTD[playerid][0], 0.230, 1.199);
	PlayerTextDrawAlignment(playerid, InventoryTD[playerid][0], 2);
	PlayerTextDrawColor(playerid, InventoryTD[playerid][0], -1);
	PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][0], 150);
	PlayerTextDrawFont(playerid, InventoryTD[playerid][0], 1);
	PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][0], 1);

	InventoryTD[playerid][1] = CreatePlayerTextDraw(playerid, 288.000, 180.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, InventoryTD[playerid][1], 63.000, 136.000);
	PlayerTextDrawAlignment(playerid, InventoryTD[playerid][1], 1);
	PlayerTextDrawColor(playerid, InventoryTD[playerid][1], 0x3399FF66);
	PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][1], 255);
	PlayerTextDrawFont(playerid, InventoryTD[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][1], 1);

	InventoryTD[playerid][2] = CreatePlayerTextDraw(playerid, 296.000, 188.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, InventoryTD[playerid][2], 48.000, 19.000);
	PlayerTextDrawAlignment(playerid, InventoryTD[playerid][2], 1);
	PlayerTextDrawColor(playerid, InventoryTD[playerid][2], 0x33CCFFFF);
	PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][2], 255);
	PlayerTextDrawFont(playerid, InventoryTD[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][2], 1);
	PlayerTextDrawSetSelectable(playerid, InventoryTD[playerid][2], 1);

	InventoryTD[playerid][3] = CreatePlayerTextDraw(playerid, 296.000, 212.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, InventoryTD[playerid][3], 48.000, 19.000);
	PlayerTextDrawAlignment(playerid, InventoryTD[playerid][3], 1);
	PlayerTextDrawColor(playerid, InventoryTD[playerid][3], 0x33CCFFFF);
	PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][3], 255);
	PlayerTextDrawFont(playerid, InventoryTD[playerid][3], 4);
	PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][3], 1);
	PlayerTextDrawSetSelectable(playerid, InventoryTD[playerid][3], 1);

	InventoryTD[playerid][4] = CreatePlayerTextDraw(playerid, 296.000, 236.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, InventoryTD[playerid][4], 48.000, 19.000);
	PlayerTextDrawAlignment(playerid, InventoryTD[playerid][4], 1);
	PlayerTextDrawColor(playerid, InventoryTD[playerid][4], 0x33CCFFFF);
	PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][4], 255);
	PlayerTextDrawFont(playerid, InventoryTD[playerid][4], 4);
	PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][4], 1);
	PlayerTextDrawSetSelectable(playerid, InventoryTD[playerid][4], 1);

	InventoryTD[playerid][5] = CreatePlayerTextDraw(playerid, 296.000, 284.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, InventoryTD[playerid][5], 48.000, 19.000);
	PlayerTextDrawAlignment(playerid, InventoryTD[playerid][5], 1);
	PlayerTextDrawColor(playerid, InventoryTD[playerid][5], 0x33CCFFFF);
	PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][5], 255);
	PlayerTextDrawFont(playerid, InventoryTD[playerid][5], 4);
	PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][5], 1);
	PlayerTextDrawSetSelectable(playerid, InventoryTD[playerid][5], 1);

	InventoryTD[playerid][6] = CreatePlayerTextDraw(playerid, 319.000, 215.000, "Use");
	PlayerTextDrawLetterSize(playerid, InventoryTD[playerid][6], 0.230, 1.199);
	PlayerTextDrawAlignment(playerid, InventoryTD[playerid][6], 2);
	PlayerTextDrawColor(playerid, InventoryTD[playerid][6], -1);
	PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][6], 150);
	PlayerTextDrawFont(playerid, InventoryTD[playerid][6], 1);
	PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][6], 1);

	InventoryTD[playerid][7] = CreatePlayerTextDraw(playerid, 319.000, 240.000, "Give");
	PlayerTextDrawLetterSize(playerid, InventoryTD[playerid][7], 0.230, 1.199);
	PlayerTextDrawAlignment(playerid, InventoryTD[playerid][7], 2);
	PlayerTextDrawColor(playerid, InventoryTD[playerid][7], -1);
	PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][7], 150);
	PlayerTextDrawFont(playerid, InventoryTD[playerid][7], 1);
	PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][7], 1);

	InventoryTD[playerid][8] = CreatePlayerTextDraw(playerid, 319.000, 287.000, "Close");
	PlayerTextDrawLetterSize(playerid, InventoryTD[playerid][8], 0.230, 1.199);
	PlayerTextDrawAlignment(playerid, InventoryTD[playerid][8], 2);
	PlayerTextDrawColor(playerid, InventoryTD[playerid][8], -1);
	PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][8], 150);
	PlayerTextDrawFont(playerid, InventoryTD[playerid][8], 1);
	PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][8], 1);

	InventoryTD[playerid][9] = CreatePlayerTextDraw(playerid, 107.000, 106.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, InventoryTD[playerid][9], 174.000, 3.000);
	PlayerTextDrawAlignment(playerid, InventoryTD[playerid][9], 1);
	PlayerTextDrawColor(playerid, InventoryTD[playerid][9], 0x3399FF66);
	PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][9], 255);
	PlayerTextDrawFont(playerid, InventoryTD[playerid][9], 4);
	PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][9], 1);

	InventoryTD[playerid][10] = CreatePlayerTextDraw(playerid, 107.000, 106.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, InventoryTD[playerid][10], 174.000, 3.000);
	PlayerTextDrawAlignment(playerid, InventoryTD[playerid][10], 1);
	PlayerTextDrawColor(playerid, InventoryTD[playerid][10], -1);
	PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][10], 255);
	PlayerTextDrawFont(playerid, InventoryTD[playerid][10], 4);
	PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][10], 1);

	InventoryTD[playerid][11] = CreatePlayerTextDraw(playerid, 108.000, 93.000, "Rayy_Bonelo");
	PlayerTextDrawLetterSize(playerid, InventoryTD[playerid][11], 0.150, 1.199);
	PlayerTextDrawAlignment(playerid, InventoryTD[playerid][11], 1);
	PlayerTextDrawColor(playerid, InventoryTD[playerid][11], -1);
	PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][11], 150);
	PlayerTextDrawFont(playerid, InventoryTD[playerid][11], 1);
	PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][11], 1);

	InventoryTD[playerid][12] = CreatePlayerTextDraw(playerid, 278.000, 93.000, "50/50");
	PlayerTextDrawLetterSize(playerid, InventoryTD[playerid][12], 0.150, 1.199);
	PlayerTextDrawAlignment(playerid, InventoryTD[playerid][12], 3);
	PlayerTextDrawColor(playerid, InventoryTD[playerid][12], -1);
	PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][12], 150);
	PlayerTextDrawFont(playerid, InventoryTD[playerid][12], 1);
	PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][12], 1);

	InventoryTD[playerid][13] = CreatePlayerTextDraw(playerid, 296.000, 260.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, InventoryTD[playerid][13], 48.000, 19.000);
	PlayerTextDrawAlignment(playerid, InventoryTD[playerid][13], 1);
	PlayerTextDrawColor(playerid, InventoryTD[playerid][13], 0x33CCFFFF);
	PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][13], 255);
	PlayerTextDrawFont(playerid, InventoryTD[playerid][13], 4);
	PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][13], 1);
	PlayerTextDrawSetSelectable(playerid, InventoryTD[playerid][13], 1);

	InventoryTD[playerid][14] = CreatePlayerTextDraw(playerid, 319.000, 263.000, "Drop");
	PlayerTextDrawLetterSize(playerid, InventoryTD[playerid][14], 0.230, 1.199);
	PlayerTextDrawAlignment(playerid, InventoryTD[playerid][14], 2);
	PlayerTextDrawColor(playerid, InventoryTD[playerid][14], -1);
	PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][14], 150);
	PlayerTextDrawFont(playerid, InventoryTD[playerid][14], 1);
	PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][14], 1);

	BoxInv[playerid][0] = CreatePlayerTextDraw(playerid, 107.000, 112.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, BoxInv[playerid][0], 42.000, 57.000);
	PlayerTextDrawAlignment(playerid, BoxInv[playerid][0], 1);
	PlayerTextDrawColor(playerid, BoxInv[playerid][0], 0x3399FF66);
	PlayerTextDrawSetShadow(playerid, BoxInv[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, BoxInv[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, BoxInv[playerid][0], 255);
	PlayerTextDrawFont(playerid, BoxInv[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, BoxInv[playerid][0], 1);
	PlayerTextDrawSetSelectable(playerid, BoxInv[playerid][0], 1);

	BoxInv[playerid][1] = CreatePlayerTextDraw(playerid, 151.000, 112.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, BoxInv[playerid][1], 42.000, 57.000);
	PlayerTextDrawAlignment(playerid, BoxInv[playerid][1], 1);
	PlayerTextDrawColor(playerid, BoxInv[playerid][1], 0x3399FF66);
	PlayerTextDrawSetShadow(playerid, BoxInv[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, BoxInv[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, BoxInv[playerid][1], 255);
	PlayerTextDrawFont(playerid, BoxInv[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, BoxInv[playerid][1], 1);
	PlayerTextDrawSetSelectable(playerid, BoxInv[playerid][1], 1);

	BoxInv[playerid][2] = CreatePlayerTextDraw(playerid, 195.000, 112.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, BoxInv[playerid][2], 42.000, 57.000);
	PlayerTextDrawAlignment(playerid, BoxInv[playerid][2], 1);
	PlayerTextDrawColor(playerid, BoxInv[playerid][2], 0x3399FF66);
	PlayerTextDrawSetShadow(playerid, BoxInv[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, BoxInv[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, BoxInv[playerid][2], 255);
	PlayerTextDrawFont(playerid, BoxInv[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, BoxInv[playerid][2], 1);
	PlayerTextDrawSetSelectable(playerid, BoxInv[playerid][2], 1);

	BoxInv[playerid][3] = CreatePlayerTextDraw(playerid, 239.000, 112.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, BoxInv[playerid][3], 42.000, 57.000);
	PlayerTextDrawAlignment(playerid, BoxInv[playerid][3], 1);
	PlayerTextDrawColor(playerid, BoxInv[playerid][3], 0x3399FF66);
	PlayerTextDrawSetShadow(playerid, BoxInv[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, BoxInv[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, BoxInv[playerid][3], 255);
	PlayerTextDrawFont(playerid, BoxInv[playerid][3], 4);
	PlayerTextDrawSetProportional(playerid, BoxInv[playerid][3], 1);
	PlayerTextDrawSetSelectable(playerid, BoxInv[playerid][3], 1);

	BoxInv[playerid][4] = CreatePlayerTextDraw(playerid, 108.000, 177.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, BoxInv[playerid][4], 42.000, 57.000);
	PlayerTextDrawAlignment(playerid, BoxInv[playerid][4], 1);
	PlayerTextDrawColor(playerid, BoxInv[playerid][4], 0x3399FF66);
	PlayerTextDrawSetShadow(playerid, BoxInv[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, BoxInv[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, BoxInv[playerid][4], 255);
	PlayerTextDrawFont(playerid, BoxInv[playerid][4], 4);
	PlayerTextDrawSetProportional(playerid, BoxInv[playerid][4], 1);
	PlayerTextDrawSetSelectable(playerid, BoxInv[playerid][4], 1);

	BoxInv[playerid][5] = CreatePlayerTextDraw(playerid, 152.000, 177.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, BoxInv[playerid][5], 42.000, 57.000);
	PlayerTextDrawAlignment(playerid, BoxInv[playerid][5], 1);
	PlayerTextDrawColor(playerid, BoxInv[playerid][5], 0x3399FF66);
	PlayerTextDrawSetShadow(playerid, BoxInv[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, BoxInv[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, BoxInv[playerid][5], 255);
	PlayerTextDrawFont(playerid, BoxInv[playerid][5], 4);
	PlayerTextDrawSetProportional(playerid, BoxInv[playerid][5], 1);
	PlayerTextDrawSetSelectable(playerid, BoxInv[playerid][5], 1);

	BoxInv[playerid][6] = CreatePlayerTextDraw(playerid, 196.000, 177.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, BoxInv[playerid][6], 42.000, 57.000);
	PlayerTextDrawAlignment(playerid, BoxInv[playerid][6], 1);
	PlayerTextDrawColor(playerid, BoxInv[playerid][6], 0x3399FF66);
	PlayerTextDrawSetShadow(playerid, BoxInv[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, BoxInv[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, BoxInv[playerid][6], 255);
	PlayerTextDrawFont(playerid, BoxInv[playerid][6], 4);
	PlayerTextDrawSetProportional(playerid, BoxInv[playerid][6], 1);
	PlayerTextDrawSetSelectable(playerid, BoxInv[playerid][6], 1);

	BoxInv[playerid][7] = CreatePlayerTextDraw(playerid, 240.000, 177.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, BoxInv[playerid][7], 42.000, 57.000);
	PlayerTextDrawAlignment(playerid, BoxInv[playerid][7], 1);
	PlayerTextDrawColor(playerid, BoxInv[playerid][7], 0x3399FF66);
	PlayerTextDrawSetShadow(playerid, BoxInv[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, BoxInv[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, BoxInv[playerid][7], 255);
	PlayerTextDrawFont(playerid, BoxInv[playerid][7], 4);
	PlayerTextDrawSetProportional(playerid, BoxInv[playerid][7], 1);
	PlayerTextDrawSetSelectable(playerid, BoxInv[playerid][7], 1);

	BoxInv[playerid][8] = CreatePlayerTextDraw(playerid, 109.000, 247.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, BoxInv[playerid][8], 42.000, 57.000);
	PlayerTextDrawAlignment(playerid, BoxInv[playerid][8], 1);
	PlayerTextDrawColor(playerid, BoxInv[playerid][8], 0x3399FF66);
	PlayerTextDrawSetShadow(playerid, BoxInv[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, BoxInv[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, BoxInv[playerid][8], 255);
	PlayerTextDrawFont(playerid, BoxInv[playerid][8], 4);
	PlayerTextDrawSetProportional(playerid, BoxInv[playerid][8], 1);
	PlayerTextDrawSetSelectable(playerid, BoxInv[playerid][8], 1);

	BoxInv[playerid][9] = CreatePlayerTextDraw(playerid, 153.000, 247.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, BoxInv[playerid][9], 42.000, 57.000);
	PlayerTextDrawAlignment(playerid, BoxInv[playerid][9], 1);
	PlayerTextDrawColor(playerid, BoxInv[playerid][9], 0x3399FF66);
	PlayerTextDrawSetShadow(playerid, BoxInv[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, BoxInv[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, BoxInv[playerid][9], 255);
	PlayerTextDrawFont(playerid, BoxInv[playerid][9], 4);
	PlayerTextDrawSetProportional(playerid, BoxInv[playerid][9], 1);
	PlayerTextDrawSetSelectable(playerid, BoxInv[playerid][9], 1);

	BoxInv[playerid][10] = CreatePlayerTextDraw(playerid, 197.000, 247.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, BoxInv[playerid][10], 42.000, 57.000);
	PlayerTextDrawAlignment(playerid, BoxInv[playerid][10], 1);
	PlayerTextDrawColor(playerid, BoxInv[playerid][10], 0x3399FF66);
	PlayerTextDrawSetShadow(playerid, BoxInv[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, BoxInv[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, BoxInv[playerid][10], 255);
	PlayerTextDrawFont(playerid, BoxInv[playerid][10], 4);
	PlayerTextDrawSetProportional(playerid, BoxInv[playerid][10], 1);
	PlayerTextDrawSetSelectable(playerid, BoxInv[playerid][10], 1);

	BoxInv[playerid][11] = CreatePlayerTextDraw(playerid, 241.000, 247.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, BoxInv[playerid][11], 42.000, 57.000);
	PlayerTextDrawAlignment(playerid, BoxInv[playerid][11], 1);
	PlayerTextDrawColor(playerid, BoxInv[playerid][11], 0x3399FF66);
	PlayerTextDrawSetShadow(playerid, BoxInv[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, BoxInv[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, BoxInv[playerid][11], 255);
	PlayerTextDrawFont(playerid, BoxInv[playerid][11], 4);
	PlayerTextDrawSetProportional(playerid, BoxInv[playerid][11], 1);
	PlayerTextDrawSetSelectable(playerid, BoxInv[playerid][11], 1);

	BoxInv[playerid][12] = CreatePlayerTextDraw(playerid, 110.000, 318.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, BoxInv[playerid][12], 42.000, 57.000);
	PlayerTextDrawAlignment(playerid, BoxInv[playerid][12], 1);
	PlayerTextDrawColor(playerid, BoxInv[playerid][12], 0x3399FF66);
	PlayerTextDrawSetShadow(playerid, BoxInv[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, BoxInv[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, BoxInv[playerid][12], 255);
	PlayerTextDrawFont(playerid, BoxInv[playerid][12], 4);
	PlayerTextDrawSetProportional(playerid, BoxInv[playerid][12], 1);
	PlayerTextDrawSetSelectable(playerid, BoxInv[playerid][12], 1);

	BoxInv[playerid][13] = CreatePlayerTextDraw(playerid, 154.000, 318.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, BoxInv[playerid][13], 42.000, 57.000);
	PlayerTextDrawAlignment(playerid, BoxInv[playerid][13], 1);
	PlayerTextDrawColor(playerid, BoxInv[playerid][13], 0x3399FF66);
	PlayerTextDrawSetShadow(playerid, BoxInv[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, BoxInv[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, BoxInv[playerid][13], 255);
	PlayerTextDrawFont(playerid, BoxInv[playerid][13], 4);
	PlayerTextDrawSetProportional(playerid, BoxInv[playerid][13], 1);
	PlayerTextDrawSetSelectable(playerid, BoxInv[playerid][13], 1);

	BoxInv[playerid][14] = CreatePlayerTextDraw(playerid, 198.000, 318.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, BoxInv[playerid][14], 42.000, 57.000);
	PlayerTextDrawAlignment(playerid, BoxInv[playerid][14], 1);
	PlayerTextDrawColor(playerid, BoxInv[playerid][14], 0x3399FF66);
	PlayerTextDrawSetShadow(playerid, BoxInv[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, BoxInv[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, BoxInv[playerid][14], 255);
	PlayerTextDrawFont(playerid, BoxInv[playerid][14], 4);
	PlayerTextDrawSetProportional(playerid, BoxInv[playerid][14], 1);
	PlayerTextDrawSetSelectable(playerid, BoxInv[playerid][14], 1);

	BoxInv[playerid][15] = CreatePlayerTextDraw(playerid, 242.000, 318.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, BoxInv[playerid][15], 42.000, 57.000);
	PlayerTextDrawAlignment(playerid, BoxInv[playerid][15], 1);
	PlayerTextDrawColor(playerid, BoxInv[playerid][15], 0x3399FF66);
	PlayerTextDrawSetShadow(playerid, BoxInv[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, BoxInv[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, BoxInv[playerid][15], 255);
	PlayerTextDrawFont(playerid, BoxInv[playerid][15], 4);
	PlayerTextDrawSetProportional(playerid, BoxInv[playerid][15], 1);
	PlayerTextDrawSetSelectable(playerid, BoxInv[playerid][15], 1);

    PrevMod[playerid][0] = CreatePlayerTextDraw(playerid, 108.000, 117.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod[playerid][0], 40.000, 44.000);
	PlayerTextDrawAlignment(playerid, PrevMod[playerid][0], 1);
	PlayerTextDrawColor(playerid, PrevMod[playerid][0], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][0], 0);
	PlayerTextDrawFont(playerid, PrevMod[playerid][0], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod[playerid][0], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][0], 19568);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod[playerid][0], -18.000, 0.000, -18.000, 1.100);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod[playerid][0], 0, 0);

	PrevMod[playerid][1] = CreatePlayerTextDraw(playerid, 152.000, 117.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod[playerid][1], 40.000, 44.000);
	PlayerTextDrawAlignment(playerid, PrevMod[playerid][1], 1);
	PlayerTextDrawColor(playerid, PrevMod[playerid][1], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][1], 0);
	PlayerTextDrawFont(playerid, PrevMod[playerid][1], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod[playerid][1], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][1], 19568);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod[playerid][1], -18.000, 0.000, -18.000, 1.100);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod[playerid][1], 0, 0);

	PrevMod[playerid][2] = CreatePlayerTextDraw(playerid, 196.000, 117.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod[playerid][2], 40.000, 44.000);
	PlayerTextDrawAlignment(playerid, PrevMod[playerid][2], 1);
	PlayerTextDrawColor(playerid, PrevMod[playerid][2], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][2], 0);
	PlayerTextDrawFont(playerid, PrevMod[playerid][2], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod[playerid][2], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][2], 19568);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod[playerid][2], -18.000, 0.000, -18.000, 1.100);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod[playerid][2], 0, 0);

	PrevMod[playerid][3] = CreatePlayerTextDraw(playerid, 240.000, 117.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod[playerid][3], 40.000, 44.000);
	PlayerTextDrawAlignment(playerid, PrevMod[playerid][3], 1);
	PlayerTextDrawColor(playerid, PrevMod[playerid][3], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][3], 0);
	PlayerTextDrawFont(playerid, PrevMod[playerid][3], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod[playerid][3], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][3], 19568);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod[playerid][3], -18.000, 0.000, -18.000, 1.100);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod[playerid][3], 0, 0);

	PrevMod[playerid][4] = CreatePlayerTextDraw(playerid, 109.000, 182.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod[playerid][4], 40.000, 44.000);
	PlayerTextDrawAlignment(playerid, PrevMod[playerid][4], 1);
	PlayerTextDrawColor(playerid, PrevMod[playerid][4], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][4], 0);
	PlayerTextDrawFont(playerid, PrevMod[playerid][4], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod[playerid][4], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][4], 19568);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod[playerid][4], -18.000, 0.000, -18.000, 1.100);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod[playerid][4], 0, 0);

	PrevMod[playerid][5] = CreatePlayerTextDraw(playerid, 153.000, 182.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod[playerid][5], 40.000, 44.000);
	PlayerTextDrawAlignment(playerid, PrevMod[playerid][5], 1);
	PlayerTextDrawColor(playerid, PrevMod[playerid][5], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][5], 0);
	PlayerTextDrawFont(playerid, PrevMod[playerid][5], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod[playerid][5], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][5], 19568);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod[playerid][5], -18.000, 0.000, -18.000, 1.100);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod[playerid][5], 0, 0);

	PrevMod[playerid][6] = CreatePlayerTextDraw(playerid, 197.000, 182.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod[playerid][6], 40.000, 44.000);
	PlayerTextDrawAlignment(playerid, PrevMod[playerid][6], 1);
	PlayerTextDrawColor(playerid, PrevMod[playerid][6], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][6], 0);
	PlayerTextDrawFont(playerid, PrevMod[playerid][6], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod[playerid][6], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][6], 19568);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod[playerid][6], -18.000, 0.000, -18.000, 1.100);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod[playerid][6], 0, 0);

	PrevMod[playerid][7] = CreatePlayerTextDraw(playerid, 241.000, 182.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod[playerid][7], 40.000, 44.000);
	PlayerTextDrawAlignment(playerid, PrevMod[playerid][7], 1);
	PlayerTextDrawColor(playerid, PrevMod[playerid][7], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][7], 0);
	PlayerTextDrawFont(playerid, PrevMod[playerid][7], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod[playerid][7], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][7], 19568);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod[playerid][7], -18.000, 0.000, -18.000, 1.100);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod[playerid][7], 0, 0);

	PrevMod[playerid][8] = CreatePlayerTextDraw(playerid, 110.000, 253.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod[playerid][8], 40.000, 44.000);
	PlayerTextDrawAlignment(playerid, PrevMod[playerid][8], 1);
	PlayerTextDrawColor(playerid, PrevMod[playerid][8], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][8], 0);
	PlayerTextDrawFont(playerid, PrevMod[playerid][8], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod[playerid][8], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][8], 19568);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod[playerid][8], -18.000, 0.000, -18.000, 1.100);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod[playerid][8], 0, 0);

	PrevMod[playerid][9] = CreatePlayerTextDraw(playerid, 154.000, 253.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod[playerid][9], 40.000, 44.000);
	PlayerTextDrawAlignment(playerid, PrevMod[playerid][9], 1);
	PlayerTextDrawColor(playerid, PrevMod[playerid][9], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][9], 0);
	PlayerTextDrawFont(playerid, PrevMod[playerid][9], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod[playerid][9], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][9], 19568);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod[playerid][9], -18.000, 0.000, -18.000, 1.100);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod[playerid][9], 0, 0);

	PrevMod[playerid][10] = CreatePlayerTextDraw(playerid, 198.000, 253.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod[playerid][10], 40.000, 44.000);
	PlayerTextDrawAlignment(playerid, PrevMod[playerid][10], 1);
	PlayerTextDrawColor(playerid, PrevMod[playerid][10], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][10], 0);
	PlayerTextDrawFont(playerid, PrevMod[playerid][10], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod[playerid][10], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][10], 19568);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod[playerid][10], -18.000, 0.000, -18.000, 1.100);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod[playerid][10], 0, 0);

	PrevMod[playerid][11] = CreatePlayerTextDraw(playerid, 243.000, 253.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod[playerid][11], 40.000, 44.000);
	PlayerTextDrawAlignment(playerid, PrevMod[playerid][11], 1);
	PlayerTextDrawColor(playerid, PrevMod[playerid][11], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][11], 0);
	PlayerTextDrawFont(playerid, PrevMod[playerid][11], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod[playerid][11], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][11], 19568);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod[playerid][11], -18.000, 0.000, -18.000, 1.100);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod[playerid][11], 0, 0);

	PrevMod[playerid][12] = CreatePlayerTextDraw(playerid, 111.000, 323.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod[playerid][12], 40.000, 44.000);
	PlayerTextDrawAlignment(playerid, PrevMod[playerid][12], 1);
	PlayerTextDrawColor(playerid, PrevMod[playerid][12], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][12], 0);
	PlayerTextDrawFont(playerid, PrevMod[playerid][12], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod[playerid][12], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][12], 19568);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod[playerid][12], -18.000, 0.000, -18.000, 1.100);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod[playerid][12], 0, 0);

	PrevMod[playerid][13] = CreatePlayerTextDraw(playerid, 155.000, 323.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod[playerid][13], 40.000, 44.000);
	PlayerTextDrawAlignment(playerid, PrevMod[playerid][13], 1);
	PlayerTextDrawColor(playerid, PrevMod[playerid][13], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][13], 0);
	PlayerTextDrawFont(playerid, PrevMod[playerid][13], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod[playerid][13], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][13], 19568);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod[playerid][13], -18.000, 0.000, -18.000, 1.100);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod[playerid][13], 0, 0);

	PrevMod[playerid][14] = CreatePlayerTextDraw(playerid, 199.000, 323.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod[playerid][14], 40.000, 44.000);
	PlayerTextDrawAlignment(playerid, PrevMod[playerid][14], 1);
	PlayerTextDrawColor(playerid, PrevMod[playerid][14], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][14], 0);
	PlayerTextDrawFont(playerid, PrevMod[playerid][14], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod[playerid][14], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][14], 19568);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod[playerid][14], -18.000, 0.000, -18.000, 1.100);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod[playerid][14], 0, 0);

	PrevMod[playerid][15] = CreatePlayerTextDraw(playerid, 244.000, 323.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod[playerid][15], 40.000, 44.000);
	PlayerTextDrawAlignment(playerid, PrevMod[playerid][15], 1);
	PlayerTextDrawColor(playerid, PrevMod[playerid][15], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][15], 0);
	PlayerTextDrawFont(playerid, PrevMod[playerid][15], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod[playerid][15], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][15], 19568);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod[playerid][15], -18.000, 0.000, -18.000, 1.100);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod[playerid][15], 0, 0);

    NameInv[playerid][0] = CreatePlayerTextDraw(playerid, 109.000, 112.000, "Snack");
	PlayerTextDrawLetterSize(playerid, NameInv[playerid][0], 0.129, 0.999);
	PlayerTextDrawAlignment(playerid, NameInv[playerid][0], 1);
	PlayerTextDrawColor(playerid, NameInv[playerid][0], -1);
	PlayerTextDrawSetShadow(playerid, NameInv[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, NameInv[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv[playerid][0], 150);
	PlayerTextDrawFont(playerid, NameInv[playerid][0], 1);
	PlayerTextDrawSetProportional(playerid, NameInv[playerid][0], 1);

	NameInv[playerid][1] = CreatePlayerTextDraw(playerid, 153.000, 112.000, "Snack");
	PlayerTextDrawLetterSize(playerid, NameInv[playerid][1], 0.129, 0.999);
	PlayerTextDrawAlignment(playerid, NameInv[playerid][1], 1);
	PlayerTextDrawColor(playerid, NameInv[playerid][1], -1);
	PlayerTextDrawSetShadow(playerid, NameInv[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, NameInv[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv[playerid][1], 150);
	PlayerTextDrawFont(playerid, NameInv[playerid][1], 1);
	PlayerTextDrawSetProportional(playerid, NameInv[playerid][1], 1);

	NameInv[playerid][2] = CreatePlayerTextDraw(playerid, 197.000, 112.000, "Snack");
	PlayerTextDrawLetterSize(playerid, NameInv[playerid][2], 0.129, 0.999);
	PlayerTextDrawAlignment(playerid, NameInv[playerid][2], 1);
	PlayerTextDrawColor(playerid, NameInv[playerid][2], -1);
	PlayerTextDrawSetShadow(playerid, NameInv[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, NameInv[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv[playerid][2], 150);
	PlayerTextDrawFont(playerid, NameInv[playerid][2], 1);
	PlayerTextDrawSetProportional(playerid, NameInv[playerid][2], 1);

	NameInv[playerid][3] = CreatePlayerTextDraw(playerid, 241.000, 112.000, "Snack");
	PlayerTextDrawLetterSize(playerid, NameInv[playerid][3], 0.129, 0.999);
	PlayerTextDrawAlignment(playerid, NameInv[playerid][3], 1);
	PlayerTextDrawColor(playerid, NameInv[playerid][3], -1);
	PlayerTextDrawSetShadow(playerid, NameInv[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, NameInv[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv[playerid][3], 150);
	PlayerTextDrawFont(playerid, NameInv[playerid][3], 1);
	PlayerTextDrawSetProportional(playerid, NameInv[playerid][3], 1);

	NameInv[playerid][4] = CreatePlayerTextDraw(playerid, 110.000, 177.000, "Snack");
	PlayerTextDrawLetterSize(playerid, NameInv[playerid][4], 0.129, 0.999);
	PlayerTextDrawAlignment(playerid, NameInv[playerid][4], 1);
	PlayerTextDrawColor(playerid, NameInv[playerid][4], -1);
	PlayerTextDrawSetShadow(playerid, NameInv[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, NameInv[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv[playerid][4], 150);
	PlayerTextDrawFont(playerid, NameInv[playerid][4], 1);
	PlayerTextDrawSetProportional(playerid, NameInv[playerid][4], 1);

	NameInv[playerid][5] = CreatePlayerTextDraw(playerid, 154.000, 177.000, "Snack");
	PlayerTextDrawLetterSize(playerid, NameInv[playerid][5], 0.129, 0.999);
	PlayerTextDrawAlignment(playerid, NameInv[playerid][5], 1);
	PlayerTextDrawColor(playerid, NameInv[playerid][5], -1);
	PlayerTextDrawSetShadow(playerid, NameInv[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, NameInv[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv[playerid][5], 150);
	PlayerTextDrawFont(playerid, NameInv[playerid][5], 1);
	PlayerTextDrawSetProportional(playerid, NameInv[playerid][5], 1);

	NameInv[playerid][6] = CreatePlayerTextDraw(playerid, 198.000, 177.000, "Snack");
	PlayerTextDrawLetterSize(playerid, NameInv[playerid][6], 0.129, 0.999);
	PlayerTextDrawAlignment(playerid, NameInv[playerid][6], 1);
	PlayerTextDrawColor(playerid, NameInv[playerid][6], -1);
	PlayerTextDrawSetShadow(playerid, NameInv[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, NameInv[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv[playerid][6], 150);
	PlayerTextDrawFont(playerid, NameInv[playerid][6], 1);
	PlayerTextDrawSetProportional(playerid, NameInv[playerid][6], 1);

	NameInv[playerid][7] = CreatePlayerTextDraw(playerid, 242.000, 177.000, "Snack");
	PlayerTextDrawLetterSize(playerid, NameInv[playerid][7], 0.129, 0.999);
	PlayerTextDrawAlignment(playerid, NameInv[playerid][7], 1);
	PlayerTextDrawColor(playerid, NameInv[playerid][7], -1);
	PlayerTextDrawSetShadow(playerid, NameInv[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, NameInv[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv[playerid][7], 150);
	PlayerTextDrawFont(playerid, NameInv[playerid][7], 1);
	PlayerTextDrawSetProportional(playerid, NameInv[playerid][7], 1);

	NameInv[playerid][8] = CreatePlayerTextDraw(playerid, 111.000, 247.000, "Snack");
	PlayerTextDrawLetterSize(playerid, NameInv[playerid][8], 0.129, 0.999);
	PlayerTextDrawAlignment(playerid, NameInv[playerid][8], 1);
	PlayerTextDrawColor(playerid, NameInv[playerid][8], -1);
	PlayerTextDrawSetShadow(playerid, NameInv[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, NameInv[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv[playerid][8], 150);
	PlayerTextDrawFont(playerid, NameInv[playerid][8], 1);
	PlayerTextDrawSetProportional(playerid, NameInv[playerid][8], 1);

	NameInv[playerid][9] = CreatePlayerTextDraw(playerid, 155.000, 247.000, "Snack");
	PlayerTextDrawLetterSize(playerid, NameInv[playerid][9], 0.129, 0.999);
	PlayerTextDrawAlignment(playerid, NameInv[playerid][9], 1);
	PlayerTextDrawColor(playerid, NameInv[playerid][9], -1);
	PlayerTextDrawSetShadow(playerid, NameInv[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, NameInv[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv[playerid][9], 150);
	PlayerTextDrawFont(playerid, NameInv[playerid][9], 1);
	PlayerTextDrawSetProportional(playerid, NameInv[playerid][9], 1);

	NameInv[playerid][10] = CreatePlayerTextDraw(playerid, 199.000, 247.000, "Snack");
	PlayerTextDrawLetterSize(playerid, NameInv[playerid][10], 0.129, 0.999);
	PlayerTextDrawAlignment(playerid, NameInv[playerid][10], 1);
	PlayerTextDrawColor(playerid, NameInv[playerid][10], -1);
	PlayerTextDrawSetShadow(playerid, NameInv[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, NameInv[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv[playerid][10], 150);
	PlayerTextDrawFont(playerid, NameInv[playerid][10], 1);
	PlayerTextDrawSetProportional(playerid, NameInv[playerid][10], 1);

	NameInv[playerid][11] = CreatePlayerTextDraw(playerid, 243.000, 247.000, "Snack");
	PlayerTextDrawLetterSize(playerid, NameInv[playerid][11], 0.129, 0.999);
	PlayerTextDrawAlignment(playerid, NameInv[playerid][11], 1);
	PlayerTextDrawColor(playerid, NameInv[playerid][11], -1);
	PlayerTextDrawSetShadow(playerid, NameInv[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, NameInv[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv[playerid][11], 150);
	PlayerTextDrawFont(playerid, NameInv[playerid][11], 1);
	PlayerTextDrawSetProportional(playerid, NameInv[playerid][11], 1);

	NameInv[playerid][12] = CreatePlayerTextDraw(playerid, 112.000, 318.000, "Snack");
	PlayerTextDrawLetterSize(playerid, NameInv[playerid][12], 0.129, 0.999);
	PlayerTextDrawAlignment(playerid, NameInv[playerid][12], 1);
	PlayerTextDrawColor(playerid, NameInv[playerid][12], -1);
	PlayerTextDrawSetShadow(playerid, NameInv[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, NameInv[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv[playerid][12], 150);
	PlayerTextDrawFont(playerid, NameInv[playerid][12], 1);
	PlayerTextDrawSetProportional(playerid, NameInv[playerid][12], 1);

	NameInv[playerid][13] = CreatePlayerTextDraw(playerid, 156.000, 318.000, "Snack");
	PlayerTextDrawLetterSize(playerid, NameInv[playerid][13], 0.129, 0.999);
	PlayerTextDrawAlignment(playerid, NameInv[playerid][13], 1);
	PlayerTextDrawColor(playerid, NameInv[playerid][13], -1);
	PlayerTextDrawSetShadow(playerid, NameInv[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, NameInv[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv[playerid][13], 150);
	PlayerTextDrawFont(playerid, NameInv[playerid][13], 1);
	PlayerTextDrawSetProportional(playerid, NameInv[playerid][13], 1);

	NameInv[playerid][14] = CreatePlayerTextDraw(playerid, 200.000, 318.000, "Snack");
	PlayerTextDrawLetterSize(playerid, NameInv[playerid][14], 0.129, 0.999);
	PlayerTextDrawAlignment(playerid, NameInv[playerid][14], 1);
	PlayerTextDrawColor(playerid, NameInv[playerid][14], -1);
	PlayerTextDrawSetShadow(playerid, NameInv[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, NameInv[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv[playerid][14], 150);
	PlayerTextDrawFont(playerid, NameInv[playerid][14], 1);
	PlayerTextDrawSetProportional(playerid, NameInv[playerid][14], 1);

	NameInv[playerid][15] = CreatePlayerTextDraw(playerid, 244.000, 318.000, "Snack");
	PlayerTextDrawLetterSize(playerid, NameInv[playerid][15], 0.129, 0.999);
	PlayerTextDrawAlignment(playerid, NameInv[playerid][15], 1);
	PlayerTextDrawColor(playerid, NameInv[playerid][15], -1);
	PlayerTextDrawSetShadow(playerid, NameInv[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, NameInv[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv[playerid][15], 150);
	PlayerTextDrawFont(playerid, NameInv[playerid][15], 1);
	PlayerTextDrawSetProportional(playerid, NameInv[playerid][15], 1);

    QuantityInv[playerid][0] = CreatePlayerTextDraw(playerid, 109.000, 157.000, "5x");
	PlayerTextDrawLetterSize(playerid, QuantityInv[playerid][0], 0.129, 0.999);
	PlayerTextDrawAlignment(playerid, QuantityInv[playerid][0], 1);
	PlayerTextDrawColor(playerid, QuantityInv[playerid][0], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv[playerid][0], 150);
	PlayerTextDrawFont(playerid, QuantityInv[playerid][0], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv[playerid][0], 1);

	QuantityInv[playerid][1] = CreatePlayerTextDraw(playerid, 153.000, 157.000, "5x");
	PlayerTextDrawLetterSize(playerid, QuantityInv[playerid][1], 0.129, 0.999);
	PlayerTextDrawAlignment(playerid, QuantityInv[playerid][1], 1);
	PlayerTextDrawColor(playerid, QuantityInv[playerid][1], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv[playerid][1], 150);
	PlayerTextDrawFont(playerid, QuantityInv[playerid][1], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv[playerid][1], 1);

	QuantityInv[playerid][2] = CreatePlayerTextDraw(playerid, 197.000, 157.000, "5x");
	PlayerTextDrawLetterSize(playerid, QuantityInv[playerid][2], 0.129, 0.999);
	PlayerTextDrawAlignment(playerid, QuantityInv[playerid][2], 1);
	PlayerTextDrawColor(playerid, QuantityInv[playerid][2], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv[playerid][2], 150);
	PlayerTextDrawFont(playerid, QuantityInv[playerid][2], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv[playerid][2], 1);

	QuantityInv[playerid][3] = CreatePlayerTextDraw(playerid, 241.000, 157.000, "5x");
	PlayerTextDrawLetterSize(playerid, QuantityInv[playerid][3], 0.129, 0.999);
	PlayerTextDrawAlignment(playerid, QuantityInv[playerid][3], 1);
	PlayerTextDrawColor(playerid, QuantityInv[playerid][3], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv[playerid][3], 150);
	PlayerTextDrawFont(playerid, QuantityInv[playerid][3], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv[playerid][3], 1);

	QuantityInv[playerid][4] = CreatePlayerTextDraw(playerid, 110.000, 224.000, "5x");
	PlayerTextDrawLetterSize(playerid, QuantityInv[playerid][4], 0.129, 0.999);
	PlayerTextDrawAlignment(playerid, QuantityInv[playerid][4], 1);
	PlayerTextDrawColor(playerid, QuantityInv[playerid][4], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv[playerid][4], 150);
	PlayerTextDrawFont(playerid, QuantityInv[playerid][4], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv[playerid][4], 1);

	QuantityInv[playerid][5] = CreatePlayerTextDraw(playerid, 154.000, 224.000, "5x");
	PlayerTextDrawLetterSize(playerid, QuantityInv[playerid][5], 0.129, 0.999);
	PlayerTextDrawAlignment(playerid, QuantityInv[playerid][5], 1);
	PlayerTextDrawColor(playerid, QuantityInv[playerid][5], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv[playerid][5], 150);
	PlayerTextDrawFont(playerid, QuantityInv[playerid][5], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv[playerid][5], 1);

	QuantityInv[playerid][6] = CreatePlayerTextDraw(playerid, 198.000, 224.000, "5x");
	PlayerTextDrawLetterSize(playerid, QuantityInv[playerid][6], 0.129, 0.999);
	PlayerTextDrawAlignment(playerid, QuantityInv[playerid][6], 1);
	PlayerTextDrawColor(playerid, QuantityInv[playerid][6], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv[playerid][6], 150);
	PlayerTextDrawFont(playerid, QuantityInv[playerid][6], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv[playerid][6], 1);

	QuantityInv[playerid][7] = CreatePlayerTextDraw(playerid, 242.000, 224.000, "5x");
	PlayerTextDrawLetterSize(playerid, QuantityInv[playerid][7], 0.129, 0.999);
	PlayerTextDrawAlignment(playerid, QuantityInv[playerid][7], 1);
	PlayerTextDrawColor(playerid, QuantityInv[playerid][7], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv[playerid][7], 150);
	PlayerTextDrawFont(playerid, QuantityInv[playerid][7], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv[playerid][7], 1);

	QuantityInv[playerid][8] = CreatePlayerTextDraw(playerid, 111.000, 294.000, "5x");
	PlayerTextDrawLetterSize(playerid, QuantityInv[playerid][8], 0.129, 0.999);
	PlayerTextDrawAlignment(playerid, QuantityInv[playerid][8], 1);
	PlayerTextDrawColor(playerid, QuantityInv[playerid][8], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv[playerid][8], 150);
	PlayerTextDrawFont(playerid, QuantityInv[playerid][8], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv[playerid][8], 1);

	QuantityInv[playerid][9] = CreatePlayerTextDraw(playerid, 155.000, 294.000, "5x");
	PlayerTextDrawLetterSize(playerid, QuantityInv[playerid][9], 0.129, 0.999);
	PlayerTextDrawAlignment(playerid, QuantityInv[playerid][9], 1);
	PlayerTextDrawColor(playerid, QuantityInv[playerid][9], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv[playerid][9], 150);
	PlayerTextDrawFont(playerid, QuantityInv[playerid][9], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv[playerid][9], 1);

	QuantityInv[playerid][10] = CreatePlayerTextDraw(playerid, 199.000, 294.000, "5x");
	PlayerTextDrawLetterSize(playerid, QuantityInv[playerid][10], 0.129, 0.999);
	PlayerTextDrawAlignment(playerid, QuantityInv[playerid][10], 1);
	PlayerTextDrawColor(playerid, QuantityInv[playerid][10], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv[playerid][10], 150);
	PlayerTextDrawFont(playerid, QuantityInv[playerid][10], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv[playerid][10], 1);

	QuantityInv[playerid][11] = CreatePlayerTextDraw(playerid, 243.000, 294.000, "5x");
	PlayerTextDrawLetterSize(playerid, QuantityInv[playerid][11], 0.129, 0.999);
	PlayerTextDrawAlignment(playerid, QuantityInv[playerid][11], 1);
	PlayerTextDrawColor(playerid, QuantityInv[playerid][11], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv[playerid][11], 150);
	PlayerTextDrawFont(playerid, QuantityInv[playerid][11], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv[playerid][11], 1);

	QuantityInv[playerid][12] = CreatePlayerTextDraw(playerid, 112.000, 365.000, "5x");
	PlayerTextDrawLetterSize(playerid, QuantityInv[playerid][12], 0.129, 0.999);
	PlayerTextDrawAlignment(playerid, QuantityInv[playerid][12], 1);
	PlayerTextDrawColor(playerid, QuantityInv[playerid][12], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv[playerid][12], 150);
	PlayerTextDrawFont(playerid, QuantityInv[playerid][12], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv[playerid][12], 1);

	QuantityInv[playerid][13] = CreatePlayerTextDraw(playerid, 156.000, 365.000, "5x");
	PlayerTextDrawLetterSize(playerid, QuantityInv[playerid][13], 0.129, 0.999);
	PlayerTextDrawAlignment(playerid, QuantityInv[playerid][13], 1);
	PlayerTextDrawColor(playerid, QuantityInv[playerid][13], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv[playerid][13], 150);
	PlayerTextDrawFont(playerid, QuantityInv[playerid][13], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv[playerid][13], 1);

	QuantityInv[playerid][14] = CreatePlayerTextDraw(playerid, 200.000, 365.000, "5x");
	PlayerTextDrawLetterSize(playerid, QuantityInv[playerid][14], 0.129, 0.999);
	PlayerTextDrawAlignment(playerid, QuantityInv[playerid][14], 1);
	PlayerTextDrawColor(playerid, QuantityInv[playerid][14], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv[playerid][14], 150);
	PlayerTextDrawFont(playerid, QuantityInv[playerid][14], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv[playerid][14], 1);

	QuantityInv[playerid][15] = CreatePlayerTextDraw(playerid, 244.000, 365.000, "5x");
	PlayerTextDrawLetterSize(playerid, QuantityInv[playerid][15], 0.129, 0.999);
	PlayerTextDrawAlignment(playerid, QuantityInv[playerid][15], 1);
	PlayerTextDrawColor(playerid, QuantityInv[playerid][15], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv[playerid][15], 150);
	PlayerTextDrawFont(playerid, QuantityInv[playerid][15], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv[playerid][15], 1);

	LineInv[playerid][0] = CreatePlayerTextDraw(playerid, 107.000, 167.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, LineInv[playerid][0], 42.000, 3.000);
	PlayerTextDrawAlignment(playerid, LineInv[playerid][0], 1);
	PlayerTextDrawColor(playerid, LineInv[playerid][0], -1);
	PlayerTextDrawSetShadow(playerid, LineInv[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, LineInv[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, LineInv[playerid][0], 255);
	PlayerTextDrawFont(playerid, LineInv[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, LineInv[playerid][0], 1);

	LineInv[playerid][1] = CreatePlayerTextDraw(playerid, 151.000, 167.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, LineInv[playerid][1], 42.000, 3.000);
	PlayerTextDrawAlignment(playerid, LineInv[playerid][1], 1);
	PlayerTextDrawColor(playerid, LineInv[playerid][1], -1);
	PlayerTextDrawSetShadow(playerid, LineInv[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, LineInv[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, LineInv[playerid][1], 255);
	PlayerTextDrawFont(playerid, LineInv[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, LineInv[playerid][1], 1);

	LineInv[playerid][2] = CreatePlayerTextDraw(playerid, 195.000, 167.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, LineInv[playerid][2], 42.000, 3.000);
	PlayerTextDrawAlignment(playerid, LineInv[playerid][2], 1);
	PlayerTextDrawColor(playerid, LineInv[playerid][2], -1);
	PlayerTextDrawSetShadow(playerid, LineInv[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, LineInv[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, LineInv[playerid][2], 255);
	PlayerTextDrawFont(playerid, LineInv[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, LineInv[playerid][2], 1);

	LineInv[playerid][3] = CreatePlayerTextDraw(playerid, 239.000, 167.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, LineInv[playerid][3], 42.000, 3.000);
	PlayerTextDrawAlignment(playerid, LineInv[playerid][3], 1);
	PlayerTextDrawColor(playerid, LineInv[playerid][3], -1);
	PlayerTextDrawSetShadow(playerid, LineInv[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, LineInv[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, LineInv[playerid][3], 255);
	PlayerTextDrawFont(playerid, LineInv[playerid][3], 4);
	PlayerTextDrawSetProportional(playerid, LineInv[playerid][3], 1);

	LineInv[playerid][4] = CreatePlayerTextDraw(playerid, 108.000, 234.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, LineInv[playerid][4], 42.000, 3.000);
	PlayerTextDrawAlignment(playerid, LineInv[playerid][4], 1);
	PlayerTextDrawColor(playerid, LineInv[playerid][4], -1);
	PlayerTextDrawSetShadow(playerid, LineInv[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, LineInv[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, LineInv[playerid][4], 255);
	PlayerTextDrawFont(playerid, LineInv[playerid][4], 4);
	PlayerTextDrawSetProportional(playerid, LineInv[playerid][4], 1);

	LineInv[playerid][5] = CreatePlayerTextDraw(playerid, 152.000, 234.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, LineInv[playerid][5], 42.000, 3.000);
	PlayerTextDrawAlignment(playerid, LineInv[playerid][5], 1);
	PlayerTextDrawColor(playerid, LineInv[playerid][5], -1);
	PlayerTextDrawSetShadow(playerid, LineInv[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, LineInv[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, LineInv[playerid][5], 255);
	PlayerTextDrawFont(playerid, LineInv[playerid][5], 4);
	PlayerTextDrawSetProportional(playerid, LineInv[playerid][5], 1);

	LineInv[playerid][6] = CreatePlayerTextDraw(playerid, 196.000, 234.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, LineInv[playerid][6], 42.000, 3.000);
	PlayerTextDrawAlignment(playerid, LineInv[playerid][6], 1);
	PlayerTextDrawColor(playerid, LineInv[playerid][6], -1);
	PlayerTextDrawSetShadow(playerid, LineInv[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, LineInv[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, LineInv[playerid][6], 255);
	PlayerTextDrawFont(playerid, LineInv[playerid][6], 4);
	PlayerTextDrawSetProportional(playerid, LineInv[playerid][6], 1);

	LineInv[playerid][7] = CreatePlayerTextDraw(playerid, 240.000, 234.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, LineInv[playerid][7], 42.000, 3.000);
	PlayerTextDrawAlignment(playerid, LineInv[playerid][7], 1);
	PlayerTextDrawColor(playerid, LineInv[playerid][7], -1);
	PlayerTextDrawSetShadow(playerid, LineInv[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, LineInv[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, LineInv[playerid][7], 255);
	PlayerTextDrawFont(playerid, LineInv[playerid][7], 4);
	PlayerTextDrawSetProportional(playerid, LineInv[playerid][7], 1);

	LineInv[playerid][8] = CreatePlayerTextDraw(playerid, 109.000, 304.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, LineInv[playerid][8], 42.000, 3.000);
	PlayerTextDrawAlignment(playerid, LineInv[playerid][8], 1);
	PlayerTextDrawColor(playerid, LineInv[playerid][8], -1);
	PlayerTextDrawSetShadow(playerid, LineInv[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, LineInv[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, LineInv[playerid][8], 255);
	PlayerTextDrawFont(playerid, LineInv[playerid][8], 4);
	PlayerTextDrawSetProportional(playerid, LineInv[playerid][8], 1);

	LineInv[playerid][9] = CreatePlayerTextDraw(playerid, 153.000, 304.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, LineInv[playerid][9], 42.000, 3.000);
	PlayerTextDrawAlignment(playerid, LineInv[playerid][9], 1);
	PlayerTextDrawColor(playerid, LineInv[playerid][9], -1);
	PlayerTextDrawSetShadow(playerid, LineInv[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, LineInv[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, LineInv[playerid][9], 255);
	PlayerTextDrawFont(playerid, LineInv[playerid][9], 4);
	PlayerTextDrawSetProportional(playerid, LineInv[playerid][9], 1);

	LineInv[playerid][10] = CreatePlayerTextDraw(playerid, 197.000, 304.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, LineInv[playerid][10], 42.000, 3.000);
	PlayerTextDrawAlignment(playerid, LineInv[playerid][10], 1);
	PlayerTextDrawColor(playerid, LineInv[playerid][10], -1);
	PlayerTextDrawSetShadow(playerid, LineInv[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, LineInv[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, LineInv[playerid][10], 255);
	PlayerTextDrawFont(playerid, LineInv[playerid][10], 4);
	PlayerTextDrawSetProportional(playerid, LineInv[playerid][10], 1);

	LineInv[playerid][11] = CreatePlayerTextDraw(playerid, 241.000, 304.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, LineInv[playerid][11], 42.000, 3.000);
	PlayerTextDrawAlignment(playerid, LineInv[playerid][11], 1);
	PlayerTextDrawColor(playerid, LineInv[playerid][11], -1);
	PlayerTextDrawSetShadow(playerid, LineInv[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, LineInv[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, LineInv[playerid][11], 255);
	PlayerTextDrawFont(playerid, LineInv[playerid][11], 4);
	PlayerTextDrawSetProportional(playerid, LineInv[playerid][11], 1);

	LineInv[playerid][12] = CreatePlayerTextDraw(playerid, 110.000, 374.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, LineInv[playerid][12], 42.000, 3.000);
	PlayerTextDrawAlignment(playerid, LineInv[playerid][12], 1);
	PlayerTextDrawColor(playerid, LineInv[playerid][12], -1);
	PlayerTextDrawSetShadow(playerid, LineInv[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, LineInv[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, LineInv[playerid][12], 255);
	PlayerTextDrawFont(playerid, LineInv[playerid][12], 4);
	PlayerTextDrawSetProportional(playerid, LineInv[playerid][12], 1);

	LineInv[playerid][13] = CreatePlayerTextDraw(playerid, 154.000, 374.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, LineInv[playerid][13], 42.000, 3.000);
	PlayerTextDrawAlignment(playerid, LineInv[playerid][13], 1);
	PlayerTextDrawColor(playerid, LineInv[playerid][13], -1);
	PlayerTextDrawSetShadow(playerid, LineInv[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, LineInv[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, LineInv[playerid][13], 255);
	PlayerTextDrawFont(playerid, LineInv[playerid][13], 4);
	PlayerTextDrawSetProportional(playerid, LineInv[playerid][13], 1);

	LineInv[playerid][14] = CreatePlayerTextDraw(playerid, 198.000, 374.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, LineInv[playerid][14], 42.000, 3.000);
	PlayerTextDrawAlignment(playerid, LineInv[playerid][14], 1);
	PlayerTextDrawColor(playerid, LineInv[playerid][14], -1);
	PlayerTextDrawSetShadow(playerid, LineInv[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, LineInv[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, LineInv[playerid][14], 255);
	PlayerTextDrawFont(playerid, LineInv[playerid][14], 4);
	PlayerTextDrawSetProportional(playerid, LineInv[playerid][14], 1);

	LineInv[playerid][15] = CreatePlayerTextDraw(playerid, 243.000, 374.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, LineInv[playerid][15], 42.000, 3.000);
	PlayerTextDrawAlignment(playerid, LineInv[playerid][15], 1);
	PlayerTextDrawColor(playerid, LineInv[playerid][15], -1);
	PlayerTextDrawSetShadow(playerid, LineInv[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, LineInv[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, LineInv[playerid][15], 255);
	PlayerTextDrawFont(playerid, LineInv[playerid][15], 4);
	PlayerTextDrawSetProportional(playerid, LineInv[playerid][15], 1);

	InventoryTD2[playerid][0] = CreatePlayerTextDraw(playerid, 357.000, 106.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, InventoryTD2[playerid][0], 174.000, 3.000);
	PlayerTextDrawAlignment(playerid, InventoryTD2[playerid][0], 1);
	PlayerTextDrawColor(playerid, InventoryTD2[playerid][0], -1);
	PlayerTextDrawSetShadow(playerid, InventoryTD2[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, InventoryTD2[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD2[playerid][0], 255);
	PlayerTextDrawFont(playerid, InventoryTD2[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, InventoryTD2[playerid][0], 1);

	InventoryTD2[playerid][1] = CreatePlayerTextDraw(playerid, 358.000, 93.000, "Warung");
	PlayerTextDrawLetterSize(playerid, InventoryTD2[playerid][1], 0.150, 1.199);
	PlayerTextDrawAlignment(playerid, InventoryTD2[playerid][1], 1);
	PlayerTextDrawColor(playerid, InventoryTD2[playerid][1], -1);
	PlayerTextDrawSetShadow(playerid, InventoryTD2[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, InventoryTD2[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD2[playerid][1], 150);
	PlayerTextDrawFont(playerid, InventoryTD2[playerid][1], 1);
	PlayerTextDrawSetProportional(playerid, InventoryTD2[playerid][1], 1);

    BoxInv2[playerid][0] = CreatePlayerTextDraw(playerid, 357.000, 112.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, BoxInv2[playerid][0], 42.000, 50.000);
	PlayerTextDrawAlignment(playerid, BoxInv2[playerid][0], 1);
	PlayerTextDrawColor(playerid, BoxInv2[playerid][0], 0x3399FF66);
	PlayerTextDrawSetShadow(playerid, BoxInv2[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, BoxInv2[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, BoxInv2[playerid][0], 255);
	PlayerTextDrawFont(playerid, BoxInv2[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, BoxInv2[playerid][0], 1);
	PlayerTextDrawSetSelectable(playerid, BoxInv2[playerid][0], 1);

	BoxInv2[playerid][1] = CreatePlayerTextDraw(playerid, 401.000, 112.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, BoxInv2[playerid][1], 42.000, 50.000);
	PlayerTextDrawAlignment(playerid, BoxInv2[playerid][1], 1);
	PlayerTextDrawColor(playerid, BoxInv2[playerid][1], 0x3399FF66);
	PlayerTextDrawSetShadow(playerid, BoxInv2[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, BoxInv2[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, BoxInv2[playerid][1], 255);
	PlayerTextDrawFont(playerid, BoxInv2[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, BoxInv2[playerid][1], 1);
	PlayerTextDrawSetSelectable(playerid, BoxInv2[playerid][1], 1);

	BoxInv2[playerid][2] = CreatePlayerTextDraw(playerid, 445.000, 112.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, BoxInv2[playerid][2], 42.000, 50.000);
	PlayerTextDrawAlignment(playerid, BoxInv2[playerid][2], 1);
	PlayerTextDrawColor(playerid, BoxInv2[playerid][2], 0x3399FF66);
	PlayerTextDrawSetShadow(playerid, BoxInv2[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, BoxInv2[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, BoxInv2[playerid][2], 255);
	PlayerTextDrawFont(playerid, BoxInv2[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, BoxInv2[playerid][2], 1);
	PlayerTextDrawSetSelectable(playerid, BoxInv2[playerid][2], 1);

	BoxInv2[playerid][3] = CreatePlayerTextDraw(playerid, 489.000, 112.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, BoxInv2[playerid][3], 42.000, 50.000);
	PlayerTextDrawAlignment(playerid, BoxInv2[playerid][3], 1);
	PlayerTextDrawColor(playerid, BoxInv2[playerid][3], 0x3399FF66);
	PlayerTextDrawSetShadow(playerid, BoxInv2[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, BoxInv2[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, BoxInv2[playerid][3], 255);
	PlayerTextDrawFont(playerid, BoxInv2[playerid][3], 4);
	PlayerTextDrawSetProportional(playerid, BoxInv2[playerid][3], 1);
	PlayerTextDrawSetSelectable(playerid, BoxInv2[playerid][3], 1);

	BoxInv2[playerid][4] = CreatePlayerTextDraw(playerid, 357.000, 170.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, BoxInv2[playerid][4], 42.000, 50.000);
	PlayerTextDrawAlignment(playerid, BoxInv2[playerid][4], 1);
	PlayerTextDrawColor(playerid, BoxInv2[playerid][4], 0x3399FF66);
	PlayerTextDrawSetShadow(playerid, BoxInv2[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, BoxInv2[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, BoxInv2[playerid][4], 255);
	PlayerTextDrawFont(playerid, BoxInv2[playerid][4], 4);
	PlayerTextDrawSetProportional(playerid, BoxInv2[playerid][4], 1);
	PlayerTextDrawSetSelectable(playerid, BoxInv2[playerid][4], 1);

	BoxInv2[playerid][5] = CreatePlayerTextDraw(playerid, 401.000, 170.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, BoxInv2[playerid][5], 42.000, 50.000);
	PlayerTextDrawAlignment(playerid, BoxInv2[playerid][5], 1);
	PlayerTextDrawColor(playerid, BoxInv2[playerid][5], 0x3399FF66);
	PlayerTextDrawSetShadow(playerid, BoxInv2[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, BoxInv2[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, BoxInv2[playerid][5], 255);
	PlayerTextDrawFont(playerid, BoxInv2[playerid][5], 4);
	PlayerTextDrawSetProportional(playerid, BoxInv2[playerid][5], 1);
	PlayerTextDrawSetSelectable(playerid, BoxInv2[playerid][5], 1);

	BoxInv2[playerid][6] = CreatePlayerTextDraw(playerid, 445.000, 170.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, BoxInv2[playerid][6], 42.000, 50.000);
	PlayerTextDrawAlignment(playerid, BoxInv2[playerid][6], 1);
	PlayerTextDrawColor(playerid, BoxInv2[playerid][6], 0x3399FF66);
	PlayerTextDrawSetShadow(playerid, BoxInv2[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, BoxInv2[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, BoxInv2[playerid][6], 255);
	PlayerTextDrawFont(playerid, BoxInv2[playerid][6], 4);
	PlayerTextDrawSetProportional(playerid, BoxInv2[playerid][6], 1);
	PlayerTextDrawSetSelectable(playerid, BoxInv2[playerid][6], 1);

	BoxInv2[playerid][7] = CreatePlayerTextDraw(playerid, 489.000, 170.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, BoxInv2[playerid][7], 42.000, 50.000);
	PlayerTextDrawAlignment(playerid, BoxInv2[playerid][7], 1);
	PlayerTextDrawColor(playerid, BoxInv2[playerid][7], 0x3399FF66);
	PlayerTextDrawSetShadow(playerid, BoxInv2[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, BoxInv2[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, BoxInv2[playerid][7], 255);
	PlayerTextDrawFont(playerid, BoxInv2[playerid][7], 4);
	PlayerTextDrawSetProportional(playerid, BoxInv2[playerid][7], 1);
	PlayerTextDrawSetSelectable(playerid, BoxInv2[playerid][7], 1);

	BoxInv2[playerid][8] = CreatePlayerTextDraw(playerid, 357.000, 229.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, BoxInv2[playerid][8], 42.000, 50.000);
	PlayerTextDrawAlignment(playerid, BoxInv2[playerid][8], 1);
	PlayerTextDrawColor(playerid, BoxInv2[playerid][8], 0x3399FF66);
	PlayerTextDrawSetShadow(playerid, BoxInv2[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, BoxInv2[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, BoxInv2[playerid][8], 255);
	PlayerTextDrawFont(playerid, BoxInv2[playerid][8], 4);
	PlayerTextDrawSetProportional(playerid, BoxInv2[playerid][8], 1);
	PlayerTextDrawSetSelectable(playerid, BoxInv2[playerid][8], 1);

	BoxInv2[playerid][9] = CreatePlayerTextDraw(playerid, 401.000, 229.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, BoxInv2[playerid][9], 42.000, 50.000);
	PlayerTextDrawAlignment(playerid, BoxInv2[playerid][9], 1);
	PlayerTextDrawColor(playerid, BoxInv2[playerid][9], 0x3399FF66);
	PlayerTextDrawSetShadow(playerid, BoxInv2[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, BoxInv2[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, BoxInv2[playerid][9], 255);
	PlayerTextDrawFont(playerid, BoxInv2[playerid][9], 4);
	PlayerTextDrawSetProportional(playerid, BoxInv2[playerid][9], 1);
	PlayerTextDrawSetSelectable(playerid, BoxInv2[playerid][9], 1);

	BoxInv2[playerid][10] = CreatePlayerTextDraw(playerid, 445.000, 229.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, BoxInv2[playerid][10], 42.000, 50.000);
	PlayerTextDrawAlignment(playerid, BoxInv2[playerid][10], 1);
	PlayerTextDrawColor(playerid, BoxInv2[playerid][10], 0x3399FF66);
	PlayerTextDrawSetShadow(playerid, BoxInv2[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, BoxInv2[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, BoxInv2[playerid][10], 255);
	PlayerTextDrawFont(playerid, BoxInv2[playerid][10], 4);
	PlayerTextDrawSetProportional(playerid, BoxInv2[playerid][10], 1);
	PlayerTextDrawSetSelectable(playerid, BoxInv2[playerid][10], 1);

	BoxInv2[playerid][11] = CreatePlayerTextDraw(playerid, 489.000, 229.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, BoxInv2[playerid][11], 42.000, 50.000);
	PlayerTextDrawAlignment(playerid, BoxInv2[playerid][11], 1);
	PlayerTextDrawColor(playerid, BoxInv2[playerid][11], 0x3399FF66);
	PlayerTextDrawSetShadow(playerid, BoxInv2[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, BoxInv2[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, BoxInv2[playerid][11], 255);
	PlayerTextDrawFont(playerid, BoxInv2[playerid][11], 4);
	PlayerTextDrawSetProportional(playerid, BoxInv2[playerid][11], 1);
	PlayerTextDrawSetSelectable(playerid, BoxInv2[playerid][11], 1);

	BoxInv2[playerid][12] = CreatePlayerTextDraw(playerid, 357.000, 289.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, BoxInv2[playerid][12], 42.000, 50.000);
	PlayerTextDrawAlignment(playerid, BoxInv2[playerid][12], 1);
	PlayerTextDrawColor(playerid, BoxInv2[playerid][12], 0x3399FF66);
	PlayerTextDrawSetShadow(playerid, BoxInv2[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, BoxInv2[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, BoxInv2[playerid][12], 255);
	PlayerTextDrawFont(playerid, BoxInv2[playerid][12], 4);
	PlayerTextDrawSetProportional(playerid, BoxInv2[playerid][12], 1);
	PlayerTextDrawSetSelectable(playerid, BoxInv2[playerid][12], 1);

	BoxInv2[playerid][13] = CreatePlayerTextDraw(playerid, 401.000, 289.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, BoxInv2[playerid][13], 42.000, 50.000);
	PlayerTextDrawAlignment(playerid, BoxInv2[playerid][13], 1);
	PlayerTextDrawColor(playerid, BoxInv2[playerid][13], 0x3399FF66);
	PlayerTextDrawSetShadow(playerid, BoxInv2[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, BoxInv2[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, BoxInv2[playerid][13], 255);
	PlayerTextDrawFont(playerid, BoxInv2[playerid][13], 4);
	PlayerTextDrawSetProportional(playerid, BoxInv2[playerid][13], 1);
	PlayerTextDrawSetSelectable(playerid, BoxInv2[playerid][13], 1);

	BoxInv2[playerid][14] = CreatePlayerTextDraw(playerid, 445.000, 289.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, BoxInv2[playerid][14], 42.000, 50.000);
	PlayerTextDrawAlignment(playerid, BoxInv2[playerid][14], 1);
	PlayerTextDrawColor(playerid, BoxInv2[playerid][14], 0x3399FF66);
	PlayerTextDrawSetShadow(playerid, BoxInv2[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, BoxInv2[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, BoxInv2[playerid][14], 255);
	PlayerTextDrawFont(playerid, BoxInv2[playerid][14], 4);
	PlayerTextDrawSetProportional(playerid, BoxInv2[playerid][14], 1);
	PlayerTextDrawSetSelectable(playerid, BoxInv2[playerid][14], 1);

	BoxInv2[playerid][15] = CreatePlayerTextDraw(playerid, 489.000, 289.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, BoxInv2[playerid][15], 42.000, 50.000);
	PlayerTextDrawAlignment(playerid, BoxInv2[playerid][15], 1);
	PlayerTextDrawColor(playerid, BoxInv2[playerid][15], 0x3399FF66);
	PlayerTextDrawSetShadow(playerid, BoxInv2[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, BoxInv2[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, BoxInv2[playerid][15], 255);
	PlayerTextDrawFont(playerid, BoxInv2[playerid][15], 4);
	PlayerTextDrawSetProportional(playerid, BoxInv2[playerid][15], 1);
	PlayerTextDrawSetSelectable(playerid, BoxInv2[playerid][15], 1);

    PrevMod2[playerid][0] = CreatePlayerTextDraw(playerid, 359.000, 114.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod2[playerid][0], 38.000, 45.000);
	PlayerTextDrawAlignment(playerid, PrevMod2[playerid][0], 1);
	PlayerTextDrawColor(playerid, PrevMod2[playerid][0], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod2[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod2[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod2[playerid][0], 0);
	PlayerTextDrawFont(playerid, PrevMod2[playerid][0], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod2[playerid][0], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod2[playerid][0], 19568);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod2[playerid][0], -18.000, 0.000, -18.000, 1.100);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod2[playerid][0], 0, 0);

	PrevMod2[playerid][1] = CreatePlayerTextDraw(playerid, 402.000, 114.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod2[playerid][1], 38.000, 45.000);
	PlayerTextDrawAlignment(playerid, PrevMod2[playerid][1], 1);
	PlayerTextDrawColor(playerid, PrevMod2[playerid][1], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod2[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod2[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod2[playerid][1], 0);
	PlayerTextDrawFont(playerid, PrevMod2[playerid][1], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod2[playerid][1], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod2[playerid][1], 19568);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod2[playerid][1], -18.000, 0.000, -18.000, 1.100);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod2[playerid][1], 0, 0);

	PrevMod2[playerid][2] = CreatePlayerTextDraw(playerid, 447.000, 114.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod2[playerid][2], 38.000, 45.000);
	PlayerTextDrawAlignment(playerid, PrevMod2[playerid][2], 1);
	PlayerTextDrawColor(playerid, PrevMod2[playerid][2], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod2[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod2[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod2[playerid][2], 0);
	PlayerTextDrawFont(playerid, PrevMod2[playerid][2], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod2[playerid][2], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod2[playerid][2], 19568);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod2[playerid][2], -18.000, 0.000, -18.000, 1.100);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod2[playerid][2], 0, 0);

	PrevMod2[playerid][3] = CreatePlayerTextDraw(playerid, 491.000, 114.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod2[playerid][3], 38.000, 45.000);
	PlayerTextDrawAlignment(playerid, PrevMod2[playerid][3], 1);
	PlayerTextDrawColor(playerid, PrevMod2[playerid][3], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod2[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod2[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod2[playerid][3], 0);
	PlayerTextDrawFont(playerid, PrevMod2[playerid][3], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod2[playerid][3], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod2[playerid][3], 19568);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod2[playerid][3], -18.000, 0.000, -18.000, 1.100);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod2[playerid][3], 0, 0);

	PrevMod2[playerid][4] = CreatePlayerTextDraw(playerid, 359.000, 172.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod2[playerid][4], 38.000, 45.000);
	PlayerTextDrawAlignment(playerid, PrevMod2[playerid][4], 1);
	PlayerTextDrawColor(playerid, PrevMod2[playerid][4], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod2[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod2[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod2[playerid][4], 0);
	PlayerTextDrawFont(playerid, PrevMod2[playerid][4], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod2[playerid][4], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod2[playerid][4], 19568);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod2[playerid][4], -18.000, 0.000, -18.000, 1.100);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod2[playerid][4], 0, 0);

	PrevMod2[playerid][5] = CreatePlayerTextDraw(playerid, 403.000, 172.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod2[playerid][5], 38.000, 45.000);
	PlayerTextDrawAlignment(playerid, PrevMod2[playerid][5], 1);
	PlayerTextDrawColor(playerid, PrevMod2[playerid][5], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod2[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod2[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod2[playerid][5], 0);
	PlayerTextDrawFont(playerid, PrevMod2[playerid][5], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod2[playerid][5], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod2[playerid][5], 19568);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod2[playerid][5], -18.000, 0.000, -18.000, 1.100);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod2[playerid][5], 0, 0);

	PrevMod2[playerid][6] = CreatePlayerTextDraw(playerid, 447.000, 172.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod2[playerid][6], 38.000, 45.000);
	PlayerTextDrawAlignment(playerid, PrevMod2[playerid][6], 1);
	PlayerTextDrawColor(playerid, PrevMod2[playerid][6], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod2[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod2[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod2[playerid][6], 0);
	PlayerTextDrawFont(playerid, PrevMod2[playerid][6], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod2[playerid][6], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod2[playerid][6], 19568);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod2[playerid][6], -18.000, 0.000, -18.000, 1.100);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod2[playerid][6], 0, 0);

	PrevMod2[playerid][7] = CreatePlayerTextDraw(playerid, 491.000, 172.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod2[playerid][7], 38.000, 45.000);
	PlayerTextDrawAlignment(playerid, PrevMod2[playerid][7], 1);
	PlayerTextDrawColor(playerid, PrevMod2[playerid][7], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod2[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod2[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod2[playerid][7], 0);
	PlayerTextDrawFont(playerid, PrevMod2[playerid][7], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod2[playerid][7], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod2[playerid][7], 19568);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod2[playerid][7], -18.000, 0.000, -18.000, 1.100);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod2[playerid][7], 0, 0);

	PrevMod2[playerid][8] = CreatePlayerTextDraw(playerid, 359.000, 232.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod2[playerid][8], 38.000, 45.000);
	PlayerTextDrawAlignment(playerid, PrevMod2[playerid][8], 1);
	PlayerTextDrawColor(playerid, PrevMod2[playerid][8], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod2[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod2[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod2[playerid][8], 0);
	PlayerTextDrawFont(playerid, PrevMod2[playerid][8], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod2[playerid][8], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod2[playerid][8], 19568);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod2[playerid][8], -18.000, 0.000, -18.000, 1.100);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod2[playerid][8], 0, 0);

	PrevMod2[playerid][9] = CreatePlayerTextDraw(playerid, 403.000, 232.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod2[playerid][9], 38.000, 45.000);
	PlayerTextDrawAlignment(playerid, PrevMod2[playerid][9], 1);
	PlayerTextDrawColor(playerid, PrevMod2[playerid][9], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod2[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod2[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod2[playerid][9], 0);
	PlayerTextDrawFont(playerid, PrevMod2[playerid][9], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod2[playerid][9], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod2[playerid][9], 19568);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod2[playerid][9], -18.000, 0.000, -18.000, 1.100);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod2[playerid][9], 0, 0);

	PrevMod2[playerid][10] = CreatePlayerTextDraw(playerid, 447.000, 232.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod2[playerid][10], 38.000, 45.000);
	PlayerTextDrawAlignment(playerid, PrevMod2[playerid][10], 1);
	PlayerTextDrawColor(playerid, PrevMod2[playerid][10], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod2[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod2[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod2[playerid][10], 0);
	PlayerTextDrawFont(playerid, PrevMod2[playerid][10], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod2[playerid][10], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod2[playerid][10], 19568);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod2[playerid][10], -18.000, 0.000, -18.000, 1.100);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod2[playerid][10], 0, 0);

	PrevMod2[playerid][11] = CreatePlayerTextDraw(playerid, 491.000, 232.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod2[playerid][11], 38.000, 45.000);
	PlayerTextDrawAlignment(playerid, PrevMod2[playerid][11], 1);
	PlayerTextDrawColor(playerid, PrevMod2[playerid][11], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod2[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod2[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod2[playerid][11], 0);
	PlayerTextDrawFont(playerid, PrevMod2[playerid][11], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod2[playerid][11], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod2[playerid][11], 19568);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod2[playerid][11], -18.000, 0.000, -18.000, 1.100);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod2[playerid][11], 0, 0);

	PrevMod2[playerid][12] = CreatePlayerTextDraw(playerid, 359.000, 292.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod2[playerid][12], 38.000, 45.000);
	PlayerTextDrawAlignment(playerid, PrevMod2[playerid][12], 1);
	PlayerTextDrawColor(playerid, PrevMod2[playerid][12], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod2[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod2[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod2[playerid][12], 0);
	PlayerTextDrawFont(playerid, PrevMod2[playerid][12], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod2[playerid][12], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod2[playerid][12], 19568);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod2[playerid][12], -18.000, 0.000, -18.000, 1.100);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod2[playerid][12], 0, 0);

	PrevMod2[playerid][13] = CreatePlayerTextDraw(playerid, 403.000, 292.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod2[playerid][13], 38.000, 45.000);
	PlayerTextDrawAlignment(playerid, PrevMod2[playerid][13], 1);
	PlayerTextDrawColor(playerid, PrevMod2[playerid][13], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod2[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod2[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod2[playerid][13], 0);
	PlayerTextDrawFont(playerid, PrevMod2[playerid][13], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod2[playerid][13], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod2[playerid][13], 19568);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod2[playerid][13], -18.000, 0.000, -18.000, 1.100);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod2[playerid][13], 0, 0);

	PrevMod2[playerid][14] = CreatePlayerTextDraw(playerid, 447.000, 292.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod2[playerid][14], 38.000, 45.000);
	PlayerTextDrawAlignment(playerid, PrevMod2[playerid][14], 1);
	PlayerTextDrawColor(playerid, PrevMod2[playerid][14], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod2[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod2[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod2[playerid][14], 0);
	PlayerTextDrawFont(playerid, PrevMod2[playerid][14], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod2[playerid][14], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod2[playerid][14], 19568);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod2[playerid][14], -18.000, 0.000, -18.000, 1.100);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod2[playerid][14], 0, 0);

	PrevMod2[playerid][15] = CreatePlayerTextDraw(playerid, 491.000, 292.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod2[playerid][15], 38.000, 45.000);
	PlayerTextDrawAlignment(playerid, PrevMod2[playerid][15], 1);
	PlayerTextDrawColor(playerid, PrevMod2[playerid][15], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod2[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod2[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod2[playerid][15], 0);
	PlayerTextDrawFont(playerid, PrevMod2[playerid][15], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod2[playerid][15], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod2[playerid][15], 19568);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod2[playerid][15], -18.000, 0.000, -18.000, 1.100);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod2[playerid][15], 0, 0);

    NameInv2[playerid][0] = CreatePlayerTextDraw(playerid, 358.000, 111.000, "Nasi Uduk");
	PlayerTextDrawLetterSize(playerid, NameInv2[playerid][0], 0.170, 0.900);
	PlayerTextDrawAlignment(playerid, NameInv2[playerid][0], 1);
	PlayerTextDrawColor(playerid, NameInv2[playerid][0], -1);
	PlayerTextDrawSetShadow(playerid, NameInv2[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, NameInv2[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv2[playerid][0], 150);
	PlayerTextDrawFont(playerid, NameInv2[playerid][0], 1);
	PlayerTextDrawSetProportional(playerid, NameInv2[playerid][0], 1);

	NameInv2[playerid][1] = CreatePlayerTextDraw(playerid, 402.000, 111.000, "Nasi Uduk");
	PlayerTextDrawLetterSize(playerid, NameInv2[playerid][1], 0.170, 0.900);
	PlayerTextDrawAlignment(playerid, NameInv2[playerid][1], 1);
	PlayerTextDrawColor(playerid, NameInv2[playerid][1], -1);
	PlayerTextDrawSetShadow(playerid, NameInv2[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, NameInv2[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv2[playerid][1], 150);
	PlayerTextDrawFont(playerid, NameInv2[playerid][1], 1);
	PlayerTextDrawSetProportional(playerid, NameInv2[playerid][1], 1);

	NameInv2[playerid][2] = CreatePlayerTextDraw(playerid, 446.000, 111.000, "Nasi Uduk");
	PlayerTextDrawLetterSize(playerid, NameInv2[playerid][2], 0.170, 0.900);
	PlayerTextDrawAlignment(playerid, NameInv2[playerid][2], 1);
	PlayerTextDrawColor(playerid, NameInv2[playerid][2], -1);
	PlayerTextDrawSetShadow(playerid, NameInv2[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, NameInv2[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv2[playerid][2], 150);
	PlayerTextDrawFont(playerid, NameInv2[playerid][2], 1);
	PlayerTextDrawSetProportional(playerid, NameInv2[playerid][2], 1);

	NameInv2[playerid][3] = CreatePlayerTextDraw(playerid, 490.000, 111.000, "Nasi Uduk");
	PlayerTextDrawLetterSize(playerid, NameInv2[playerid][3], 0.170, 0.900);
	PlayerTextDrawAlignment(playerid, NameInv2[playerid][3], 1);
	PlayerTextDrawColor(playerid, NameInv2[playerid][3], -1);
	PlayerTextDrawSetShadow(playerid, NameInv2[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, NameInv2[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv2[playerid][3], 150);
	PlayerTextDrawFont(playerid, NameInv2[playerid][3], 1);
	PlayerTextDrawSetProportional(playerid, NameInv2[playerid][3], 1);

	NameInv2[playerid][4] = CreatePlayerTextDraw(playerid, 358.000, 170.000, "Nasi Uduk");
	PlayerTextDrawLetterSize(playerid, NameInv2[playerid][4], 0.170, 0.900);
	PlayerTextDrawAlignment(playerid, NameInv2[playerid][4], 1);
	PlayerTextDrawColor(playerid, NameInv2[playerid][4], -1);
	PlayerTextDrawSetShadow(playerid, NameInv2[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, NameInv2[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv2[playerid][4], 150);
	PlayerTextDrawFont(playerid, NameInv2[playerid][4], 1);
	PlayerTextDrawSetProportional(playerid, NameInv2[playerid][4], 1);

	NameInv2[playerid][5] = CreatePlayerTextDraw(playerid, 402.000, 170.000, "Nasi Uduk");
	PlayerTextDrawLetterSize(playerid, NameInv2[playerid][5], 0.170, 0.900);
	PlayerTextDrawAlignment(playerid, NameInv2[playerid][5], 1);
	PlayerTextDrawColor(playerid, NameInv2[playerid][5], -1);
	PlayerTextDrawSetShadow(playerid, NameInv2[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, NameInv2[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv2[playerid][5], 150);
	PlayerTextDrawFont(playerid, NameInv2[playerid][5], 1);
	PlayerTextDrawSetProportional(playerid, NameInv2[playerid][5], 1);

	NameInv2[playerid][6] = CreatePlayerTextDraw(playerid, 446.000, 170.000, "Nasi Uduk");
	PlayerTextDrawLetterSize(playerid, NameInv2[playerid][6], 0.170, 0.900);
	PlayerTextDrawAlignment(playerid, NameInv2[playerid][6], 1);
	PlayerTextDrawColor(playerid, NameInv2[playerid][6], -1);
	PlayerTextDrawSetShadow(playerid, NameInv2[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, NameInv2[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv2[playerid][6], 150);
	PlayerTextDrawFont(playerid, NameInv2[playerid][6], 1);
	PlayerTextDrawSetProportional(playerid, NameInv2[playerid][6], 1);

	NameInv2[playerid][7] = CreatePlayerTextDraw(playerid, 490.000, 170.000, "Nasi Uduk");
	PlayerTextDrawLetterSize(playerid, NameInv2[playerid][7], 0.170, 0.900);
	PlayerTextDrawAlignment(playerid, NameInv2[playerid][7], 1);
	PlayerTextDrawColor(playerid, NameInv2[playerid][7], -1);
	PlayerTextDrawSetShadow(playerid, NameInv2[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, NameInv2[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv2[playerid][7], 150);
	PlayerTextDrawFont(playerid, NameInv2[playerid][7], 1);
	PlayerTextDrawSetProportional(playerid, NameInv2[playerid][7], 1);

	NameInv2[playerid][8] = CreatePlayerTextDraw(playerid, 358.000, 228.000, "Nasi Uduk");
	PlayerTextDrawLetterSize(playerid, NameInv2[playerid][8], 0.170, 0.900);
	PlayerTextDrawAlignment(playerid, NameInv2[playerid][8], 1);
	PlayerTextDrawColor(playerid, NameInv2[playerid][8], -1);
	PlayerTextDrawSetShadow(playerid, NameInv2[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, NameInv2[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv2[playerid][8], 150);
	PlayerTextDrawFont(playerid, NameInv2[playerid][8], 1);
	PlayerTextDrawSetProportional(playerid, NameInv2[playerid][8], 1);

	NameInv2[playerid][9] = CreatePlayerTextDraw(playerid, 401.000, 228.000, "Nasi Uduk");
	PlayerTextDrawLetterSize(playerid, NameInv2[playerid][9], 0.170, 0.900);
	PlayerTextDrawAlignment(playerid, NameInv2[playerid][9], 1);
	PlayerTextDrawColor(playerid, NameInv2[playerid][9], -1);
	PlayerTextDrawSetShadow(playerid, NameInv2[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, NameInv2[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv2[playerid][9], 150);
	PlayerTextDrawFont(playerid, NameInv2[playerid][9], 1);
	PlayerTextDrawSetProportional(playerid, NameInv2[playerid][9], 1);

	NameInv2[playerid][10] = CreatePlayerTextDraw(playerid, 446.000, 228.000, "Nasi Uduk");
	PlayerTextDrawLetterSize(playerid, NameInv2[playerid][10], 0.170, 0.900);
	PlayerTextDrawAlignment(playerid, NameInv2[playerid][10], 1);
	PlayerTextDrawColor(playerid, NameInv2[playerid][10], -1);
	PlayerTextDrawSetShadow(playerid, NameInv2[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, NameInv2[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv2[playerid][10], 150);
	PlayerTextDrawFont(playerid, NameInv2[playerid][10], 1);
	PlayerTextDrawSetProportional(playerid, NameInv2[playerid][10], 1);

	NameInv2[playerid][11] = CreatePlayerTextDraw(playerid, 490.000, 228.000, "Nasi Uduk");
	PlayerTextDrawLetterSize(playerid, NameInv2[playerid][11], 0.170, 0.900);
	PlayerTextDrawAlignment(playerid, NameInv2[playerid][11], 1);
	PlayerTextDrawColor(playerid, NameInv2[playerid][11], -1);
	PlayerTextDrawSetShadow(playerid, NameInv2[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, NameInv2[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv2[playerid][11], 150);
	PlayerTextDrawFont(playerid, NameInv2[playerid][11], 1);
	PlayerTextDrawSetProportional(playerid, NameInv2[playerid][11], 1);

	NameInv2[playerid][12] = CreatePlayerTextDraw(playerid, 358.000, 289.000, "Nasi Uduk");
	PlayerTextDrawLetterSize(playerid, NameInv2[playerid][12], 0.170, 0.900);
	PlayerTextDrawAlignment(playerid, NameInv2[playerid][12], 1);
	PlayerTextDrawColor(playerid, NameInv2[playerid][12], -1);
	PlayerTextDrawSetShadow(playerid, NameInv2[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, NameInv2[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv2[playerid][12], 150);
	PlayerTextDrawFont(playerid, NameInv2[playerid][12], 1);
	PlayerTextDrawSetProportional(playerid, NameInv2[playerid][12], 1);

	NameInv2[playerid][13] = CreatePlayerTextDraw(playerid, 402.000, 289.000, "Nasi Uduk");
	PlayerTextDrawLetterSize(playerid, NameInv2[playerid][13], 0.170, 0.900);
	PlayerTextDrawAlignment(playerid, NameInv2[playerid][13], 1);
	PlayerTextDrawColor(playerid, NameInv2[playerid][13], -1);
	PlayerTextDrawSetShadow(playerid, NameInv2[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, NameInv2[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv2[playerid][13], 150);
	PlayerTextDrawFont(playerid, NameInv2[playerid][13], 1);
	PlayerTextDrawSetProportional(playerid, NameInv2[playerid][13], 1);

	NameInv2[playerid][14] = CreatePlayerTextDraw(playerid, 446.000, 289.000, "Nasi Uduk");
	PlayerTextDrawLetterSize(playerid, NameInv2[playerid][14], 0.170, 0.900);
	PlayerTextDrawAlignment(playerid, NameInv2[playerid][14], 1);
	PlayerTextDrawColor(playerid, NameInv2[playerid][14], -1);
	PlayerTextDrawSetShadow(playerid, NameInv2[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, NameInv2[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv2[playerid][14], 150);
	PlayerTextDrawFont(playerid, NameInv2[playerid][14], 1);
	PlayerTextDrawSetProportional(playerid, NameInv2[playerid][14], 1);

	NameInv2[playerid][15] = CreatePlayerTextDraw(playerid, 490.000, 289.000, "Nasi Uduk");
	PlayerTextDrawLetterSize(playerid, NameInv2[playerid][15], 0.170, 0.900);
	PlayerTextDrawAlignment(playerid, NameInv2[playerid][15], 1);
	PlayerTextDrawColor(playerid, NameInv2[playerid][15], -1);
	PlayerTextDrawSetShadow(playerid, NameInv2[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, NameInv2[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv2[playerid][15], 150);
	PlayerTextDrawFont(playerid, NameInv2[playerid][15], 1);
	PlayerTextDrawSetProportional(playerid, NameInv2[playerid][15], 1);

    QuantityInv2[playerid][0] = CreatePlayerTextDraw(playerid, 359.000, 152.000, "5x");
	PlayerTextDrawLetterSize(playerid, QuantityInv2[playerid][0], 0.170, 0.900);
	PlayerTextDrawAlignment(playerid, QuantityInv2[playerid][0], 1);
	PlayerTextDrawColor(playerid, QuantityInv2[playerid][0], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv2[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv2[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv2[playerid][0], 150);
	PlayerTextDrawFont(playerid, QuantityInv2[playerid][0], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv2[playerid][0], 1);

	QuantityInv2[playerid][1] = CreatePlayerTextDraw(playerid, 402.000, 152.000, "5x");
	PlayerTextDrawLetterSize(playerid, QuantityInv2[playerid][1], 0.170, 0.900);
	PlayerTextDrawAlignment(playerid, QuantityInv2[playerid][1], 1);
	PlayerTextDrawColor(playerid, QuantityInv2[playerid][1], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv2[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv2[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv2[playerid][1], 150);
	PlayerTextDrawFont(playerid, QuantityInv2[playerid][1], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv2[playerid][1], 1);

	QuantityInv2[playerid][2] = CreatePlayerTextDraw(playerid, 446.000, 152.000, "5x");
	PlayerTextDrawLetterSize(playerid, QuantityInv2[playerid][2], 0.170, 0.900);
	PlayerTextDrawAlignment(playerid, QuantityInv2[playerid][2], 1);
	PlayerTextDrawColor(playerid, QuantityInv2[playerid][2], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv2[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv2[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv2[playerid][2], 150);
	PlayerTextDrawFont(playerid, QuantityInv2[playerid][2], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv2[playerid][2], 1);

	QuantityInv2[playerid][3] = CreatePlayerTextDraw(playerid, 490.000, 152.000, "5x");
	PlayerTextDrawLetterSize(playerid, QuantityInv2[playerid][3], 0.170, 0.900);
	PlayerTextDrawAlignment(playerid, QuantityInv2[playerid][3], 1);
	PlayerTextDrawColor(playerid, QuantityInv2[playerid][3], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv2[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv2[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv2[playerid][3], 150);
	PlayerTextDrawFont(playerid, QuantityInv2[playerid][3], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv2[playerid][3], 1);

	QuantityInv2[playerid][4] = CreatePlayerTextDraw(playerid, 358.000, 211.000, "5x");
	PlayerTextDrawLetterSize(playerid, QuantityInv2[playerid][4], 0.170, 0.900);
	PlayerTextDrawAlignment(playerid, QuantityInv2[playerid][4], 1);
	PlayerTextDrawColor(playerid, QuantityInv2[playerid][4], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv2[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv2[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv2[playerid][4], 150);
	PlayerTextDrawFont(playerid, QuantityInv2[playerid][4], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv2[playerid][4], 1);

	QuantityInv2[playerid][5] = CreatePlayerTextDraw(playerid, 402.000, 211.000, "5x");
	PlayerTextDrawLetterSize(playerid, QuantityInv2[playerid][5], 0.170, 0.900);
	PlayerTextDrawAlignment(playerid, QuantityInv2[playerid][5], 1);
	PlayerTextDrawColor(playerid, QuantityInv2[playerid][5], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv2[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv2[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv2[playerid][5], 150);
	PlayerTextDrawFont(playerid, QuantityInv2[playerid][5], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv2[playerid][5], 1);

	QuantityInv2[playerid][6] = CreatePlayerTextDraw(playerid, 446.000, 211.000, "5x");
	PlayerTextDrawLetterSize(playerid, QuantityInv2[playerid][6], 0.170, 0.900);
	PlayerTextDrawAlignment(playerid, QuantityInv2[playerid][6], 1);
	PlayerTextDrawColor(playerid, QuantityInv2[playerid][6], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv2[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv2[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv2[playerid][6], 150);
	PlayerTextDrawFont(playerid, QuantityInv2[playerid][6], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv2[playerid][6], 1);

	QuantityInv2[playerid][7] = CreatePlayerTextDraw(playerid, 490.000, 211.000, "5x");
	PlayerTextDrawLetterSize(playerid, QuantityInv2[playerid][7], 0.170, 0.900);
	PlayerTextDrawAlignment(playerid, QuantityInv2[playerid][7], 1);
	PlayerTextDrawColor(playerid, QuantityInv2[playerid][7], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv2[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv2[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv2[playerid][7], 150);
	PlayerTextDrawFont(playerid, QuantityInv2[playerid][7], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv2[playerid][7], 1);

	QuantityInv2[playerid][8] = CreatePlayerTextDraw(playerid, 359.000, 270.000, "5x");
	PlayerTextDrawLetterSize(playerid, QuantityInv2[playerid][8], 0.170, 0.900);
	PlayerTextDrawAlignment(playerid, QuantityInv2[playerid][8], 1);
	PlayerTextDrawColor(playerid, QuantityInv2[playerid][8], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv2[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv2[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv2[playerid][8], 150);
	PlayerTextDrawFont(playerid, QuantityInv2[playerid][8], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv2[playerid][8], 1);

	QuantityInv2[playerid][9] = CreatePlayerTextDraw(playerid, 402.000, 270.000, "5x");
	PlayerTextDrawLetterSize(playerid, QuantityInv2[playerid][9], 0.170, 0.900);
	PlayerTextDrawAlignment(playerid, QuantityInv2[playerid][9], 1);
	PlayerTextDrawColor(playerid, QuantityInv2[playerid][9], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv2[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv2[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv2[playerid][9], 150);
	PlayerTextDrawFont(playerid, QuantityInv2[playerid][9], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv2[playerid][9], 1);

	QuantityInv2[playerid][10] = CreatePlayerTextDraw(playerid, 446.000, 270.000, "5x");
	PlayerTextDrawLetterSize(playerid, QuantityInv2[playerid][10], 0.170, 0.900);
	PlayerTextDrawAlignment(playerid, QuantityInv2[playerid][10], 1);
	PlayerTextDrawColor(playerid, QuantityInv2[playerid][10], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv2[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv2[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv2[playerid][10], 150);
	PlayerTextDrawFont(playerid, QuantityInv2[playerid][10], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv2[playerid][10], 1);

	QuantityInv2[playerid][11] = CreatePlayerTextDraw(playerid, 491.000, 270.000, "5x");
	PlayerTextDrawLetterSize(playerid, QuantityInv2[playerid][11], 0.170, 0.900);
	PlayerTextDrawAlignment(playerid, QuantityInv2[playerid][11], 1);
	PlayerTextDrawColor(playerid, QuantityInv2[playerid][11], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv2[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv2[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv2[playerid][11], 150);
	PlayerTextDrawFont(playerid, QuantityInv2[playerid][11], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv2[playerid][11], 1);

	QuantityInv2[playerid][12] = CreatePlayerTextDraw(playerid, 358.000, 330.000, "5x");
	PlayerTextDrawLetterSize(playerid, QuantityInv2[playerid][12], 0.170, 0.900);
	PlayerTextDrawAlignment(playerid, QuantityInv2[playerid][12], 1);
	PlayerTextDrawColor(playerid, QuantityInv2[playerid][12], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv2[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv2[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv2[playerid][12], 150);
	PlayerTextDrawFont(playerid, QuantityInv2[playerid][12], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv2[playerid][12], 1);

	QuantityInv2[playerid][13] = CreatePlayerTextDraw(playerid, 402.000, 330.000, "5x");
	PlayerTextDrawLetterSize(playerid, QuantityInv2[playerid][13], 0.170, 0.900);
	PlayerTextDrawAlignment(playerid, QuantityInv2[playerid][13], 1);
	PlayerTextDrawColor(playerid, QuantityInv2[playerid][13], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv2[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv2[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv2[playerid][13], 150);
	PlayerTextDrawFont(playerid, QuantityInv2[playerid][13], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv2[playerid][13], 1);

	QuantityInv2[playerid][14] = CreatePlayerTextDraw(playerid, 446.000, 330.000, "5x");
	PlayerTextDrawLetterSize(playerid, QuantityInv2[playerid][14], 0.170, 0.900);
	PlayerTextDrawAlignment(playerid, QuantityInv2[playerid][14], 1);
	PlayerTextDrawColor(playerid, QuantityInv2[playerid][14], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv2[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv2[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv2[playerid][14], 150);
	PlayerTextDrawFont(playerid, QuantityInv2[playerid][14], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv2[playerid][14], 1);

	QuantityInv2[playerid][15] = CreatePlayerTextDraw(playerid, 490.000, 330.000, "5x");
	PlayerTextDrawLetterSize(playerid, QuantityInv2[playerid][15], 0.170, 0.900);
	PlayerTextDrawAlignment(playerid, QuantityInv2[playerid][15], 1);
	PlayerTextDrawColor(playerid, QuantityInv2[playerid][15], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv2[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv2[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv2[playerid][15], 150);
	PlayerTextDrawFont(playerid, QuantityInv2[playerid][15], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv2[playerid][15], 1);

	LineInv2[playerid][0] = CreatePlayerTextDraw(playerid, 357.000, 160.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, LineInv2[playerid][0], 42.000, 3.000);
	PlayerTextDrawAlignment(playerid, LineInv2[playerid][0], 1);
	PlayerTextDrawColor(playerid, LineInv2[playerid][0], -1);
	PlayerTextDrawSetShadow(playerid, LineInv2[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, LineInv2[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, LineInv2[playerid][0], 255);
	PlayerTextDrawFont(playerid, LineInv2[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, LineInv2[playerid][0], 1);

	LineInv2[playerid][1] = CreatePlayerTextDraw(playerid, 401.000, 160.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, LineInv2[playerid][1], 42.000, 3.000);
	PlayerTextDrawAlignment(playerid, LineInv2[playerid][1], 1);
	PlayerTextDrawColor(playerid, LineInv2[playerid][1], -1);
	PlayerTextDrawSetShadow(playerid, LineInv2[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, LineInv2[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, LineInv2[playerid][1], 255);
	PlayerTextDrawFont(playerid, LineInv2[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, LineInv2[playerid][1], 1);

	LineInv2[playerid][2] = CreatePlayerTextDraw(playerid, 445.000, 160.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, LineInv2[playerid][2], 42.000, 3.000);
	PlayerTextDrawAlignment(playerid, LineInv2[playerid][2], 1);
	PlayerTextDrawColor(playerid, LineInv2[playerid][2], -1);
	PlayerTextDrawSetShadow(playerid, LineInv2[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, LineInv2[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, LineInv2[playerid][2], 255);
	PlayerTextDrawFont(playerid, LineInv2[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, LineInv2[playerid][2], 1);

	LineInv2[playerid][3] = CreatePlayerTextDraw(playerid, 489.000, 160.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, LineInv2[playerid][3], 42.000, 3.000);
	PlayerTextDrawAlignment(playerid, LineInv2[playerid][3], 1);
	PlayerTextDrawColor(playerid, LineInv2[playerid][3], -1);
	PlayerTextDrawSetShadow(playerid, LineInv2[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, LineInv2[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, LineInv2[playerid][3], 255);
	PlayerTextDrawFont(playerid, LineInv2[playerid][3], 4);
	PlayerTextDrawSetProportional(playerid, LineInv2[playerid][3], 1);

	LineInv2[playerid][4] = CreatePlayerTextDraw(playerid, 357.000, 218.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, LineInv2[playerid][4], 42.000, 3.000);
	PlayerTextDrawAlignment(playerid, LineInv2[playerid][4], 1);
	PlayerTextDrawColor(playerid, LineInv2[playerid][4], -1);
	PlayerTextDrawSetShadow(playerid, LineInv2[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, LineInv2[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, LineInv2[playerid][4], 255);
	PlayerTextDrawFont(playerid, LineInv2[playerid][4], 4);
	PlayerTextDrawSetProportional(playerid, LineInv2[playerid][4], 1);

	LineInv2[playerid][5] = CreatePlayerTextDraw(playerid, 401.000, 218.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, LineInv2[playerid][5], 42.000, 3.000);
	PlayerTextDrawAlignment(playerid, LineInv2[playerid][5], 1);
	PlayerTextDrawColor(playerid, LineInv2[playerid][5], -1);
	PlayerTextDrawSetShadow(playerid, LineInv2[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, LineInv2[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, LineInv2[playerid][5], 255);
	PlayerTextDrawFont(playerid, LineInv2[playerid][5], 4);
	PlayerTextDrawSetProportional(playerid, LineInv2[playerid][5], 1);

	LineInv2[playerid][6] = CreatePlayerTextDraw(playerid, 445.000, 218.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, LineInv2[playerid][6], 42.000, 3.000);
	PlayerTextDrawAlignment(playerid, LineInv2[playerid][6], 1);
	PlayerTextDrawColor(playerid, LineInv2[playerid][6], -1);
	PlayerTextDrawSetShadow(playerid, LineInv2[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, LineInv2[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, LineInv2[playerid][6], 255);
	PlayerTextDrawFont(playerid, LineInv2[playerid][6], 4);
	PlayerTextDrawSetProportional(playerid, LineInv2[playerid][6], 1);

	LineInv2[playerid][7] = CreatePlayerTextDraw(playerid, 489.000, 218.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, LineInv2[playerid][7], 42.000, 3.000);
	PlayerTextDrawAlignment(playerid, LineInv2[playerid][7], 1);
	PlayerTextDrawColor(playerid, LineInv2[playerid][7], -1);
	PlayerTextDrawSetShadow(playerid, LineInv2[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, LineInv2[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, LineInv2[playerid][7], 255);
	PlayerTextDrawFont(playerid, LineInv2[playerid][7], 4);
	PlayerTextDrawSetProportional(playerid, LineInv2[playerid][7], 1);

	LineInv2[playerid][8] = CreatePlayerTextDraw(playerid, 357.000, 278.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, LineInv2[playerid][8], 42.000, 3.000);
	PlayerTextDrawAlignment(playerid, LineInv2[playerid][8], 1);
	PlayerTextDrawColor(playerid, LineInv2[playerid][8], -1);
	PlayerTextDrawSetShadow(playerid, LineInv2[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, LineInv2[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, LineInv2[playerid][8], 255);
	PlayerTextDrawFont(playerid, LineInv2[playerid][8], 4);
	PlayerTextDrawSetProportional(playerid, LineInv2[playerid][8], 1);

	LineInv2[playerid][9] = CreatePlayerTextDraw(playerid, 401.000, 278.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, LineInv2[playerid][9], 42.000, 3.000);
	PlayerTextDrawAlignment(playerid, LineInv2[playerid][9], 1);
	PlayerTextDrawColor(playerid, LineInv2[playerid][9], -1);
	PlayerTextDrawSetShadow(playerid, LineInv2[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, LineInv2[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, LineInv2[playerid][9], 255);
	PlayerTextDrawFont(playerid, LineInv2[playerid][9], 4);
	PlayerTextDrawSetProportional(playerid, LineInv2[playerid][9], 1);

	LineInv2[playerid][10] = CreatePlayerTextDraw(playerid, 445.000, 278.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, LineInv2[playerid][10], 42.000, 3.000);
	PlayerTextDrawAlignment(playerid, LineInv2[playerid][10], 1);
	PlayerTextDrawColor(playerid, LineInv2[playerid][10], -1);
	PlayerTextDrawSetShadow(playerid, LineInv2[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, LineInv2[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, LineInv2[playerid][10], 255);
	PlayerTextDrawFont(playerid, LineInv2[playerid][10], 4);
	PlayerTextDrawSetProportional(playerid, LineInv2[playerid][10], 1);

	LineInv2[playerid][11] = CreatePlayerTextDraw(playerid, 489.000, 278.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, LineInv2[playerid][11], 42.000, 3.000);
	PlayerTextDrawAlignment(playerid, LineInv2[playerid][11], 1);
	PlayerTextDrawColor(playerid, LineInv2[playerid][11], -1);
	PlayerTextDrawSetShadow(playerid, LineInv2[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, LineInv2[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, LineInv2[playerid][11], 255);
	PlayerTextDrawFont(playerid, LineInv2[playerid][11], 4);
	PlayerTextDrawSetProportional(playerid, LineInv2[playerid][11], 1);

	LineInv2[playerid][12] = CreatePlayerTextDraw(playerid, 357.000, 338.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, LineInv2[playerid][12], 42.000, 3.000);
	PlayerTextDrawAlignment(playerid, LineInv2[playerid][12], 1);
	PlayerTextDrawColor(playerid, LineInv2[playerid][12], -1);
	PlayerTextDrawSetShadow(playerid, LineInv2[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, LineInv2[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, LineInv2[playerid][12], 255);
	PlayerTextDrawFont(playerid, LineInv2[playerid][12], 4);
	PlayerTextDrawSetProportional(playerid, LineInv2[playerid][12], 1);

	LineInv2[playerid][13] = CreatePlayerTextDraw(playerid, 401.000, 338.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, LineInv2[playerid][13], 42.000, 3.000);
	PlayerTextDrawAlignment(playerid, LineInv2[playerid][13], 1);
	PlayerTextDrawColor(playerid, LineInv2[playerid][13], -1);
	PlayerTextDrawSetShadow(playerid, LineInv2[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, LineInv2[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, LineInv2[playerid][13], 255);
	PlayerTextDrawFont(playerid, LineInv2[playerid][13], 4);
	PlayerTextDrawSetProportional(playerid, LineInv2[playerid][13], 1);

	LineInv2[playerid][14] = CreatePlayerTextDraw(playerid, 445.000, 338.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, LineInv2[playerid][14], 42.000, 3.000);
	PlayerTextDrawAlignment(playerid, LineInv2[playerid][14], 1);
	PlayerTextDrawColor(playerid, LineInv2[playerid][14], -1);
	PlayerTextDrawSetShadow(playerid, LineInv2[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, LineInv2[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, LineInv2[playerid][14], 255);
	PlayerTextDrawFont(playerid, LineInv2[playerid][14], 4);
	PlayerTextDrawSetProportional(playerid, LineInv2[playerid][14], 1);

	LineInv2[playerid][15] = CreatePlayerTextDraw(playerid, 489.000, 338.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, LineInv2[playerid][15], 42.000, 3.000);
	PlayerTextDrawAlignment(playerid, LineInv2[playerid][15], 1);
	PlayerTextDrawColor(playerid, LineInv2[playerid][15], -1);
	PlayerTextDrawSetShadow(playerid, LineInv2[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, LineInv2[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, LineInv2[playerid][15], 255);
	PlayerTextDrawFont(playerid, LineInv2[playerid][15], 4);
	PlayerTextDrawSetProportional(playerid, LineInv2[playerid][15], 1);
    return 1;
}

DestroyInventoryTextdraw(playerid)
{
    for(new index; index < 15; index ++)
    {
        PlayerTextDrawDestroy(playerid, InventoryTD[playerid][index]);
    }
    
    for(new index; index < MAX_INVENTORY; index ++)
    {
        PlayerTextDrawDestroy(playerid, NameInv[playerid][index]);
        PlayerTextDrawDestroy(playerid, PrevMod[playerid][index]);
        PlayerTextDrawDestroy(playerid, QuantityInv[playerid][index]); 
		PlayerTextDrawDestroy(playerid, LineInv[playerid][index]);   
    }
    return 1;
}

hook OnPlayerConnect(playerid)
{
    CreateInventoryTextdraw(playerid);
    return 1;
}

hook OnPlayerDisconnect(playerid, reason)
{
    DestroyInventoryTextdraw(playerid);
    return 1;
}

ShowInventoryTD(playerid)
{
	PlayerTextDrawShow(playerid, InventoryFIX[playerid]);
    for(new index = 0; index < 15; index ++)
    {
        PlayerTextDrawShow(playerid, InventoryTD[playerid][index]);
    }
    for(new i; i < 16; i++) 
	{
		PlayerTextDrawShow(playerid, BoxInv[playerid][i]);
    }
    AccountData[playerid][pSelectItem] = -1;
    AccountData[playerid][pAmountInv] = 0;
    PlayerTextDrawSetString(playerid, InventoryTD[playerid][0], "Jumlah");
    return 1;
}

stock Inventory_UpdateSlot(playerid, index) 
{
	if(!IsPlayerConnected(playerid))
		return 1;

	if(InventoryData[playerid][index][invExists])
	{
		new string[128];
		strunpack(string, InventoryData[playerid][index][invItem], 32);

		PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][index], InventoryData[playerid][index][invModel]);
		PlayerTextDrawShow(playerid, PrevMod[playerid][index]);

		PlayerTextDrawSetString(playerid, NameInv[playerid][index], string);
		PlayerTextDrawShow(playerid, NameInv[playerid][index]);

		format(string, sizeof(string), "%dx", InventoryData[playerid][index][invQuantity]);
		PlayerTextDrawSetString(playerid, QuantityInv[playerid][index], string);
		PlayerTextDrawShow(playerid, QuantityInv[playerid][index]);
		PlayerTextDrawShow(playerid, LineInv[playerid][index]);
		
	}
	else
	{
		PlayerTextDrawHide(playerid, PrevMod[playerid][index]);
		PlayerTextDrawHide(playerid, NameInv[playerid][index]);
		PlayerTextDrawHide(playerid, QuantityInv[playerid][index]);
		PlayerTextDrawHide(playerid, LineInv[playerid][index]);
		PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][index], 19300);
		PlayerTextDrawShow(playerid, PrevMod[playerid][index]);
	}
	
	return 1;
}
stock Inventory_Refresh(playerid)
{
    if(!IsPlayerConnected(playerid)) return 0;
    if(AccountData[playerid][pInjured]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang pingsan!");

	selectItemWarung[playerid] = -1;

	PlayerTextDrawSetString(playerid, InventoryTD[playerid][11], AccountData[playerid][pName]);
    static string[128];
    format(string, sizeof(string), "%.3f/50kg", AccountData[playerid][pBeratItem]);
    PlayerTextDrawSetString(playerid, InventoryTD[playerid][12], string);
    PlayerTextDrawShow(playerid, InventoryTD[playerid][12]);
	PlayerTextDrawShow(playerid, InventoryTD[playerid][11]);
	new Float:percent = AccountData[playerid][pBeratItem] / 50.0;
	new Float:fullSize = 174.0;
	new Float:barSize = fullSize * percent;

	PlayerTextDrawTextSize(playerid, InventoryTD[playerid][10], barSize, 3.0);
	PlayerTextDrawShow(playerid, InventoryTD[playerid][10]);


    for (new x = 0; x < MAX_INVENTORY; x ++)
    {
        if(InventoryData[playerid][x][invExists])
        {
            for (new i; i < sizeof(g_aInventoryItems); i ++) if(!strcmp(g_aInventoryItems[i][e_InventoryItem], InventoryData[playerid][x][invItem], true))
            {
                // set preview model
                PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][x], InventoryData[playerid][x][invModel]);
                PlayerTextDrawShow(playerid, PrevMod[playerid][x]);

                // set string textdraw
                format(string, sizeof(string), "%s", g_aInventoryItems[i][e_InventoryItem]);
                PlayerTextDrawSetString(playerid, NameInv[playerid][x], string);
                PlayerTextDrawShow(playerid, NameInv[playerid][x]);

                // set amount textdraw
                format(string, sizeof(string), "%dx", InventoryData[playerid][x][invQuantity]);
                PlayerTextDrawSetString(playerid, QuantityInv[playerid][x], string);
                PlayerTextDrawShow(playerid, QuantityInv[playerid][x]);
				PlayerTextDrawShow(playerid, LineInv[playerid][x]);
            }
        }
        else
        {
            // Hide the textdraws for empty slots
            PlayerTextDrawHide(playerid, PrevMod[playerid][x]);
            PlayerTextDrawHide(playerid, NameInv[playerid][x]);
            PlayerTextDrawHide(playerid, QuantityInv[playerid][x]);
			PlayerTextDrawHide(playerid, LineInv[playerid][x]);
			PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][x], 19300);
			PlayerTextDrawShow(playerid, PrevMod[playerid][x]);

        }
    }
	return 1;
}

stock Inventory_Show(playerid)
{
    if(!IsPlayerConnected(playerid)) return 0;
    if(AccountData[playerid][pInjured]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang pingsan!");

	selectItemWarung[playerid] = -1;
    ShowInventoryTD(playerid);

	PlayerTextDrawSetString(playerid, InventoryTD[playerid][11], AccountData[playerid][pName]);
    static string[128];
    format(string, sizeof(string), "%.3f/50kg", AccountData[playerid][pBeratItem]);
    PlayerTextDrawSetString(playerid, InventoryTD[playerid][12], string);
    PlayerTextDrawShow(playerid, InventoryTD[playerid][12]);
	PlayerTextDrawShow(playerid, InventoryTD[playerid][11]);
	new Float:percent = AccountData[playerid][pBeratItem] / 50.0;
	new Float:fullSize = 174.0;
	new Float:barSize = fullSize * percent;

	PlayerTextDrawTextSize(playerid, InventoryTD[playerid][10], barSize, 3.0);
	PlayerTextDrawShow(playerid, InventoryTD[playerid][10]);

    for (new index = 0; index < MAX_INVENTORY; index ++)
    {
        if(InventoryData[playerid][index][invExists])
        {
            for (new i; i < sizeof(g_aInventoryItems); i ++) if(!strcmp(g_aInventoryItems[i][e_InventoryItem], InventoryData[playerid][index][invItem], true))
            {
                // set preview model
                PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][index], InventoryData[playerid][index][invModel]);
                PlayerTextDrawShow(playerid, PrevMod[playerid][index]);

                // set string textdraw
                format(string, sizeof(string), "%s", g_aInventoryItems[i][e_InventoryItem]);
                PlayerTextDrawSetString(playerid, NameInv[playerid][index], string);
                PlayerTextDrawShow(playerid, NameInv[playerid][index]);

                // set amount textdraw
                format(string, sizeof(string), "%dx", InventoryData[playerid][index][invQuantity]);
                PlayerTextDrawSetString(playerid, QuantityInv[playerid][index], string);
                PlayerTextDrawShow(playerid, QuantityInv[playerid][index]);
				PlayerTextDrawShow(playerid, LineInv[playerid][index]);
            }
        }
        else
        {
            PlayerTextDrawHide(playerid, PrevMod[playerid][index]);
            PlayerTextDrawHide(playerid, NameInv[playerid][index]);
            PlayerTextDrawHide(playerid, QuantityInv[playerid][index]);
			PlayerTextDrawHide(playerid, LineInv[playerid][index]);
        }
    }

    if(AccountData[playerid][pStorageSelect] == 0 && GetPlayerState(playerid) == PLAYER_STATE_ONFOOT)
    {
		PlayerTextDrawSetString(playerid, InventoryTD2[playerid][1], "Grounds");
        InventoryDrop(playerid);
    }

	if(AccountData[playerid][pStorageSelect] == 1 && GetPlayerState(playerid) == PLAYER_STATE_ONFOOT) 
	{
		for(new i; i < 2; i++) {
			PlayerTextDrawShow(playerid, InventoryTD2[playerid][i]);
		}
	}
	Toggle_AllTextdraws(playerid, false);
    SelectTextDraw(playerid, X11_GREY);
    return 1;
}

stock Inventory_Close(playerid)
{
    AccountData[playerid][pStorageSelect] = -1;
	selectItemWarung[playerid] = -1;

	PlayerTextDrawHide(playerid, InventoryFIX[playerid]);
    for(new index = 0; index < 15; index ++) {
        PlayerTextDrawHide(playerid, InventoryTD[playerid][index]);

        if(index < 2) {
            PlayerTextDrawHide(playerid, InventoryTD2[playerid][index]);
        }
    }
    for(new index = 0; index < MAX_INVENTORY; index ++) {
        PlayerTextDrawHide(playerid, PrevMod[playerid][index]);
        PlayerTextDrawColor(playerid, BoxInv[playerid][index], 0x3399FF66);
		PlayerTextDrawHide(playerid, BoxInv[playerid][index]);
        PlayerTextDrawHide(playerid, NameInv[playerid][index]);
        PlayerTextDrawHide(playerid, QuantityInv[playerid][index]);
		PlayerTextDrawHide(playerid, LineInv[playerid][index]);

        PlayerTextDrawHide(playerid, PrevMod2[playerid][index]);
        PlayerTextDrawColor(playerid, BoxInv2[playerid][index], 0x3399FF66);
		PlayerTextDrawHide(playerid, BoxInv2[playerid][index]);
        PlayerTextDrawHide(playerid, NameInv2[playerid][index]);
        PlayerTextDrawHide(playerid, QuantityInv2[playerid][index]);
		PlayerTextDrawHide(playerid, LineInv2[playerid][index]);
    }
    AccountData[playerid][pSelectItem] = -1;
    AccountData[playerid][pAmountInv] = 0;
    Toggle_AllTextdraws(playerid, true);
    CancelSelectTextDraw(playerid);
    return true;
}