new PlayerText: Ui_CharSelect[MAX_PLAYERS][10];
new PlayerText: Ui_Createcharacter[MAX_PLAYERS][57];

CreateUi_CharSelect(playerid)
{
    Ui_CharSelect[playerid][0] = CreatePlayerTextDraw(playerid, 297.000, 258.000, "Character Selector");
    PlayerTextDrawLetterSize(playerid, Ui_CharSelect[playerid][0], 0.187, 1.098);
    PlayerTextDrawAlignment(playerid, Ui_CharSelect[playerid][0], 1);
    PlayerTextDrawColor(playerid, Ui_CharSelect[playerid][0], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, Ui_CharSelect[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, Ui_CharSelect[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_CharSelect[playerid][0], 150);
    PlayerTextDrawFont(playerid, Ui_CharSelect[playerid][0], 1);
    PlayerTextDrawSetProportional(playerid, Ui_CharSelect[playerid][0], 1);

    Ui_CharSelect[playerid][1] = CreatePlayerTextDraw(playerid, 320.000, 271.000, "1/3 Characters");
    PlayerTextDrawLetterSize(playerid, Ui_CharSelect[playerid][1], 0.150, 0.898);
    PlayerTextDrawAlignment(playerid, Ui_CharSelect[playerid][1], 2);
    PlayerTextDrawColor(playerid, Ui_CharSelect[playerid][1], -1);
    PlayerTextDrawSetShadow(playerid, Ui_CharSelect[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, Ui_CharSelect[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_CharSelect[playerid][1], 150);
    PlayerTextDrawFont(playerid, Ui_CharSelect[playerid][1], 1);
    PlayerTextDrawSetProportional(playerid, Ui_CharSelect[playerid][1], 1);

    Ui_CharSelect[playerid][2] = CreatePlayerTextDraw(playerid, 206.000, 292.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, Ui_CharSelect[playerid][2], 231.000, 1.000);
    PlayerTextDrawAlignment(playerid, Ui_CharSelect[playerid][2], 1);
    PlayerTextDrawColor(playerid, Ui_CharSelect[playerid][2], -156);
    PlayerTextDrawSetShadow(playerid, Ui_CharSelect[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, Ui_CharSelect[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_CharSelect[playerid][2], 255);
    PlayerTextDrawFont(playerid, Ui_CharSelect[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, Ui_CharSelect[playerid][2], 1);

    Ui_CharSelect[playerid][3] = CreatePlayerTextDraw(playerid, 231.000, 290.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, Ui_CharSelect[playerid][3], 179.000, 4.000);
    PlayerTextDrawAlignment(playerid, Ui_CharSelect[playerid][3], 1);
    PlayerTextDrawColor(playerid, Ui_CharSelect[playerid][3], 0);
    PlayerTextDrawSetShadow(playerid, Ui_CharSelect[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, Ui_CharSelect[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_CharSelect[playerid][3], 255);
    PlayerTextDrawFont(playerid, Ui_CharSelect[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, Ui_CharSelect[playerid][3], 1);

    Ui_CharSelect[playerid][4] = CreatePlayerTextDraw(playerid, 219.000, 301.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, Ui_CharSelect[playerid][4], 100.000, 46.000);
    PlayerTextDrawAlignment(playerid, Ui_CharSelect[playerid][4], 1);
    PlayerTextDrawColor(playerid, Ui_CharSelect[playerid][4], -201);
    PlayerTextDrawSetShadow(playerid, Ui_CharSelect[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, Ui_CharSelect[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_CharSelect[playerid][4], 255);
    PlayerTextDrawFont(playerid, Ui_CharSelect[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, Ui_CharSelect[playerid][4], 1);
    PlayerTextDrawSetSelectable(playerid, Ui_CharSelect[playerid][4], 1);

    Ui_CharSelect[playerid][5] = CreatePlayerTextDraw(playerid, 323.000, 301.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, Ui_CharSelect[playerid][5], 100.000, 46.000);
    PlayerTextDrawAlignment(playerid, Ui_CharSelect[playerid][5], 1);
    PlayerTextDrawColor(playerid, Ui_CharSelect[playerid][5], -201);
    PlayerTextDrawSetShadow(playerid, Ui_CharSelect[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, Ui_CharSelect[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_CharSelect[playerid][5], 255);
    PlayerTextDrawFont(playerid, Ui_CharSelect[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, Ui_CharSelect[playerid][5], 1);
    PlayerTextDrawSetSelectable(playerid, Ui_CharSelect[playerid][5], 1);

    Ui_CharSelect[playerid][6] = CreatePlayerTextDraw(playerid, 269.000, 319.000, "Clasius_Imperior");
    PlayerTextDrawLetterSize(playerid, Ui_CharSelect[playerid][6], 0.150, 0.999);
    PlayerTextDrawAlignment(playerid, Ui_CharSelect[playerid][6], 2);
    PlayerTextDrawColor(playerid, Ui_CharSelect[playerid][6], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, Ui_CharSelect[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, Ui_CharSelect[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_CharSelect[playerid][6], 150);
    PlayerTextDrawFont(playerid, Ui_CharSelect[playerid][6], 1);
    PlayerTextDrawSetProportional(playerid, Ui_CharSelect[playerid][6], 1);

    Ui_CharSelect[playerid][7] = CreatePlayerTextDraw(playerid, 374.000, 319.000, "Create New Characters");
    PlayerTextDrawLetterSize(playerid, Ui_CharSelect[playerid][7], 0.150, 0.999);
    PlayerTextDrawAlignment(playerid, Ui_CharSelect[playerid][7], 2);
    PlayerTextDrawColor(playerid, Ui_CharSelect[playerid][7], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, Ui_CharSelect[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, Ui_CharSelect[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_CharSelect[playerid][7], 150);
    PlayerTextDrawFont(playerid, Ui_CharSelect[playerid][7], 1);
    PlayerTextDrawSetProportional(playerid, Ui_CharSelect[playerid][7], 1);

    Ui_CharSelect[playerid][8] = CreatePlayerTextDraw(playerid, 219.000, 350.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, Ui_CharSelect[playerid][8], 204.000, 15.000);
    PlayerTextDrawAlignment(playerid, Ui_CharSelect[playerid][8], 1);
    PlayerTextDrawColor(playerid, Ui_CharSelect[playerid][8], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, Ui_CharSelect[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, Ui_CharSelect[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_CharSelect[playerid][8], 255);
    PlayerTextDrawFont(playerid, Ui_CharSelect[playerid][8], 4);
    PlayerTextDrawSetProportional(playerid, Ui_CharSelect[playerid][8], 1);
    PlayerTextDrawSetSelectable(playerid, Ui_CharSelect[playerid][8], 1);

    Ui_CharSelect[playerid][9] = CreatePlayerTextDraw(playerid, 321.000, 352.000, "Spawn");
    PlayerTextDrawLetterSize(playerid, Ui_CharSelect[playerid][9], 0.150, 0.999);
    PlayerTextDrawAlignment(playerid, Ui_CharSelect[playerid][9], 2);
    PlayerTextDrawColor(playerid, Ui_CharSelect[playerid][9], -1);
    PlayerTextDrawSetShadow(playerid, Ui_CharSelect[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, Ui_CharSelect[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_CharSelect[playerid][9], 150);
    PlayerTextDrawFont(playerid, Ui_CharSelect[playerid][9], 1);
    PlayerTextDrawSetProportional(playerid, Ui_CharSelect[playerid][9], 1);

    Ui_Createcharacter[playerid][0] = CreatePlayerTextDraw(playerid, 323.000, 129.000, "Full Name:");
    PlayerTextDrawLetterSize(playerid, Ui_Createcharacter[playerid][0], 0.170, 0.999);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][0], 2);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][0], -1);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][0], 150);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][0], 1);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][0], 1);

    Ui_Createcharacter[playerid][1] = CreatePlayerTextDraw(playerid, 259.000, 105.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, Ui_Createcharacter[playerid][1], 134.000, 279.000);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][1], 1);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][1], 140);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][1], 255);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][1], 1);

    Ui_Createcharacter[playerid][2] = CreatePlayerTextDraw(playerid, 287.000, 140.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, Ui_Createcharacter[playerid][2], 74.000, 18.000);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][2], 1);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][2], 140);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][2], 255);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][2], 1);
    PlayerTextDrawSetSelectable(playerid, Ui_Createcharacter[playerid][2], 1);

    Ui_Createcharacter[playerid][3] = CreatePlayerTextDraw(playerid, 287.000, 183.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, Ui_Createcharacter[playerid][3], 74.000, 18.000);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][3], 1);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][3], 140);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][3], 255);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][3], 1);
    PlayerTextDrawSetSelectable(playerid, Ui_Createcharacter[playerid][3], 1);

    Ui_Createcharacter[playerid][4] = CreatePlayerTextDraw(playerid, 287.000, 227.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, Ui_Createcharacter[playerid][4], 74.000, 18.000);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][4], 1);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][4], 140);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][4], 255);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][4], 1);
    PlayerTextDrawSetSelectable(playerid, Ui_Createcharacter[playerid][4], 1);

    Ui_Createcharacter[playerid][5] = CreatePlayerTextDraw(playerid, 287.000, 274.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, Ui_Createcharacter[playerid][5], 74.000, 18.000);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][5], 1);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][5], 140);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][5], 255);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][5], 1);
    PlayerTextDrawSetSelectable(playerid, Ui_Createcharacter[playerid][5], 1);

    Ui_Createcharacter[playerid][6] = CreatePlayerTextDraw(playerid, 287.000, 322.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, Ui_Createcharacter[playerid][6], 74.000, 18.000);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][6], 1);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][6], 140);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][6], 255);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][6], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][6], 1);
    PlayerTextDrawSetSelectable(playerid, Ui_Createcharacter[playerid][6], 1);

    Ui_Createcharacter[playerid][7] = CreatePlayerTextDraw(playerid, 296.000, 356.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, Ui_Createcharacter[playerid][7], 54.000, 18.000);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][7], 1);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][7], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][7], 255);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][7], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][7], 1);
    PlayerTextDrawSetSelectable(playerid, Ui_Createcharacter[playerid][7], 1);

    Ui_Createcharacter[playerid][8] = CreatePlayerTextDraw(playerid, 394.000, 154.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, Ui_Createcharacter[playerid][8], 84.000, 179.000);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][8], 1);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][8], 140);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][8], 255);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][8], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][8], 1);
    PlayerTextDrawSetSelectable(playerid, Ui_Createcharacter[playerid][8], 1);

    Ui_Createcharacter[playerid][9] = CreatePlayerTextDraw(playerid, 174.000, 154.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, Ui_Createcharacter[playerid][9], 84.000, 179.000);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][9], 1);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][9], 140);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][9], 255);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][9], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][9], 1);
    PlayerTextDrawSetSelectable(playerid, Ui_Createcharacter[playerid][9], 1);

    Ui_Createcharacter[playerid][10] = CreatePlayerTextDraw(playerid, 172.000, 154.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, Ui_Createcharacter[playerid][10], 2.000, 179.000);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][10], 1);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][10], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][10], 255);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][10], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][10], 1);

    Ui_Createcharacter[playerid][11] = CreatePlayerTextDraw(playerid, 257.000, 105.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, Ui_Createcharacter[playerid][11], 2.000, 279.000);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][11], 1);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][11], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][11], 255);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][11], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][11], 1);

    Ui_Createcharacter[playerid][12] = CreatePlayerTextDraw(playerid, 392.000, 105.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, Ui_Createcharacter[playerid][12], 2.000, 279.000);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][12], 1);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][12], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][12], 255);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][12], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][12], 1);

    Ui_Createcharacter[playerid][13] = CreatePlayerTextDraw(playerid, 392.000, 154.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, Ui_Createcharacter[playerid][13], 2.000, 179.000);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][13], 1);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][13], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][13], 255);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][13], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][13], 1);

    Ui_Createcharacter[playerid][14] = CreatePlayerTextDraw(playerid, 478.000, 154.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, Ui_Createcharacter[playerid][14], 2.000, 179.000);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][14], 1);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][14], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][14], 255);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][14], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][14], 1);

    Ui_Createcharacter[playerid][15] = CreatePlayerTextDraw(playerid, 172.000, 152.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, Ui_Createcharacter[playerid][15], 87.000, 2.000);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][15], 1);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][15], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][15], 255);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][15], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][15], 1);

    Ui_Createcharacter[playerid][16] = CreatePlayerTextDraw(playerid, 172.000, 332.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, Ui_Createcharacter[playerid][16], 87.000, 2.000);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][16], 1);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][16], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][16], 255);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][16], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][16], 1);

    Ui_Createcharacter[playerid][17] = CreatePlayerTextDraw(playerid, 392.000, 332.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, Ui_Createcharacter[playerid][17], 88.000, 2.000);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][17], 1);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][17], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][17], 255);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][17], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][17], 1);

    Ui_Createcharacter[playerid][18] = CreatePlayerTextDraw(playerid, 392.000, 152.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, Ui_Createcharacter[playerid][18], 88.000, 2.000);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][18], 1);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][18], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][18], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][18], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][18], 255);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][18], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][18], 1);

    Ui_Createcharacter[playerid][19] = CreatePlayerTextDraw(playerid, 257.000, 103.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, Ui_Createcharacter[playerid][19], 137.000, 2.000);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][19], 1);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][19], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][19], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][19], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][19], 255);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][19], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][19], 1);

    Ui_Createcharacter[playerid][20] = CreatePlayerTextDraw(playerid, 257.000, 103.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, Ui_Createcharacter[playerid][20], 137.000, 2.000);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][20], 1);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][20], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][20], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][20], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][20], 255);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][20], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][20], 1);

    Ui_Createcharacter[playerid][21] = CreatePlayerTextDraw(playerid, 257.000, 384.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, Ui_Createcharacter[playerid][21], 137.000, 2.000);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][21], 1);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][21], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][21], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][21], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][21], 255);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][21], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][21], 1);

    Ui_Createcharacter[playerid][22] = CreatePlayerTextDraw(playerid, 324.000, 172.000, "Nationality:");
    PlayerTextDrawLetterSize(playerid, Ui_Createcharacter[playerid][22], 0.170, 0.999);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][22], 2);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][22], -1);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][22], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][22], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][22], 150);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][22], 1);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][22], 1);

    Ui_Createcharacter[playerid][23] = CreatePlayerTextDraw(playerid, 324.000, 216.000, "Weight:");
    PlayerTextDrawLetterSize(playerid, Ui_Createcharacter[playerid][23], 0.170, 0.999);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][23], 2);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][23], -1);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][23], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][23], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][23], 150);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][23], 1);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][23], 1);

    Ui_Createcharacter[playerid][24] = CreatePlayerTextDraw(playerid, 324.000, 262.000, "Height:");
    PlayerTextDrawLetterSize(playerid, Ui_Createcharacter[playerid][24], 0.170, 0.999);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][24], 2);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][24], -1);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][24], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][24], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][24], 150);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][24], 1);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][24], 1);

    Ui_Createcharacter[playerid][25] = CreatePlayerTextDraw(playerid, 324.000, 311.000, "Date of Birth:");
    PlayerTextDrawLetterSize(playerid, Ui_Createcharacter[playerid][25], 0.170, 0.999);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][25], 2);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][25], -1);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][25], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][25], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][25], 150);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][25], 1);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][25], 1);

    Ui_Createcharacter[playerid][26] = CreatePlayerTextDraw(playerid, 324.000, 144.000, "");
    PlayerTextDrawLetterSize(playerid, Ui_Createcharacter[playerid][26], 0.150, 0.899);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][26], 2);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][26], -1);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][26], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][26], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][26], 150);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][26], 1);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][26], 1);

    Ui_Createcharacter[playerid][27] = CreatePlayerTextDraw(playerid, 324.000, 187.000, "");
    PlayerTextDrawLetterSize(playerid, Ui_Createcharacter[playerid][27], 0.150, 0.899);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][27], 2);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][27], -1);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][27], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][27], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][27], 150);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][27], 1);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][27], 1);

    Ui_Createcharacter[playerid][28] = CreatePlayerTextDraw(playerid, 324.000, 231.000, "");
    PlayerTextDrawLetterSize(playerid, Ui_Createcharacter[playerid][28], 0.150, 0.899);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][28], 2);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][28], -1);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][28], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][28], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][28], 150);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][28], 1);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][28], 1);

    Ui_Createcharacter[playerid][29] = CreatePlayerTextDraw(playerid, 324.000, 278.000, "");
    PlayerTextDrawLetterSize(playerid, Ui_Createcharacter[playerid][29], 0.150, 0.899);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][29], 2);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][29], -1);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][29], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][29], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][29], 150);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][29], 1);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][29], 1);

    Ui_Createcharacter[playerid][30] = CreatePlayerTextDraw(playerid, 324.000, 326.000, "");
    PlayerTextDrawLetterSize(playerid, Ui_Createcharacter[playerid][30], 0.150, 0.899);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][30], 2);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][30], -1);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][30], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][30], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][30], 150);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][30], 1);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][30], 1);

    Ui_Createcharacter[playerid][31] = CreatePlayerTextDraw(playerid, 323.000, 360.000, "Create");
    PlayerTextDrawLetterSize(playerid, Ui_Createcharacter[playerid][31], 0.150, 0.899);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][31], 2);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][31], -1);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][31], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][31], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][31], 150);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][31], 1);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][31], 1);

    Ui_Createcharacter[playerid][32] = CreatePlayerTextDraw(playerid, 200.000, 212.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, Ui_Createcharacter[playerid][32], 30.000, 60.000);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][32], 1);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][32], -1);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][32], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][32], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][32], 255);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][32], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][32], 1);

    Ui_Createcharacter[playerid][33] = CreatePlayerTextDraw(playerid, 193.000, 199.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, Ui_Createcharacter[playerid][33], 44.000, 28.000);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][33], 1);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][33], -1);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][33], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][33], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][33], 255);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][33], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][33], 1);

    Ui_Createcharacter[playerid][34] = CreatePlayerTextDraw(playerid, 200.000, 178.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, Ui_Createcharacter[playerid][34], 29.000, 28.000);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][34], 1);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][34], -1);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][34], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][34], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][34], 255);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][34], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][34], 1);

    Ui_Createcharacter[playerid][35] = CreatePlayerTextDraw(playerid, 200.000, 232.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, Ui_Createcharacter[playerid][35], 10.000, 60.000);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][35], 1);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][35], -1);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][35], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][35], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][35], 255);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][35], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][35], 1);

    Ui_Createcharacter[playerid][36] = CreatePlayerTextDraw(playerid, 220.000, 232.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, Ui_Createcharacter[playerid][36], 10.000, 60.000);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][36], 1);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][36], -1);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][36], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][36], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][36], 255);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][36], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][36], 1);

    Ui_Createcharacter[playerid][37] = CreatePlayerTextDraw(playerid, 197.000, 283.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, Ui_Createcharacter[playerid][37], 16.000, 18.000);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][37], 1);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][37], -1);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][37], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][37], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][37], 255);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][37], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][37], 1);

    Ui_Createcharacter[playerid][38] = CreatePlayerTextDraw(playerid, 217.000, 283.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, Ui_Createcharacter[playerid][38], 16.000, 18.000);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][38], 1);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][38], -1);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][38], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][38], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][38], 255);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][38], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][38], 1);

    Ui_Createcharacter[playerid][39] = CreatePlayerTextDraw(playerid, 187.000, 202.000, "/");
    PlayerTextDrawLetterSize(playerid, Ui_Createcharacter[playerid][39], 1.379, 5.799);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][39], 1);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][39], -1);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][39], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][39], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][39], 150);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][39], 1);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][39], 1);

    Ui_Createcharacter[playerid][40] = CreatePlayerTextDraw(playerid, 241.000, 202.000, "/");
    PlayerTextDrawLetterSize(playerid, Ui_Createcharacter[playerid][40], -1.220, 5.799);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][40], 1);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][40], -1);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][40], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][40], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][40], 150);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][40], 1);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][40], 1);

    Ui_Createcharacter[playerid][41] = CreatePlayerTextDraw(playerid, 184.000, 245.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, Ui_Createcharacter[playerid][41], 16.000, 18.000);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][41], 1);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][41], -1);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][41], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][41], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][41], 255);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][41], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][41], 1);

    Ui_Createcharacter[playerid][42] = CreatePlayerTextDraw(playerid, 229.000, 245.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, Ui_Createcharacter[playerid][42], 16.000, 18.000);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][42], 1);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][42], -1);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][42], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][42], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][42], 255);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][42], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][42], 1);

    Ui_Createcharacter[playerid][43] = CreatePlayerTextDraw(playerid, 420.000, 212.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, Ui_Createcharacter[playerid][43], 30.000, 60.000);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][43], 1);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][43], -1);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][43], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][43], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][43], 255);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][43], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][43], 1);

    Ui_Createcharacter[playerid][44] = CreatePlayerTextDraw(playerid, 413.000, 199.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, Ui_Createcharacter[playerid][44], 44.000, 28.000);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][44], 1);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][44], -1);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][44], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][44], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][44], 255);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][44], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][44], 1);

    Ui_Createcharacter[playerid][45] = CreatePlayerTextDraw(playerid, 420.000, 178.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, Ui_Createcharacter[playerid][45], 29.000, 28.000);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][45], 1);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][45], -1);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][45], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][45], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][45], 255);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][45], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][45], 1);

    Ui_Createcharacter[playerid][46] = CreatePlayerTextDraw(playerid, 420.000, 232.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, Ui_Createcharacter[playerid][46], 10.000, 60.000);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][46], 1);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][46], -1);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][46], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][46], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][46], 255);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][46], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][46], 1);

    Ui_Createcharacter[playerid][47] = CreatePlayerTextDraw(playerid, 440.000, 232.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, Ui_Createcharacter[playerid][47], 10.000, 60.000);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][47], 1);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][47], -1);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][47], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][47], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][47], 255);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][47], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][47], 1);

    Ui_Createcharacter[playerid][48] = CreatePlayerTextDraw(playerid, 417.000, 283.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, Ui_Createcharacter[playerid][48], 16.000, 18.000);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][48], 1);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][48], -1);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][48], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][48], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][48], 255);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][48], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][48], 1);

    Ui_Createcharacter[playerid][49] = CreatePlayerTextDraw(playerid, 437.000, 283.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, Ui_Createcharacter[playerid][49], 16.000, 18.000);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][49], 1);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][49], -1);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][49], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][49], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][49], 255);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][49], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][49], 1);

    Ui_Createcharacter[playerid][50] = CreatePlayerTextDraw(playerid, 407.000, 202.000, "/");
    PlayerTextDrawLetterSize(playerid, Ui_Createcharacter[playerid][50], 1.379, 5.799);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][50], 1);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][50], -1);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][50], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][50], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][50], 150);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][50], 1);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][50], 1);

    Ui_Createcharacter[playerid][51] = CreatePlayerTextDraw(playerid, 461.000, 202.000, "/");
    PlayerTextDrawLetterSize(playerid, Ui_Createcharacter[playerid][51], -1.220, 5.799);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][51], 1);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][51], -1);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][51], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][51], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][51], 150);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][51], 1);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][51], 1);

    Ui_Createcharacter[playerid][52] = CreatePlayerTextDraw(playerid, 404.000, 245.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, Ui_Createcharacter[playerid][52], 16.000, 18.000);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][52], 1);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][52], -1);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][52], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][52], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][52], 255);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][52], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][52], 1);

    Ui_Createcharacter[playerid][53] = CreatePlayerTextDraw(playerid, 449.000, 245.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, Ui_Createcharacter[playerid][53], 16.000, 18.000);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][53], 1);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][53], -1);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][53], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][53], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][53], 255);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][53], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][53], 1);

    Ui_Createcharacter[playerid][54] = CreatePlayerTextDraw(playerid, 410.000, 233.000, "/");
    PlayerTextDrawLetterSize(playerid, Ui_Createcharacter[playerid][54], 1.379, 5.299);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][54], 1);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][54], -1);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][54], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][54], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][54], 150);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][54], 1);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][54], 1);

    Ui_Createcharacter[playerid][55] = CreatePlayerTextDraw(playerid, 459.000, 235.000, "/");
    PlayerTextDrawLetterSize(playerid, Ui_Createcharacter[playerid][55], -1.220, 5.099);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][55], 1);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][55], -1);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][55], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][55], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][55], 150);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][55], 1);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][55], 1);

    Ui_Createcharacter[playerid][56] = CreatePlayerTextDraw(playerid, 416.000, 266.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, Ui_Createcharacter[playerid][56], 38.000, 16.000);
    PlayerTextDrawAlignment(playerid, Ui_Createcharacter[playerid][56], 1);
    PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][56], -1);
    PlayerTextDrawSetShadow(playerid, Ui_Createcharacter[playerid][56], 0);
    PlayerTextDrawSetOutline(playerid, Ui_Createcharacter[playerid][56], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_Createcharacter[playerid][56], 255);
    PlayerTextDrawFont(playerid, Ui_Createcharacter[playerid][56], 4);
    PlayerTextDrawSetProportional(playerid, Ui_Createcharacter[playerid][56], 1);
    
    return 1;
}

RegisterAstralCity(playerid)
{
    for(new i = 0; i < 57; i++) PlayerTextDrawShow(playerid, Ui_Createcharacter[playerid][i]);
    return 1;
}

HideRegister(playerid)
{
    for(new i = 0; i < 57; i++) PlayerTextDrawHide(playerid, Ui_Createcharacter[playerid][i]);
    return 1;
}

DestroyUi_CharSelect(playerid)
{
    PlayerTextDrawDestroy(playerid, Ui_CharSelect[playerid][0]);
    PlayerTextDrawDestroy(playerid, Ui_CharSelect[playerid][1]);
    PlayerTextDrawDestroy(playerid, Ui_CharSelect[playerid][2]);
    PlayerTextDrawDestroy(playerid, Ui_CharSelect[playerid][3]);
    PlayerTextDrawDestroy(playerid, Ui_CharSelect[playerid][4]);
    PlayerTextDrawDestroy(playerid, Ui_CharSelect[playerid][5]);
    PlayerTextDrawDestroy(playerid, Ui_CharSelect[playerid][6]);
    PlayerTextDrawDestroy(playerid, Ui_CharSelect[playerid][7]);
    PlayerTextDrawDestroy(playerid, Ui_CharSelect[playerid][8]);
    PlayerTextDrawDestroy(playerid, Ui_CharSelect[playerid][9]);
    return 1;
}

