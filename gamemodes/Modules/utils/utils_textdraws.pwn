#define MAX_TDHBE1 42
new Float:TDHBE1_PosX[MAX_PLAYERS][MAX_TDHBE1];
new Float:TDHBE1_PosY[MAX_PLAYERS][MAX_TDHBE1];

//Info textdraw
new Text:StressPurple[1]; 
new Text: RobberyGlobalTD[5];
new Text: gServerTextdraws[1];
new Text: ATRP_Warning[10];
new Text: gServerMessage[7];
new Text:TollTD[26];

new PlayerText: PomTD[MAX_PLAYERS][8];
new PlayerText: RobberyTextTD[MAX_PLAYERS][1];
new PlayerText: ProgressBar[MAX_PLAYERS][4];
new PlayerText: ClothesMenuBizz[MAX_PLAYERS][37];
new PlayerText: ClotheMenu[MAX_PLAYERS][37];
new PlayerText: VR_BANNEDTD[MAX_PLAYERS][21];
new PlayerText: BusWait[MAX_PLAYERS][1];
new PlayerText: InfoDate[MAX_PLAYERS][13];
new PlayerText: VR_KARUNG[MAX_PLAYERS][1];
new PlayerText: KTPTD[MAX_PLAYERS][28];
new PlayerText: SksTextdraws[MAX_PLAYERS][22];
new PlayerText: KtaTextdraw[MAX_PLAYERS][24];
new PlayerText: IDPATM[MAX_PLAYERS][35];
new PlayerText: SPEEDONEW[MAX_PLAYERS][14];
new PlayerText: FPStextdraws[MAX_PLAYERS][7];
new PlayerText: HbeNewv2[MAX_PLAYERS][42];
new PlayerText: ATRP_Gym[MAX_PLAYERS][3];
new PlayerText: InjuredSytems[MAX_PLAYERS][42];
new PlayerText: AnnTD[MAX_PLAYERS][4];
new PlayerText: PenembakanDeteksi[MAX_PLAYERS][13];
new PlayerText: BannedTD[MAX_PLAYERS][22];
new PlayerText: KickTextdraw[MAX_PLAYERS][16];
new PlayerText: UnivLulus[MAX_PLAYERS][18];
new PlayerText: ui_racing[MAX_PLAYERS][11];
new PlayerText: WargabaruTD[MAX_PLAYERS][5];
new PlayerText: TDNameServer[MAX_PLAYERS][4];
new PlayerText: MenuPDG[MAX_PLAYERS][54];
new PlayerText: HealthTD[MAX_PLAYERS][48];
new PlayerText: TextdrawLoginUI[MAX_PLAYERS][36];

/* San Andreas Hud */

new PlayerText:ATRP_Footer[MAX_PLAYERS];
new PlayerText: SpectatorInfoTD[MAX_PLAYERS][16];
new PlayerText: ATRP_DutyTD[MAX_PLAYERS][1];
new PlayerText:AMMOTD[MAX_PLAYERS];
CreatePlayerTextDraws(playerid)
{
    TextdrawLoginUI[playerid][0] = CreatePlayerTextDraw(playerid, 234.000, 153.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, TextdrawLoginUI[playerid][0], 211.000, 158.000);
    PlayerTextDrawAlignment(playerid, TextdrawLoginUI[playerid][0], 1);
    PlayerTextDrawColor(playerid, TextdrawLoginUI[playerid][0], 150);
    PlayerTextDrawSetShadow(playerid, TextdrawLoginUI[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, TextdrawLoginUI[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, TextdrawLoginUI[playerid][0], 255);
    PlayerTextDrawFont(playerid, TextdrawLoginUI[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, TextdrawLoginUI[playerid][0], 1);

    TextdrawLoginUI[playerid][1] = CreatePlayerTextDraw(playerid, 232.000, 150.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, TextdrawLoginUI[playerid][1], 2.000, 164.000);
    PlayerTextDrawAlignment(playerid, TextdrawLoginUI[playerid][1], 1);
    PlayerTextDrawColor(playerid, TextdrawLoginUI[playerid][1], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, TextdrawLoginUI[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, TextdrawLoginUI[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, TextdrawLoginUI[playerid][1], 255);
    PlayerTextDrawFont(playerid, TextdrawLoginUI[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, TextdrawLoginUI[playerid][1], 1);

    TextdrawLoginUI[playerid][2] = CreatePlayerTextDraw(playerid, 234.000, 150.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, TextdrawLoginUI[playerid][2], 211.000, 3.000);
    PlayerTextDrawAlignment(playerid, TextdrawLoginUI[playerid][2], 1);
    PlayerTextDrawColor(playerid, TextdrawLoginUI[playerid][2], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, TextdrawLoginUI[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, TextdrawLoginUI[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, TextdrawLoginUI[playerid][2], 255);
    PlayerTextDrawFont(playerid, TextdrawLoginUI[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, TextdrawLoginUI[playerid][2], 1);

    TextdrawLoginUI[playerid][3] = CreatePlayerTextDraw(playerid, 234.000, 311.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, TextdrawLoginUI[playerid][3], 211.000, 3.000);
    PlayerTextDrawAlignment(playerid, TextdrawLoginUI[playerid][3], 1);
    PlayerTextDrawColor(playerid, TextdrawLoginUI[playerid][3], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, TextdrawLoginUI[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, TextdrawLoginUI[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, TextdrawLoginUI[playerid][3], 255);
    PlayerTextDrawFont(playerid, TextdrawLoginUI[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, TextdrawLoginUI[playerid][3], 1);

    TextdrawLoginUI[playerid][4] = CreatePlayerTextDraw(playerid, 445.000, 150.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, TextdrawLoginUI[playerid][4], 2.000, 164.000);
    PlayerTextDrawAlignment(playerid, TextdrawLoginUI[playerid][4], 1);
    PlayerTextDrawColor(playerid, TextdrawLoginUI[playerid][4], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, TextdrawLoginUI[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, TextdrawLoginUI[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, TextdrawLoginUI[playerid][4], 255);
    PlayerTextDrawFont(playerid, TextdrawLoginUI[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, TextdrawLoginUI[playerid][4], 1);

    TextdrawLoginUI[playerid][5] = CreatePlayerTextDraw(playerid, 319.000, 132.000, "AS");
    PlayerTextDrawLetterSize(playerid, TextdrawLoginUI[playerid][5], 0.639, 3.400);
    PlayerTextDrawAlignment(playerid, TextdrawLoginUI[playerid][5], 2);
    PlayerTextDrawColor(playerid, TextdrawLoginUI[playerid][5], -1);
    PlayerTextDrawSetShadow(playerid, TextdrawLoginUI[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, TextdrawLoginUI[playerid][5], 1);
    PlayerTextDrawBackgroundColor(playerid, TextdrawLoginUI[playerid][5], 150);
    PlayerTextDrawFont(playerid, TextdrawLoginUI[playerid][5], 2);
    PlayerTextDrawSetProportional(playerid, TextdrawLoginUI[playerid][5], 1);

    TextdrawLoginUI[playerid][6] = CreatePlayerTextDraw(playerid, 319.000, 131.000, "AS");
    PlayerTextDrawLetterSize(playerid, TextdrawLoginUI[playerid][6], 0.539, 3.300);
    PlayerTextDrawAlignment(playerid, TextdrawLoginUI[playerid][6], 2);
    PlayerTextDrawColor(playerid, TextdrawLoginUI[playerid][6], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, TextdrawLoginUI[playerid][6], 1);
    PlayerTextDrawSetOutline(playerid, TextdrawLoginUI[playerid][6], 1);
    PlayerTextDrawBackgroundColor(playerid, TextdrawLoginUI[playerid][6], 150);
    PlayerTextDrawFont(playerid, TextdrawLoginUI[playerid][6], 2);
    PlayerTextDrawSetProportional(playerid, TextdrawLoginUI[playerid][6], 1);

    TextdrawLoginUI[playerid][7] = CreatePlayerTextDraw(playerid, 350.000, 143.000, "Roleplay");
    PlayerTextDrawLetterSize(playerid, TextdrawLoginUI[playerid][7], 0.319, 1.500);
    PlayerTextDrawAlignment(playerid, TextdrawLoginUI[playerid][7], 2);
    PlayerTextDrawColor(playerid, TextdrawLoginUI[playerid][7], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, TextdrawLoginUI[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, TextdrawLoginUI[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, TextdrawLoginUI[playerid][7], 150);
    PlayerTextDrawFont(playerid, TextdrawLoginUI[playerid][7], 1);
    PlayerTextDrawSetProportional(playerid, TextdrawLoginUI[playerid][7], 1);

    TextdrawLoginUI[playerid][8] = CreatePlayerTextDraw(playerid, 349.000, 143.000, "Roleplay");
    PlayerTextDrawLetterSize(playerid, TextdrawLoginUI[playerid][8], 0.300, 1.500);
    PlayerTextDrawAlignment(playerid, TextdrawLoginUI[playerid][8], 2);
    PlayerTextDrawColor(playerid, TextdrawLoginUI[playerid][8], -1);
    PlayerTextDrawSetShadow(playerid, TextdrawLoginUI[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, TextdrawLoginUI[playerid][8], 1);
    PlayerTextDrawBackgroundColor(playerid, TextdrawLoginUI[playerid][8], 150);
    PlayerTextDrawFont(playerid, TextdrawLoginUI[playerid][8], 1);
    PlayerTextDrawSetProportional(playerid, TextdrawLoginUI[playerid][8], 1);

    TextdrawLoginUI[playerid][9] = CreatePlayerTextDraw(playerid, 250.000, 290.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, TextdrawLoginUI[playerid][9], 34.000, 3.000);
    PlayerTextDrawAlignment(playerid, TextdrawLoginUI[playerid][9], 1);
    PlayerTextDrawColor(playerid, TextdrawLoginUI[playerid][9], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, TextdrawLoginUI[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, TextdrawLoginUI[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, TextdrawLoginUI[playerid][9], 255);
    PlayerTextDrawFont(playerid, TextdrawLoginUI[playerid][9], 4);
    PlayerTextDrawSetProportional(playerid, TextdrawLoginUI[playerid][9], 1);

    TextdrawLoginUI[playerid][10] = CreatePlayerTextDraw(playerid, 250.000, 290.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, TextdrawLoginUI[playerid][10], 3.000, -28.000);
    PlayerTextDrawAlignment(playerid, TextdrawLoginUI[playerid][10], 1);
    PlayerTextDrawColor(playerid, TextdrawLoginUI[playerid][10], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, TextdrawLoginUI[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, TextdrawLoginUI[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, TextdrawLoginUI[playerid][10], 255);
    PlayerTextDrawFont(playerid, TextdrawLoginUI[playerid][10], 4);
    PlayerTextDrawSetProportional(playerid, TextdrawLoginUI[playerid][10], 1);

    TextdrawLoginUI[playerid][11] = CreatePlayerTextDraw(playerid, 250.000, 198.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, TextdrawLoginUI[playerid][11], 3.000, -28.000);
    PlayerTextDrawAlignment(playerid, TextdrawLoginUI[playerid][11], 1);
    PlayerTextDrawColor(playerid, TextdrawLoginUI[playerid][11], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, TextdrawLoginUI[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, TextdrawLoginUI[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, TextdrawLoginUI[playerid][11], 255);
    PlayerTextDrawFont(playerid, TextdrawLoginUI[playerid][11], 4);
    PlayerTextDrawSetProportional(playerid, TextdrawLoginUI[playerid][11], 1);

    TextdrawLoginUI[playerid][12] = CreatePlayerTextDraw(playerid, 250.000, 167.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, TextdrawLoginUI[playerid][12], 34.000, 3.000);
    PlayerTextDrawAlignment(playerid, TextdrawLoginUI[playerid][12], 1);
    PlayerTextDrawColor(playerid, TextdrawLoginUI[playerid][12], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, TextdrawLoginUI[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, TextdrawLoginUI[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, TextdrawLoginUI[playerid][12], 255);
    PlayerTextDrawFont(playerid, TextdrawLoginUI[playerid][12], 4);
    PlayerTextDrawSetProportional(playerid, TextdrawLoginUI[playerid][12], 1);

    TextdrawLoginUI[playerid][13] = CreatePlayerTextDraw(playerid, 393.000, 167.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, TextdrawLoginUI[playerid][13], 34.000, 3.000);
    PlayerTextDrawAlignment(playerid, TextdrawLoginUI[playerid][13], 1);
    PlayerTextDrawColor(playerid, TextdrawLoginUI[playerid][13], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, TextdrawLoginUI[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, TextdrawLoginUI[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, TextdrawLoginUI[playerid][13], 255);
    PlayerTextDrawFont(playerid, TextdrawLoginUI[playerid][13], 4);
    PlayerTextDrawSetProportional(playerid, TextdrawLoginUI[playerid][13], 1);

    TextdrawLoginUI[playerid][14] = CreatePlayerTextDraw(playerid, 424.000, 198.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, TextdrawLoginUI[playerid][14], 3.000, -28.000);
    PlayerTextDrawAlignment(playerid, TextdrawLoginUI[playerid][14], 1);
    PlayerTextDrawColor(playerid, TextdrawLoginUI[playerid][14], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, TextdrawLoginUI[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, TextdrawLoginUI[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, TextdrawLoginUI[playerid][14], 255);
    PlayerTextDrawFont(playerid, TextdrawLoginUI[playerid][14], 4);
    PlayerTextDrawSetProportional(playerid, TextdrawLoginUI[playerid][14], 1);

    TextdrawLoginUI[playerid][15] = CreatePlayerTextDraw(playerid, 424.000, 290.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, TextdrawLoginUI[playerid][15], 3.000, -28.000);
    PlayerTextDrawAlignment(playerid, TextdrawLoginUI[playerid][15], 1);
    PlayerTextDrawColor(playerid, TextdrawLoginUI[playerid][15], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, TextdrawLoginUI[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, TextdrawLoginUI[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, TextdrawLoginUI[playerid][15], 255);
    PlayerTextDrawFont(playerid, TextdrawLoginUI[playerid][15], 4);
    PlayerTextDrawSetProportional(playerid, TextdrawLoginUI[playerid][15], 1);

    TextdrawLoginUI[playerid][16] = CreatePlayerTextDraw(playerid, 393.000, 287.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, TextdrawLoginUI[playerid][16], 34.000, 3.000);
    PlayerTextDrawAlignment(playerid, TextdrawLoginUI[playerid][16], 1);
    PlayerTextDrawColor(playerid, TextdrawLoginUI[playerid][16], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, TextdrawLoginUI[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, TextdrawLoginUI[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, TextdrawLoginUI[playerid][16], 255);
    PlayerTextDrawFont(playerid, TextdrawLoginUI[playerid][16], 4);
    PlayerTextDrawSetProportional(playerid, TextdrawLoginUI[playerid][16], 1);

    TextdrawLoginUI[playerid][17] = CreatePlayerTextDraw(playerid, 302.000, 182.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, TextdrawLoginUI[playerid][17], 74.000, 15.000);
    PlayerTextDrawAlignment(playerid, TextdrawLoginUI[playerid][17], 1);
    PlayerTextDrawColor(playerid, TextdrawLoginUI[playerid][17], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, TextdrawLoginUI[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, TextdrawLoginUI[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, TextdrawLoginUI[playerid][17], 255);
    PlayerTextDrawFont(playerid, TextdrawLoginUI[playerid][17], 4);
    PlayerTextDrawSetProportional(playerid, TextdrawLoginUI[playerid][17], 1);

    TextdrawLoginUI[playerid][18] = CreatePlayerTextDraw(playerid, 288.000, 178.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, TextdrawLoginUI[playerid][18], 26.000, 23.000);
    PlayerTextDrawAlignment(playerid, TextdrawLoginUI[playerid][18], 1);
    PlayerTextDrawColor(playerid, TextdrawLoginUI[playerid][18], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, TextdrawLoginUI[playerid][18], 0);
    PlayerTextDrawSetOutline(playerid, TextdrawLoginUI[playerid][18], 0);
    PlayerTextDrawBackgroundColor(playerid, TextdrawLoginUI[playerid][18], 255);
    PlayerTextDrawFont(playerid, TextdrawLoginUI[playerid][18], 4);
    PlayerTextDrawSetProportional(playerid, TextdrawLoginUI[playerid][18], 1);

    TextdrawLoginUI[playerid][19] = CreatePlayerTextDraw(playerid, 364.000, 178.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, TextdrawLoginUI[playerid][19], 26.000, 23.000);
    PlayerTextDrawAlignment(playerid, TextdrawLoginUI[playerid][19], 1);
    PlayerTextDrawColor(playerid, TextdrawLoginUI[playerid][19], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, TextdrawLoginUI[playerid][19], 0);
    PlayerTextDrawSetOutline(playerid, TextdrawLoginUI[playerid][19], 0);
    PlayerTextDrawBackgroundColor(playerid, TextdrawLoginUI[playerid][19], 255);
    PlayerTextDrawFont(playerid, TextdrawLoginUI[playerid][19], 4);
    PlayerTextDrawSetProportional(playerid, TextdrawLoginUI[playerid][19], 1);

    TextdrawLoginUI[playerid][20] = CreatePlayerTextDraw(playerid, 315.000, 251.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, TextdrawLoginUI[playerid][20], 46.000, 43.000);
    PlayerTextDrawAlignment(playerid, TextdrawLoginUI[playerid][20], 1);
    PlayerTextDrawColor(playerid, TextdrawLoginUI[playerid][20], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, TextdrawLoginUI[playerid][20], 0);
    PlayerTextDrawSetOutline(playerid, TextdrawLoginUI[playerid][20], 0);
    PlayerTextDrawBackgroundColor(playerid, TextdrawLoginUI[playerid][20], 255);
    PlayerTextDrawFont(playerid, TextdrawLoginUI[playerid][20], 4);
    PlayerTextDrawSetProportional(playerid, TextdrawLoginUI[playerid][20], 1);
    PlayerTextDrawSetSelectable(playerid, TextdrawLoginUI[playerid][20], 1);

    TextdrawLoginUI[playerid][21] = CreatePlayerTextDraw(playerid, 298.000, 236.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, TextdrawLoginUI[playerid][21], 83.000, 2.000);
    PlayerTextDrawAlignment(playerid, TextdrawLoginUI[playerid][21], 1);
    PlayerTextDrawColor(playerid, TextdrawLoginUI[playerid][21], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, TextdrawLoginUI[playerid][21], 0);
    PlayerTextDrawSetOutline(playerid, TextdrawLoginUI[playerid][21], 0);
    PlayerTextDrawBackgroundColor(playerid, TextdrawLoginUI[playerid][21], 255);
    PlayerTextDrawFont(playerid, TextdrawLoginUI[playerid][21], 4);
    PlayerTextDrawSetProportional(playerid, TextdrawLoginUI[playerid][21], 1);

    TextdrawLoginUI[playerid][22] = CreatePlayerTextDraw(playerid, 337.000, 266.000, "AS");
    PlayerTextDrawLetterSize(playerid, TextdrawLoginUI[playerid][22], 0.599, 1.800);
    PlayerTextDrawAlignment(playerid, TextdrawLoginUI[playerid][22], 2);
    PlayerTextDrawColor(playerid, TextdrawLoginUI[playerid][22], -1);
    PlayerTextDrawSetShadow(playerid, TextdrawLoginUI[playerid][22], 0);
    PlayerTextDrawSetOutline(playerid, TextdrawLoginUI[playerid][22], 0);
    PlayerTextDrawBackgroundColor(playerid, TextdrawLoginUI[playerid][22], 150);
    PlayerTextDrawFont(playerid, TextdrawLoginUI[playerid][22], 2);
    PlayerTextDrawSetProportional(playerid, TextdrawLoginUI[playerid][22], 1);

    TextdrawLoginUI[playerid][23] = CreatePlayerTextDraw(playerid, 344.000, 259.000, "/");
    PlayerTextDrawLetterSize(playerid, TextdrawLoginUI[playerid][23], 0.929, 2.600);
    PlayerTextDrawAlignment(playerid, TextdrawLoginUI[playerid][23], 2);
    PlayerTextDrawColor(playerid, TextdrawLoginUI[playerid][23], -1);
    PlayerTextDrawSetShadow(playerid, TextdrawLoginUI[playerid][23], 0);
    PlayerTextDrawSetOutline(playerid, TextdrawLoginUI[playerid][23], 0);
    PlayerTextDrawBackgroundColor(playerid, TextdrawLoginUI[playerid][23], 150);
    PlayerTextDrawFont(playerid, TextdrawLoginUI[playerid][23], 2);
    PlayerTextDrawSetProportional(playerid, TextdrawLoginUI[playerid][23], 1);

    TextdrawLoginUI[playerid][24] = CreatePlayerTextDraw(playerid, 339.000, 221.000, "Input password");
    PlayerTextDrawLetterSize(playerid, TextdrawLoginUI[playerid][24], 0.240, 1.399);
    PlayerTextDrawTextSize(playerid, TextdrawLoginUI[playerid][24], 297.000, 81.000);
    PlayerTextDrawAlignment(playerid, TextdrawLoginUI[playerid][24], 2);
    PlayerTextDrawColor(playerid, TextdrawLoginUI[playerid][24], -252116993);
    PlayerTextDrawSetShadow(playerid, TextdrawLoginUI[playerid][24], 0);
    PlayerTextDrawSetOutline(playerid, TextdrawLoginUI[playerid][24], 0);
    PlayerTextDrawBackgroundColor(playerid, TextdrawLoginUI[playerid][24], 150);
    PlayerTextDrawFont(playerid, TextdrawLoginUI[playerid][24], 1);
    PlayerTextDrawSetProportional(playerid, TextdrawLoginUI[playerid][24], 1);

    TextdrawLoginUI[playerid][25] = CreatePlayerTextDraw(playerid, 298.000, 215.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, TextdrawLoginUI[playerid][25], 83.000, 20.000);
    PlayerTextDrawAlignment(playerid, TextdrawLoginUI[playerid][25], 1);
    PlayerTextDrawColor(playerid, TextdrawLoginUI[playerid][25], 0);
    PlayerTextDrawSetShadow(playerid, TextdrawLoginUI[playerid][25], 0);
    PlayerTextDrawSetOutline(playerid, TextdrawLoginUI[playerid][25], 0);
    PlayerTextDrawBackgroundColor(playerid, TextdrawLoginUI[playerid][25], 255);
    PlayerTextDrawFont(playerid, TextdrawLoginUI[playerid][25], 4);
    PlayerTextDrawSetProportional(playerid, TextdrawLoginUI[playerid][25], 1);
    PlayerTextDrawSetSelectable(playerid, TextdrawLoginUI[playerid][25], 1);

    TextdrawLoginUI[playerid][26] = CreatePlayerTextDraw(playerid, 340.000, 183.000, "Rayyzix");
    PlayerTextDrawLetterSize(playerid, TextdrawLoginUI[playerid][26], 0.250, 1.299);
    PlayerTextDrawTextSize(playerid, TextdrawLoginUI[playerid][26], 297.000, 81.000);
    PlayerTextDrawAlignment(playerid, TextdrawLoginUI[playerid][26], 2);
    PlayerTextDrawColor(playerid, TextdrawLoginUI[playerid][26], 255);
    PlayerTextDrawSetShadow(playerid, TextdrawLoginUI[playerid][26], 0);
    PlayerTextDrawSetOutline(playerid, TextdrawLoginUI[playerid][26], 0);
    PlayerTextDrawBackgroundColor(playerid, TextdrawLoginUI[playerid][26], 150);
    PlayerTextDrawFont(playerid, TextdrawLoginUI[playerid][26], 1);
    PlayerTextDrawSetProportional(playerid, TextdrawLoginUI[playerid][26], 1);

    TextdrawLoginUI[playerid][27] = CreatePlayerTextDraw(playerid, 339.000, 183.000, "Rayyzix");
    PlayerTextDrawLetterSize(playerid, TextdrawLoginUI[playerid][27], 0.250, 1.299);
    PlayerTextDrawTextSize(playerid, TextdrawLoginUI[playerid][27], 297.000, 81.000);
    PlayerTextDrawAlignment(playerid, TextdrawLoginUI[playerid][27], 2);
    PlayerTextDrawColor(playerid, TextdrawLoginUI[playerid][27], -1);
    PlayerTextDrawSetShadow(playerid, TextdrawLoginUI[playerid][27], 0);
    PlayerTextDrawSetOutline(playerid, TextdrawLoginUI[playerid][27], 0);
    PlayerTextDrawBackgroundColor(playerid, TextdrawLoginUI[playerid][27], 150);
    PlayerTextDrawFont(playerid, TextdrawLoginUI[playerid][27], 1);
    PlayerTextDrawSetProportional(playerid, TextdrawLoginUI[playerid][27], 1);

    TextdrawLoginUI[playerid][28] = CreatePlayerTextDraw(playerid, 226.000, 179.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, TextdrawLoginUI[playerid][28], 2.000, -34.000);
    PlayerTextDrawAlignment(playerid, TextdrawLoginUI[playerid][28], 1);
    PlayerTextDrawColor(playerid, TextdrawLoginUI[playerid][28], -1);
    PlayerTextDrawSetShadow(playerid, TextdrawLoginUI[playerid][28], 0);
    PlayerTextDrawSetOutline(playerid, TextdrawLoginUI[playerid][28], 0);
    PlayerTextDrawBackgroundColor(playerid, TextdrawLoginUI[playerid][28], 255);
    PlayerTextDrawFont(playerid, TextdrawLoginUI[playerid][28], 4);
    PlayerTextDrawSetProportional(playerid, TextdrawLoginUI[playerid][28], 1);

    TextdrawLoginUI[playerid][29] = CreatePlayerTextDraw(playerid, 226.000, 143.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, TextdrawLoginUI[playerid][29], 30.000, 3.000);
    PlayerTextDrawAlignment(playerid, TextdrawLoginUI[playerid][29], 1);
    PlayerTextDrawColor(playerid, TextdrawLoginUI[playerid][29], -1);
    PlayerTextDrawSetShadow(playerid, TextdrawLoginUI[playerid][29], 0);
    PlayerTextDrawSetOutline(playerid, TextdrawLoginUI[playerid][29], 0);
    PlayerTextDrawBackgroundColor(playerid, TextdrawLoginUI[playerid][29], 255);
    PlayerTextDrawFont(playerid, TextdrawLoginUI[playerid][29], 4);
    PlayerTextDrawSetProportional(playerid, TextdrawLoginUI[playerid][29], 1);

    TextdrawLoginUI[playerid][30] = CreatePlayerTextDraw(playerid, 451.000, 319.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, TextdrawLoginUI[playerid][30], 2.000, -31.000);
    PlayerTextDrawAlignment(playerid, TextdrawLoginUI[playerid][30], 1);
    PlayerTextDrawColor(playerid, TextdrawLoginUI[playerid][30], -1);
    PlayerTextDrawSetShadow(playerid, TextdrawLoginUI[playerid][30], 0);
    PlayerTextDrawSetOutline(playerid, TextdrawLoginUI[playerid][30], 0);
    PlayerTextDrawBackgroundColor(playerid, TextdrawLoginUI[playerid][30], 255);
    PlayerTextDrawFont(playerid, TextdrawLoginUI[playerid][30], 4);
    PlayerTextDrawSetProportional(playerid, TextdrawLoginUI[playerid][30], 1);

    TextdrawLoginUI[playerid][31] = CreatePlayerTextDraw(playerid, 424.000, 318.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, TextdrawLoginUI[playerid][31], 29.000, 3.000);
    PlayerTextDrawAlignment(playerid, TextdrawLoginUI[playerid][31], 1);
    PlayerTextDrawColor(playerid, TextdrawLoginUI[playerid][31], -1);
    PlayerTextDrawSetShadow(playerid, TextdrawLoginUI[playerid][31], 0);
    PlayerTextDrawSetOutline(playerid, TextdrawLoginUI[playerid][31], 0);
    PlayerTextDrawBackgroundColor(playerid, TextdrawLoginUI[playerid][31], 255);
    PlayerTextDrawFont(playerid, TextdrawLoginUI[playerid][31], 4);
    PlayerTextDrawSetProportional(playerid, TextdrawLoginUI[playerid][31], 1);

    TextdrawLoginUI[playerid][32] = CreatePlayerTextDraw(playerid, 217.000, 163.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, TextdrawLoginUI[playerid][32], 2.000, -34.000);
    PlayerTextDrawAlignment(playerid, TextdrawLoginUI[playerid][32], 1);
    PlayerTextDrawColor(playerid, TextdrawLoginUI[playerid][32], -1);
    PlayerTextDrawSetShadow(playerid, TextdrawLoginUI[playerid][32], 0);
    PlayerTextDrawSetOutline(playerid, TextdrawLoginUI[playerid][32], 0);
    PlayerTextDrawBackgroundColor(playerid, TextdrawLoginUI[playerid][32], 255);
    PlayerTextDrawFont(playerid, TextdrawLoginUI[playerid][32], 4);
    PlayerTextDrawSetProportional(playerid, TextdrawLoginUI[playerid][32], 1);

    TextdrawLoginUI[playerid][33] = CreatePlayerTextDraw(playerid, 219.000, 129.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, TextdrawLoginUI[playerid][33], 30.000, 3.000);
    PlayerTextDrawAlignment(playerid, TextdrawLoginUI[playerid][33], 1);
    PlayerTextDrawColor(playerid, TextdrawLoginUI[playerid][33], -1);
    PlayerTextDrawSetShadow(playerid, TextdrawLoginUI[playerid][33], 0);
    PlayerTextDrawSetOutline(playerid, TextdrawLoginUI[playerid][33], 0);
    PlayerTextDrawBackgroundColor(playerid, TextdrawLoginUI[playerid][33], 255);
    PlayerTextDrawFont(playerid, TextdrawLoginUI[playerid][33], 4);
    PlayerTextDrawSetProportional(playerid, TextdrawLoginUI[playerid][33], 1);

    TextdrawLoginUI[playerid][34] = CreatePlayerTextDraw(playerid, 433.000, 333.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, TextdrawLoginUI[playerid][34], 29.000, 3.000);
    PlayerTextDrawAlignment(playerid, TextdrawLoginUI[playerid][34], 1);
    PlayerTextDrawColor(playerid, TextdrawLoginUI[playerid][34], -1);
    PlayerTextDrawSetShadow(playerid, TextdrawLoginUI[playerid][34], 0);
    PlayerTextDrawSetOutline(playerid, TextdrawLoginUI[playerid][34], 0);
    PlayerTextDrawBackgroundColor(playerid, TextdrawLoginUI[playerid][34], 255);
    PlayerTextDrawFont(playerid, TextdrawLoginUI[playerid][34], 4);
    PlayerTextDrawSetProportional(playerid, TextdrawLoginUI[playerid][34], 1);

    TextdrawLoginUI[playerid][35] = CreatePlayerTextDraw(playerid, 462.000, 336.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, TextdrawLoginUI[playerid][35], 2.000, -31.000);
    PlayerTextDrawAlignment(playerid, TextdrawLoginUI[playerid][35], 1);
    PlayerTextDrawColor(playerid, TextdrawLoginUI[playerid][35], -1);
    PlayerTextDrawSetShadow(playerid, TextdrawLoginUI[playerid][35], 0);
    PlayerTextDrawSetOutline(playerid, TextdrawLoginUI[playerid][35], 0);
    PlayerTextDrawBackgroundColor(playerid, TextdrawLoginUI[playerid][35], 255);
    PlayerTextDrawFont(playerid, TextdrawLoginUI[playerid][35], 4);
    PlayerTextDrawSetProportional(playerid, TextdrawLoginUI[playerid][35], 1);

    HealthTD[playerid][0] = CreatePlayerTextDraw(playerid, 219.000, 116.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, HealthTD[playerid][0], 252.000, 210.000);
    PlayerTextDrawAlignment(playerid, HealthTD[playerid][0], 1);
    PlayerTextDrawColor(playerid, HealthTD[playerid][0], 421097727);
    PlayerTextDrawSetShadow(playerid, HealthTD[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, HealthTD[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, HealthTD[playerid][0], 255);
    PlayerTextDrawFont(playerid, HealthTD[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, HealthTD[playerid][0], 1);

    HealthTD[playerid][1] = CreatePlayerTextDraw(playerid, 213.000, 97.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, HealthTD[playerid][1], 35.000, 36.000);
    PlayerTextDrawAlignment(playerid, HealthTD[playerid][1], 1);
    PlayerTextDrawColor(playerid, HealthTD[playerid][1], 421097727);
    PlayerTextDrawSetShadow(playerid, HealthTD[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, HealthTD[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, HealthTD[playerid][1], 255);
    PlayerTextDrawFont(playerid, HealthTD[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, HealthTD[playerid][1], 1);

    HealthTD[playerid][2] = CreatePlayerTextDraw(playerid, 442.000, 97.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, HealthTD[playerid][2], 35.000, 36.000);
    PlayerTextDrawAlignment(playerid, HealthTD[playerid][2], 1);
    PlayerTextDrawColor(playerid, HealthTD[playerid][2], 421097727);
    PlayerTextDrawSetShadow(playerid, HealthTD[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, HealthTD[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, HealthTD[playerid][2], 255);
    PlayerTextDrawFont(playerid, HealthTD[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, HealthTD[playerid][2], 1);

    HealthTD[playerid][3] = CreatePlayerTextDraw(playerid, 442.000, 308.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, HealthTD[playerid][3], 35.000, 36.000);
    PlayerTextDrawAlignment(playerid, HealthTD[playerid][3], 1);
    PlayerTextDrawColor(playerid, HealthTD[playerid][3], 421097727);
    PlayerTextDrawSetShadow(playerid, HealthTD[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, HealthTD[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, HealthTD[playerid][3], 255);
    PlayerTextDrawFont(playerid, HealthTD[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, HealthTD[playerid][3], 1);

    HealthTD[playerid][4] = CreatePlayerTextDraw(playerid, 213.000, 308.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, HealthTD[playerid][4], 35.000, 36.000);
    PlayerTextDrawAlignment(playerid, HealthTD[playerid][4], 1);
    PlayerTextDrawColor(playerid, HealthTD[playerid][4], 421097727);
    PlayerTextDrawSetShadow(playerid, HealthTD[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, HealthTD[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, HealthTD[playerid][4], 255);
    PlayerTextDrawFont(playerid, HealthTD[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, HealthTD[playerid][4], 1);

    HealthTD[playerid][5] = CreatePlayerTextDraw(playerid, 229.000, 103.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, HealthTD[playerid][5], 230.000, 235.000);
    PlayerTextDrawAlignment(playerid, HealthTD[playerid][5], 1);
    PlayerTextDrawColor(playerid, HealthTD[playerid][5], 421097727);
    PlayerTextDrawSetShadow(playerid, HealthTD[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, HealthTD[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, HealthTD[playerid][5], 255);
    PlayerTextDrawFont(playerid, HealthTD[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, HealthTD[playerid][5], 1);

    HealthTD[playerid][6] = CreatePlayerTextDraw(playerid, 229.000, 108.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, HealthTD[playerid][6], 1.000, 222.000);
    PlayerTextDrawAlignment(playerid, HealthTD[playerid][6], 1);
    PlayerTextDrawColor(playerid, HealthTD[playerid][6], -1);
    PlayerTextDrawSetShadow(playerid, HealthTD[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, HealthTD[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, HealthTD[playerid][6], 255);
    PlayerTextDrawFont(playerid, HealthTD[playerid][6], 4);
    PlayerTextDrawSetProportional(playerid, HealthTD[playerid][6], 1);

    HealthTD[playerid][7] = CreatePlayerTextDraw(playerid, 315.000, 108.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, HealthTD[playerid][7], 1.000, 222.000);
    PlayerTextDrawAlignment(playerid, HealthTD[playerid][7], 1);
    PlayerTextDrawColor(playerid, HealthTD[playerid][7], -1);
    PlayerTextDrawSetShadow(playerid, HealthTD[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, HealthTD[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, HealthTD[playerid][7], 255);
    PlayerTextDrawFont(playerid, HealthTD[playerid][7], 4);
    PlayerTextDrawSetProportional(playerid, HealthTD[playerid][7], 1);

    HealthTD[playerid][8] = CreatePlayerTextDraw(playerid, 230.000, 108.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, HealthTD[playerid][8], 85.000, 2.000);
    PlayerTextDrawAlignment(playerid, HealthTD[playerid][8], 1);
    PlayerTextDrawColor(playerid, HealthTD[playerid][8], -1);
    PlayerTextDrawSetShadow(playerid, HealthTD[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, HealthTD[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, HealthTD[playerid][8], 255);
    PlayerTextDrawFont(playerid, HealthTD[playerid][8], 4);
    PlayerTextDrawSetProportional(playerid, HealthTD[playerid][8], 1);

    HealthTD[playerid][9] = CreatePlayerTextDraw(playerid, 230.000, 328.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, HealthTD[playerid][9], 85.000, 2.000);
    PlayerTextDrawAlignment(playerid, HealthTD[playerid][9], 1);
    PlayerTextDrawColor(playerid, HealthTD[playerid][9], -1);
    PlayerTextDrawSetShadow(playerid, HealthTD[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, HealthTD[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, HealthTD[playerid][9], 255);
    PlayerTextDrawFont(playerid, HealthTD[playerid][9], 4);
    PlayerTextDrawSetProportional(playerid, HealthTD[playerid][9], 1);

    HealthTD[playerid][10] = CreatePlayerTextDraw(playerid, 322.000, 108.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, HealthTD[playerid][10], 142.000, 221.000);
    PlayerTextDrawAlignment(playerid, HealthTD[playerid][10], 1);
    PlayerTextDrawColor(playerid, HealthTD[playerid][10], -1);
    PlayerTextDrawSetShadow(playerid, HealthTD[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, HealthTD[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, HealthTD[playerid][10], 255);
    PlayerTextDrawFont(playerid, HealthTD[playerid][10], 4);
    PlayerTextDrawSetProportional(playerid, HealthTD[playerid][10], 1);

    HealthTD[playerid][11] = CreatePlayerTextDraw(playerid, 186.000, 96.000, "_");
    PlayerTextDrawTextSize(playerid, HealthTD[playerid][11], 170.000, 220.000);
    PlayerTextDrawAlignment(playerid, HealthTD[playerid][11], 1);
    PlayerTextDrawColor(playerid, HealthTD[playerid][11], -1);
    PlayerTextDrawSetShadow(playerid, HealthTD[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, HealthTD[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, HealthTD[playerid][11], 0);
    PlayerTextDrawFont(playerid, HealthTD[playerid][11], 5);
    PlayerTextDrawSetProportional(playerid, HealthTD[playerid][11], 0);
    PlayerTextDrawSetPreviewModel(playerid, HealthTD[playerid][11], 0);
    PlayerTextDrawSetPreviewRot(playerid, HealthTD[playerid][11], 0.000, 0.000, 0.000, 1.000);
    PlayerTextDrawSetPreviewVehCol(playerid, HealthTD[playerid][11], 0, 0);

    HealthTD[playerid][12] = CreatePlayerTextDraw(playerid, 278.000, 125.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, HealthTD[playerid][12], 23.000, 2.000);
    PlayerTextDrawAlignment(playerid, HealthTD[playerid][12], 1);
    PlayerTextDrawColor(playerid, HealthTD[playerid][12], 16423679);
    PlayerTextDrawSetShadow(playerid, HealthTD[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, HealthTD[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, HealthTD[playerid][12], 255);
    PlayerTextDrawFont(playerid, HealthTD[playerid][12], 4);
    PlayerTextDrawSetProportional(playerid, HealthTD[playerid][12], 1);

    HealthTD[playerid][13] = CreatePlayerTextDraw(playerid, 250.000, 181.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, HealthTD[playerid][13], 23.000, 2.000);
    PlayerTextDrawAlignment(playerid, HealthTD[playerid][13], 1);
    PlayerTextDrawColor(playerid, HealthTD[playerid][13], 16423679);
    PlayerTextDrawSetShadow(playerid, HealthTD[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, HealthTD[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, HealthTD[playerid][13], 255);
    PlayerTextDrawFont(playerid, HealthTD[playerid][13], 4);
    PlayerTextDrawSetProportional(playerid, HealthTD[playerid][13], 1);

    HealthTD[playerid][14] = CreatePlayerTextDraw(playerid, 232.000, 205.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, HealthTD[playerid][14], 23.000, 2.000);
    PlayerTextDrawAlignment(playerid, HealthTD[playerid][14], 1);
    PlayerTextDrawColor(playerid, HealthTD[playerid][14], 16423679);
    PlayerTextDrawSetShadow(playerid, HealthTD[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, HealthTD[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, HealthTD[playerid][14], 255);
    PlayerTextDrawFont(playerid, HealthTD[playerid][14], 4);
    PlayerTextDrawSetProportional(playerid, HealthTD[playerid][14], 1);

    HealthTD[playerid][15] = CreatePlayerTextDraw(playerid, 290.000, 205.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, HealthTD[playerid][15], 23.000, 2.000);
    PlayerTextDrawAlignment(playerid, HealthTD[playerid][15], 1);
    PlayerTextDrawColor(playerid, HealthTD[playerid][15], 16423679);
    PlayerTextDrawSetShadow(playerid, HealthTD[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, HealthTD[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, HealthTD[playerid][15], 255);
    PlayerTextDrawFont(playerid, HealthTD[playerid][15], 4);
    PlayerTextDrawSetProportional(playerid, HealthTD[playerid][15], 1);

    HealthTD[playerid][16] = CreatePlayerTextDraw(playerid, 288.000, 269.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, HealthTD[playerid][16], 23.000, 2.000);
    PlayerTextDrawAlignment(playerid, HealthTD[playerid][16], 1);
    PlayerTextDrawColor(playerid, HealthTD[playerid][16], 16423679);
    PlayerTextDrawSetShadow(playerid, HealthTD[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, HealthTD[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, HealthTD[playerid][16], 255);
    PlayerTextDrawFont(playerid, HealthTD[playerid][16], 4);
    PlayerTextDrawSetProportional(playerid, HealthTD[playerid][16], 1);

    HealthTD[playerid][17] = CreatePlayerTextDraw(playerid, 235.000, 269.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, HealthTD[playerid][17], 23.000, 2.000);
    PlayerTextDrawAlignment(playerid, HealthTD[playerid][17], 1);
    PlayerTextDrawColor(playerid, HealthTD[playerid][17], 16423679);
    PlayerTextDrawSetShadow(playerid, HealthTD[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, HealthTD[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, HealthTD[playerid][17], 255);
    PlayerTextDrawFont(playerid, HealthTD[playerid][17], 4);
    PlayerTextDrawSetProportional(playerid, HealthTD[playerid][17], 1);

    HealthTD[playerid][18] = CreatePlayerTextDraw(playerid, 290.000, 116.000, "Kepala");
    PlayerTextDrawLetterSize(playerid, HealthTD[playerid][18], 0.170, 0.699);
    PlayerTextDrawAlignment(playerid, HealthTD[playerid][18], 2);
    PlayerTextDrawColor(playerid, HealthTD[playerid][18], -1);
    PlayerTextDrawSetShadow(playerid, HealthTD[playerid][18], 0);
    PlayerTextDrawSetOutline(playerid, HealthTD[playerid][18], 0);
    PlayerTextDrawBackgroundColor(playerid, HealthTD[playerid][18], 150);
    PlayerTextDrawFont(playerid, HealthTD[playerid][18], 1);
    PlayerTextDrawSetProportional(playerid, HealthTD[playerid][18], 1);

    HealthTD[playerid][19] = CreatePlayerTextDraw(playerid, 261.000, 173.000, "Perut");
    PlayerTextDrawLetterSize(playerid, HealthTD[playerid][19], 0.170, 0.699);
    PlayerTextDrawAlignment(playerid, HealthTD[playerid][19], 2);
    PlayerTextDrawColor(playerid, HealthTD[playerid][19], -1);
    PlayerTextDrawSetShadow(playerid, HealthTD[playerid][19], 0);
    PlayerTextDrawSetOutline(playerid, HealthTD[playerid][19], 0);
    PlayerTextDrawBackgroundColor(playerid, HealthTD[playerid][19], 150);
    PlayerTextDrawFont(playerid, HealthTD[playerid][19], 1);
    PlayerTextDrawSetProportional(playerid, HealthTD[playerid][19], 1);

    HealthTD[playerid][20] = CreatePlayerTextDraw(playerid, 250.000, 197.000, "Tangan Kanan");
    PlayerTextDrawLetterSize(playerid, HealthTD[playerid][20], 0.170, 0.699);
    PlayerTextDrawAlignment(playerid, HealthTD[playerid][20], 2);
    PlayerTextDrawColor(playerid, HealthTD[playerid][20], -1);
    PlayerTextDrawSetShadow(playerid, HealthTD[playerid][20], 0);
    PlayerTextDrawSetOutline(playerid, HealthTD[playerid][20], 0);
    PlayerTextDrawBackgroundColor(playerid, HealthTD[playerid][20], 150);
    PlayerTextDrawFont(playerid, HealthTD[playerid][20], 1);
    PlayerTextDrawSetProportional(playerid, HealthTD[playerid][20], 1);

    HealthTD[playerid][21] = CreatePlayerTextDraw(playerid, 297.000, 197.000, "Tangan Kiri");
    PlayerTextDrawLetterSize(playerid, HealthTD[playerid][21], 0.170, 0.699);
    PlayerTextDrawAlignment(playerid, HealthTD[playerid][21], 2);
    PlayerTextDrawColor(playerid, HealthTD[playerid][21], -1);
    PlayerTextDrawSetShadow(playerid, HealthTD[playerid][21], 0);
    PlayerTextDrawSetOutline(playerid, HealthTD[playerid][21], 0);
    PlayerTextDrawBackgroundColor(playerid, HealthTD[playerid][21], 150);
    PlayerTextDrawFont(playerid, HealthTD[playerid][21], 1);
    PlayerTextDrawSetProportional(playerid, HealthTD[playerid][21], 1);

    HealthTD[playerid][22] = CreatePlayerTextDraw(playerid, 246.000, 261.000, "Kaki Kanan");
    PlayerTextDrawLetterSize(playerid, HealthTD[playerid][22], 0.170, 0.699);
    PlayerTextDrawAlignment(playerid, HealthTD[playerid][22], 2);
    PlayerTextDrawColor(playerid, HealthTD[playerid][22], -1);
    PlayerTextDrawSetShadow(playerid, HealthTD[playerid][22], 0);
    PlayerTextDrawSetOutline(playerid, HealthTD[playerid][22], 0);
    PlayerTextDrawBackgroundColor(playerid, HealthTD[playerid][22], 150);
    PlayerTextDrawFont(playerid, HealthTD[playerid][22], 1);
    PlayerTextDrawSetProportional(playerid, HealthTD[playerid][22], 1);

    HealthTD[playerid][23] = CreatePlayerTextDraw(playerid, 298.000, 261.000, "Kaki Kiri");
    PlayerTextDrawLetterSize(playerid, HealthTD[playerid][23], 0.170, 0.699);
    PlayerTextDrawAlignment(playerid, HealthTD[playerid][23], 2);
    PlayerTextDrawColor(playerid, HealthTD[playerid][23], -1);
    PlayerTextDrawSetShadow(playerid, HealthTD[playerid][23], 0);
    PlayerTextDrawSetOutline(playerid, HealthTD[playerid][23], 0);
    PlayerTextDrawBackgroundColor(playerid, HealthTD[playerid][23], 150);
    PlayerTextDrawFont(playerid, HealthTD[playerid][23], 1);
    PlayerTextDrawSetProportional(playerid, HealthTD[playerid][23], 1);

    HealthTD[playerid][24] = CreatePlayerTextDraw(playerid, 242.000, 81.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, HealthTD[playerid][24], 205.000, 17.000);
    PlayerTextDrawAlignment(playerid, HealthTD[playerid][24], 1);
    PlayerTextDrawColor(playerid, HealthTD[playerid][24], 2005441023);
    PlayerTextDrawSetShadow(playerid, HealthTD[playerid][24], 0);
    PlayerTextDrawSetOutline(playerid, HealthTD[playerid][24], 0);
    PlayerTextDrawBackgroundColor(playerid, HealthTD[playerid][24], 255);
    PlayerTextDrawFont(playerid, HealthTD[playerid][24], 4);
    PlayerTextDrawSetProportional(playerid, HealthTD[playerid][24], 1);

    HealthTD[playerid][25] = CreatePlayerTextDraw(playerid, 228.000, 77.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, HealthTD[playerid][25], 24.000, 25.000);
    PlayerTextDrawAlignment(playerid, HealthTD[playerid][25], 1);
    PlayerTextDrawColor(playerid, HealthTD[playerid][25], 2005441023);
    PlayerTextDrawSetShadow(playerid, HealthTD[playerid][25], 0);
    PlayerTextDrawSetOutline(playerid, HealthTD[playerid][25], 0);
    PlayerTextDrawBackgroundColor(playerid, HealthTD[playerid][25], 255);
    PlayerTextDrawFont(playerid, HealthTD[playerid][25], 4);
    PlayerTextDrawSetProportional(playerid, HealthTD[playerid][25], 1);

    HealthTD[playerid][26] = CreatePlayerTextDraw(playerid, 436.000, 77.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, HealthTD[playerid][26], 24.000, 25.000);
    PlayerTextDrawAlignment(playerid, HealthTD[playerid][26], 1);
    PlayerTextDrawColor(playerid, HealthTD[playerid][26], 2005441023);
    PlayerTextDrawSetShadow(playerid, HealthTD[playerid][26], 0);
    PlayerTextDrawSetOutline(playerid, HealthTD[playerid][26], 0);
    PlayerTextDrawBackgroundColor(playerid, HealthTD[playerid][26], 255);
    PlayerTextDrawFont(playerid, HealthTD[playerid][26], 4);
    PlayerTextDrawSetProportional(playerid, HealthTD[playerid][26], 1);

    HealthTD[playerid][27] = CreatePlayerTextDraw(playerid, 344.000, 82.000, "BODY CONDITION RAYY BONELO");
    PlayerTextDrawLetterSize(playerid, HealthTD[playerid][27], 0.220, 1.299);
    PlayerTextDrawAlignment(playerid, HealthTD[playerid][27], 2);
    PlayerTextDrawColor(playerid, HealthTD[playerid][27], -1);
    PlayerTextDrawSetShadow(playerid, HealthTD[playerid][27], 0);
    PlayerTextDrawSetOutline(playerid, HealthTD[playerid][27], 0);
    PlayerTextDrawBackgroundColor(playerid, HealthTD[playerid][27], 150);
    PlayerTextDrawFont(playerid, HealthTD[playerid][27], 2);
    PlayerTextDrawSetProportional(playerid, HealthTD[playerid][27], 1);

    HealthTD[playerid][28] = CreatePlayerTextDraw(playerid, 328.000, 128.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, HealthTD[playerid][28], 125.000, 17.000);
    PlayerTextDrawAlignment(playerid, HealthTD[playerid][28], 1);
    PlayerTextDrawColor(playerid, HealthTD[playerid][28], 2005441023);
    PlayerTextDrawSetShadow(playerid, HealthTD[playerid][28], 0);
    PlayerTextDrawSetOutline(playerid, HealthTD[playerid][28], 0);
    PlayerTextDrawBackgroundColor(playerid, HealthTD[playerid][28], 255);
    PlayerTextDrawFont(playerid, HealthTD[playerid][28], 4);
    PlayerTextDrawSetProportional(playerid, HealthTD[playerid][28], 1);

    HealthTD[playerid][29] = CreatePlayerTextDraw(playerid, 328.000, 163.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, HealthTD[playerid][29], 125.000, 17.000);
    PlayerTextDrawAlignment(playerid, HealthTD[playerid][29], 1);
    PlayerTextDrawColor(playerid, HealthTD[playerid][29], 2005441023);
    PlayerTextDrawSetShadow(playerid, HealthTD[playerid][29], 0);
    PlayerTextDrawSetOutline(playerid, HealthTD[playerid][29], 0);
    PlayerTextDrawBackgroundColor(playerid, HealthTD[playerid][29], 255);
    PlayerTextDrawFont(playerid, HealthTD[playerid][29], 4);
    PlayerTextDrawSetProportional(playerid, HealthTD[playerid][29], 1);

    HealthTD[playerid][30] = CreatePlayerTextDraw(playerid, 328.000, 200.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, HealthTD[playerid][30], 125.000, 17.000);
    PlayerTextDrawAlignment(playerid, HealthTD[playerid][30], 1);
    PlayerTextDrawColor(playerid, HealthTD[playerid][30], 2005441023);
    PlayerTextDrawSetShadow(playerid, HealthTD[playerid][30], 0);
    PlayerTextDrawSetOutline(playerid, HealthTD[playerid][30], 0);
    PlayerTextDrawBackgroundColor(playerid, HealthTD[playerid][30], 255);
    PlayerTextDrawFont(playerid, HealthTD[playerid][30], 4);
    PlayerTextDrawSetProportional(playerid, HealthTD[playerid][30], 1);

    HealthTD[playerid][31] = CreatePlayerTextDraw(playerid, 328.000, 236.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, HealthTD[playerid][31], 125.000, 17.000);
    PlayerTextDrawAlignment(playerid, HealthTD[playerid][31], 1);
    PlayerTextDrawColor(playerid, HealthTD[playerid][31], 2005441023);
    PlayerTextDrawSetShadow(playerid, HealthTD[playerid][31], 0);
    PlayerTextDrawSetOutline(playerid, HealthTD[playerid][31], 0);
    PlayerTextDrawBackgroundColor(playerid, HealthTD[playerid][31], 255);
    PlayerTextDrawFont(playerid, HealthTD[playerid][31], 4);
    PlayerTextDrawSetProportional(playerid, HealthTD[playerid][31], 1);

    HealthTD[playerid][32] = CreatePlayerTextDraw(playerid, 328.000, 272.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, HealthTD[playerid][32], 125.000, 17.000);
    PlayerTextDrawAlignment(playerid, HealthTD[playerid][32], 1);
    PlayerTextDrawColor(playerid, HealthTD[playerid][32], 2005441023);
    PlayerTextDrawSetShadow(playerid, HealthTD[playerid][32], 0);
    PlayerTextDrawSetOutline(playerid, HealthTD[playerid][32], 0);
    PlayerTextDrawBackgroundColor(playerid, HealthTD[playerid][32], 255);
    PlayerTextDrawFont(playerid, HealthTD[playerid][32], 4);
    PlayerTextDrawSetProportional(playerid, HealthTD[playerid][32], 1);

    HealthTD[playerid][33] = CreatePlayerTextDraw(playerid, 328.000, 306.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, HealthTD[playerid][33], 125.000, 17.000);
    PlayerTextDrawAlignment(playerid, HealthTD[playerid][33], 1);
    PlayerTextDrawColor(playerid, HealthTD[playerid][33], 2005441023);
    PlayerTextDrawSetShadow(playerid, HealthTD[playerid][33], 0);
    PlayerTextDrawSetOutline(playerid, HealthTD[playerid][33], 0);
    PlayerTextDrawBackgroundColor(playerid, HealthTD[playerid][33], 255);
    PlayerTextDrawFont(playerid, HealthTD[playerid][33], 4);
    PlayerTextDrawSetProportional(playerid, HealthTD[playerid][33], 1);

    HealthTD[playerid][34] = CreatePlayerTextDraw(playerid, 329.000, 129.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, HealthTD[playerid][34], 123.000, 15.000);
    PlayerTextDrawAlignment(playerid, HealthTD[playerid][34], 1);
    PlayerTextDrawColor(playerid, HealthTD[playerid][34], 16711935);
    PlayerTextDrawSetShadow(playerid, HealthTD[playerid][34], 0);
    PlayerTextDrawSetOutline(playerid, HealthTD[playerid][34], 0);
    PlayerTextDrawBackgroundColor(playerid, HealthTD[playerid][34], 255);
    PlayerTextDrawFont(playerid, HealthTD[playerid][34], 4);
    PlayerTextDrawSetProportional(playerid, HealthTD[playerid][34], 1);

    HealthTD[playerid][35] = CreatePlayerTextDraw(playerid, 329.000, 164.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, HealthTD[playerid][35], 123.000, 15.000);
    PlayerTextDrawAlignment(playerid, HealthTD[playerid][35], 1);
    PlayerTextDrawColor(playerid, HealthTD[playerid][35], 16711935);
    PlayerTextDrawSetShadow(playerid, HealthTD[playerid][35], 0);
    PlayerTextDrawSetOutline(playerid, HealthTD[playerid][35], 0);
    PlayerTextDrawBackgroundColor(playerid, HealthTD[playerid][35], 255);
    PlayerTextDrawFont(playerid, HealthTD[playerid][35], 4);
    PlayerTextDrawSetProportional(playerid, HealthTD[playerid][35], 1);

    HealthTD[playerid][36] = CreatePlayerTextDraw(playerid, 329.000, 201.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, HealthTD[playerid][36], 123.000, 15.000);
    PlayerTextDrawAlignment(playerid, HealthTD[playerid][36], 1);
    PlayerTextDrawColor(playerid, HealthTD[playerid][36], 16711935);
    PlayerTextDrawSetShadow(playerid, HealthTD[playerid][36], 0);
    PlayerTextDrawSetOutline(playerid, HealthTD[playerid][36], 0);
    PlayerTextDrawBackgroundColor(playerid, HealthTD[playerid][36], 255);
    PlayerTextDrawFont(playerid, HealthTD[playerid][36], 4);
    PlayerTextDrawSetProportional(playerid, HealthTD[playerid][36], 1);

    HealthTD[playerid][37] = CreatePlayerTextDraw(playerid, 329.000, 237.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, HealthTD[playerid][37], 123.000, 15.000);
    PlayerTextDrawAlignment(playerid, HealthTD[playerid][37], 1);
    PlayerTextDrawColor(playerid, HealthTD[playerid][37], 16711935);
    PlayerTextDrawSetShadow(playerid, HealthTD[playerid][37], 0);
    PlayerTextDrawSetOutline(playerid, HealthTD[playerid][37], 0);
    PlayerTextDrawBackgroundColor(playerid, HealthTD[playerid][37], 255);
    PlayerTextDrawFont(playerid, HealthTD[playerid][37], 4);
    PlayerTextDrawSetProportional(playerid, HealthTD[playerid][37], 1);

    HealthTD[playerid][38] = CreatePlayerTextDraw(playerid, 329.000, 273.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, HealthTD[playerid][38], 123.000, 15.000);
    PlayerTextDrawAlignment(playerid, HealthTD[playerid][38], 1);
    PlayerTextDrawColor(playerid, HealthTD[playerid][38], 16711935);
    PlayerTextDrawSetShadow(playerid, HealthTD[playerid][38], 0);
    PlayerTextDrawSetOutline(playerid, HealthTD[playerid][38], 0);
    PlayerTextDrawBackgroundColor(playerid, HealthTD[playerid][38], 255);
    PlayerTextDrawFont(playerid, HealthTD[playerid][38], 4);
    PlayerTextDrawSetProportional(playerid, HealthTD[playerid][38], 1);

    HealthTD[playerid][39] = CreatePlayerTextDraw(playerid, 329.000, 307.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, HealthTD[playerid][39], 123.000, 15.000);
    PlayerTextDrawAlignment(playerid, HealthTD[playerid][39], 1);
    PlayerTextDrawColor(playerid, HealthTD[playerid][39], 16711935);
    PlayerTextDrawSetShadow(playerid, HealthTD[playerid][39], 0);
    PlayerTextDrawSetOutline(playerid, HealthTD[playerid][39], 0);
    PlayerTextDrawBackgroundColor(playerid, HealthTD[playerid][39], 255);
    PlayerTextDrawFont(playerid, HealthTD[playerid][39], 4);
    PlayerTextDrawSetProportional(playerid, HealthTD[playerid][39], 1);

    HealthTD[playerid][40] = CreatePlayerTextDraw(playerid, 329.000, 118.000, "Kepala");
    PlayerTextDrawLetterSize(playerid, HealthTD[playerid][40], 0.220, 0.899);
    PlayerTextDrawAlignment(playerid, HealthTD[playerid][40], 1);
    PlayerTextDrawColor(playerid, HealthTD[playerid][40], 1768516095);
    PlayerTextDrawSetShadow(playerid, HealthTD[playerid][40], 0);
    PlayerTextDrawSetOutline(playerid, HealthTD[playerid][40], 0);
    PlayerTextDrawBackgroundColor(playerid, HealthTD[playerid][40], 150);
    PlayerTextDrawFont(playerid, HealthTD[playerid][40], 1);
    PlayerTextDrawSetProportional(playerid, HealthTD[playerid][40], 1);

    HealthTD[playerid][41] = CreatePlayerTextDraw(playerid, 329.000, 154.000, "Perut");
    PlayerTextDrawLetterSize(playerid, HealthTD[playerid][41], 0.220, 0.899);
    PlayerTextDrawAlignment(playerid, HealthTD[playerid][41], 1);
    PlayerTextDrawColor(playerid, HealthTD[playerid][41], 1768516095);
    PlayerTextDrawSetShadow(playerid, HealthTD[playerid][41], 0);
    PlayerTextDrawSetOutline(playerid, HealthTD[playerid][41], 0);
    PlayerTextDrawBackgroundColor(playerid, HealthTD[playerid][41], 150);
    PlayerTextDrawFont(playerid, HealthTD[playerid][41], 1);
    PlayerTextDrawSetProportional(playerid, HealthTD[playerid][41], 1);

    HealthTD[playerid][42] = CreatePlayerTextDraw(playerid, 329.000, 191.000, "Tangan Kanan");
    PlayerTextDrawLetterSize(playerid, HealthTD[playerid][42], 0.220, 0.899);
    PlayerTextDrawAlignment(playerid, HealthTD[playerid][42], 1);
    PlayerTextDrawColor(playerid, HealthTD[playerid][42], 1768516095);
    PlayerTextDrawSetShadow(playerid, HealthTD[playerid][42], 0);
    PlayerTextDrawSetOutline(playerid, HealthTD[playerid][42], 0);
    PlayerTextDrawBackgroundColor(playerid, HealthTD[playerid][42], 150);
    PlayerTextDrawFont(playerid, HealthTD[playerid][42], 1);
    PlayerTextDrawSetProportional(playerid, HealthTD[playerid][42], 1);

    HealthTD[playerid][43] = CreatePlayerTextDraw(playerid, 329.000, 227.000, "Tangan Kiri");
    PlayerTextDrawLetterSize(playerid, HealthTD[playerid][43], 0.220, 0.899);
    PlayerTextDrawAlignment(playerid, HealthTD[playerid][43], 1);
    PlayerTextDrawColor(playerid, HealthTD[playerid][43], 1768516095);
    PlayerTextDrawSetShadow(playerid, HealthTD[playerid][43], 0);
    PlayerTextDrawSetOutline(playerid, HealthTD[playerid][43], 0);
    PlayerTextDrawBackgroundColor(playerid, HealthTD[playerid][43], 150);
    PlayerTextDrawFont(playerid, HealthTD[playerid][43], 1);
    PlayerTextDrawSetProportional(playerid, HealthTD[playerid][43], 1);

    HealthTD[playerid][44] = CreatePlayerTextDraw(playerid, 329.000, 264.000, "Kaki kanan");
    PlayerTextDrawLetterSize(playerid, HealthTD[playerid][44], 0.220, 0.899);
    PlayerTextDrawAlignment(playerid, HealthTD[playerid][44], 1);
    PlayerTextDrawColor(playerid, HealthTD[playerid][44], 1768516095);
    PlayerTextDrawSetShadow(playerid, HealthTD[playerid][44], 0);
    PlayerTextDrawSetOutline(playerid, HealthTD[playerid][44], 0);
    PlayerTextDrawBackgroundColor(playerid, HealthTD[playerid][44], 150);
    PlayerTextDrawFont(playerid, HealthTD[playerid][44], 1);
    PlayerTextDrawSetProportional(playerid, HealthTD[playerid][44], 1);

    HealthTD[playerid][45] = CreatePlayerTextDraw(playerid, 329.000, 298.000, "Kaki Kiri");
    PlayerTextDrawLetterSize(playerid, HealthTD[playerid][45], 0.220, 0.899);
    PlayerTextDrawAlignment(playerid, HealthTD[playerid][45], 1);
    PlayerTextDrawColor(playerid, HealthTD[playerid][45], 1768516095);
    PlayerTextDrawSetShadow(playerid, HealthTD[playerid][45], 0);
    PlayerTextDrawSetOutline(playerid, HealthTD[playerid][45], 0);
    PlayerTextDrawBackgroundColor(playerid, HealthTD[playerid][45], 150);
    PlayerTextDrawFont(playerid, HealthTD[playerid][45], 1);
    PlayerTextDrawSetProportional(playerid, HealthTD[playerid][45], 1);

    HealthTD[playerid][46] = CreatePlayerTextDraw(playerid, 228.000, 343.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, HealthTD[playerid][46], 90.000, 16.000);
    PlayerTextDrawAlignment(playerid, HealthTD[playerid][46], 1);
    PlayerTextDrawColor(playerid, HealthTD[playerid][46], -2147483393);
    PlayerTextDrawSetShadow(playerid, HealthTD[playerid][46], 0);
    PlayerTextDrawSetOutline(playerid, HealthTD[playerid][46], 0);
    PlayerTextDrawBackgroundColor(playerid, HealthTD[playerid][46], 255);
    PlayerTextDrawFont(playerid, HealthTD[playerid][46], 4);
    PlayerTextDrawSetProportional(playerid, HealthTD[playerid][46], 1);
    PlayerTextDrawSetSelectable(playerid, HealthTD[playerid][46], 1);

    HealthTD[playerid][47] = CreatePlayerTextDraw(playerid, 270.000, 345.000, "Close");
    PlayerTextDrawLetterSize(playerid, HealthTD[playerid][47], 0.280, 1.099);
    PlayerTextDrawAlignment(playerid, HealthTD[playerid][47], 2);
    PlayerTextDrawColor(playerid, HealthTD[playerid][47], -1);
    PlayerTextDrawSetShadow(playerid, HealthTD[playerid][47], 0);
    PlayerTextDrawSetOutline(playerid, HealthTD[playerid][47], 0);
    PlayerTextDrawBackgroundColor(playerid, HealthTD[playerid][47], 150);
    PlayerTextDrawFont(playerid, HealthTD[playerid][47], 1);
    PlayerTextDrawSetProportional(playerid, HealthTD[playerid][47], 1);

    MenuPDG[playerid][0] = CreatePlayerTextDraw(playerid, 260.000, 90.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MenuPDG[playerid][0], 153.000, 272.000);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][0], 1);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][0], 255);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][0], 255);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][0], 1);

    MenuPDG[playerid][1] = CreatePlayerTextDraw(playerid, 260.000, 124.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MenuPDG[playerid][1], 69.000, 37.000);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][1], 1);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][1], -12254977);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][1], 255);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][1], 1);
    PlayerTextDrawSetSelectable(playerid, MenuPDG[playerid][1], 1);

    MenuPDG[playerid][2] = CreatePlayerTextDraw(playerid, 344.000, 124.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MenuPDG[playerid][2], 69.000, 37.000);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][2], 1);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][2], -12254977);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][2], 255);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][2], 1);
    PlayerTextDrawSetSelectable(playerid, MenuPDG[playerid][2], 1);

    MenuPDG[playerid][3] = CreatePlayerTextDraw(playerid, 260.000, 170.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MenuPDG[playerid][3], 69.000, 37.000);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][3], 1);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][3], -12254977);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][3], 255);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][3], 1);
    PlayerTextDrawSetSelectable(playerid, MenuPDG[playerid][3], 1);

    MenuPDG[playerid][4] = CreatePlayerTextDraw(playerid, 344.000, 170.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MenuPDG[playerid][4], 69.000, 37.000);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][4], 1);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][4], -12254977);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][4], 255);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][4], 1);
    PlayerTextDrawSetSelectable(playerid, MenuPDG[playerid][4], 1);

    MenuPDG[playerid][5] = CreatePlayerTextDraw(playerid, 344.000, 244.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MenuPDG[playerid][5], 69.000, 37.000);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][5], 1);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][5], -12254977);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][5], 255);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][5], 1);
    PlayerTextDrawSetSelectable(playerid, MenuPDG[playerid][5], 1);

    MenuPDG[playerid][6] = CreatePlayerTextDraw(playerid, 344.000, 291.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MenuPDG[playerid][6], 69.000, 37.000);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][6], 1);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][6], -12254977);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][6], 255);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][6], 4);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][6], 1);
    PlayerTextDrawSetSelectable(playerid, MenuPDG[playerid][6], 1);

    MenuPDG[playerid][7] = CreatePlayerTextDraw(playerid, 260.000, 291.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MenuPDG[playerid][7], 69.000, 37.000);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][7], 1);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][7], -12254977);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][7], 255);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][7], 4);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][7], 1);
    PlayerTextDrawSetSelectable(playerid, MenuPDG[playerid][7], 1);

    MenuPDG[playerid][8] = CreatePlayerTextDraw(playerid, 260.000, 244.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MenuPDG[playerid][8], 69.000, 37.000);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][8], 1);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][8], -12254977);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][8], 255);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][8], 4);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][8], 1);
    PlayerTextDrawSetSelectable(playerid, MenuPDG[playerid][8], 1);

    MenuPDG[playerid][9] = CreatePlayerTextDraw(playerid, 339.000, 90.000, "List Menu Pedagang");
    PlayerTextDrawLetterSize(playerid, MenuPDG[playerid][9], 0.180, 1.399);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][9], 2);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][9], -12254977);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][9], 150);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][9], 1);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][9], 1);

    MenuPDG[playerid][10] = CreatePlayerTextDraw(playerid, 262.000, 108.000, "Makanan:");
    PlayerTextDrawLetterSize(playerid, MenuPDG[playerid][10], 0.180, 1.399);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][10], 1);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][10], -1);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][10], 150);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][10], 1);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][10], 1);

    MenuPDG[playerid][11] = CreatePlayerTextDraw(playerid, 262.000, 228.000, "Minuman:");
    PlayerTextDrawLetterSize(playerid, MenuPDG[playerid][11], 0.180, 1.399);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][11], 1);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][11], -1);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][11], 150);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][11], 1);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][11], 1);

    MenuPDG[playerid][12] = CreatePlayerTextDraw(playerid, 286.000, 338.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MenuPDG[playerid][12], 72.000, 18.000);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][12], 1);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][12], 6553855);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][12], 255);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][12], 4);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][12], 1);
    PlayerTextDrawSetSelectable(playerid, MenuPDG[playerid][12], 1);

    MenuPDG[playerid][13] = CreatePlayerTextDraw(playerid, 281.000, 334.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, MenuPDG[playerid][13], 11.000, 26.000);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][13], 1);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][13], 6553855);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][13], 255);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][13], 4);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][13], 1);

    MenuPDG[playerid][14] = CreatePlayerTextDraw(playerid, 353.000, 334.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, MenuPDG[playerid][14], 11.000, 26.000);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][14], 1);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][14], 6553855);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][14], 255);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][14], 4);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][14], 1);

    MenuPDG[playerid][15] = CreatePlayerTextDraw(playerid, 374.000, 338.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MenuPDG[playerid][15], 21.000, 18.000);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][15], 1);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][15], 1768516095);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][15], 255);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][15], 4);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][15], 1);
    PlayerTextDrawSetSelectable(playerid, MenuPDG[playerid][15], 1);

    MenuPDG[playerid][16] = CreatePlayerTextDraw(playerid, 369.000, 334.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, MenuPDG[playerid][16], 11.000, 26.000);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][16], 1);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][16], 1768516095);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][16], 255);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][16], 4);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][16], 1);

    MenuPDG[playerid][17] = CreatePlayerTextDraw(playerid, 390.000, 334.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, MenuPDG[playerid][17], 11.000, 26.000);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][17], 1);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][17], 1768516095);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][17], 255);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][17], 4);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][17], 1);

    MenuPDG[playerid][18] = CreatePlayerTextDraw(playerid, 272.000, 106.000, "_");
    PlayerTextDrawTextSize(playerid, MenuPDG[playerid][18], 39.000, 58.000);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][18], 1);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][18], -1);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][18], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][18], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][18], 0);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][18], 5);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][18], 0);
    PlayerTextDrawSetPreviewModel(playerid, MenuPDG[playerid][18], 19568);
    PlayerTextDrawSetPreviewRot(playerid, MenuPDG[playerid][18], -33.000, 0.000, -36.000, 1.300);
    PlayerTextDrawSetPreviewVehCol(playerid, MenuPDG[playerid][18], 0, 0);

    MenuPDG[playerid][19] = CreatePlayerTextDraw(playerid, 272.000, 152.000, "_");
    PlayerTextDrawTextSize(playerid, MenuPDG[playerid][19], 39.000, 58.000);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][19], 1);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][19], -1);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][19], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][19], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][19], 0);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][19], 5);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][19], 0);
    PlayerTextDrawSetPreviewModel(playerid, MenuPDG[playerid][19], 19567);
    PlayerTextDrawSetPreviewRot(playerid, MenuPDG[playerid][19], -33.000, 0.000, -36.000, 1.300);
    PlayerTextDrawSetPreviewVehCol(playerid, MenuPDG[playerid][19], 0, 0);

    MenuPDG[playerid][20] = CreatePlayerTextDraw(playerid, 364.000, 103.000, "_");
    PlayerTextDrawTextSize(playerid, MenuPDG[playerid][20], 32.000, 44.000);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][20], 1);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][20], -1);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][20], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][20], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][20], 0);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][20], 5);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][20], 0);
    PlayerTextDrawSetPreviewModel(playerid, MenuPDG[playerid][20], 2218);
    PlayerTextDrawSetPreviewRot(playerid, MenuPDG[playerid][20], -28.000, 0.000, 0.000, 1.000);
    PlayerTextDrawSetPreviewVehCol(playerid, MenuPDG[playerid][20], 0, 0);

    MenuPDG[playerid][21] = CreatePlayerTextDraw(playerid, 364.000, 149.000, "_");
    PlayerTextDrawTextSize(playerid, MenuPDG[playerid][21], 32.000, 44.000);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][21], 1);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][21], -1);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][21], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][21], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][21], 0);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][21], 5);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][21], 0);
    PlayerTextDrawSetPreviewModel(playerid, MenuPDG[playerid][21], 2355);
    PlayerTextDrawSetPreviewRot(playerid, MenuPDG[playerid][21], -28.000, 0.000, 0.000, 1.000);
    PlayerTextDrawSetPreviewVehCol(playerid, MenuPDG[playerid][21], 0, 0);

    MenuPDG[playerid][22] = CreatePlayerTextDraw(playerid, 293.000, 150.000, "Bubur Pedas");
    PlayerTextDrawLetterSize(playerid, MenuPDG[playerid][22], 0.170, 0.999);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][22], 2);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][22], 255);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][22], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][22], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][22], 150);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][22], 1);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][22], 1);

    MenuPDG[playerid][23] = CreatePlayerTextDraw(playerid, 293.000, 195.000, "Bakso");
    PlayerTextDrawLetterSize(playerid, MenuPDG[playerid][23], 0.170, 0.999);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][23], 2);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][23], 255);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][23], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][23], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][23], 150);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][23], 1);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][23], 1);

    MenuPDG[playerid][24] = CreatePlayerTextDraw(playerid, 378.000, 150.000, "Nasi Pecel");
    PlayerTextDrawLetterSize(playerid, MenuPDG[playerid][24], 0.170, 0.999);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][24], 2);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][24], 255);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][24], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][24], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][24], 150);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][24], 1);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][24], 1);

    MenuPDG[playerid][25] = CreatePlayerTextDraw(playerid, 378.000, 195.000, "Nasi Goreng");
    PlayerTextDrawLetterSize(playerid, MenuPDG[playerid][25], 0.170, 0.999);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][25], 2);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][25], 255);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][25], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][25], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][25], 150);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][25], 1);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][25], 1);

    MenuPDG[playerid][26] = CreatePlayerTextDraw(playerid, 261.000, 124.000, "1/$200");
    PlayerTextDrawLetterSize(playerid, MenuPDG[playerid][26], 0.129, 0.899);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][26], 1);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][26], 6553855);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][26], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][26], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][26], 150);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][26], 1);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][26], 1);

    MenuPDG[playerid][27] = CreatePlayerTextDraw(playerid, 261.000, 170.000, "1/$290");
    PlayerTextDrawLetterSize(playerid, MenuPDG[playerid][27], 0.129, 0.899);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][27], 1);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][27], 6553855);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][27], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][27], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][27], 150);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][27], 1);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][27], 1);

    MenuPDG[playerid][28] = CreatePlayerTextDraw(playerid, 345.000, 124.000, "1/$350");
    PlayerTextDrawLetterSize(playerid, MenuPDG[playerid][28], 0.129, 0.899);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][28], 1);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][28], 6553855);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][28], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][28], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][28], 150);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][28], 1);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][28], 1);

    MenuPDG[playerid][29] = CreatePlayerTextDraw(playerid, 345.000, 170.000, "1/$400");
    PlayerTextDrawLetterSize(playerid, MenuPDG[playerid][29], 0.129, 0.899);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][29], 1);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][29], 6553855);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][29], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][29], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][29], 150);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][29], 1);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][29], 1);

    MenuPDG[playerid][30] = CreatePlayerTextDraw(playerid, 269.000, 235.000, "_");
    PlayerTextDrawTextSize(playerid, MenuPDG[playerid][30], 46.000, 48.000);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][30], 1);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][30], -1);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][30], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][30], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][30], 0);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][30], 5);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][30], 0);
    PlayerTextDrawSetPreviewModel(playerid, MenuPDG[playerid][30], 19569);
    PlayerTextDrawSetPreviewRot(playerid, MenuPDG[playerid][30], 0.000, 0.000, 0.000, 1.300);
    PlayerTextDrawSetPreviewVehCol(playerid, MenuPDG[playerid][30], 0, 0);

    MenuPDG[playerid][31] = CreatePlayerTextDraw(playerid, 355.000, 234.000, "_");
    PlayerTextDrawTextSize(playerid, MenuPDG[playerid][31], 46.000, 48.000);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][31], 1);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][31], -1);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][31], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][31], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][31], 0);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][31], 5);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][31], 0);
    PlayerTextDrawSetPreviewModel(playerid, MenuPDG[playerid][31], 1667);
    PlayerTextDrawSetPreviewRot(playerid, MenuPDG[playerid][31], 0.000, 0.000, 0.000, 1.300);
    PlayerTextDrawSetPreviewVehCol(playerid, MenuPDG[playerid][31], 0, 0);

    MenuPDG[playerid][32] = CreatePlayerTextDraw(playerid, 269.000, 281.000, "_");
    PlayerTextDrawTextSize(playerid, MenuPDG[playerid][32], 46.000, 48.000);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][32], 1);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][32], -1);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][32], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][32], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][32], 0);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][32], 5);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][32], 0);
    PlayerTextDrawSetPreviewModel(playerid, MenuPDG[playerid][32], 1546);
    PlayerTextDrawSetPreviewRot(playerid, MenuPDG[playerid][32], 0.000, 0.000, 0.000, 1.300);
    PlayerTextDrawSetPreviewVehCol(playerid, MenuPDG[playerid][32], 0, 0);

    MenuPDG[playerid][33] = CreatePlayerTextDraw(playerid, 354.000, 281.000, "_");
    PlayerTextDrawTextSize(playerid, MenuPDG[playerid][33], 46.000, 48.000);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][33], 1);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][33], -1);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][33], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][33], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][33], 0);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][33], 5);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][33], 0);
    PlayerTextDrawSetPreviewModel(playerid, MenuPDG[playerid][33], 19835);
    PlayerTextDrawSetPreviewRot(playerid, MenuPDG[playerid][33], 0.000, 0.000, 0.000, 1.300);
    PlayerTextDrawSetPreviewVehCol(playerid, MenuPDG[playerid][33], 0, 0);

    MenuPDG[playerid][34] = CreatePlayerTextDraw(playerid, 292.000, 270.000, "Susu");
    PlayerTextDrawLetterSize(playerid, MenuPDG[playerid][34], 0.170, 0.999);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][34], 2);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][34], 255);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][34], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][34], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][34], 150);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][34], 1);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][34], 1);

    MenuPDG[playerid][35] = CreatePlayerTextDraw(playerid, 292.000, 317.000, "Es Teh");
    PlayerTextDrawLetterSize(playerid, MenuPDG[playerid][35], 0.170, 0.999);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][35], 2);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][35], 255);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][35], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][35], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][35], 150);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][35], 1);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][35], 1);

    MenuPDG[playerid][36] = CreatePlayerTextDraw(playerid, 379.000, 270.000, "Choco Matcha");
    PlayerTextDrawLetterSize(playerid, MenuPDG[playerid][36], 0.170, 0.999);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][36], 2);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][36], 255);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][36], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][36], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][36], 150);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][36], 1);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][36], 1);

    MenuPDG[playerid][37] = CreatePlayerTextDraw(playerid, 379.000, 316.000, "Kopi Kenangan");
    PlayerTextDrawLetterSize(playerid, MenuPDG[playerid][37], 0.170, 0.999);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][37], 2);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][37], 255);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][37], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][37], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][37], 150);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][37], 1);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][37], 1);

    MenuPDG[playerid][38] = CreatePlayerTextDraw(playerid, 261.000, 245.000, "1/$200");
    PlayerTextDrawLetterSize(playerid, MenuPDG[playerid][38], 0.129, 0.899);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][38], 1);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][38], 6553855);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][38], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][38], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][38], 150);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][38], 1);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][38], 1);

    MenuPDG[playerid][39] = CreatePlayerTextDraw(playerid, 345.000, 245.000, "1/$290");
    PlayerTextDrawLetterSize(playerid, MenuPDG[playerid][39], 0.129, 0.899);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][39], 1);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][39], 6553855);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][39], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][39], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][39], 150);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][39], 1);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][39], 1);

    MenuPDG[playerid][40] = CreatePlayerTextDraw(playerid, 261.000, 291.000, "1/$350");
    PlayerTextDrawLetterSize(playerid, MenuPDG[playerid][40], 0.129, 0.899);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][40], 1);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][40], 6553855);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][40], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][40], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][40], 150);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][40], 1);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][40], 1);

    MenuPDG[playerid][41] = CreatePlayerTextDraw(playerid, 345.000, 291.000, "1/$400");
    PlayerTextDrawLetterSize(playerid, MenuPDG[playerid][41], 0.129, 0.899);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][41], 1);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][41], 6553855);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][41], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][41], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][41], 150);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][41], 1);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][41], 1);

    MenuPDG[playerid][42] = CreatePlayerTextDraw(playerid, 322.000, 342.000, "Checkout");
    PlayerTextDrawLetterSize(playerid, MenuPDG[playerid][42], 0.170, 0.999);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][42], 2);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][42], -1);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][42], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][42], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][42], 150);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][42], 1);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][42], 1);

    MenuPDG[playerid][43] = CreatePlayerTextDraw(playerid, 385.000, 342.000, "Total");
    PlayerTextDrawLetterSize(playerid, MenuPDG[playerid][43], 0.170, 0.999);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][43], 2);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][43], -1);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][43], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][43], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][43], 150);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][43], 1);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][43], 1);

    MenuPDG[playerid][44] = CreatePlayerTextDraw(playerid, 300.000, 222.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, MenuPDG[playerid][44], 72.000, 1.000);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][44], 1);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][44], -1);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][44], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][44], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][44], 255);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][44], 4);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][44], 1);

    MenuPDG[playerid][45] = CreatePlayerTextDraw(playerid, 285.000, 212.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, MenuPDG[playerid][45], 19.000, 20.000);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][45], 1);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][45], -12254977);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][45], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][45], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][45], 255);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][45], 4);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][45], 1);
    PlayerTextDrawSetSelectable(playerid, MenuPDG[playerid][45], 1);

    MenuPDG[playerid][46] = CreatePlayerTextDraw(playerid, 368.000, 212.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, MenuPDG[playerid][46], 19.000, 20.000);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][46], 1);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][46], -12254977);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][46], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][46], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][46], 255);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][46], 4);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][46], 1);
    PlayerTextDrawSetSelectable(playerid, MenuPDG[playerid][46], 1);

    MenuPDG[playerid][47] = CreatePlayerTextDraw(playerid, 377.000, 216.000, "+");
    PlayerTextDrawLetterSize(playerid, MenuPDG[playerid][47], 0.250, 1.199);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][47], 2);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][47], -1);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][47], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][47], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][47], 150);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][47], 3);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][47], 1);

    MenuPDG[playerid][48] = CreatePlayerTextDraw(playerid, 294.000, 217.000, "-");
    PlayerTextDrawLetterSize(playerid, MenuPDG[playerid][48], 0.349, 0.799);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][48], 2);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][48], -1);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][48], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][48], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][48], 150);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][48], 3);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][48], 1);

    MenuPDG[playerid][49] = CreatePlayerTextDraw(playerid, 373.000, 331.000, "0");
    PlayerTextDrawLetterSize(playerid, MenuPDG[playerid][49], 0.190, 0.999);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][49], 1);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][49], -16776961);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][49], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][49], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][49], 150);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][49], 1);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][49], 1);

    MenuPDG[playerid][50] = CreatePlayerTextDraw(playerid, 397.000, 66.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MenuPDG[playerid][50], 14.000, 18.000);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][50], 1);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][50], -1962934017);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][50], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][50], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][50], 255);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][50], 4);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][50], 1);
    PlayerTextDrawSetSelectable(playerid, MenuPDG[playerid][50], 1);

    MenuPDG[playerid][51] = CreatePlayerTextDraw(playerid, 392.000, 62.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, MenuPDG[playerid][51], 11.000, 26.000);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][51], 1);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][51], -1962934017);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][51], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][51], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][51], 255);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][51], 4);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][51], 1);

    MenuPDG[playerid][52] = CreatePlayerTextDraw(playerid, 405.000, 62.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, MenuPDG[playerid][52], 11.000, 26.000);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][52], 1);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][52], -1962934017);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][52], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][52], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][52], 255);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][52], 4);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][52], 1);

    MenuPDG[playerid][53] = CreatePlayerTextDraw(playerid, 405.000, 67.000, "X");
    PlayerTextDrawLetterSize(playerid, MenuPDG[playerid][53], 0.300, 1.500);
    PlayerTextDrawAlignment(playerid, MenuPDG[playerid][53], 2);
    PlayerTextDrawColor(playerid, MenuPDG[playerid][53], 255);
    PlayerTextDrawSetShadow(playerid, MenuPDG[playerid][53], 0);
    PlayerTextDrawSetOutline(playerid, MenuPDG[playerid][53], 0);
    PlayerTextDrawBackgroundColor(playerid, MenuPDG[playerid][53], 150);
    PlayerTextDrawFont(playerid, MenuPDG[playerid][53], 2);
    PlayerTextDrawSetProportional(playerid, MenuPDG[playerid][53], 1);

    InfoDate[playerid][0] = CreatePlayerTextDraw(playerid, 605.000, 3.000, "16 08 2025");
    PlayerTextDrawLetterSize(playerid, InfoDate[playerid][0], 0.140, 0.899);
    PlayerTextDrawAlignment(playerid, InfoDate[playerid][0], 1);
    PlayerTextDrawColor(playerid, InfoDate[playerid][0], -1);
    PlayerTextDrawSetShadow(playerid, InfoDate[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, InfoDate[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, InfoDate[playerid][0], 150);
    PlayerTextDrawFont(playerid, InfoDate[playerid][0], 1);
    PlayerTextDrawSetProportional(playerid, InfoDate[playerid][0], 1);

    InfoDate[playerid][1] = CreatePlayerTextDraw(playerid, 529.000, 0.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, InfoDate[playerid][1], 112.000, 18.000);
    PlayerTextDrawAlignment(playerid, InfoDate[playerid][1], 1);
    PlayerTextDrawColor(playerid, InfoDate[playerid][1], 421081343);
    PlayerTextDrawSetShadow(playerid, InfoDate[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, InfoDate[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, InfoDate[playerid][1], 255);
    PlayerTextDrawFont(playerid, InfoDate[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, InfoDate[playerid][1], 1);

    InfoDate[playerid][2] = CreatePlayerTextDraw(playerid, 595.000, 4.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, InfoDate[playerid][2], 8.000, 8.000);
    PlayerTextDrawAlignment(playerid, InfoDate[playerid][2], 1);
    PlayerTextDrawColor(playerid, InfoDate[playerid][2], 2005441023);
    PlayerTextDrawSetShadow(playerid, InfoDate[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, InfoDate[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, InfoDate[playerid][2], 255);
    PlayerTextDrawFont(playerid, InfoDate[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, InfoDate[playerid][2], 1);

    InfoDate[playerid][3] = CreatePlayerTextDraw(playerid, 595.000, 4.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, InfoDate[playerid][3], 8.000, 1.000);
    PlayerTextDrawAlignment(playerid, InfoDate[playerid][3], 1);
    PlayerTextDrawColor(playerid, InfoDate[playerid][3], 255);
    PlayerTextDrawSetShadow(playerid, InfoDate[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, InfoDate[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, InfoDate[playerid][3], 255);
    PlayerTextDrawFont(playerid, InfoDate[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, InfoDate[playerid][3], 1);

    InfoDate[playerid][4] = CreatePlayerTextDraw(playerid, 596.000, 5.000, "30");
    PlayerTextDrawLetterSize(playerid, InfoDate[playerid][4], 0.129, 0.699);
    PlayerTextDrawAlignment(playerid, InfoDate[playerid][4], 1);
    PlayerTextDrawColor(playerid, InfoDate[playerid][4], 255);
    PlayerTextDrawSetShadow(playerid, InfoDate[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, InfoDate[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, InfoDate[playerid][4], 150);
    PlayerTextDrawFont(playerid, InfoDate[playerid][4], 1);
    PlayerTextDrawSetProportional(playerid, InfoDate[playerid][4], 1);

    InfoDate[playerid][5] = CreatePlayerTextDraw(playerid, 576.000, 3.000, "17:04");
    PlayerTextDrawLetterSize(playerid, InfoDate[playerid][5], 0.140, 0.899);
    PlayerTextDrawAlignment(playerid, InfoDate[playerid][5], 1);
    PlayerTextDrawColor(playerid, InfoDate[playerid][5], -1);
    PlayerTextDrawSetShadow(playerid, InfoDate[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, InfoDate[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, InfoDate[playerid][5], 150);
    PlayerTextDrawFont(playerid, InfoDate[playerid][5], 1);
    PlayerTextDrawSetProportional(playerid, InfoDate[playerid][5], 1);

    InfoDate[playerid][6] = CreatePlayerTextDraw(playerid, 562.000, 1.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, InfoDate[playerid][6], 13.000, 14.000);
    PlayerTextDrawAlignment(playerid, InfoDate[playerid][6], 1);
    PlayerTextDrawColor(playerid, InfoDate[playerid][6], -1);
    PlayerTextDrawSetShadow(playerid, InfoDate[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, InfoDate[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, InfoDate[playerid][6], 255);
    PlayerTextDrawFont(playerid, InfoDate[playerid][6], 4);
    PlayerTextDrawSetProportional(playerid, InfoDate[playerid][6], 1);

    InfoDate[playerid][7] = CreatePlayerTextDraw(playerid, 570.000, 3.000, "-");
    PlayerTextDrawLetterSize(playerid, InfoDate[playerid][7], 0.419, 0.799);
    PlayerTextDrawAlignment(playerid, InfoDate[playerid][7], 2);
    PlayerTextDrawColor(playerid, InfoDate[playerid][7], 255);
    PlayerTextDrawSetShadow(playerid, InfoDate[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, InfoDate[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, InfoDate[playerid][7], 150);
    PlayerTextDrawFont(playerid, InfoDate[playerid][7], 1);
    PlayerTextDrawSetProportional(playerid, InfoDate[playerid][7], 1);

    InfoDate[playerid][8] = CreatePlayerTextDraw(playerid, 568.000, 2.000, "l");
    PlayerTextDrawLetterSize(playerid, InfoDate[playerid][8], 0.220, 0.799);
    PlayerTextDrawAlignment(playerid, InfoDate[playerid][8], 2);
    PlayerTextDrawColor(playerid, InfoDate[playerid][8], 255);
    PlayerTextDrawSetShadow(playerid, InfoDate[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, InfoDate[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, InfoDate[playerid][8], 150);
    PlayerTextDrawFont(playerid, InfoDate[playerid][8], 1);
    PlayerTextDrawSetProportional(playerid, InfoDate[playerid][8], 1);

    InfoDate[playerid][9] = CreatePlayerTextDraw(playerid, 551.000, 3.000, "1");
    PlayerTextDrawLetterSize(playerid, InfoDate[playerid][9], 0.140, 0.899);
    PlayerTextDrawAlignment(playerid, InfoDate[playerid][9], 1);
    PlayerTextDrawColor(playerid, InfoDate[playerid][9], -1);
    PlayerTextDrawSetShadow(playerid, InfoDate[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, InfoDate[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, InfoDate[playerid][9], 150);
    PlayerTextDrawFont(playerid, InfoDate[playerid][9], 1);
    PlayerTextDrawSetProportional(playerid, InfoDate[playerid][9], 1);

    InfoDate[playerid][10] = CreatePlayerTextDraw(playerid, 536.000, 6.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, InfoDate[playerid][10], 13.000, 7.000);
    PlayerTextDrawAlignment(playerid, InfoDate[playerid][10], 1);
    PlayerTextDrawColor(playerid, InfoDate[playerid][10], -1);
    PlayerTextDrawSetShadow(playerid, InfoDate[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, InfoDate[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, InfoDate[playerid][10], 255);
    PlayerTextDrawFont(playerid, InfoDate[playerid][10], 4);
    PlayerTextDrawSetProportional(playerid, InfoDate[playerid][10], 1);

    InfoDate[playerid][11] = CreatePlayerTextDraw(playerid, 539.000, 1.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, InfoDate[playerid][11], 6.000, 6.000);
    PlayerTextDrawAlignment(playerid, InfoDate[playerid][11], 1);
    PlayerTextDrawColor(playerid, InfoDate[playerid][11], -1);
    PlayerTextDrawSetShadow(playerid, InfoDate[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, InfoDate[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, InfoDate[playerid][11], 255);
    PlayerTextDrawFont(playerid, InfoDate[playerid][11], 4);
    PlayerTextDrawSetProportional(playerid, InfoDate[playerid][11], 1);

    InfoDate[playerid][12] = CreatePlayerTextDraw(playerid, 518.000, -6.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, InfoDate[playerid][12], 21.000, 28.000);
    PlayerTextDrawAlignment(playerid, InfoDate[playerid][12], 1);
    PlayerTextDrawColor(playerid, InfoDate[playerid][12], 421081343);
    PlayerTextDrawSetShadow(playerid, InfoDate[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, InfoDate[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, InfoDate[playerid][12], 255);
    PlayerTextDrawFont(playerid, InfoDate[playerid][12], 4);
    PlayerTextDrawSetProportional(playerid, InfoDate[playerid][12], 1);

    WargabaruTD[playerid][0] = CreatePlayerTextDraw(playerid, 465.000, 393.000, "- Warga Baru -");
    PlayerTextDrawLetterSize(playerid, WargabaruTD[playerid][0], 0.170, 1.299);
    PlayerTextDrawAlignment(playerid, WargabaruTD[playerid][0], 2);
    PlayerTextDrawColor(playerid, WargabaruTD[playerid][0], -1);
    PlayerTextDrawSetShadow(playerid, WargabaruTD[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, WargabaruTD[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, WargabaruTD[playerid][0], 150);
    PlayerTextDrawFont(playerid, WargabaruTD[playerid][0], 1);
    PlayerTextDrawSetProportional(playerid, WargabaruTD[playerid][0], 1);

    WargabaruTD[playerid][1] = CreatePlayerTextDraw(playerid, 408.000, 389.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, WargabaruTD[playerid][1], 118.000, 60.000);
    PlayerTextDrawAlignment(playerid, WargabaruTD[playerid][1], 1);
    PlayerTextDrawColor(playerid, WargabaruTD[playerid][1], -92245383);
    PlayerTextDrawSetShadow(playerid, WargabaruTD[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, WargabaruTD[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, WargabaruTD[playerid][1], 255);
    PlayerTextDrawFont(playerid, WargabaruTD[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, WargabaruTD[playerid][1], 1);

    WargabaruTD[playerid][2] = CreatePlayerTextDraw(playerid, 465.000, 430.000, "Waktu Tersisa: 48 jam 00 menit");
    PlayerTextDrawLetterSize(playerid, WargabaruTD[playerid][2], 0.119, 1.099);
    PlayerTextDrawAlignment(playerid, WargabaruTD[playerid][2], 2);
    PlayerTextDrawColor(playerid, WargabaruTD[playerid][2], -1);
    PlayerTextDrawSetShadow(playerid, WargabaruTD[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, WargabaruTD[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, WargabaruTD[playerid][2], 150);
    PlayerTextDrawFont(playerid, WargabaruTD[playerid][2], 1);
    PlayerTextDrawSetProportional(playerid, WargabaruTD[playerid][2], 1);

    WargabaruTD[playerid][3] = CreatePlayerTextDraw(playerid, 466.000, 409.000, "Anda harus bermain dengan waktu yang sudah kami tentukan");
    PlayerTextDrawLetterSize(playerid, WargabaruTD[playerid][3], 0.100, 0.899);
    PlayerTextDrawAlignment(playerid, WargabaruTD[playerid][3], 2);
    PlayerTextDrawColor(playerid, WargabaruTD[playerid][3], -84);
    PlayerTextDrawSetShadow(playerid, WargabaruTD[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, WargabaruTD[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, WargabaruTD[playerid][3], 150);
    PlayerTextDrawFont(playerid, WargabaruTD[playerid][3], 1);
    PlayerTextDrawSetProportional(playerid, WargabaruTD[playerid][3], 1);

    WargabaruTD[playerid][4] = CreatePlayerTextDraw(playerid, 466.000, 418.000, "Sementara itu anda tidak bisa memukul dan menembak");
    PlayerTextDrawLetterSize(playerid, WargabaruTD[playerid][4], 0.100, 0.899);
    PlayerTextDrawAlignment(playerid, WargabaruTD[playerid][4], 2);
    PlayerTextDrawColor(playerid, WargabaruTD[playerid][4], -84);
    PlayerTextDrawSetShadow(playerid, WargabaruTD[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, WargabaruTD[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, WargabaruTD[playerid][4], 150);
    PlayerTextDrawFont(playerid, WargabaruTD[playerid][4], 1);
    PlayerTextDrawSetProportional(playerid, WargabaruTD[playerid][4], 1);
    
    ui_racing[playerid][0] = CreatePlayerTextDraw(playerid, 520.000, 198.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ui_racing[playerid][0], 123.000, 18.000);
    PlayerTextDrawAlignment(playerid, ui_racing[playerid][0], 1);
    PlayerTextDrawColor(playerid, ui_racing[playerid][0], 255);
    PlayerTextDrawSetShadow(playerid, ui_racing[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, ui_racing[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, ui_racing[playerid][0], 255);
    PlayerTextDrawFont(playerid, ui_racing[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, ui_racing[playerid][0], 1);

    ui_racing[playerid][1] = CreatePlayerTextDraw(playerid, 520.000, 215.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ui_racing[playerid][1], 123.000, 18.000);
    PlayerTextDrawAlignment(playerid, ui_racing[playerid][1], 1);
    PlayerTextDrawColor(playerid, ui_racing[playerid][1], -57);
    PlayerTextDrawSetShadow(playerid, ui_racing[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, ui_racing[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, ui_racing[playerid][1], 255);
    PlayerTextDrawFont(playerid, ui_racing[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, ui_racing[playerid][1], 1);

    ui_racing[playerid][2] = CreatePlayerTextDraw(playerid, 520.000, 233.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ui_racing[playerid][2], 123.000, 18.000);
    PlayerTextDrawAlignment(playerid, ui_racing[playerid][2], 1);
    PlayerTextDrawColor(playerid, ui_racing[playerid][2], -421070081);
    PlayerTextDrawSetShadow(playerid, ui_racing[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, ui_racing[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, ui_racing[playerid][2], 255);
    PlayerTextDrawFont(playerid, ui_racing[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, ui_racing[playerid][2], 1);

    ui_racing[playerid][3] = CreatePlayerTextDraw(playerid, 520.000, 251.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ui_racing[playerid][3], 123.000, 18.000);
    PlayerTextDrawAlignment(playerid, ui_racing[playerid][3], 1);
    PlayerTextDrawColor(playerid, ui_racing[playerid][3], -57);
    PlayerTextDrawSetShadow(playerid, ui_racing[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, ui_racing[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, ui_racing[playerid][3], 255);
    PlayerTextDrawFont(playerid, ui_racing[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, ui_racing[playerid][3], 1);

    ui_racing[playerid][4] = CreatePlayerTextDraw(playerid, 523.000, 218.000, "1#. Rayy bonelo");
    PlayerTextDrawLetterSize(playerid, ui_racing[playerid][4], 0.170, 0.999);
    PlayerTextDrawAlignment(playerid, ui_racing[playerid][4], 1);
    PlayerTextDrawColor(playerid, ui_racing[playerid][4], 255);
    PlayerTextDrawSetShadow(playerid, ui_racing[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, ui_racing[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, ui_racing[playerid][4], 150);
    PlayerTextDrawFont(playerid, ui_racing[playerid][4], 1);
    PlayerTextDrawSetProportional(playerid, ui_racing[playerid][4], 1);

    ui_racing[playerid][5] = CreatePlayerTextDraw(playerid, 523.000, 236.000, "2#. Zhure Kontol");
    PlayerTextDrawLetterSize(playerid, ui_racing[playerid][5], 0.170, 0.999);
    PlayerTextDrawAlignment(playerid, ui_racing[playerid][5], 1);
    PlayerTextDrawColor(playerid, ui_racing[playerid][5], 255);
    PlayerTextDrawSetShadow(playerid, ui_racing[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, ui_racing[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, ui_racing[playerid][5], 150);
    PlayerTextDrawFont(playerid, ui_racing[playerid][5], 1);
    PlayerTextDrawSetProportional(playerid, ui_racing[playerid][5], 1);

    ui_racing[playerid][6] = CreatePlayerTextDraw(playerid, 523.000, 255.000, "3#. Zeex Kontol");
    PlayerTextDrawLetterSize(playerid, ui_racing[playerid][6], 0.170, 0.999);
    PlayerTextDrawAlignment(playerid, ui_racing[playerid][6], 1);
    PlayerTextDrawColor(playerid, ui_racing[playerid][6], 255);
    PlayerTextDrawSetShadow(playerid, ui_racing[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, ui_racing[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, ui_racing[playerid][6], 150);
    PlayerTextDrawFont(playerid, ui_racing[playerid][6], 1);
    PlayerTextDrawSetProportional(playerid, ui_racing[playerid][6], 1);

    ui_racing[playerid][7] = CreatePlayerTextDraw(playerid, 631.000, 201.000, "1/10");
    PlayerTextDrawLetterSize(playerid, ui_racing[playerid][7], 0.140, 0.999);
    PlayerTextDrawAlignment(playerid, ui_racing[playerid][7], 2);
    PlayerTextDrawColor(playerid, ui_racing[playerid][7], -1);
    PlayerTextDrawSetShadow(playerid, ui_racing[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, ui_racing[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, ui_racing[playerid][7], 150);
    PlayerTextDrawFont(playerid, ui_racing[playerid][7], 2);
    PlayerTextDrawSetProportional(playerid, ui_racing[playerid][7], 1);

    ui_racing[playerid][8] = CreatePlayerTextDraw(playerid, 621.000, 201.000, "0");
    PlayerTextDrawLetterSize(playerid, ui_racing[playerid][8], 0.140, 0.999);
    PlayerTextDrawAlignment(playerid, ui_racing[playerid][8], 2);
    PlayerTextDrawColor(playerid, ui_racing[playerid][8], -1);
    PlayerTextDrawSetShadow(playerid, ui_racing[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, ui_racing[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, ui_racing[playerid][8], 150);
    PlayerTextDrawFont(playerid, ui_racing[playerid][8], 1);
    PlayerTextDrawSetProportional(playerid, ui_racing[playerid][8], 1);

    ui_racing[playerid][9] = CreatePlayerTextDraw(playerid, 621.000, 203.000, "AS");
    PlayerTextDrawLetterSize(playerid, ui_racing[playerid][9], 0.140, 0.999);
    PlayerTextDrawAlignment(playerid, ui_racing[playerid][9], 2);
    PlayerTextDrawColor(playerid, ui_racing[playerid][9], -1);
    PlayerTextDrawSetShadow(playerid, ui_racing[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, ui_racing[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, ui_racing[playerid][9], 150);
    PlayerTextDrawFont(playerid, ui_racing[playerid][9], 1);
    PlayerTextDrawSetProportional(playerid, ui_racing[playerid][9], 1);

    ui_racing[playerid][10] = CreatePlayerTextDraw(playerid, 525.000, 201.000, "00:00:00");
    PlayerTextDrawLetterSize(playerid, ui_racing[playerid][10], 0.140, 0.999);
    PlayerTextDrawAlignment(playerid, ui_racing[playerid][10], 1);
    PlayerTextDrawColor(playerid, ui_racing[playerid][10], -1);
    PlayerTextDrawSetShadow(playerid, ui_racing[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, ui_racing[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, ui_racing[playerid][10], 150);
    PlayerTextDrawFont(playerid, ui_racing[playerid][10], 2);
    PlayerTextDrawSetProportional(playerid, ui_racing[playerid][10], 1);
    
    UnivLulus[playerid][0] = CreatePlayerTextDraw(playerid, 426.000, 116.000, "LD_SPAC:black");
    PlayerTextDrawTextSize(playerid, UnivLulus[playerid][0], 146.000, 238.000);
    PlayerTextDrawAlignment(playerid, UnivLulus[playerid][0], 1);
    PlayerTextDrawColor(playerid, UnivLulus[playerid][0], -1);
    PlayerTextDrawSetShadow(playerid, UnivLulus[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, UnivLulus[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, UnivLulus[playerid][0], 255);
    PlayerTextDrawFont(playerid, UnivLulus[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, UnivLulus[playerid][0], 1);

    UnivLulus[playerid][1] = CreatePlayerTextDraw(playerid, 428.000, 118.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, UnivLulus[playerid][1], 142.000, 233.000);
    PlayerTextDrawAlignment(playerid, UnivLulus[playerid][1], 1);
    PlayerTextDrawColor(playerid, UnivLulus[playerid][1], -1);
    PlayerTextDrawSetShadow(playerid, UnivLulus[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, UnivLulus[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, UnivLulus[playerid][1], 255);
    PlayerTextDrawFont(playerid, UnivLulus[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, UnivLulus[playerid][1], 1);

    UnivLulus[playerid][2] = CreatePlayerTextDraw(playerid, 461.000, 132.000, "UNIVERSITAS Astral City");
    PlayerTextDrawLetterSize(playerid, UnivLulus[playerid][2], 0.209, 1.098);
    PlayerTextDrawAlignment(playerid, UnivLulus[playerid][2], 1);
    PlayerTextDrawColor(playerid, UnivLulus[playerid][2], 255);
    PlayerTextDrawSetShadow(playerid, UnivLulus[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, UnivLulus[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, UnivLulus[playerid][2], 150);
    PlayerTextDrawFont(playerid, UnivLulus[playerid][2], 1);
    PlayerTextDrawSetProportional(playerid, UnivLulus[playerid][2], 1);

    UnivLulus[playerid][3] = CreatePlayerTextDraw(playerid, 471.000, 121.000, "SURAT KELULUSAN");
    PlayerTextDrawLetterSize(playerid, UnivLulus[playerid][3], 0.189, 1.098);
    PlayerTextDrawAlignment(playerid, UnivLulus[playerid][3], 1);
    PlayerTextDrawColor(playerid, UnivLulus[playerid][3], 255);
    PlayerTextDrawSetShadow(playerid, UnivLulus[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, UnivLulus[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, UnivLulus[playerid][3], 150);
    PlayerTextDrawFont(playerid, UnivLulus[playerid][3], 1);
    PlayerTextDrawSetProportional(playerid, UnivLulus[playerid][3], 1);

    UnivLulus[playerid][4] = CreatePlayerTextDraw(playerid, 441.000, 150.000, "Dengan hormat,");
    PlayerTextDrawLetterSize(playerid, UnivLulus[playerid][4], 0.150, 0.799);
    PlayerTextDrawTextSize(playerid, UnivLulus[playerid][4], 561.000, 0.000);
    PlayerTextDrawAlignment(playerid, UnivLulus[playerid][4], 1);
    PlayerTextDrawColor(playerid, UnivLulus[playerid][4], 255);
    PlayerTextDrawSetShadow(playerid, UnivLulus[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, UnivLulus[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, UnivLulus[playerid][4], 150);
    PlayerTextDrawFont(playerid, UnivLulus[playerid][4], 1);
    PlayerTextDrawSetProportional(playerid, UnivLulus[playerid][4], 1);

    UnivLulus[playerid][5] = CreatePlayerTextDraw(playerid, 441.000, 161.000, "Akademik Universitas Astral City melalui keputusan rapat kelulusan menyatakan bahwa mahasiswa~n~berikut:");
    PlayerTextDrawLetterSize(playerid, UnivLulus[playerid][5], 0.150, 0.799);
    PlayerTextDrawTextSize(playerid, UnivLulus[playerid][5], 561.000, 0.000);
    PlayerTextDrawAlignment(playerid, UnivLulus[playerid][5], 1);
    PlayerTextDrawColor(playerid, UnivLulus[playerid][5], 255);
    PlayerTextDrawSetShadow(playerid, UnivLulus[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, UnivLulus[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, UnivLulus[playerid][5], 150);
    PlayerTextDrawFont(playerid, UnivLulus[playerid][5], 1);
    PlayerTextDrawSetProportional(playerid, UnivLulus[playerid][5], 1);

    UnivLulus[playerid][6] = CreatePlayerTextDraw(playerid, 441.000, 196.000, "Nama: Rayy_Bonelo");
    PlayerTextDrawLetterSize(playerid, UnivLulus[playerid][6], 0.150, 0.799);
    PlayerTextDrawTextSize(playerid, UnivLulus[playerid][6], 561.000, 0.000);
    PlayerTextDrawAlignment(playerid, UnivLulus[playerid][6], 1);
    PlayerTextDrawColor(playerid, UnivLulus[playerid][6], 255);
    PlayerTextDrawSetShadow(playerid, UnivLulus[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, UnivLulus[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, UnivLulus[playerid][6], 150);
    PlayerTextDrawFont(playerid, UnivLulus[playerid][6], 1);
    PlayerTextDrawSetProportional(playerid, UnivLulus[playerid][6], 1);

    UnivLulus[playerid][7] = CreatePlayerTextDraw(playerid, 441.000, 205.000, "Gelar: Sarjana Jomok");
    PlayerTextDrawLetterSize(playerid, UnivLulus[playerid][7], 0.150, 0.799);
    PlayerTextDrawTextSize(playerid, UnivLulus[playerid][7], 561.000, 0.000);
    PlayerTextDrawAlignment(playerid, UnivLulus[playerid][7], 1);
    PlayerTextDrawColor(playerid, UnivLulus[playerid][7], 255);
    PlayerTextDrawSetShadow(playerid, UnivLulus[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, UnivLulus[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, UnivLulus[playerid][7], 150);
    PlayerTextDrawFont(playerid, UnivLulus[playerid][7], 1);
    PlayerTextDrawSetProportional(playerid, UnivLulus[playerid][7], 1);

    UnivLulus[playerid][8] = CreatePlayerTextDraw(playerid, 441.000, 214.000, "Program Studi: Universitas");
    PlayerTextDrawLetterSize(playerid, UnivLulus[playerid][8], 0.150, 0.799);
    PlayerTextDrawTextSize(playerid, UnivLulus[playerid][8], 561.000, 0.000);
    PlayerTextDrawAlignment(playerid, UnivLulus[playerid][8], 1);
    PlayerTextDrawColor(playerid, UnivLulus[playerid][8], 255);
    PlayerTextDrawSetShadow(playerid, UnivLulus[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, UnivLulus[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, UnivLulus[playerid][8], 150);
    PlayerTextDrawFont(playerid, UnivLulus[playerid][8], 1);
    PlayerTextDrawSetProportional(playerid, UnivLulus[playerid][8], 1);

    UnivLulus[playerid][9] = CreatePlayerTextDraw(playerid, 441.000, 223.000, "Tanggal: 07/09/2000");
    PlayerTextDrawLetterSize(playerid, UnivLulus[playerid][9], 0.150, 0.799);
    PlayerTextDrawTextSize(playerid, UnivLulus[playerid][9], 561.000, 0.000);
    PlayerTextDrawAlignment(playerid, UnivLulus[playerid][9], 1);
    PlayerTextDrawColor(playerid, UnivLulus[playerid][9], 255);
    PlayerTextDrawSetShadow(playerid, UnivLulus[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, UnivLulus[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, UnivLulus[playerid][9], 150);
    PlayerTextDrawFont(playerid, UnivLulus[playerid][9], 1);
    PlayerTextDrawSetProportional(playerid, UnivLulus[playerid][9], 1);

    UnivLulus[playerid][10] = CreatePlayerTextDraw(playerid, 441.000, 237.000, "telah memenuhi seluruh persyaratan akademik maupun administratif. Berdasarkan hasil evaluasi akademik, yang bersangkutan dinyat");
    PlayerTextDrawLetterSize(playerid, UnivLulus[playerid][10], 0.100, 0.799);
    PlayerTextDrawTextSize(playerid, UnivLulus[playerid][10], 561.000, 0.000);
    PlayerTextDrawAlignment(playerid, UnivLulus[playerid][10], 1);
    PlayerTextDrawColor(playerid, UnivLulus[playerid][10], 255);
    PlayerTextDrawSetShadow(playerid, UnivLulus[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, UnivLulus[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, UnivLulus[playerid][10], 150);
    PlayerTextDrawFont(playerid, UnivLulus[playerid][10], 1);
    PlayerTextDrawSetProportional(playerid, UnivLulus[playerid][10], 1);

    UnivLulus[playerid][11] = CreatePlayerTextDraw(playerid, 441.000, 259.000, "Dengan demikian, yang bersangkutan berhak menyandang gelar akademik tersebut dan memperoleh segala hak serta pengakuan yang mel");
    PlayerTextDrawLetterSize(playerid, UnivLulus[playerid][11], 0.100, 0.799);
    PlayerTextDrawTextSize(playerid, UnivLulus[playerid][11], 561.000, 0.000);
    PlayerTextDrawAlignment(playerid, UnivLulus[playerid][11], 1);
    PlayerTextDrawColor(playerid, UnivLulus[playerid][11], 255);
    PlayerTextDrawSetShadow(playerid, UnivLulus[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, UnivLulus[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, UnivLulus[playerid][11], 150);
    PlayerTextDrawFont(playerid, UnivLulus[playerid][11], 1);
    PlayerTextDrawSetProportional(playerid, UnivLulus[playerid][11], 1);

    UnivLulus[playerid][12] = CreatePlayerTextDraw(playerid, 441.000, 285.000, "Surat kelulusan ini dikeluarkan sebagai bukti resmi atas kelulusan yang bersangkutan dan dapat digunakan sebagaimana mestinya.");
    PlayerTextDrawLetterSize(playerid, UnivLulus[playerid][12], 0.100, 0.799);
    PlayerTextDrawTextSize(playerid, UnivLulus[playerid][12], 561.000, 0.000);
    PlayerTextDrawAlignment(playerid, UnivLulus[playerid][12], 1);
    PlayerTextDrawColor(playerid, UnivLulus[playerid][12], 255);
    PlayerTextDrawSetShadow(playerid, UnivLulus[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, UnivLulus[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, UnivLulus[playerid][12], 150);
    PlayerTextDrawFont(playerid, UnivLulus[playerid][12], 1);
    PlayerTextDrawSetProportional(playerid, UnivLulus[playerid][12], 1);

    UnivLulus[playerid][13] = CreatePlayerTextDraw(playerid, 441.000, 334.000, "Diberi oleh Rayy_Ganteng");
    PlayerTextDrawLetterSize(playerid, UnivLulus[playerid][13], 0.100, 0.799);
    PlayerTextDrawTextSize(playerid, UnivLulus[playerid][13], 561.000, 0.000);
    PlayerTextDrawAlignment(playerid, UnivLulus[playerid][13], 1);
    PlayerTextDrawColor(playerid, UnivLulus[playerid][13], 255);
    PlayerTextDrawSetShadow(playerid, UnivLulus[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, UnivLulus[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, UnivLulus[playerid][13], 150);
    PlayerTextDrawFont(playerid, UnivLulus[playerid][13], 1);
    PlayerTextDrawSetProportional(playerid, UnivLulus[playerid][13], 1);

    UnivLulus[playerid][14] = CreatePlayerTextDraw(playerid, 427.000, 190.000, "LD_SPAC:black");
    PlayerTextDrawTextSize(playerid, UnivLulus[playerid][14], 61.000, 1.000);
    PlayerTextDrawAlignment(playerid, UnivLulus[playerid][14], 1);
    PlayerTextDrawColor(playerid, UnivLulus[playerid][14], -1);
    PlayerTextDrawSetShadow(playerid, UnivLulus[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, UnivLulus[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, UnivLulus[playerid][14], 255);
    PlayerTextDrawFont(playerid, UnivLulus[playerid][14], 4);
    PlayerTextDrawSetProportional(playerid, UnivLulus[playerid][14], 1);

    UnivLulus[playerid][15] = CreatePlayerTextDraw(playerid, 427.000, 233.000, "LD_SPAC:black");
    PlayerTextDrawTextSize(playerid, UnivLulus[playerid][15], 88.000, 1.000);
    PlayerTextDrawAlignment(playerid, UnivLulus[playerid][15], 1);
    PlayerTextDrawColor(playerid, UnivLulus[playerid][15], -1);
    PlayerTextDrawSetShadow(playerid, UnivLulus[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, UnivLulus[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, UnivLulus[playerid][15], 255);
    PlayerTextDrawFont(playerid, UnivLulus[playerid][15], 4);
    PlayerTextDrawSetProportional(playerid, UnivLulus[playerid][15], 1);

    UnivLulus[playerid][16] = CreatePlayerTextDraw(playerid, 427.000, 318.000, "LD_SPAC:black");
    PlayerTextDrawTextSize(playerid, UnivLulus[playerid][16], 143.000, 1.000);
    PlayerTextDrawAlignment(playerid, UnivLulus[playerid][16], 1);
    PlayerTextDrawColor(playerid, UnivLulus[playerid][16], -1);
    PlayerTextDrawSetShadow(playerid, UnivLulus[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, UnivLulus[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, UnivLulus[playerid][16], 255);
    PlayerTextDrawFont(playerid, UnivLulus[playerid][16], 4);
    PlayerTextDrawSetProportional(playerid, UnivLulus[playerid][16], 1);

    UnivLulus[playerid][17] = CreatePlayerTextDraw(playerid, 432.000, 120.000, "LD_DRV:brboat");
    PlayerTextDrawTextSize(playerid, UnivLulus[playerid][17], 18.000, 20.000);
    PlayerTextDrawAlignment(playerid, UnivLulus[playerid][17], 1);
    PlayerTextDrawColor(playerid, UnivLulus[playerid][17], -1);
    PlayerTextDrawSetShadow(playerid, UnivLulus[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, UnivLulus[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, UnivLulus[playerid][17], 255);
    PlayerTextDrawFont(playerid, UnivLulus[playerid][17], 4);
    PlayerTextDrawSetProportional(playerid, UnivLulus[playerid][17], 1);

    KickTextdraw[playerid][0] = CreatePlayerTextDraw(playerid, 253.000, 173.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, KickTextdraw[playerid][0], 158.000, 95.000);
    PlayerTextDrawAlignment(playerid, KickTextdraw[playerid][0], 1);
    PlayerTextDrawColor(playerid, KickTextdraw[playerid][0], 421097727);
    PlayerTextDrawSetShadow(playerid, KickTextdraw[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, KickTextdraw[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, KickTextdraw[playerid][0], 255);
    PlayerTextDrawFont(playerid, KickTextdraw[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, KickTextdraw[playerid][0], 1);

    KickTextdraw[playerid][1] = CreatePlayerTextDraw(playerid, 249.000, 161.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, KickTextdraw[playerid][1], 26.000, 26.000);
    PlayerTextDrawAlignment(playerid, KickTextdraw[playerid][1], 1);
    PlayerTextDrawColor(playerid, KickTextdraw[playerid][1], 421097727);
    PlayerTextDrawSetShadow(playerid, KickTextdraw[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, KickTextdraw[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, KickTextdraw[playerid][1], 255);
    PlayerTextDrawFont(playerid, KickTextdraw[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, KickTextdraw[playerid][1], 1);

    KickTextdraw[playerid][2] = CreatePlayerTextDraw(playerid, 389.000, 161.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, KickTextdraw[playerid][2], 26.000, 26.000);
    PlayerTextDrawAlignment(playerid, KickTextdraw[playerid][2], 1);
    PlayerTextDrawColor(playerid, KickTextdraw[playerid][2], 421097727);
    PlayerTextDrawSetShadow(playerid, KickTextdraw[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, KickTextdraw[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, KickTextdraw[playerid][2], 255);
    PlayerTextDrawFont(playerid, KickTextdraw[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, KickTextdraw[playerid][2], 1);

    KickTextdraw[playerid][3] = CreatePlayerTextDraw(playerid, 389.000, 254.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, KickTextdraw[playerid][3], 26.000, 26.000);
    PlayerTextDrawAlignment(playerid, KickTextdraw[playerid][3], 1);
    PlayerTextDrawColor(playerid, KickTextdraw[playerid][3], 35839);
    PlayerTextDrawSetShadow(playerid, KickTextdraw[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, KickTextdraw[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, KickTextdraw[playerid][3], 255);
    PlayerTextDrawFont(playerid, KickTextdraw[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, KickTextdraw[playerid][3], 1);

    KickTextdraw[playerid][4] = CreatePlayerTextDraw(playerid, 249.000, 254.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, KickTextdraw[playerid][4], 26.000, 26.000);
    PlayerTextDrawAlignment(playerid, KickTextdraw[playerid][4], 1);
    PlayerTextDrawColor(playerid, KickTextdraw[playerid][4], 35839);
    PlayerTextDrawSetShadow(playerid, KickTextdraw[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, KickTextdraw[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, KickTextdraw[playerid][4], 255);
    PlayerTextDrawFont(playerid, KickTextdraw[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, KickTextdraw[playerid][4], 1);

    KickTextdraw[playerid][5] = CreatePlayerTextDraw(playerid, 263.000, 165.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, KickTextdraw[playerid][5], 139.000, 11.000);
    PlayerTextDrawAlignment(playerid, KickTextdraw[playerid][5], 1);
    PlayerTextDrawColor(playerid, KickTextdraw[playerid][5], 421097727);
    PlayerTextDrawSetShadow(playerid, KickTextdraw[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, KickTextdraw[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, KickTextdraw[playerid][5], 255);
    PlayerTextDrawFont(playerid, KickTextdraw[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, KickTextdraw[playerid][5], 1);

    KickTextdraw[playerid][6] = CreatePlayerTextDraw(playerid, 263.000, 265.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, KickTextdraw[playerid][6], 139.000, 11.000);
    PlayerTextDrawAlignment(playerid, KickTextdraw[playerid][6], 1);
    PlayerTextDrawColor(playerid, KickTextdraw[playerid][6], 35839);
    PlayerTextDrawSetShadow(playerid, KickTextdraw[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, KickTextdraw[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, KickTextdraw[playerid][6], 255);
    PlayerTextDrawFont(playerid, KickTextdraw[playerid][6], 4);
    PlayerTextDrawSetProportional(playerid, KickTextdraw[playerid][6], 1);

    KickTextdraw[playerid][7] = CreatePlayerTextDraw(playerid, 253.000, 179.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, KickTextdraw[playerid][7], 157.000, 1.000);
    PlayerTextDrawAlignment(playerid, KickTextdraw[playerid][7], 1);
    PlayerTextDrawColor(playerid, KickTextdraw[playerid][7], -1);
    PlayerTextDrawSetShadow(playerid, KickTextdraw[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, KickTextdraw[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, KickTextdraw[playerid][7], 255);
    PlayerTextDrawFont(playerid, KickTextdraw[playerid][7], 4);
    PlayerTextDrawSetProportional(playerid, KickTextdraw[playerid][7], 1);

    KickTextdraw[playerid][8] = CreatePlayerTextDraw(playerid, 289.000, 167.000, "KICK FROM THE SERVER");
    PlayerTextDrawLetterSize(playerid, KickTextdraw[playerid][8], 0.220, 1.099);
    PlayerTextDrawAlignment(playerid, KickTextdraw[playerid][8], 1);
    PlayerTextDrawColor(playerid, KickTextdraw[playerid][8], -1);
    PlayerTextDrawSetShadow(playerid, KickTextdraw[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, KickTextdraw[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, KickTextdraw[playerid][8], 150);
    PlayerTextDrawFont(playerid, KickTextdraw[playerid][8], 1);
    PlayerTextDrawSetProportional(playerid, KickTextdraw[playerid][8], 1);

    KickTextdraw[playerid][9] = CreatePlayerTextDraw(playerid, 253.000, 186.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, KickTextdraw[playerid][9], 158.000, 14.000);
    PlayerTextDrawAlignment(playerid, KickTextdraw[playerid][9], 1);
    PlayerTextDrawColor(playerid, KickTextdraw[playerid][9], 35839);
    PlayerTextDrawSetShadow(playerid, KickTextdraw[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, KickTextdraw[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, KickTextdraw[playerid][9], 255);
    PlayerTextDrawFont(playerid, KickTextdraw[playerid][9], 4);
    PlayerTextDrawSetProportional(playerid, KickTextdraw[playerid][9], 1);

    KickTextdraw[playerid][10] = CreatePlayerTextDraw(playerid, 253.000, 258.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, KickTextdraw[playerid][10], 158.000, 8.000);
    PlayerTextDrawAlignment(playerid, KickTextdraw[playerid][10], 1);
    PlayerTextDrawColor(playerid, KickTextdraw[playerid][10], 35839);
    PlayerTextDrawSetShadow(playerid, KickTextdraw[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, KickTextdraw[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, KickTextdraw[playerid][10], 255);
    PlayerTextDrawFont(playerid, KickTextdraw[playerid][10], 4);
    PlayerTextDrawSetProportional(playerid, KickTextdraw[playerid][10], 1);

    KickTextdraw[playerid][11] = CreatePlayerTextDraw(playerid, 330.000, 187.000, "Kick By Rayyzix");
    PlayerTextDrawLetterSize(playerid, KickTextdraw[playerid][11], 0.170, 0.999);
    PlayerTextDrawAlignment(playerid, KickTextdraw[playerid][11], 2);
    PlayerTextDrawColor(playerid, KickTextdraw[playerid][11], -1);
    PlayerTextDrawSetShadow(playerid, KickTextdraw[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, KickTextdraw[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, KickTextdraw[playerid][11], 150);
    PlayerTextDrawFont(playerid, KickTextdraw[playerid][11], 1);
    PlayerTextDrawSetProportional(playerid, KickTextdraw[playerid][11], 1);

    KickTextdraw[playerid][12] = CreatePlayerTextDraw(playerid, 260.000, 205.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, KickTextdraw[playerid][12], 142.000, 47.000);
    PlayerTextDrawAlignment(playerid, KickTextdraw[playerid][12], 1);
    PlayerTextDrawColor(playerid, KickTextdraw[playerid][12], 35839);
    PlayerTextDrawSetShadow(playerid, KickTextdraw[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, KickTextdraw[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, KickTextdraw[playerid][12], 255);
    PlayerTextDrawFont(playerid, KickTextdraw[playerid][12], 4);
    PlayerTextDrawSetProportional(playerid, KickTextdraw[playerid][12], 1);

    KickTextdraw[playerid][13] = CreatePlayerTextDraw(playerid, 275.000, 207.000, "Reason:");
    PlayerTextDrawLetterSize(playerid, KickTextdraw[playerid][13], 0.170, 0.999);
    PlayerTextDrawAlignment(playerid, KickTextdraw[playerid][13], 2);
    PlayerTextDrawColor(playerid, KickTextdraw[playerid][13], -1);
    PlayerTextDrawSetShadow(playerid, KickTextdraw[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, KickTextdraw[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, KickTextdraw[playerid][13], 150);
    PlayerTextDrawFont(playerid, KickTextdraw[playerid][13], 1);
    PlayerTextDrawSetProportional(playerid, KickTextdraw[playerid][13], 1);

    KickTextdraw[playerid][14] = CreatePlayerTextDraw(playerid, 289.000, 207.000, "Kamu jelej kayak memek wkwkwkw tolol banget dah wkwkwkwkwkkwkw jembut wkwkwkwkw wkwkwkkwkwkwkw");
    PlayerTextDrawLetterSize(playerid, KickTextdraw[playerid][14], 0.150, 0.999);
    PlayerTextDrawTextSize(playerid, KickTextdraw[playerid][14], 400.000, -1.000);
    PlayerTextDrawAlignment(playerid, KickTextdraw[playerid][14], 1);
    PlayerTextDrawColor(playerid, KickTextdraw[playerid][14], -1);
    PlayerTextDrawSetShadow(playerid, KickTextdraw[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, KickTextdraw[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, KickTextdraw[playerid][14], 150);
    PlayerTextDrawFont(playerid, KickTextdraw[playerid][14], 1);
    PlayerTextDrawSetProportional(playerid, KickTextdraw[playerid][14], 1);

    KickTextdraw[playerid][15] = CreatePlayerTextDraw(playerid, 297.000, 261.000, "Astral City Roleplay");
    PlayerTextDrawLetterSize(playerid, KickTextdraw[playerid][15], 0.220, 1.099);
    PlayerTextDrawAlignment(playerid, KickTextdraw[playerid][15], 1);
    PlayerTextDrawColor(playerid, KickTextdraw[playerid][15], 512819199);
    PlayerTextDrawSetShadow(playerid, KickTextdraw[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, KickTextdraw[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, KickTextdraw[playerid][15], 150);
    PlayerTextDrawFont(playerid, KickTextdraw[playerid][15], 1);
    PlayerTextDrawSetProportional(playerid, KickTextdraw[playerid][15], 1);

    BannedTD[playerid][0] = CreatePlayerTextDraw(playerid, 179.000, 150.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BannedTD[playerid][0], 283.000, 135.000);
    PlayerTextDrawAlignment(playerid, BannedTD[playerid][0], 1);
    PlayerTextDrawColor(playerid, BannedTD[playerid][0], 255);
    PlayerTextDrawSetShadow(playerid, BannedTD[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, BannedTD[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, BannedTD[playerid][0], 255);
    PlayerTextDrawFont(playerid, BannedTD[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, BannedTD[playerid][0], 1);

    BannedTD[playerid][1] = CreatePlayerTextDraw(playerid, 174.000, 135.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, BannedTD[playerid][1], 33.000, 33.000);
    PlayerTextDrawAlignment(playerid, BannedTD[playerid][1], 1);
    PlayerTextDrawColor(playerid, BannedTD[playerid][1], 255);
    PlayerTextDrawSetShadow(playerid, BannedTD[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, BannedTD[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, BannedTD[playerid][1], 255);
    PlayerTextDrawFont(playerid, BannedTD[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, BannedTD[playerid][1], 1);

    BannedTD[playerid][2] = CreatePlayerTextDraw(playerid, 435.000, 135.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, BannedTD[playerid][2], 33.000, 33.000);
    PlayerTextDrawAlignment(playerid, BannedTD[playerid][2], 1);
    PlayerTextDrawColor(playerid, BannedTD[playerid][2], 255);
    PlayerTextDrawSetShadow(playerid, BannedTD[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, BannedTD[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, BannedTD[playerid][2], 255);
    PlayerTextDrawFont(playerid, BannedTD[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, BannedTD[playerid][2], 1);

    BannedTD[playerid][3] = CreatePlayerTextDraw(playerid, 435.000, 270.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, BannedTD[playerid][3], 33.000, 33.000);
    PlayerTextDrawAlignment(playerid, BannedTD[playerid][3], 1);
    PlayerTextDrawColor(playerid, BannedTD[playerid][3], 255);
    PlayerTextDrawSetShadow(playerid, BannedTD[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, BannedTD[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, BannedTD[playerid][3], 255);
    PlayerTextDrawFont(playerid, BannedTD[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, BannedTD[playerid][3], 1);

    BannedTD[playerid][4] = CreatePlayerTextDraw(playerid, 174.000, 270.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, BannedTD[playerid][4], 33.000, 33.000);
    PlayerTextDrawAlignment(playerid, BannedTD[playerid][4], 1);
    PlayerTextDrawColor(playerid, BannedTD[playerid][4], 255);
    PlayerTextDrawSetShadow(playerid, BannedTD[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, BannedTD[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, BannedTD[playerid][4], 255);
    PlayerTextDrawFont(playerid, BannedTD[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, BannedTD[playerid][4], 1);

    BannedTD[playerid][5] = CreatePlayerTextDraw(playerid, 190.000, 140.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BannedTD[playerid][5], 262.000, 158.000);
    PlayerTextDrawAlignment(playerid, BannedTD[playerid][5], 1);
    PlayerTextDrawColor(playerid, BannedTD[playerid][5], 255);
    PlayerTextDrawSetShadow(playerid, BannedTD[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, BannedTD[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, BannedTD[playerid][5], 255);
    PlayerTextDrawFont(playerid, BannedTD[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, BannedTD[playerid][5], 1);

    BannedTD[playerid][6] = CreatePlayerTextDraw(playerid, 174.000, 135.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, BannedTD[playerid][6], 33.000, 33.000);
    PlayerTextDrawAlignment(playerid, BannedTD[playerid][6], 1);
    PlayerTextDrawColor(playerid, BannedTD[playerid][6], -16776961);
    PlayerTextDrawSetShadow(playerid, BannedTD[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, BannedTD[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, BannedTD[playerid][6], 255);
    PlayerTextDrawFont(playerid, BannedTD[playerid][6], 4);
    PlayerTextDrawSetProportional(playerid, BannedTD[playerid][6], 1);

    BannedTD[playerid][7] = CreatePlayerTextDraw(playerid, 435.000, 135.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, BannedTD[playerid][7], 33.000, 33.000);
    PlayerTextDrawAlignment(playerid, BannedTD[playerid][7], 1);
    PlayerTextDrawColor(playerid, BannedTD[playerid][7], -16776961);
    PlayerTextDrawSetShadow(playerid, BannedTD[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, BannedTD[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, BannedTD[playerid][7], 255);
    PlayerTextDrawFont(playerid, BannedTD[playerid][7], 4);
    PlayerTextDrawSetProportional(playerid, BannedTD[playerid][7], 1);

    BannedTD[playerid][8] = CreatePlayerTextDraw(playerid, 189.000, 140.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BannedTD[playerid][8], 264.000, 22.000);
    PlayerTextDrawAlignment(playerid, BannedTD[playerid][8], 1);
    PlayerTextDrawColor(playerid, BannedTD[playerid][8], -16776961);
    PlayerTextDrawSetShadow(playerid, BannedTD[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, BannedTD[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, BannedTD[playerid][8], 255);
    PlayerTextDrawFont(playerid, BannedTD[playerid][8], 4);
    PlayerTextDrawSetProportional(playerid, BannedTD[playerid][8], 1);

    BannedTD[playerid][9] = CreatePlayerTextDraw(playerid, 229.000, 144.000, "Anda Telah Di Banned Dari Server Astral City Roleplay");
    PlayerTextDrawLetterSize(playerid, BannedTD[playerid][9], 0.210, 1.299);
    PlayerTextDrawAlignment(playerid, BannedTD[playerid][9], 1);
    PlayerTextDrawColor(playerid, BannedTD[playerid][9], -1);
    PlayerTextDrawSetShadow(playerid, BannedTD[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, BannedTD[playerid][9], 1);
    PlayerTextDrawBackgroundColor(playerid, BannedTD[playerid][9], 150);
    PlayerTextDrawFont(playerid, BannedTD[playerid][9], 1);
    PlayerTextDrawSetProportional(playerid, BannedTD[playerid][9], 1);

    BannedTD[playerid][10] = CreatePlayerTextDraw(playerid, 192.000, 171.000, "BERDASARKAN INFORMASI:");
    PlayerTextDrawLetterSize(playerid, BannedTD[playerid][10], 0.180, 1.099);
    PlayerTextDrawAlignment(playerid, BannedTD[playerid][10], 1);
    PlayerTextDrawColor(playerid, BannedTD[playerid][10], -1);
    PlayerTextDrawSetShadow(playerid, BannedTD[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, BannedTD[playerid][10], 1);
    PlayerTextDrawBackgroundColor(playerid, BannedTD[playerid][10], 150);
    PlayerTextDrawFont(playerid, BannedTD[playerid][10], 1);
    PlayerTextDrawSetProportional(playerid, BannedTD[playerid][10], 1);

    BannedTD[playerid][11] = CreatePlayerTextDraw(playerid, 192.000, 192.000, "Nama UCP/IC: Rayy_Bonelo");
    PlayerTextDrawLetterSize(playerid, BannedTD[playerid][11], 0.180, 1.099);
    PlayerTextDrawAlignment(playerid, BannedTD[playerid][11], 1);
    PlayerTextDrawColor(playerid, BannedTD[playerid][11], -1);
    PlayerTextDrawSetShadow(playerid, BannedTD[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, BannedTD[playerid][11], 1);
    PlayerTextDrawBackgroundColor(playerid, BannedTD[playerid][11], 150);
    PlayerTextDrawFont(playerid, BannedTD[playerid][11], 1);
    PlayerTextDrawSetProportional(playerid, BannedTD[playerid][11], 1);

    BannedTD[playerid][12] = CreatePlayerTextDraw(playerid, 192.000, 203.000, "IP Address: 11.22.33.44");
    PlayerTextDrawLetterSize(playerid, BannedTD[playerid][12], 0.180, 1.099);
    PlayerTextDrawAlignment(playerid, BannedTD[playerid][12], 1);
    PlayerTextDrawColor(playerid, BannedTD[playerid][12], -1);
    PlayerTextDrawSetShadow(playerid, BannedTD[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, BannedTD[playerid][12], 1);
    PlayerTextDrawBackgroundColor(playerid, BannedTD[playerid][12], 150);
    PlayerTextDrawFont(playerid, BannedTD[playerid][12], 1);
    PlayerTextDrawSetProportional(playerid, BannedTD[playerid][12], 1);

    BannedTD[playerid][13] = CreatePlayerTextDraw(playerid, 192.000, 214.000, "Admin On Duty: Rayyzix");
    PlayerTextDrawLetterSize(playerid, BannedTD[playerid][13], 0.180, 1.099);
    PlayerTextDrawAlignment(playerid, BannedTD[playerid][13], 1);
    PlayerTextDrawColor(playerid, BannedTD[playerid][13], -1);
    PlayerTextDrawSetShadow(playerid, BannedTD[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, BannedTD[playerid][13], 1);
    PlayerTextDrawBackgroundColor(playerid, BannedTD[playerid][13], 150);
    PlayerTextDrawFont(playerid, BannedTD[playerid][13], 1);
    PlayerTextDrawSetProportional(playerid, BannedTD[playerid][13], 1);

    BannedTD[playerid][14] = CreatePlayerTextDraw(playerid, 192.000, 225.000, "Tanggal Blokir: 18 agustus 2025, 23:53:20");
    PlayerTextDrawLetterSize(playerid, BannedTD[playerid][14], 0.180, 1.099);
    PlayerTextDrawAlignment(playerid, BannedTD[playerid][14], 1);
    PlayerTextDrawColor(playerid, BannedTD[playerid][14], -1);
    PlayerTextDrawSetShadow(playerid, BannedTD[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, BannedTD[playerid][14], 1);
    PlayerTextDrawBackgroundColor(playerid, BannedTD[playerid][14], 150);
    PlayerTextDrawFont(playerid, BannedTD[playerid][14], 1);
    PlayerTextDrawSetProportional(playerid, BannedTD[playerid][14], 1);

    BannedTD[playerid][15] = CreatePlayerTextDraw(playerid, 192.000, 236.000, "Reason: Tolol Citer Haram");
    PlayerTextDrawLetterSize(playerid, BannedTD[playerid][15], 0.180, 1.099);
    PlayerTextDrawAlignment(playerid, BannedTD[playerid][15], 1);
    PlayerTextDrawColor(playerid, BannedTD[playerid][15], -1);
    PlayerTextDrawSetShadow(playerid, BannedTD[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, BannedTD[playerid][15], 1);
    PlayerTextDrawBackgroundColor(playerid, BannedTD[playerid][15], 150);
    PlayerTextDrawFont(playerid, BannedTD[playerid][15], 1);
    PlayerTextDrawSetProportional(playerid, BannedTD[playerid][15], 1);

    BannedTD[playerid][16] = CreatePlayerTextDraw(playerid, 192.000, 246.000, "Durasi Blokir: 1 Hari 23 Jam 59 Menit");
    PlayerTextDrawLetterSize(playerid, BannedTD[playerid][16], 0.180, 1.099);
    PlayerTextDrawAlignment(playerid, BannedTD[playerid][16], 1);
    PlayerTextDrawColor(playerid, BannedTD[playerid][16], -1);
    PlayerTextDrawSetShadow(playerid, BannedTD[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, BannedTD[playerid][16], 1);
    PlayerTextDrawBackgroundColor(playerid, BannedTD[playerid][16], 150);
    PlayerTextDrawFont(playerid, BannedTD[playerid][16], 1);
    PlayerTextDrawSetProportional(playerid, BannedTD[playerid][16], 1);

    BannedTD[playerid][17] = CreatePlayerTextDraw(playerid, 192.000, 268.000, "NOTE:");
    PlayerTextDrawLetterSize(playerid, BannedTD[playerid][17], 0.180, 1.099);
    PlayerTextDrawAlignment(playerid, BannedTD[playerid][17], 1);
    PlayerTextDrawColor(playerid, BannedTD[playerid][17], 8388863);
    PlayerTextDrawSetShadow(playerid, BannedTD[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, BannedTD[playerid][17], 1);
    PlayerTextDrawBackgroundColor(playerid, BannedTD[playerid][17], 150);
    PlayerTextDrawFont(playerid, BannedTD[playerid][17], 1);
    PlayerTextDrawSetProportional(playerid, BannedTD[playerid][17], 1);

    BannedTD[playerid][18] = CreatePlayerTextDraw(playerid, 214.000, 264.000, "Jika anda ingin bermain lagi dan tidak mengulangi lagi, masuk ke Discord: discord.gg/Astral Cityroleplay");
    PlayerTextDrawLetterSize(playerid, BannedTD[playerid][18], 0.180, 1.099);
    PlayerTextDrawTextSize(playerid, BannedTD[playerid][18], 428.000, 0.000);
    PlayerTextDrawAlignment(playerid, BannedTD[playerid][18], 1);
    PlayerTextDrawColor(playerid, BannedTD[playerid][18], 1887473919);
    PlayerTextDrawUseBox(playerid, BannedTD[playerid][18], 1);
    PlayerTextDrawBoxColor(playerid, BannedTD[playerid][18], 150);
    PlayerTextDrawSetShadow(playerid, BannedTD[playerid][18], 0);
    PlayerTextDrawSetOutline(playerid, BannedTD[playerid][18], 1);
    PlayerTextDrawBackgroundColor(playerid, BannedTD[playerid][18], 150);
    PlayerTextDrawFont(playerid, BannedTD[playerid][18], 1);
    PlayerTextDrawSetProportional(playerid, BannedTD[playerid][18], 1);

    BannedTD[playerid][19] = CreatePlayerTextDraw(playerid, 348.000, 164.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, BannedTD[playerid][19], 97.000, 98.000);
    PlayerTextDrawAlignment(playerid, BannedTD[playerid][19], 1);
    PlayerTextDrawColor(playerid, BannedTD[playerid][19], -16776961);
    PlayerTextDrawSetShadow(playerid, BannedTD[playerid][19], 0);
    PlayerTextDrawSetOutline(playerid, BannedTD[playerid][19], 0);
    PlayerTextDrawBackgroundColor(playerid, BannedTD[playerid][19], 255);
    PlayerTextDrawFont(playerid, BannedTD[playerid][19], 4);
    PlayerTextDrawSetProportional(playerid, BannedTD[playerid][19], 1);

    BannedTD[playerid][20] = CreatePlayerTextDraw(playerid, 349.000, 165.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, BannedTD[playerid][20], 94.000, 96.000);
    PlayerTextDrawAlignment(playerid, BannedTD[playerid][20], 1);
    PlayerTextDrawColor(playerid, BannedTD[playerid][20], 255);
    PlayerTextDrawSetShadow(playerid, BannedTD[playerid][20], 0);
    PlayerTextDrawSetOutline(playerid, BannedTD[playerid][20], 0);
    PlayerTextDrawBackgroundColor(playerid, BannedTD[playerid][20], 255);
    PlayerTextDrawFont(playerid, BannedTD[playerid][20], 4);
    PlayerTextDrawSetProportional(playerid, BannedTD[playerid][20], 1);

    BannedTD[playerid][21] = CreatePlayerTextDraw(playerid, 413.000, 177.000, "X");
    PlayerTextDrawLetterSize(playerid, BannedTD[playerid][21], -1.399, 6.899);
    PlayerTextDrawTextSize(playerid, BannedTD[playerid][21], 0.000, -10.000);
    PlayerTextDrawAlignment(playerid, BannedTD[playerid][21], 1);
    PlayerTextDrawColor(playerid, BannedTD[playerid][21], -16776961);
    PlayerTextDrawSetShadow(playerid, BannedTD[playerid][21], 0);
    PlayerTextDrawSetOutline(playerid, BannedTD[playerid][21], 0);
    PlayerTextDrawBackgroundColor(playerid, BannedTD[playerid][21], 150);
    PlayerTextDrawFont(playerid, BannedTD[playerid][21], 1);
    PlayerTextDrawSetProportional(playerid, BannedTD[playerid][21], 1);

    PenembakanDeteksi[playerid][0] = CreatePlayerTextDraw(playerid, 2.000, 245.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, PenembakanDeteksi[playerid][0], 89.000, 18.000);
    PlayerTextDrawAlignment(playerid, PenembakanDeteksi[playerid][0], 1);
    PlayerTextDrawColor(playerid, PenembakanDeteksi[playerid][0], 1517981951);
    PlayerTextDrawSetShadow(playerid, PenembakanDeteksi[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, PenembakanDeteksi[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, PenembakanDeteksi[playerid][0], 255);
    PlayerTextDrawFont(playerid, PenembakanDeteksi[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, PenembakanDeteksi[playerid][0], 1);

    PenembakanDeteksi[playerid][1] = CreatePlayerTextDraw(playerid, 2.000, 263.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, PenembakanDeteksi[playerid][1], 89.000, 42.000);
    PlayerTextDrawAlignment(playerid, PenembakanDeteksi[playerid][1], 1);
    PlayerTextDrawColor(playerid, PenembakanDeteksi[playerid][1], 2005441023);
    PlayerTextDrawSetShadow(playerid, PenembakanDeteksi[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, PenembakanDeteksi[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, PenembakanDeteksi[playerid][1], 255);
    PlayerTextDrawFont(playerid, PenembakanDeteksi[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, PenembakanDeteksi[playerid][1], 1);

    PenembakanDeteksi[playerid][2] = CreatePlayerTextDraw(playerid, 6.000, 266.000, "HUD:radar_waypoint");
    PlayerTextDrawTextSize(playerid, PenembakanDeteksi[playerid][2], 10.000, 9.000);
    PlayerTextDrawAlignment(playerid, PenembakanDeteksi[playerid][2], 1);
    PlayerTextDrawColor(playerid, PenembakanDeteksi[playerid][2], -1);
    PlayerTextDrawSetShadow(playerid, PenembakanDeteksi[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, PenembakanDeteksi[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, PenembakanDeteksi[playerid][2], 255);
    PlayerTextDrawFont(playerid, PenembakanDeteksi[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, PenembakanDeteksi[playerid][2], 1);

    PenembakanDeteksi[playerid][3] = CreatePlayerTextDraw(playerid, 15.000, 248.000, "Penembakan Deteksi");
    PlayerTextDrawLetterSize(playerid, PenembakanDeteksi[playerid][3], 0.180, 1.099);
    PlayerTextDrawAlignment(playerid, PenembakanDeteksi[playerid][3], 1);
    PlayerTextDrawColor(playerid, PenembakanDeteksi[playerid][3], -1);
    PlayerTextDrawSetShadow(playerid, PenembakanDeteksi[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, PenembakanDeteksi[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, PenembakanDeteksi[playerid][3], 150);
    PlayerTextDrawFont(playerid, PenembakanDeteksi[playerid][3], 1);
    PlayerTextDrawSetProportional(playerid, PenembakanDeteksi[playerid][3], 1);

    PenembakanDeteksi[playerid][4] = CreatePlayerTextDraw(playerid, 19.000, 265.000, "Lokasi:");
    PlayerTextDrawLetterSize(playerid, PenembakanDeteksi[playerid][4], 0.150, 0.999);
    PlayerTextDrawAlignment(playerid, PenembakanDeteksi[playerid][4], 1);
    PlayerTextDrawColor(playerid, PenembakanDeteksi[playerid][4], -1);
    PlayerTextDrawSetShadow(playerid, PenembakanDeteksi[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, PenembakanDeteksi[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, PenembakanDeteksi[playerid][4], 150);
    PlayerTextDrawFont(playerid, PenembakanDeteksi[playerid][4], 1);
    PlayerTextDrawSetProportional(playerid, PenembakanDeteksi[playerid][4], 1);

    PenembakanDeteksi[playerid][5] = CreatePlayerTextDraw(playerid, 37.000, 265.000, "Lost santos");
    PlayerTextDrawLetterSize(playerid, PenembakanDeteksi[playerid][5], 0.150, 0.999);
    PlayerTextDrawAlignment(playerid, PenembakanDeteksi[playerid][5], 1);
    PlayerTextDrawColor(playerid, PenembakanDeteksi[playerid][5], -1);
    PlayerTextDrawSetShadow(playerid, PenembakanDeteksi[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, PenembakanDeteksi[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, PenembakanDeteksi[playerid][5], 150);
    PlayerTextDrawFont(playerid, PenembakanDeteksi[playerid][5], 1);
    PlayerTextDrawSetProportional(playerid, PenembakanDeteksi[playerid][5], 1);

    PenembakanDeteksi[playerid][6] = CreatePlayerTextDraw(playerid, 6.000, 281.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, PenembakanDeteksi[playerid][6], 11.000, 8.000);
    PlayerTextDrawAlignment(playerid, PenembakanDeteksi[playerid][6], 1);
    PlayerTextDrawColor(playerid, PenembakanDeteksi[playerid][6], -1);
    PlayerTextDrawSetShadow(playerid, PenembakanDeteksi[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, PenembakanDeteksi[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, PenembakanDeteksi[playerid][6], 255);
    PlayerTextDrawFont(playerid, PenembakanDeteksi[playerid][6], 4);
    PlayerTextDrawSetProportional(playerid, PenembakanDeteksi[playerid][6], 1);

    PenembakanDeteksi[playerid][7] = CreatePlayerTextDraw(playerid, 8.000, 276.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, PenembakanDeteksi[playerid][7], 6.000, 7.000);
    PlayerTextDrawAlignment(playerid, PenembakanDeteksi[playerid][7], 1);
    PlayerTextDrawColor(playerid, PenembakanDeteksi[playerid][7], -1);
    PlayerTextDrawSetShadow(playerid, PenembakanDeteksi[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, PenembakanDeteksi[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, PenembakanDeteksi[playerid][7], 255);
    PlayerTextDrawFont(playerid, PenembakanDeteksi[playerid][7], 4);
    PlayerTextDrawSetProportional(playerid, PenembakanDeteksi[playerid][7], 1);

    PenembakanDeteksi[playerid][8] = CreatePlayerTextDraw(playerid, 19.000, 278.000, "Gender:");
    PlayerTextDrawLetterSize(playerid, PenembakanDeteksi[playerid][8], 0.150, 0.999);
    PlayerTextDrawAlignment(playerid, PenembakanDeteksi[playerid][8], 1);
    PlayerTextDrawColor(playerid, PenembakanDeteksi[playerid][8], -1);
    PlayerTextDrawSetShadow(playerid, PenembakanDeteksi[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, PenembakanDeteksi[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, PenembakanDeteksi[playerid][8], 150);
    PlayerTextDrawFont(playerid, PenembakanDeteksi[playerid][8], 1);
    PlayerTextDrawSetProportional(playerid, PenembakanDeteksi[playerid][8], 1);

    PenembakanDeteksi[playerid][9] = CreatePlayerTextDraw(playerid, 40.000, 278.000, "Laki-Laki");
    PlayerTextDrawLetterSize(playerid, PenembakanDeteksi[playerid][9], 0.150, 0.999);
    PlayerTextDrawAlignment(playerid, PenembakanDeteksi[playerid][9], 1);
    PlayerTextDrawColor(playerid, PenembakanDeteksi[playerid][9], -1);
    PlayerTextDrawSetShadow(playerid, PenembakanDeteksi[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, PenembakanDeteksi[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, PenembakanDeteksi[playerid][9], 150);
    PlayerTextDrawFont(playerid, PenembakanDeteksi[playerid][9], 1);
    PlayerTextDrawSetProportional(playerid, PenembakanDeteksi[playerid][9], 1);

    PenembakanDeteksi[playerid][10] = CreatePlayerTextDraw(playerid, 7.000, 293.000, "HUD:radar_ammugun");
    PlayerTextDrawTextSize(playerid, PenembakanDeteksi[playerid][10], 9.000, 9.000);
    PlayerTextDrawAlignment(playerid, PenembakanDeteksi[playerid][10], 1);
    PlayerTextDrawColor(playerid, PenembakanDeteksi[playerid][10], -1);
    PlayerTextDrawSetShadow(playerid, PenembakanDeteksi[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, PenembakanDeteksi[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, PenembakanDeteksi[playerid][10], 255);
    PlayerTextDrawFont(playerid, PenembakanDeteksi[playerid][10], 4);
    PlayerTextDrawSetProportional(playerid, PenembakanDeteksi[playerid][10], 1);

    PenembakanDeteksi[playerid][11] = CreatePlayerTextDraw(playerid, 19.000, 291.000, "Senjata:");
    PlayerTextDrawLetterSize(playerid, PenembakanDeteksi[playerid][11], 0.150, 0.999);
    PlayerTextDrawAlignment(playerid, PenembakanDeteksi[playerid][11], 1);
    PlayerTextDrawColor(playerid, PenembakanDeteksi[playerid][11], -1);
    PlayerTextDrawSetShadow(playerid, PenembakanDeteksi[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, PenembakanDeteksi[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, PenembakanDeteksi[playerid][11], 150);
    PlayerTextDrawFont(playerid, PenembakanDeteksi[playerid][11], 1);
    PlayerTextDrawSetProportional(playerid, PenembakanDeteksi[playerid][11], 1);

    PenembakanDeteksi[playerid][12] = CreatePlayerTextDraw(playerid, 40.000, 291.000, "Desert Eagle");
    PlayerTextDrawLetterSize(playerid, PenembakanDeteksi[playerid][12], 0.150, 0.999);
    PlayerTextDrawAlignment(playerid, PenembakanDeteksi[playerid][12], 1);
    PlayerTextDrawColor(playerid, PenembakanDeteksi[playerid][12], -1);
    PlayerTextDrawSetShadow(playerid, PenembakanDeteksi[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, PenembakanDeteksi[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, PenembakanDeteksi[playerid][12], 150);
    PlayerTextDrawFont(playerid, PenembakanDeteksi[playerid][12], 1);
    PlayerTextDrawSetProportional(playerid, PenembakanDeteksi[playerid][12], 1);

    AnnTD[playerid][0] = CreatePlayerTextDraw(playerid, 266.000, 54.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, AnnTD[playerid][0], 128.000, 14.000);
    PlayerTextDrawAlignment(playerid, AnnTD[playerid][0], 1);
    PlayerTextDrawColor(playerid, AnnTD[playerid][0], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, AnnTD[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, AnnTD[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, AnnTD[playerid][0], 255);
    PlayerTextDrawFont(playerid, AnnTD[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, AnnTD[playerid][0], 1);

    AnnTD[playerid][1] = CreatePlayerTextDraw(playerid, 266.000, 70.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, AnnTD[playerid][1], 128.000, 36.000);
    PlayerTextDrawAlignment(playerid, AnnTD[playerid][1], 1);
    PlayerTextDrawColor(playerid, AnnTD[playerid][1], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, AnnTD[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, AnnTD[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, AnnTD[playerid][1], 255);
    PlayerTextDrawFont(playerid, AnnTD[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, AnnTD[playerid][1], 1);

    AnnTD[playerid][2] = CreatePlayerTextDraw(playerid, 329.000, 54.000, "Announcement");
    PlayerTextDrawLetterSize(playerid, AnnTD[playerid][2], 0.180, 1.199);
    PlayerTextDrawAlignment(playerid, AnnTD[playerid][2], 2);
    PlayerTextDrawColor(playerid, AnnTD[playerid][2], -1);
    PlayerTextDrawSetShadow(playerid, AnnTD[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, AnnTD[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, AnnTD[playerid][2], 150);
    PlayerTextDrawFont(playerid, AnnTD[playerid][2], 1);
    PlayerTextDrawSetProportional(playerid, AnnTD[playerid][2], 1);

    AnnTD[playerid][3] = CreatePlayerTextDraw(playerid, 271.000, 73.000, "Di harapkan masuk ke dalam rumah karna akan segera badai pada pukul 12.00");
    PlayerTextDrawLetterSize(playerid, AnnTD[playerid][3], 0.160, 1.099);
    PlayerTextDrawTextSize(playerid, AnnTD[playerid][3], 392.000, -146.000);
    PlayerTextDrawAlignment(playerid, AnnTD[playerid][3], 1);
    PlayerTextDrawColor(playerid, AnnTD[playerid][3], -1);
    PlayerTextDrawSetShadow(playerid, AnnTD[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, AnnTD[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, AnnTD[playerid][3], 150);
    PlayerTextDrawFont(playerid, AnnTD[playerid][3], 1);
    PlayerTextDrawSetProportional(playerid, AnnTD[playerid][3], 1);

    PomTD[playerid][0] = CreatePlayerTextDraw(playerid, 588.000, 150.000, "LD_DUAL:white");
    PlayerTextDrawTextSize(playerid, PomTD[playerid][0], 0.500, 223.000);
    PlayerTextDrawAlignment(playerid, PomTD[playerid][0], 1);
    PlayerTextDrawColor(playerid, PomTD[playerid][0], -1);
    PlayerTextDrawSetShadow(playerid, PomTD[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, PomTD[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, PomTD[playerid][0], 255);
    PlayerTextDrawFont(playerid, PomTD[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, PomTD[playerid][0], 1);

    PomTD[playerid][1] = CreatePlayerTextDraw(playerid, 628.000, 150.000, "LD_DUAL:white");
    PlayerTextDrawTextSize(playerid, PomTD[playerid][1], 0.500, 223.000);
    PlayerTextDrawAlignment(playerid, PomTD[playerid][1], 1);
    PlayerTextDrawColor(playerid, PomTD[playerid][1], -1);
    PlayerTextDrawSetShadow(playerid, PomTD[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, PomTD[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, PomTD[playerid][1], 255);
    PlayerTextDrawFont(playerid, PomTD[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, PomTD[playerid][1], 1);

    PomTD[playerid][2] = CreatePlayerTextDraw(playerid, 628.000, 150.000, "LD_DUAL:white");
    PlayerTextDrawTextSize(playerid, PomTD[playerid][2], -39.500, 0.500);
    PlayerTextDrawAlignment(playerid, PomTD[playerid][2], 1);
    PlayerTextDrawColor(playerid, PomTD[playerid][2], -1);
    PlayerTextDrawSetShadow(playerid, PomTD[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, PomTD[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, PomTD[playerid][2], 255);
    PlayerTextDrawFont(playerid, PomTD[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, PomTD[playerid][2], 1);

    PomTD[playerid][3] = CreatePlayerTextDraw(playerid, 628.000, 373.000, "LD_DUAL:white");
    PlayerTextDrawTextSize(playerid, PomTD[playerid][3], -39.500, 0.500);
    PlayerTextDrawAlignment(playerid, PomTD[playerid][3], 1);
    PlayerTextDrawColor(playerid, PomTD[playerid][3], -1);
    PlayerTextDrawSetShadow(playerid, PomTD[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, PomTD[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, PomTD[playerid][3], 255);
    PlayerTextDrawFont(playerid, PomTD[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, PomTD[playerid][3], 1);

    PomTD[playerid][4] = CreatePlayerTextDraw(playerid, 628.000, 372.000, "LD_DUAL:white");
    PlayerTextDrawTextSize(playerid, PomTD[playerid][4], -39.500, -221.500);
    PlayerTextDrawAlignment(playerid, PomTD[playerid][4], 1);
    PlayerTextDrawColor(playerid, PomTD[playerid][4], 6553855);
    PlayerTextDrawSetShadow(playerid, PomTD[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, PomTD[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, PomTD[playerid][4], 255);
    PlayerTextDrawFont(playerid, PomTD[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, PomTD[playerid][4], 1);

    PomTD[playerid][5] = CreatePlayerTextDraw(playerid, 563.000, 308.000, "_");
    PlayerTextDrawTextSize(playerid, PomTD[playerid][5], 90.000, 90.000);
    PlayerTextDrawAlignment(playerid, PomTD[playerid][5], 1);
    PlayerTextDrawColor(playerid, PomTD[playerid][5], -1);
    PlayerTextDrawSetShadow(playerid, PomTD[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, PomTD[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, PomTD[playerid][5], 0);
    PlayerTextDrawFont(playerid, PomTD[playerid][5], 5);
    PlayerTextDrawSetProportional(playerid, PomTD[playerid][5], 0);
    PlayerTextDrawSetPreviewModel(playerid, PomTD[playerid][5], 1650);
    PlayerTextDrawSetPreviewRot(playerid, PomTD[playerid][5], 0.000, 0.000, 0.000, 2.500);
    PlayerTextDrawSetPreviewVehCol(playerid, PomTD[playerid][5], 0, 0);

    PomTD[playerid][6] = CreatePlayerTextDraw(playerid, 608.000, 158.000, "100");
    PlayerTextDrawLetterSize(playerid, PomTD[playerid][6], 0.200, 1.099);
    PlayerTextDrawAlignment(playerid, PomTD[playerid][6], 2);
    PlayerTextDrawColor(playerid, PomTD[playerid][6], -1);
    PlayerTextDrawSetShadow(playerid, PomTD[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, PomTD[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, PomTD[playerid][6], 150);
    PlayerTextDrawFont(playerid, PomTD[playerid][6], 1);
    PlayerTextDrawSetProportional(playerid, PomTD[playerid][6], 1);

    PomTD[playerid][7] = CreatePlayerTextDraw(playerid, 608.000, 168.000, "LITER");
    PlayerTextDrawLetterSize(playerid, PomTD[playerid][7], 0.200, 1.099);
    PlayerTextDrawAlignment(playerid, PomTD[playerid][7], 2);
    PlayerTextDrawColor(playerid, PomTD[playerid][7], -1);
    PlayerTextDrawSetShadow(playerid, PomTD[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, PomTD[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, PomTD[playerid][7], 150);
    PlayerTextDrawFont(playerid, PomTD[playerid][7], 1);
    PlayerTextDrawSetProportional(playerid, PomTD[playerid][7], 1);
    
    InjuredSytems[playerid][0] = CreatePlayerTextDraw(playerid, 278.000, 115.000, "/");
    PlayerTextDrawLetterSize(playerid, InjuredSytems[playerid][0], 0.837, 6.499);
    PlayerTextDrawAlignment(playerid, InjuredSytems[playerid][0], 1);
    PlayerTextDrawColor(playerid, InjuredSytems[playerid][0], -16776961);
    PlayerTextDrawSetShadow(playerid, InjuredSytems[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, InjuredSytems[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, InjuredSytems[playerid][0], 150);
    PlayerTextDrawFont(playerid, InjuredSytems[playerid][0], 1);
    PlayerTextDrawSetProportional(playerid, InjuredSytems[playerid][0], 1);

    InjuredSytems[playerid][1] = CreatePlayerTextDraw(playerid, -6.000, -5.000, "LD_SPAC:black");
    PlayerTextDrawTextSize(playerid, InjuredSytems[playerid][1], 663.000, 464.000);
    PlayerTextDrawAlignment(playerid, InjuredSytems[playerid][1], 1);
    PlayerTextDrawColor(playerid, InjuredSytems[playerid][1], 60);
    PlayerTextDrawSetShadow(playerid, InjuredSytems[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, InjuredSytems[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, InjuredSytems[playerid][1], 255);
    PlayerTextDrawFont(playerid, InjuredSytems[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, InjuredSytems[playerid][1], 1);

    InjuredSytems[playerid][2] = CreatePlayerTextDraw(playerid, 262.000, 169.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, InjuredSytems[playerid][2], 20.000, 6.000);
    PlayerTextDrawAlignment(playerid, InjuredSytems[playerid][2], 1);
    PlayerTextDrawColor(playerid, InjuredSytems[playerid][2], -16776961);
    PlayerTextDrawSetShadow(playerid, InjuredSytems[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, InjuredSytems[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, InjuredSytems[playerid][2], 255);
    PlayerTextDrawFont(playerid, InjuredSytems[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, InjuredSytems[playerid][2], 1);

    InjuredSytems[playerid][3] = CreatePlayerTextDraw(playerid, 285.000, 115.000, "\\");
    PlayerTextDrawLetterSize(playerid, InjuredSytems[playerid][3], 0.837, 6.499);
    PlayerTextDrawAlignment(playerid, InjuredSytems[playerid][3], 1);
    PlayerTextDrawColor(playerid, InjuredSytems[playerid][3], -16776961);
    PlayerTextDrawSetShadow(playerid, InjuredSytems[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, InjuredSytems[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, InjuredSytems[playerid][3], 150);
    PlayerTextDrawFont(playerid, InjuredSytems[playerid][3], 1);
    PlayerTextDrawSetProportional(playerid, InjuredSytems[playerid][3], 1);

    InjuredSytems[playerid][4] = CreatePlayerTextDraw(playerid, 292.000, 145.000, "/");
    PlayerTextDrawLetterSize(playerid, InjuredSytems[playerid][4], 0.989, 3.299);
    PlayerTextDrawAlignment(playerid, InjuredSytems[playerid][4], 1);
    PlayerTextDrawColor(playerid, InjuredSytems[playerid][4], -16776961);
    PlayerTextDrawSetShadow(playerid, InjuredSytems[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, InjuredSytems[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, InjuredSytems[playerid][4], 150);
    PlayerTextDrawFont(playerid, InjuredSytems[playerid][4], 1);
    PlayerTextDrawSetProportional(playerid, InjuredSytems[playerid][4], 1);

    InjuredSytems[playerid][5] = CreatePlayerTextDraw(playerid, 301.000, 139.000, "\\");
    PlayerTextDrawLetterSize(playerid, InjuredSytems[playerid][5], 0.837, 6.499);
    PlayerTextDrawAlignment(playerid, InjuredSytems[playerid][5], 1);
    PlayerTextDrawColor(playerid, InjuredSytems[playerid][5], -16776961);
    PlayerTextDrawSetShadow(playerid, InjuredSytems[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, InjuredSytems[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, InjuredSytems[playerid][5], 150);
    PlayerTextDrawFont(playerid, InjuredSytems[playerid][5], 1);
    PlayerTextDrawSetProportional(playerid, InjuredSytems[playerid][5], 1);

    InjuredSytems[playerid][6] = CreatePlayerTextDraw(playerid, 309.000, 193.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, InjuredSytems[playerid][6], 7.000, 6.000);
    PlayerTextDrawAlignment(playerid, InjuredSytems[playerid][6], 1);
    PlayerTextDrawColor(playerid, InjuredSytems[playerid][6], -16776961);
    PlayerTextDrawSetShadow(playerid, InjuredSytems[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, InjuredSytems[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, InjuredSytems[playerid][6], 255);
    PlayerTextDrawFont(playerid, InjuredSytems[playerid][6], 4);
    PlayerTextDrawSetProportional(playerid, InjuredSytems[playerid][6], 1);

    InjuredSytems[playerid][7] = CreatePlayerTextDraw(playerid, 311.000, 168.000, "/");
    PlayerTextDrawLetterSize(playerid, InjuredSytems[playerid][7], 0.989, 3.299);
    PlayerTextDrawAlignment(playerid, InjuredSytems[playerid][7], 1);
    PlayerTextDrawColor(playerid, InjuredSytems[playerid][7], -16776961);
    PlayerTextDrawSetShadow(playerid, InjuredSytems[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, InjuredSytems[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, InjuredSytems[playerid][7], 150);
    PlayerTextDrawFont(playerid, InjuredSytems[playerid][7], 1);
    PlayerTextDrawSetProportional(playerid, InjuredSytems[playerid][7], 1);

    InjuredSytems[playerid][8] = CreatePlayerTextDraw(playerid, 319.000, 168.000, "\\");
    PlayerTextDrawLetterSize(playerid, InjuredSytems[playerid][8], 0.989, 3.299);
    PlayerTextDrawAlignment(playerid, InjuredSytems[playerid][8], 1);
    PlayerTextDrawColor(playerid, InjuredSytems[playerid][8], -16776961);
    PlayerTextDrawSetShadow(playerid, InjuredSytems[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, InjuredSytems[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, InjuredSytems[playerid][8], 150);
    PlayerTextDrawFont(playerid, InjuredSytems[playerid][8], 1);
    PlayerTextDrawSetProportional(playerid, InjuredSytems[playerid][8], 1);

    InjuredSytems[playerid][9] = CreatePlayerTextDraw(playerid, 328.000, 138.000, "/");
    PlayerTextDrawLetterSize(playerid, InjuredSytems[playerid][9], 0.837, 6.499);
    PlayerTextDrawAlignment(playerid, InjuredSytems[playerid][9], 1);
    PlayerTextDrawColor(playerid, InjuredSytems[playerid][9], -16776961);
    PlayerTextDrawSetShadow(playerid, InjuredSytems[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, InjuredSytems[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, InjuredSytems[playerid][9], 150);
    PlayerTextDrawFont(playerid, InjuredSytems[playerid][9], 1);
    PlayerTextDrawSetProportional(playerid, InjuredSytems[playerid][9], 1);

    InjuredSytems[playerid][10] = CreatePlayerTextDraw(playerid, 336.000, 150.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, InjuredSytems[playerid][10], 7.000, 6.000);
    PlayerTextDrawAlignment(playerid, InjuredSytems[playerid][10], 1);
    PlayerTextDrawColor(playerid, InjuredSytems[playerid][10], -16776961);
    PlayerTextDrawSetShadow(playerid, InjuredSytems[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, InjuredSytems[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, InjuredSytems[playerid][10], 255);
    PlayerTextDrawFont(playerid, InjuredSytems[playerid][10], 4);
    PlayerTextDrawSetProportional(playerid, InjuredSytems[playerid][10], 1);

    InjuredSytems[playerid][11] = CreatePlayerTextDraw(playerid, 340.000, 96.000, "/");
    PlayerTextDrawLetterSize(playerid, InjuredSytems[playerid][11], 0.837, 6.499);
    PlayerTextDrawAlignment(playerid, InjuredSytems[playerid][11], 1);
    PlayerTextDrawColor(playerid, InjuredSytems[playerid][11], -16776961);
    PlayerTextDrawSetShadow(playerid, InjuredSytems[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, InjuredSytems[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, InjuredSytems[playerid][11], 150);
    PlayerTextDrawFont(playerid, InjuredSytems[playerid][11], 1);
    PlayerTextDrawSetProportional(playerid, InjuredSytems[playerid][11], 1);

    InjuredSytems[playerid][12] = CreatePlayerTextDraw(playerid, 348.000, 96.000, "\\");
    PlayerTextDrawLetterSize(playerid, InjuredSytems[playerid][12], 0.837, 6.499);
    PlayerTextDrawAlignment(playerid, InjuredSytems[playerid][12], 1);
    PlayerTextDrawColor(playerid, InjuredSytems[playerid][12], -16776961);
    PlayerTextDrawSetShadow(playerid, InjuredSytems[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, InjuredSytems[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, InjuredSytems[playerid][12], 150);
    PlayerTextDrawFont(playerid, InjuredSytems[playerid][12], 1);
    PlayerTextDrawSetProportional(playerid, InjuredSytems[playerid][12], 1);

    InjuredSytems[playerid][13] = CreatePlayerTextDraw(playerid, 354.000, 125.000, "/");
    PlayerTextDrawLetterSize(playerid, InjuredSytems[playerid][13], 0.989, 3.299);
    PlayerTextDrawAlignment(playerid, InjuredSytems[playerid][13], 1);
    PlayerTextDrawColor(playerid, InjuredSytems[playerid][13], -16776961);
    PlayerTextDrawSetShadow(playerid, InjuredSytems[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, InjuredSytems[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, InjuredSytems[playerid][13], 150);
    PlayerTextDrawFont(playerid, InjuredSytems[playerid][13], 1);
    PlayerTextDrawSetProportional(playerid, InjuredSytems[playerid][13], 1);

    InjuredSytems[playerid][14] = CreatePlayerTextDraw(playerid, 362.000, 125.000, "\\");
    PlayerTextDrawLetterSize(playerid, InjuredSytems[playerid][14], 0.989, 3.299);
    PlayerTextDrawAlignment(playerid, InjuredSytems[playerid][14], 1);
    PlayerTextDrawColor(playerid, InjuredSytems[playerid][14], -16776961);
    PlayerTextDrawSetShadow(playerid, InjuredSytems[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, InjuredSytems[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, InjuredSytems[playerid][14], 150);
    PlayerTextDrawFont(playerid, InjuredSytems[playerid][14], 1);
    PlayerTextDrawSetProportional(playerid, InjuredSytems[playerid][14], 1);

    InjuredSytems[playerid][15] = CreatePlayerTextDraw(playerid, 368.000, 144.000, "\\");
    PlayerTextDrawLetterSize(playerid, InjuredSytems[playerid][15], 0.989, 3.299);
    PlayerTextDrawAlignment(playerid, InjuredSytems[playerid][15], 1);
    PlayerTextDrawColor(playerid, InjuredSytems[playerid][15], -16776961);
    PlayerTextDrawSetShadow(playerid, InjuredSytems[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, InjuredSytems[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, InjuredSytems[playerid][15], 150);
    PlayerTextDrawFont(playerid, InjuredSytems[playerid][15], 1);
    PlayerTextDrawSetProportional(playerid, InjuredSytems[playerid][15], 1);

    InjuredSytems[playerid][16] = CreatePlayerTextDraw(playerid, 377.000, 168.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, InjuredSytems[playerid][16], 20.000, 6.000);
    PlayerTextDrawAlignment(playerid, InjuredSytems[playerid][16], 1);
    PlayerTextDrawColor(playerid, InjuredSytems[playerid][16], -16776961);
    PlayerTextDrawSetShadow(playerid, InjuredSytems[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, InjuredSytems[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, InjuredSytems[playerid][16], 255);
    PlayerTextDrawFont(playerid, InjuredSytems[playerid][16], 4);
    PlayerTextDrawSetProportional(playerid, InjuredSytems[playerid][16], 1);

    InjuredSytems[playerid][17] = CreatePlayerTextDraw(playerid, 192.000, 53.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, InjuredSytems[playerid][17], 26.000, 38.000);
    PlayerTextDrawAlignment(playerid, InjuredSytems[playerid][17], 1);
    PlayerTextDrawColor(playerid, InjuredSytems[playerid][17], -1);
    PlayerTextDrawSetShadow(playerid, InjuredSytems[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, InjuredSytems[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, InjuredSytems[playerid][17], 255);
    PlayerTextDrawFont(playerid, InjuredSytems[playerid][17], 4);
    PlayerTextDrawSetProportional(playerid, InjuredSytems[playerid][17], 1);

    InjuredSytems[playerid][18] = CreatePlayerTextDraw(playerid, 192.000, 53.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, InjuredSytems[playerid][18], 26.000, 38.000);
    PlayerTextDrawAlignment(playerid, InjuredSytems[playerid][18], 1);
    PlayerTextDrawColor(playerid, InjuredSytems[playerid][18], 225);
    PlayerTextDrawSetShadow(playerid, InjuredSytems[playerid][18], 0);
    PlayerTextDrawSetOutline(playerid, InjuredSytems[playerid][18], 0);
    PlayerTextDrawBackgroundColor(playerid, InjuredSytems[playerid][18], 255);
    PlayerTextDrawFont(playerid, InjuredSytems[playerid][18], 4);
    PlayerTextDrawSetProportional(playerid, InjuredSytems[playerid][18], 1);

    InjuredSytems[playerid][19] = CreatePlayerTextDraw(playerid, 203.500, 63.500, "i");
    PlayerTextDrawLetterSize(playerid, InjuredSytems[playerid][19], 0.300, 1.500);
    PlayerTextDrawAlignment(playerid, InjuredSytems[playerid][19], 1);
    PlayerTextDrawColor(playerid, InjuredSytems[playerid][19], -1);
    PlayerTextDrawSetShadow(playerid, InjuredSytems[playerid][19], 1);
    PlayerTextDrawSetOutline(playerid, InjuredSytems[playerid][19], 1);
    PlayerTextDrawBackgroundColor(playerid, InjuredSytems[playerid][19], 150);
    PlayerTextDrawFont(playerid, InjuredSytems[playerid][19], 1);
    PlayerTextDrawSetProportional(playerid, InjuredSytems[playerid][19], 1);

    InjuredSytems[playerid][20] = CreatePlayerTextDraw(playerid, 354.500, 63.500, "jika anda pingsan karena satu alasan, jangan        untuk menyelesaikan nya hingga selesai");
    PlayerTextDrawLetterSize(playerid, InjuredSytems[playerid][20], 0.170, 1.598);
    PlayerTextDrawAlignment(playerid, InjuredSytems[playerid][20], 2);
    PlayerTextDrawColor(playerid, InjuredSytems[playerid][20], -1);
    PlayerTextDrawSetShadow(playerid, InjuredSytems[playerid][20], 1);
    PlayerTextDrawSetOutline(playerid, InjuredSytems[playerid][20], 1);
    PlayerTextDrawBackgroundColor(playerid, InjuredSytems[playerid][20], 150);
    PlayerTextDrawFont(playerid, InjuredSytems[playerid][20], 1);
    PlayerTextDrawSetProportional(playerid, InjuredSytems[playerid][20], 1);

    InjuredSytems[playerid][21] = CreatePlayerTextDraw(playerid, 321.500, 226.500, "You Are Incapacipated");
    PlayerTextDrawLetterSize(playerid, InjuredSytems[playerid][21], 0.270, 2.598);
    PlayerTextDrawAlignment(playerid, InjuredSytems[playerid][21], 2);
    PlayerTextDrawColor(playerid, InjuredSytems[playerid][21], 512819199);
    PlayerTextDrawSetShadow(playerid, InjuredSytems[playerid][21], 1);
    PlayerTextDrawSetOutline(playerid, InjuredSytems[playerid][21], 1);
    PlayerTextDrawBackgroundColor(playerid, InjuredSytems[playerid][21], 150);
    PlayerTextDrawFont(playerid, InjuredSytems[playerid][21], 1);
    PlayerTextDrawSetProportional(playerid, InjuredSytems[playerid][21], 1);

    InjuredSytems[playerid][22] = CreatePlayerTextDraw(playerid, 322.500, 262.500, "TEKAN ~r~ALT~w~  UNTUK MENGIRIM SINYAL");
    PlayerTextDrawLetterSize(playerid, InjuredSytems[playerid][22], 0.180, 1.399);
    PlayerTextDrawAlignment(playerid, InjuredSytems[playerid][22], 2);
    PlayerTextDrawColor(playerid, InjuredSytems[playerid][22], -1);
    PlayerTextDrawSetShadow(playerid, InjuredSytems[playerid][22], 1);
    PlayerTextDrawSetOutline(playerid, InjuredSytems[playerid][22], 1);
    PlayerTextDrawBackgroundColor(playerid, InjuredSytems[playerid][22], 150);
    PlayerTextDrawFont(playerid, InjuredSytems[playerid][22], 1);
    PlayerTextDrawSetProportional(playerid, InjuredSytems[playerid][22], 1);

    InjuredSytems[playerid][23] = CreatePlayerTextDraw(playerid, 319.500, 284.500, "SAAT INI ADA          EMS DI KOTA. ATAU KAMU BISA GUNAKAN");
    PlayerTextDrawLetterSize(playerid, InjuredSytems[playerid][23], 0.180, 1.399);
    PlayerTextDrawAlignment(playerid, InjuredSytems[playerid][23], 2);
    PlayerTextDrawColor(playerid, InjuredSytems[playerid][23], -1);
    PlayerTextDrawSetShadow(playerid, InjuredSytems[playerid][23], 1);
    PlayerTextDrawSetOutline(playerid, InjuredSytems[playerid][23], 1);
    PlayerTextDrawBackgroundColor(playerid, InjuredSytems[playerid][23], 150);
    PlayerTextDrawFont(playerid, InjuredSytems[playerid][23], 1);
    PlayerTextDrawSetProportional(playerid, InjuredSytems[playerid][23], 1);

    InjuredSytems[playerid][24] = CreatePlayerTextDraw(playerid, 354.500, 255.500, "");
    PlayerTextDrawLetterSize(playerid, InjuredSytems[playerid][24], 0.270, 2.598);
    PlayerTextDrawAlignment(playerid, InjuredSytems[playerid][24], 2);
    PlayerTextDrawColor(playerid, InjuredSytems[playerid][24], -16776961);
    PlayerTextDrawSetShadow(playerid, InjuredSytems[playerid][24], 1);
    PlayerTextDrawSetOutline(playerid, InjuredSytems[playerid][24], 1);
    PlayerTextDrawBackgroundColor(playerid, InjuredSytems[playerid][24], 150);
    PlayerTextDrawFont(playerid, InjuredSytems[playerid][24], 1);
    PlayerTextDrawSetProportional(playerid, InjuredSytems[playerid][24], 1);

    InjuredSytems[playerid][25] = CreatePlayerTextDraw(playerid, 275.500, 278.500, "2");
    PlayerTextDrawLetterSize(playerid, InjuredSytems[playerid][25], 0.270, 2.598);
    PlayerTextDrawAlignment(playerid, InjuredSytems[playerid][25], 2);
    PlayerTextDrawColor(playerid, InjuredSytems[playerid][25], -16776961);
    PlayerTextDrawSetShadow(playerid, InjuredSytems[playerid][25], 1);
    PlayerTextDrawSetOutline(playerid, InjuredSytems[playerid][25], 1);
    PlayerTextDrawBackgroundColor(playerid, InjuredSytems[playerid][25], 150);
    PlayerTextDrawFont(playerid, InjuredSytems[playerid][25], 1);
    PlayerTextDrawSetProportional(playerid, InjuredSytems[playerid][25], 1);

    InjuredSytems[playerid][26] = CreatePlayerTextDraw(playerid, 322.500, 303.500, "/DOKTERLOKAL");
    PlayerTextDrawLetterSize(playerid, InjuredSytems[playerid][26], 0.230, 1.998);
    PlayerTextDrawAlignment(playerid, InjuredSytems[playerid][26], 2);
    PlayerTextDrawColor(playerid, InjuredSytems[playerid][26], -16776961);
    PlayerTextDrawSetShadow(playerid, InjuredSytems[playerid][26], 1);
    PlayerTextDrawSetOutline(playerid, InjuredSytems[playerid][26], 1);
    PlayerTextDrawBackgroundColor(playerid, InjuredSytems[playerid][26], 150);
    PlayerTextDrawFont(playerid, InjuredSytems[playerid][26], 1);
    PlayerTextDrawSetProportional(playerid, InjuredSytems[playerid][26], 1);

    InjuredSytems[playerid][27] = CreatePlayerTextDraw(playerid, 235.500, 256.500, "");
    PlayerTextDrawLetterSize(playerid, InjuredSytems[playerid][27], 0.270, 2.598);
    PlayerTextDrawAlignment(playerid, InjuredSytems[playerid][27], 2);
    PlayerTextDrawColor(playerid, InjuredSytems[playerid][27], -16776961);
    PlayerTextDrawSetShadow(playerid, InjuredSytems[playerid][27], 1);
    PlayerTextDrawSetOutline(playerid, InjuredSytems[playerid][27], 1);
    PlayerTextDrawBackgroundColor(playerid, InjuredSytems[playerid][27], 150);
    PlayerTextDrawFont(playerid, InjuredSytems[playerid][27], 1);
    PlayerTextDrawSetProportional(playerid, InjuredSytems[playerid][27], 1);

    InjuredSytems[playerid][28] = CreatePlayerTextDraw(playerid, 273.000, 341.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, InjuredSytems[playerid][28], 22.000, 32.000);
    PlayerTextDrawAlignment(playerid, InjuredSytems[playerid][28], 1);
    PlayerTextDrawColor(playerid, InjuredSytems[playerid][28], 255);
    PlayerTextDrawSetShadow(playerid, InjuredSytems[playerid][28], 0);
    PlayerTextDrawSetOutline(playerid, InjuredSytems[playerid][28], 0);
    PlayerTextDrawBackgroundColor(playerid, InjuredSytems[playerid][28], 255);
    PlayerTextDrawFont(playerid, InjuredSytems[playerid][28], 4);
    PlayerTextDrawSetProportional(playerid, InjuredSytems[playerid][28], 1);

    InjuredSytems[playerid][29] = CreatePlayerTextDraw(playerid, 274.000, 342.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, InjuredSytems[playerid][29], 20.000, 30.000);
    PlayerTextDrawAlignment(playerid, InjuredSytems[playerid][29], 1);
    PlayerTextDrawColor(playerid, InjuredSytems[playerid][29], -1);
    PlayerTextDrawSetShadow(playerid, InjuredSytems[playerid][29], 0);
    PlayerTextDrawSetOutline(playerid, InjuredSytems[playerid][29], 0);
    PlayerTextDrawBackgroundColor(playerid, InjuredSytems[playerid][29], 255);
    PlayerTextDrawFont(playerid, InjuredSytems[playerid][29], 4);
    PlayerTextDrawSetProportional(playerid, InjuredSytems[playerid][29], 1);

    InjuredSytems[playerid][30] = CreatePlayerTextDraw(playerid, 281.000, 341.000, "0");
    PlayerTextDrawLetterSize(playerid, InjuredSytems[playerid][30], 0.270, 3.398);
    PlayerTextDrawAlignment(playerid, InjuredSytems[playerid][30], 1);
    PlayerTextDrawColor(playerid, InjuredSytems[playerid][30], 255);
    PlayerTextDrawSetShadow(playerid, InjuredSytems[playerid][30], 0);
    PlayerTextDrawSetOutline(playerid, InjuredSytems[playerid][30], 0);
    PlayerTextDrawBackgroundColor(playerid, InjuredSytems[playerid][30], 150);
    PlayerTextDrawFont(playerid, InjuredSytems[playerid][30], 1);
    PlayerTextDrawSetProportional(playerid, InjuredSytems[playerid][30], 1);

    InjuredSytems[playerid][31] = CreatePlayerTextDraw(playerid, 296.000, 341.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, InjuredSytems[playerid][31], 22.000, 32.000);
    PlayerTextDrawAlignment(playerid, InjuredSytems[playerid][31], 1);
    PlayerTextDrawColor(playerid, InjuredSytems[playerid][31], 255);
    PlayerTextDrawSetShadow(playerid, InjuredSytems[playerid][31], 0);
    PlayerTextDrawSetOutline(playerid, InjuredSytems[playerid][31], 0);
    PlayerTextDrawBackgroundColor(playerid, InjuredSytems[playerid][31], 255);
    PlayerTextDrawFont(playerid, InjuredSytems[playerid][31], 4);
    PlayerTextDrawSetProportional(playerid, InjuredSytems[playerid][31], 1);

    InjuredSytems[playerid][32] = CreatePlayerTextDraw(playerid, 297.000, 342.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, InjuredSytems[playerid][32], 20.000, 30.000);
    PlayerTextDrawAlignment(playerid, InjuredSytems[playerid][32], 1);
    PlayerTextDrawColor(playerid, InjuredSytems[playerid][32], -1);
    PlayerTextDrawSetShadow(playerid, InjuredSytems[playerid][32], 0);
    PlayerTextDrawSetOutline(playerid, InjuredSytems[playerid][32], 0);
    PlayerTextDrawBackgroundColor(playerid, InjuredSytems[playerid][32], 255);
    PlayerTextDrawFont(playerid, InjuredSytems[playerid][32], 4);
    PlayerTextDrawSetProportional(playerid, InjuredSytems[playerid][32], 1);

    InjuredSytems[playerid][33] = CreatePlayerTextDraw(playerid, 304.000, 341.000, "0");
    PlayerTextDrawLetterSize(playerid, InjuredSytems[playerid][33], 0.270, 3.398);
    PlayerTextDrawAlignment(playerid, InjuredSytems[playerid][33], 1);
    PlayerTextDrawColor(playerid, InjuredSytems[playerid][33], 255);
    PlayerTextDrawSetShadow(playerid, InjuredSytems[playerid][33], 0);
    PlayerTextDrawSetOutline(playerid, InjuredSytems[playerid][33], 0);
    PlayerTextDrawBackgroundColor(playerid, InjuredSytems[playerid][33], 150);
    PlayerTextDrawFont(playerid, InjuredSytems[playerid][33], 1);
    PlayerTextDrawSetProportional(playerid, InjuredSytems[playerid][33], 1);

    InjuredSytems[playerid][34] = CreatePlayerTextDraw(playerid, 325.000, 341.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, InjuredSytems[playerid][34], 22.000, 32.000);
    PlayerTextDrawAlignment(playerid, InjuredSytems[playerid][34], 1);
    PlayerTextDrawColor(playerid, InjuredSytems[playerid][34], 255);
    PlayerTextDrawSetShadow(playerid, InjuredSytems[playerid][34], 0);
    PlayerTextDrawSetOutline(playerid, InjuredSytems[playerid][34], 0);
    PlayerTextDrawBackgroundColor(playerid, InjuredSytems[playerid][34], 255);
    PlayerTextDrawFont(playerid, InjuredSytems[playerid][34], 4);
    PlayerTextDrawSetProportional(playerid, InjuredSytems[playerid][34], 1);

    InjuredSytems[playerid][35] = CreatePlayerTextDraw(playerid, 326.000, 342.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, InjuredSytems[playerid][35], 20.000, 30.000);
    PlayerTextDrawAlignment(playerid, InjuredSytems[playerid][35], 1);
    PlayerTextDrawColor(playerid, InjuredSytems[playerid][35], -1);
    PlayerTextDrawSetShadow(playerid, InjuredSytems[playerid][35], 0);
    PlayerTextDrawSetOutline(playerid, InjuredSytems[playerid][35], 0);
    PlayerTextDrawBackgroundColor(playerid, InjuredSytems[playerid][35], 255);
    PlayerTextDrawFont(playerid, InjuredSytems[playerid][35], 4);
    PlayerTextDrawSetProportional(playerid, InjuredSytems[playerid][35], 1);

    InjuredSytems[playerid][36] = CreatePlayerTextDraw(playerid, 333.000, 341.000, "0");
    PlayerTextDrawLetterSize(playerid, InjuredSytems[playerid][36], 0.270, 3.398);
    PlayerTextDrawAlignment(playerid, InjuredSytems[playerid][36], 1);
    PlayerTextDrawColor(playerid, InjuredSytems[playerid][36], 255);
    PlayerTextDrawSetShadow(playerid, InjuredSytems[playerid][36], 0);
    PlayerTextDrawSetOutline(playerid, InjuredSytems[playerid][36], 0);
    PlayerTextDrawBackgroundColor(playerid, InjuredSytems[playerid][36], 150);
    PlayerTextDrawFont(playerid, InjuredSytems[playerid][36], 1);
    PlayerTextDrawSetProportional(playerid, InjuredSytems[playerid][36], 1);

    InjuredSytems[playerid][37] = CreatePlayerTextDraw(playerid, 348.000, 341.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, InjuredSytems[playerid][37], 22.000, 32.000);
    PlayerTextDrawAlignment(playerid, InjuredSytems[playerid][37], 1);
    PlayerTextDrawColor(playerid, InjuredSytems[playerid][37], 255);
    PlayerTextDrawSetShadow(playerid, InjuredSytems[playerid][37], 0);
    PlayerTextDrawSetOutline(playerid, InjuredSytems[playerid][37], 0);
    PlayerTextDrawBackgroundColor(playerid, InjuredSytems[playerid][37], 255);
    PlayerTextDrawFont(playerid, InjuredSytems[playerid][37], 4);
    PlayerTextDrawSetProportional(playerid, InjuredSytems[playerid][37], 1);

    InjuredSytems[playerid][38] = CreatePlayerTextDraw(playerid, 349.000, 342.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, InjuredSytems[playerid][38], 20.000, 30.000);
    PlayerTextDrawAlignment(playerid, InjuredSytems[playerid][38], 1);
    PlayerTextDrawColor(playerid, InjuredSytems[playerid][38], -1);
    PlayerTextDrawSetShadow(playerid, InjuredSytems[playerid][38], 0);
    PlayerTextDrawSetOutline(playerid, InjuredSytems[playerid][38], 0);
    PlayerTextDrawBackgroundColor(playerid, InjuredSytems[playerid][38], 255);
    PlayerTextDrawFont(playerid, InjuredSytems[playerid][38], 4);
    PlayerTextDrawSetProportional(playerid, InjuredSytems[playerid][38], 1);

    InjuredSytems[playerid][39] = CreatePlayerTextDraw(playerid, 356.000, 341.000, "0");
    PlayerTextDrawLetterSize(playerid, InjuredSytems[playerid][39], 0.270, 3.398);
    PlayerTextDrawAlignment(playerid, InjuredSytems[playerid][39], 1);
    PlayerTextDrawColor(playerid, InjuredSytems[playerid][39], 255);
    PlayerTextDrawSetShadow(playerid, InjuredSytems[playerid][39], 0);
    PlayerTextDrawSetOutline(playerid, InjuredSytems[playerid][39], 0);
    PlayerTextDrawBackgroundColor(playerid, InjuredSytems[playerid][39], 150);
    PlayerTextDrawFont(playerid, InjuredSytems[playerid][39], 1);
    PlayerTextDrawSetProportional(playerid, InjuredSytems[playerid][39], 1);

    InjuredSytems[playerid][40] = CreatePlayerTextDraw(playerid, 320.000, 338.000, ":");
    PlayerTextDrawLetterSize(playerid, InjuredSytems[playerid][40], 0.270, 3.398);
    PlayerTextDrawAlignment(playerid, InjuredSytems[playerid][40], 1);
    PlayerTextDrawColor(playerid, InjuredSytems[playerid][40], -1);
    PlayerTextDrawSetShadow(playerid, InjuredSytems[playerid][40], 0);
    PlayerTextDrawSetOutline(playerid, InjuredSytems[playerid][40], 0);
    PlayerTextDrawBackgroundColor(playerid, InjuredSytems[playerid][40], 150);
    PlayerTextDrawFont(playerid, InjuredSytems[playerid][40], 1);
    PlayerTextDrawSetProportional(playerid, InjuredSytems[playerid][40], 1);

    InjuredSytems[playerid][41] = CreatePlayerTextDraw(playerid, 361.500, 63.500, "//q");
    PlayerTextDrawLetterSize(playerid, InjuredSytems[playerid][41], 0.170, 1.598);
    PlayerTextDrawAlignment(playerid, InjuredSytems[playerid][41], 2);
    PlayerTextDrawColor(playerid, InjuredSytems[playerid][41], -1);
    PlayerTextDrawSetShadow(playerid, InjuredSytems[playerid][41], 1);
    PlayerTextDrawSetOutline(playerid, InjuredSytems[playerid][41], 1);
    PlayerTextDrawBackgroundColor(playerid, InjuredSytems[playerid][41], 150);
    PlayerTextDrawFont(playerid, InjuredSytems[playerid][41], 1);
    PlayerTextDrawSetProportional(playerid, InjuredSytems[playerid][41], 1);

	AMMOTD[playerid] = CreatePlayerTextDraw(playerid, 520.000000, 70.000000, "_");
	PlayerTextDrawFont(playerid, AMMOTD[playerid], 1);
	PlayerTextDrawLetterSize(playerid, AMMOTD[playerid], 0.325000, 1.200000);
	PlayerTextDrawTextSize(playerid, AMMOTD[playerid], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, AMMOTD[playerid], 1);
	PlayerTextDrawSetShadow(playerid, AMMOTD[playerid], 0);
	PlayerTextDrawAlignment(playerid, AMMOTD[playerid], 2);
	PlayerTextDrawColor(playerid, AMMOTD[playerid], 1687547391);
	PlayerTextDrawBackgroundColor(playerid, AMMOTD[playerid], 255);
	PlayerTextDrawBoxColor(playerid, AMMOTD[playerid], 50);
	PlayerTextDrawUseBox(playerid, AMMOTD[playerid], 0);
	PlayerTextDrawSetProportional(playerid, AMMOTD[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, AMMOTD[playerid], 0);

    ATRP_Gym[playerid][0] = CreatePlayerTextDraw(playerid, 16.000, 208.000, "~r~55");
    PlayerTextDrawLetterSize(playerid, ATRP_Gym[playerid][0], 0.189, 1.198);
    PlayerTextDrawAlignment(playerid, ATRP_Gym[playerid][0], 1);
    PlayerTextDrawColor(playerid, ATRP_Gym[playerid][0], -1);
    PlayerTextDrawSetShadow(playerid, ATRP_Gym[playerid][0], 1);
    PlayerTextDrawSetOutline(playerid, ATRP_Gym[playerid][0], 1);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Gym[playerid][0], 150);
    PlayerTextDrawFont(playerid, ATRP_Gym[playerid][0], 1);
    PlayerTextDrawSetProportional(playerid, ATRP_Gym[playerid][0], 1);

    ATRP_Gym[playerid][1] = CreatePlayerTextDraw(playerid, 16.000, 221.000, "~g~[Y]~w~ Untuk Latihan");
    PlayerTextDrawLetterSize(playerid, ATRP_Gym[playerid][1], 0.189, 1.198);
    PlayerTextDrawAlignment(playerid, ATRP_Gym[playerid][1], 1);
    PlayerTextDrawColor(playerid, ATRP_Gym[playerid][1], -1);
    PlayerTextDrawSetShadow(playerid, ATRP_Gym[playerid][1], 1);
    PlayerTextDrawSetOutline(playerid, ATRP_Gym[playerid][1], 1);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Gym[playerid][1], 150);
    PlayerTextDrawFont(playerid, ATRP_Gym[playerid][1], 1);
    PlayerTextDrawSetProportional(playerid, ATRP_Gym[playerid][1], 1);

    ATRP_Gym[playerid][2] = CreatePlayerTextDraw(playerid, 16.000, 235.000, "~r~[H]~w~ Untuk Berhenti");
    PlayerTextDrawLetterSize(playerid, ATRP_Gym[playerid][2], 0.189, 1.198);
    PlayerTextDrawAlignment(playerid, ATRP_Gym[playerid][2], 1);
    PlayerTextDrawColor(playerid, ATRP_Gym[playerid][2], -1);
    PlayerTextDrawSetShadow(playerid, ATRP_Gym[playerid][2], 1);
    PlayerTextDrawSetOutline(playerid, ATRP_Gym[playerid][2], 1);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Gym[playerid][2], 150);
    PlayerTextDrawFont(playerid, ATRP_Gym[playerid][2], 1);
    PlayerTextDrawSetProportional(playerid, ATRP_Gym[playerid][2], 1);

    for(new i = 0; i < MAX_TDHBE1; i++)
    {
        HbeNewv2[playerid][0] = CreatePlayerTextDraw(playerid, TDHBE1_PosX[playerid][i], TDHBE1_PosY[playerid][i], "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, HbeNewv2[playerid][0], 79.000, 4.000);
        PlayerTextDrawAlignment(playerid, HbeNewv2[playerid][0], 1);
        PlayerTextDrawColor(playerid, HbeNewv2[playerid][0], -1);
        PlayerTextDrawSetShadow(playerid, HbeNewv2[playerid][0], 0);
        PlayerTextDrawSetOutline(playerid, HbeNewv2[playerid][0], 0);
        PlayerTextDrawBackgroundColor(playerid, HbeNewv2[playerid][0], 255);
        PlayerTextDrawFont(playerid, HbeNewv2[playerid][0], 4);
        PlayerTextDrawSetProportional(playerid, HbeNewv2[playerid][0], 1);

        HbeNewv2[playerid][1] = CreatePlayerTextDraw(playerid, TDHBE1_PosX[playerid][i], TDHBE1_PosY[playerid][i], "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, HbeNewv2[playerid][1], 79.000, 4.000);
        PlayerTextDrawAlignment(playerid, HbeNewv2[playerid][1], 1);
        PlayerTextDrawColor(playerid, HbeNewv2[playerid][1], -1);
        PlayerTextDrawSetShadow(playerid, HbeNewv2[playerid][1], 0);
        PlayerTextDrawSetOutline(playerid, HbeNewv2[playerid][1], 0);
        PlayerTextDrawBackgroundColor(playerid, HbeNewv2[playerid][1], 255);
        PlayerTextDrawFont(playerid, HbeNewv2[playerid][1], 4);
        PlayerTextDrawSetProportional(playerid, HbeNewv2[playerid][1], 1);

        HbeNewv2[playerid][2] = CreatePlayerTextDraw(playerid, TDHBE1_PosX[playerid][i], TDHBE1_PosY[playerid][i], "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, HbeNewv2[playerid][2], 79.000, 4.000);
        PlayerTextDrawAlignment(playerid, HbeNewv2[playerid][2], 1);
        PlayerTextDrawColor(playerid, HbeNewv2[playerid][2], -602653441);
        PlayerTextDrawSetShadow(playerid, HbeNewv2[playerid][2], 0);
        PlayerTextDrawSetOutline(playerid, HbeNewv2[playerid][2], 0);
        PlayerTextDrawBackgroundColor(playerid, HbeNewv2[playerid][2], 255);
        PlayerTextDrawFont(playerid, HbeNewv2[playerid][2], 4);
        PlayerTextDrawSetProportional(playerid, HbeNewv2[playerid][2], 1);

        HbeNewv2[playerid][3] = CreatePlayerTextDraw(playerid, TDHBE1_PosX[playerid][i], TDHBE1_PosY[playerid][i], "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, HbeNewv2[playerid][3], 79.000, 4.000);
        PlayerTextDrawAlignment(playerid, HbeNewv2[playerid][3], 1);
        PlayerTextDrawColor(playerid, HbeNewv2[playerid][3], 512819199);
        PlayerTextDrawSetShadow(playerid, HbeNewv2[playerid][3], 0);
        PlayerTextDrawSetOutline(playerid, HbeNewv2[playerid][3], 0);
        PlayerTextDrawBackgroundColor(playerid, HbeNewv2[playerid][3], 255);
        PlayerTextDrawFont(playerid, HbeNewv2[playerid][3], 4);
        PlayerTextDrawSetProportional(playerid, HbeNewv2[playerid][3], 1);

        HbeNewv2[playerid][4] = CreatePlayerTextDraw(playerid, TDHBE1_PosX[playerid][i], TDHBE1_PosY[playerid][i], "100");
        PlayerTextDrawLetterSize(playerid, HbeNewv2[playerid][4], 0.180, 0.899);
        PlayerTextDrawAlignment(playerid, HbeNewv2[playerid][4], 1);
        PlayerTextDrawColor(playerid, HbeNewv2[playerid][4], -1);
        PlayerTextDrawSetShadow(playerid, HbeNewv2[playerid][4], 0);
        PlayerTextDrawSetOutline(playerid, HbeNewv2[playerid][4], 0);
        PlayerTextDrawBackgroundColor(playerid, HbeNewv2[playerid][4], 150);
        PlayerTextDrawFont(playerid, HbeNewv2[playerid][4], 1);
        PlayerTextDrawSetProportional(playerid, HbeNewv2[playerid][4], 1);

        HbeNewv2[playerid][5] = CreatePlayerTextDraw(playerid, TDHBE1_PosX[playerid][i], TDHBE1_PosY[playerid][i], "95");
        PlayerTextDrawLetterSize(playerid, HbeNewv2[playerid][5], 0.180, 0.899);
        PlayerTextDrawAlignment(playerid, HbeNewv2[playerid][5], 3);
        PlayerTextDrawColor(playerid, HbeNewv2[playerid][5], -1);
        PlayerTextDrawSetShadow(playerid, HbeNewv2[playerid][5], 0);
        PlayerTextDrawSetOutline(playerid, HbeNewv2[playerid][5], 0);
        PlayerTextDrawBackgroundColor(playerid, HbeNewv2[playerid][5], 150);
        PlayerTextDrawFont(playerid, HbeNewv2[playerid][5], 1);
        PlayerTextDrawSetProportional(playerid, HbeNewv2[playerid][5], 1);

        HbeNewv2[playerid][6] = CreatePlayerTextDraw(playerid, TDHBE1_PosX[playerid][i], TDHBE1_PosY[playerid][i], "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, HbeNewv2[playerid][6], 7.000, 14.000);
        PlayerTextDrawAlignment(playerid, HbeNewv2[playerid][6], 1);
        PlayerTextDrawColor(playerid, HbeNewv2[playerid][6], -1);
        PlayerTextDrawSetShadow(playerid, HbeNewv2[playerid][6], 0);
        PlayerTextDrawSetOutline(playerid, HbeNewv2[playerid][6], 0);
        PlayerTextDrawBackgroundColor(playerid, HbeNewv2[playerid][6], 255);
        PlayerTextDrawFont(playerid, HbeNewv2[playerid][6], 4);
        PlayerTextDrawSetProportional(playerid, HbeNewv2[playerid][6], 1);

        HbeNewv2[playerid][7] = CreatePlayerTextDraw(playerid, TDHBE1_PosX[playerid][i], TDHBE1_PosY[playerid][i], "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, HbeNewv2[playerid][7], 7.000, 14.000);
        PlayerTextDrawAlignment(playerid, HbeNewv2[playerid][7], 1);
        PlayerTextDrawColor(playerid, HbeNewv2[playerid][7], -1);
        PlayerTextDrawSetShadow(playerid, HbeNewv2[playerid][7], 0);
        PlayerTextDrawSetOutline(playerid, HbeNewv2[playerid][7], 0);
        PlayerTextDrawBackgroundColor(playerid, HbeNewv2[playerid][7], 255);
        PlayerTextDrawFont(playerid, HbeNewv2[playerid][7], 4);
        PlayerTextDrawSetProportional(playerid, HbeNewv2[playerid][7], 1);

        HbeNewv2[playerid][8] = CreatePlayerTextDraw(playerid, TDHBE1_PosX[playerid][i], TDHBE1_PosY[playerid][i], "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, HbeNewv2[playerid][8], 9.000, 12.000);
        PlayerTextDrawAlignment(playerid, HbeNewv2[playerid][8], 1);
        PlayerTextDrawColor(playerid, HbeNewv2[playerid][8], -1);
        PlayerTextDrawSetShadow(playerid, HbeNewv2[playerid][8], 0);
        PlayerTextDrawSetOutline(playerid, HbeNewv2[playerid][8], 0);
        PlayerTextDrawBackgroundColor(playerid, HbeNewv2[playerid][8], 255);
        PlayerTextDrawFont(playerid, HbeNewv2[playerid][8], 4);
        PlayerTextDrawSetProportional(playerid, HbeNewv2[playerid][8], 1);

        HbeNewv2[playerid][9] = CreatePlayerTextDraw(playerid, TDHBE1_PosX[playerid][i], TDHBE1_PosY[playerid][i], "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, HbeNewv2[playerid][9], 4.000, 7.000);
        PlayerTextDrawAlignment(playerid, HbeNewv2[playerid][9], 1);
        PlayerTextDrawColor(playerid, HbeNewv2[playerid][9], -1);
        PlayerTextDrawSetShadow(playerid, HbeNewv2[playerid][9], 0);
        PlayerTextDrawSetOutline(playerid, HbeNewv2[playerid][9], 0);
        PlayerTextDrawBackgroundColor(playerid, HbeNewv2[playerid][9], 255);
        PlayerTextDrawFont(playerid, HbeNewv2[playerid][9], 4);
        PlayerTextDrawSetProportional(playerid, HbeNewv2[playerid][9], 1);

        HbeNewv2[playerid][10] = CreatePlayerTextDraw(playerid, TDHBE1_PosX[playerid][i], TDHBE1_PosY[playerid][i], "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, HbeNewv2[playerid][10], 5.000, 7.000);
        PlayerTextDrawAlignment(playerid, HbeNewv2[playerid][10], 1);
        PlayerTextDrawColor(playerid, HbeNewv2[playerid][10], -1);
        PlayerTextDrawSetShadow(playerid, HbeNewv2[playerid][10], 0);
        PlayerTextDrawSetOutline(playerid, HbeNewv2[playerid][10], 0);
        PlayerTextDrawBackgroundColor(playerid, HbeNewv2[playerid][10], 255);
        PlayerTextDrawFont(playerid, HbeNewv2[playerid][10], 4);
        PlayerTextDrawSetProportional(playerid, HbeNewv2[playerid][10], 1);

        HbeNewv2[playerid][11] = CreatePlayerTextDraw(playerid, TDHBE1_PosX[playerid][i], TDHBE1_PosY[playerid][i], "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, HbeNewv2[playerid][11], 4.000, 7.000);
        PlayerTextDrawAlignment(playerid, HbeNewv2[playerid][11], 1);
        PlayerTextDrawColor(playerid, HbeNewv2[playerid][11], -1);
        PlayerTextDrawSetShadow(playerid, HbeNewv2[playerid][11], 0);
        PlayerTextDrawSetOutline(playerid, HbeNewv2[playerid][11], 0);
        PlayerTextDrawBackgroundColor(playerid, HbeNewv2[playerid][11], 255);
        PlayerTextDrawFont(playerid, HbeNewv2[playerid][11], 4);
        PlayerTextDrawSetProportional(playerid, HbeNewv2[playerid][11], 1);

        HbeNewv2[playerid][12] = CreatePlayerTextDraw(playerid, TDHBE1_PosX[playerid][i], TDHBE1_PosY[playerid][i], "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, HbeNewv2[playerid][12], 20.000, 18.000);
        PlayerTextDrawAlignment(playerid, HbeNewv2[playerid][12], 1);
        PlayerTextDrawColor(playerid, HbeNewv2[playerid][12], 421077503);
        PlayerTextDrawSetShadow(playerid, HbeNewv2[playerid][12], 0);
        PlayerTextDrawSetOutline(playerid, HbeNewv2[playerid][12], 0);
        PlayerTextDrawBackgroundColor(playerid, HbeNewv2[playerid][12], 255);
        PlayerTextDrawFont(playerid, HbeNewv2[playerid][12], 4);
        PlayerTextDrawSetProportional(playerid, HbeNewv2[playerid][12], 1);

        HbeNewv2[playerid][13] = CreatePlayerTextDraw(playerid, TDHBE1_PosX[playerid][i], TDHBE1_PosY[playerid][i], "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, HbeNewv2[playerid][13], 20.000, 18.000);
        PlayerTextDrawAlignment(playerid, HbeNewv2[playerid][13], 1);
        PlayerTextDrawColor(playerid, HbeNewv2[playerid][13], 421077503);
        PlayerTextDrawSetShadow(playerid, HbeNewv2[playerid][13], 0);
        PlayerTextDrawSetOutline(playerid, HbeNewv2[playerid][13], 0);
        PlayerTextDrawBackgroundColor(playerid, HbeNewv2[playerid][13], 255);
        PlayerTextDrawFont(playerid, HbeNewv2[playerid][13], 4);
        PlayerTextDrawSetProportional(playerid, HbeNewv2[playerid][13], 1);

        HbeNewv2[playerid][14] = CreatePlayerTextDraw(playerid, TDHBE1_PosX[playerid][i], TDHBE1_PosY[playerid][i], "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, HbeNewv2[playerid][14], 20.000, 18.000);
        PlayerTextDrawAlignment(playerid, HbeNewv2[playerid][14], 1);
        PlayerTextDrawColor(playerid, HbeNewv2[playerid][14], 421077503);
        PlayerTextDrawSetShadow(playerid, HbeNewv2[playerid][14], 0);
        PlayerTextDrawSetOutline(playerid, HbeNewv2[playerid][14], 0);
        PlayerTextDrawBackgroundColor(playerid, HbeNewv2[playerid][14], 255);
        PlayerTextDrawFont(playerid, HbeNewv2[playerid][14], 4);
        PlayerTextDrawSetProportional(playerid, HbeNewv2[playerid][14], 1);

        HbeNewv2[playerid][15] = CreatePlayerTextDraw(playerid, TDHBE1_PosX[playerid][i], TDHBE1_PosY[playerid][i], "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, HbeNewv2[playerid][15], 3.000, 18.000);
        PlayerTextDrawAlignment(playerid, HbeNewv2[playerid][15], 1);
        PlayerTextDrawColor(playerid, HbeNewv2[playerid][15], -1);
        PlayerTextDrawSetShadow(playerid, HbeNewv2[playerid][15], 0);
        PlayerTextDrawSetOutline(playerid, HbeNewv2[playerid][15], 0);
        PlayerTextDrawBackgroundColor(playerid, HbeNewv2[playerid][15], 255);
        PlayerTextDrawFont(playerid, HbeNewv2[playerid][15], 4);
        PlayerTextDrawSetProportional(playerid, HbeNewv2[playerid][15], 1);

        HbeNewv2[playerid][16] = CreatePlayerTextDraw(playerid, TDHBE1_PosX[playerid][i], TDHBE1_PosY[playerid][i], "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, HbeNewv2[playerid][16], 3.000, 18.000);
        PlayerTextDrawAlignment(playerid, HbeNewv2[playerid][16], 1);
        PlayerTextDrawColor(playerid, HbeNewv2[playerid][16], -1);
        PlayerTextDrawSetShadow(playerid, HbeNewv2[playerid][16], 0);
        PlayerTextDrawSetOutline(playerid, HbeNewv2[playerid][16], 0);
        PlayerTextDrawBackgroundColor(playerid, HbeNewv2[playerid][16], 255);
        PlayerTextDrawFont(playerid, HbeNewv2[playerid][16], 4);
        PlayerTextDrawSetProportional(playerid, HbeNewv2[playerid][16], 1);

        HbeNewv2[playerid][17] = CreatePlayerTextDraw(playerid, TDHBE1_PosX[playerid][i], TDHBE1_PosY[playerid][i], "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, HbeNewv2[playerid][17], 3.000, 18.000);
        PlayerTextDrawAlignment(playerid, HbeNewv2[playerid][17], 1);
        PlayerTextDrawColor(playerid, HbeNewv2[playerid][17], -1);
        PlayerTextDrawSetShadow(playerid, HbeNewv2[playerid][17], 0);
        PlayerTextDrawSetOutline(playerid, HbeNewv2[playerid][17], 0);
        PlayerTextDrawBackgroundColor(playerid, HbeNewv2[playerid][17], 255);
        PlayerTextDrawFont(playerid, HbeNewv2[playerid][17], 4);
        PlayerTextDrawSetProportional(playerid, HbeNewv2[playerid][17], 1);

        HbeNewv2[playerid][18] = CreatePlayerTextDraw(playerid, TDHBE1_PosX[playerid][i], TDHBE1_PosY[playerid][i], "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, HbeNewv2[playerid][18], 3.000, -18.000);
        PlayerTextDrawAlignment(playerid, HbeNewv2[playerid][18], 1);
        PlayerTextDrawColor(playerid, HbeNewv2[playerid][18], -7601921);
        PlayerTextDrawSetShadow(playerid, HbeNewv2[playerid][18], 0);
        PlayerTextDrawSetOutline(playerid, HbeNewv2[playerid][18], 0);
        PlayerTextDrawBackgroundColor(playerid, HbeNewv2[playerid][18], 255);
        PlayerTextDrawFont(playerid, HbeNewv2[playerid][18], 4);
        PlayerTextDrawSetProportional(playerid, HbeNewv2[playerid][18], 1);

        HbeNewv2[playerid][19] = CreatePlayerTextDraw(playerid, TDHBE1_PosX[playerid][i], TDHBE1_PosY[playerid][i], "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, HbeNewv2[playerid][19], 3.000, -18.000);
        PlayerTextDrawAlignment(playerid, HbeNewv2[playerid][19], 1);
        PlayerTextDrawColor(playerid, HbeNewv2[playerid][19], 16744447);
        PlayerTextDrawSetShadow(playerid, HbeNewv2[playerid][19], 0);
        PlayerTextDrawSetOutline(playerid, HbeNewv2[playerid][19], 0);
        PlayerTextDrawBackgroundColor(playerid, HbeNewv2[playerid][19], 255);
        PlayerTextDrawFont(playerid, HbeNewv2[playerid][19], 4);
        PlayerTextDrawSetProportional(playerid, HbeNewv2[playerid][19], 1);

        HbeNewv2[playerid][20] = CreatePlayerTextDraw(playerid, TDHBE1_PosX[playerid][i], TDHBE1_PosY[playerid][i], "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, HbeNewv2[playerid][20], 3.000, -18.000);
        PlayerTextDrawAlignment(playerid, HbeNewv2[playerid][20], 1);
        PlayerTextDrawColor(playerid, HbeNewv2[playerid][20], -1976835329);
        PlayerTextDrawSetShadow(playerid, HbeNewv2[playerid][20], 0);
        PlayerTextDrawSetOutline(playerid, HbeNewv2[playerid][20], 0);
        PlayerTextDrawBackgroundColor(playerid, HbeNewv2[playerid][20], 255);
        PlayerTextDrawFont(playerid, HbeNewv2[playerid][20], 4);
        PlayerTextDrawSetProportional(playerid, HbeNewv2[playerid][20], 1);

        HbeNewv2[playerid][21] = CreatePlayerTextDraw(playerid, TDHBE1_PosX[playerid][i], TDHBE1_PosY[playerid][i], "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, HbeNewv2[playerid][21], 8.000, 12.000);
        PlayerTextDrawAlignment(playerid, HbeNewv2[playerid][21], 1);
        PlayerTextDrawColor(playerid, HbeNewv2[playerid][21], -1);
        PlayerTextDrawSetShadow(playerid, HbeNewv2[playerid][21], 0);
        PlayerTextDrawSetOutline(playerid, HbeNewv2[playerid][21], 0);
        PlayerTextDrawBackgroundColor(playerid, HbeNewv2[playerid][21], 255);
        PlayerTextDrawFont(playerid, HbeNewv2[playerid][21], 4);
        PlayerTextDrawSetProportional(playerid, HbeNewv2[playerid][21], 1);

        HbeNewv2[playerid][22] = CreatePlayerTextDraw(playerid, TDHBE1_PosX[playerid][i], TDHBE1_PosY[playerid][i], "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, HbeNewv2[playerid][22], 6.000, 12.000);
        PlayerTextDrawAlignment(playerid, HbeNewv2[playerid][22], 1);
        PlayerTextDrawColor(playerid, HbeNewv2[playerid][22], -1);
        PlayerTextDrawSetShadow(playerid, HbeNewv2[playerid][22], 0);
        PlayerTextDrawSetOutline(playerid, HbeNewv2[playerid][22], 0);
        PlayerTextDrawBackgroundColor(playerid, HbeNewv2[playerid][22], 255);
        PlayerTextDrawFont(playerid, HbeNewv2[playerid][22], 4);
        PlayerTextDrawSetProportional(playerid, HbeNewv2[playerid][22], 1);

        HbeNewv2[playerid][23] = CreatePlayerTextDraw(playerid, TDHBE1_PosX[playerid][i], TDHBE1_PosY[playerid][i], "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, HbeNewv2[playerid][23], 8.000, 12.000);
        PlayerTextDrawAlignment(playerid, HbeNewv2[playerid][23], 1);
        PlayerTextDrawColor(playerid, HbeNewv2[playerid][23], -1);
        PlayerTextDrawSetShadow(playerid, HbeNewv2[playerid][23], 0);
        PlayerTextDrawSetOutline(playerid, HbeNewv2[playerid][23], 0);
        PlayerTextDrawBackgroundColor(playerid, HbeNewv2[playerid][23], 255);
        PlayerTextDrawFont(playerid, HbeNewv2[playerid][23], 4);
        PlayerTextDrawSetProportional(playerid, HbeNewv2[playerid][23], 1);

        HbeNewv2[playerid][24] = CreatePlayerTextDraw(playerid, TDHBE1_PosX[playerid][i], TDHBE1_PosY[playerid][i], "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, HbeNewv2[playerid][24], 10.000, 4.000);
        PlayerTextDrawAlignment(playerid, HbeNewv2[playerid][24], 1);
        PlayerTextDrawColor(playerid, HbeNewv2[playerid][24], -1);
        PlayerTextDrawSetShadow(playerid, HbeNewv2[playerid][24], 0);
        PlayerTextDrawSetOutline(playerid, HbeNewv2[playerid][24], 0);
        PlayerTextDrawBackgroundColor(playerid, HbeNewv2[playerid][24], 255);
        PlayerTextDrawFont(playerid, HbeNewv2[playerid][24], 4);
        PlayerTextDrawSetProportional(playerid, HbeNewv2[playerid][24], 1);

        HbeNewv2[playerid][25] = CreatePlayerTextDraw(playerid, TDHBE1_PosX[playerid][i], TDHBE1_PosY[playerid][i], "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, HbeNewv2[playerid][25], 4.000, 5.000);
        PlayerTextDrawAlignment(playerid, HbeNewv2[playerid][25], 1);
        PlayerTextDrawColor(playerid, HbeNewv2[playerid][25], -1);
        PlayerTextDrawSetShadow(playerid, HbeNewv2[playerid][25], 0);
        PlayerTextDrawSetOutline(playerid, HbeNewv2[playerid][25], 0);
        PlayerTextDrawBackgroundColor(playerid, HbeNewv2[playerid][25], 255);
        PlayerTextDrawFont(playerid, HbeNewv2[playerid][25], 4);
        PlayerTextDrawSetProportional(playerid, HbeNewv2[playerid][25], 1);

        HbeNewv2[playerid][26] = CreatePlayerTextDraw(playerid, TDHBE1_PosX[playerid][i], TDHBE1_PosY[playerid][i], "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, HbeNewv2[playerid][26], 4.000, 5.000);
        PlayerTextDrawAlignment(playerid, HbeNewv2[playerid][26], 1);
        PlayerTextDrawColor(playerid, HbeNewv2[playerid][26], -1);
        PlayerTextDrawSetShadow(playerid, HbeNewv2[playerid][26], 0);
        PlayerTextDrawSetOutline(playerid, HbeNewv2[playerid][26], 0);
        PlayerTextDrawBackgroundColor(playerid, HbeNewv2[playerid][26], 255);
        PlayerTextDrawFont(playerid, HbeNewv2[playerid][26], 4);
        PlayerTextDrawSetProportional(playerid, HbeNewv2[playerid][26], 1);

        HbeNewv2[playerid][27] = CreatePlayerTextDraw(playerid, TDHBE1_PosX[playerid][i], TDHBE1_PosY[playerid][i], "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, HbeNewv2[playerid][27], 4.000, 4.000);
        PlayerTextDrawAlignment(playerid, HbeNewv2[playerid][27], 1);
        PlayerTextDrawColor(playerid, HbeNewv2[playerid][27], -1);
        PlayerTextDrawSetShadow(playerid, HbeNewv2[playerid][27], 0);
        PlayerTextDrawSetOutline(playerid, HbeNewv2[playerid][27], 0);
        PlayerTextDrawBackgroundColor(playerid, HbeNewv2[playerid][27], 255);
        PlayerTextDrawFont(playerid, HbeNewv2[playerid][27], 4);
        PlayerTextDrawSetProportional(playerid, HbeNewv2[playerid][27], 1);

        HbeNewv2[playerid][28] = CreatePlayerTextDraw(playerid, TDHBE1_PosX[playerid][i], TDHBE1_PosY[playerid][i], "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, HbeNewv2[playerid][28], 4.000, 5.000);
        PlayerTextDrawAlignment(playerid, HbeNewv2[playerid][28], 1);
        PlayerTextDrawColor(playerid, HbeNewv2[playerid][28], -65281);
        PlayerTextDrawSetShadow(playerid, HbeNewv2[playerid][28], 0);
        PlayerTextDrawSetOutline(playerid, HbeNewv2[playerid][28], 0);
        PlayerTextDrawBackgroundColor(playerid, HbeNewv2[playerid][28], 255);
        PlayerTextDrawFont(playerid, HbeNewv2[playerid][28], 4);
        PlayerTextDrawSetProportional(playerid, HbeNewv2[playerid][28], 1);

        HbeNewv2[playerid][29] = CreatePlayerTextDraw(playerid, TDHBE1_PosX[playerid][i], TDHBE1_PosY[playerid][i], "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, HbeNewv2[playerid][29], 4.000, 5.000);
        PlayerTextDrawAlignment(playerid, HbeNewv2[playerid][29], 1);
        PlayerTextDrawColor(playerid, HbeNewv2[playerid][29], -65281);
        PlayerTextDrawSetShadow(playerid, HbeNewv2[playerid][29], 0);
        PlayerTextDrawSetOutline(playerid, HbeNewv2[playerid][29], 0);
        PlayerTextDrawBackgroundColor(playerid, HbeNewv2[playerid][29], 255);
        PlayerTextDrawFont(playerid, HbeNewv2[playerid][29], 4);
        PlayerTextDrawSetProportional(playerid, HbeNewv2[playerid][29], 1);

        HbeNewv2[playerid][30] = CreatePlayerTextDraw(playerid, TDHBE1_PosX[playerid][i], TDHBE1_PosY[playerid][i], "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, HbeNewv2[playerid][30], 4.000, 4.000);
        PlayerTextDrawAlignment(playerid, HbeNewv2[playerid][30], 1);
        PlayerTextDrawColor(playerid, HbeNewv2[playerid][30], -65281);
        PlayerTextDrawSetShadow(playerid, HbeNewv2[playerid][30], 0);
        PlayerTextDrawSetOutline(playerid, HbeNewv2[playerid][30], 0);
        PlayerTextDrawBackgroundColor(playerid, HbeNewv2[playerid][30], 255);
        PlayerTextDrawFont(playerid, HbeNewv2[playerid][30], 4);
        PlayerTextDrawSetProportional(playerid, HbeNewv2[playerid][30], 1);

        HbeNewv2[playerid][31] = CreatePlayerTextDraw(playerid, TDHBE1_PosX[playerid][i], TDHBE1_PosY[playerid][i], "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, HbeNewv2[playerid][31], 10.000, 5.000);
        PlayerTextDrawAlignment(playerid, HbeNewv2[playerid][31], 1);
        PlayerTextDrawColor(playerid, HbeNewv2[playerid][31], -1);
        PlayerTextDrawSetShadow(playerid, HbeNewv2[playerid][31], 0);
        PlayerTextDrawSetOutline(playerid, HbeNewv2[playerid][31], 0);
        PlayerTextDrawBackgroundColor(playerid, HbeNewv2[playerid][31], 255);
        PlayerTextDrawFont(playerid, HbeNewv2[playerid][31], 4);
        PlayerTextDrawSetProportional(playerid, HbeNewv2[playerid][31], 1);

        HbeNewv2[playerid][32] = CreatePlayerTextDraw(playerid, TDHBE1_PosX[playerid][i], TDHBE1_PosY[playerid][i], "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, HbeNewv2[playerid][32], 10.000, 2.000);
        PlayerTextDrawAlignment(playerid, HbeNewv2[playerid][32], 1);
        PlayerTextDrawColor(playerid, HbeNewv2[playerid][32], -1);
        PlayerTextDrawSetShadow(playerid, HbeNewv2[playerid][32], 0);
        PlayerTextDrawSetOutline(playerid, HbeNewv2[playerid][32], 0);
        PlayerTextDrawBackgroundColor(playerid, HbeNewv2[playerid][32], 255);
        PlayerTextDrawFont(playerid, HbeNewv2[playerid][32], 4);
        PlayerTextDrawSetProportional(playerid, HbeNewv2[playerid][32], 1);

        HbeNewv2[playerid][33] = CreatePlayerTextDraw(playerid, TDHBE1_PosX[playerid][i], TDHBE1_PosY[playerid][i], "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, HbeNewv2[playerid][33], 6.000, 1.000);
        PlayerTextDrawAlignment(playerid, HbeNewv2[playerid][33], 1);
        PlayerTextDrawColor(playerid, HbeNewv2[playerid][33], -1);
        PlayerTextDrawSetShadow(playerid, HbeNewv2[playerid][33], 0);
        PlayerTextDrawSetOutline(playerid, HbeNewv2[playerid][33], 0);
        PlayerTextDrawBackgroundColor(playerid, HbeNewv2[playerid][33], 255);
        PlayerTextDrawFont(playerid, HbeNewv2[playerid][33], 4);
        PlayerTextDrawSetProportional(playerid, HbeNewv2[playerid][33], 1);

        HbeNewv2[playerid][34] = CreatePlayerTextDraw(playerid, TDHBE1_PosX[playerid][i], TDHBE1_PosY[playerid][i], "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, HbeNewv2[playerid][34], 10.000, 8.000);
        PlayerTextDrawAlignment(playerid, HbeNewv2[playerid][34], 1);
        PlayerTextDrawColor(playerid, HbeNewv2[playerid][34], -1);
        PlayerTextDrawSetShadow(playerid, HbeNewv2[playerid][34], 0);
        PlayerTextDrawSetOutline(playerid, HbeNewv2[playerid][34], 0);
        PlayerTextDrawBackgroundColor(playerid, HbeNewv2[playerid][34], 255);
        PlayerTextDrawFont(playerid, HbeNewv2[playerid][34], 4);
        PlayerTextDrawSetProportional(playerid, HbeNewv2[playerid][34], 1);

        HbeNewv2[playerid][35] = CreatePlayerTextDraw(playerid, TDHBE1_PosX[playerid][i], TDHBE1_PosY[playerid][i], "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, HbeNewv2[playerid][35], 6.000, 4.000);
        PlayerTextDrawAlignment(playerid, HbeNewv2[playerid][35], 1);
        PlayerTextDrawColor(playerid, HbeNewv2[playerid][35], -1);
        PlayerTextDrawSetShadow(playerid, HbeNewv2[playerid][35], 0);
        PlayerTextDrawSetOutline(playerid, HbeNewv2[playerid][35], 0);
        PlayerTextDrawBackgroundColor(playerid, HbeNewv2[playerid][35], 255);
        PlayerTextDrawFont(playerid, HbeNewv2[playerid][35], 4);
        PlayerTextDrawSetProportional(playerid, HbeNewv2[playerid][35], 1);

        HbeNewv2[playerid][36] = CreatePlayerTextDraw(playerid, TDHBE1_PosX[playerid][i], TDHBE1_PosY[playerid][i], "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, HbeNewv2[playerid][36], 1.000, 4.000);
        PlayerTextDrawAlignment(playerid, HbeNewv2[playerid][36], 1);
        PlayerTextDrawColor(playerid, HbeNewv2[playerid][36], -1);
        PlayerTextDrawSetShadow(playerid, HbeNewv2[playerid][36], 0);
        PlayerTextDrawSetOutline(playerid, HbeNewv2[playerid][36], 0);
        PlayerTextDrawBackgroundColor(playerid, HbeNewv2[playerid][36], 255);
        PlayerTextDrawFont(playerid, HbeNewv2[playerid][36], 4);
        PlayerTextDrawSetProportional(playerid, HbeNewv2[playerid][36], 1);

        HbeNewv2[playerid][37] = CreatePlayerTextDraw(playerid, TDHBE1_PosX[playerid][i], TDHBE1_PosY[playerid][i], "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, HbeNewv2[playerid][37], 7.000, 1.000);
        PlayerTextDrawAlignment(playerid, HbeNewv2[playerid][37], 1);
        PlayerTextDrawColor(playerid, HbeNewv2[playerid][37], -1);
        PlayerTextDrawSetShadow(playerid, HbeNewv2[playerid][37], 0);
        PlayerTextDrawSetOutline(playerid, HbeNewv2[playerid][37], 0);
        PlayerTextDrawBackgroundColor(playerid, HbeNewv2[playerid][37], 255);
        PlayerTextDrawFont(playerid, HbeNewv2[playerid][37], 4);
        PlayerTextDrawSetProportional(playerid, HbeNewv2[playerid][37], 1);

        HbeNewv2[playerid][38] = CreatePlayerTextDraw(playerid, TDHBE1_PosX[playerid][i], TDHBE1_PosY[playerid][i], "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, HbeNewv2[playerid][38], 13.000, 16.000);
        PlayerTextDrawAlignment(playerid, HbeNewv2[playerid][38], 1);
        PlayerTextDrawColor(playerid, HbeNewv2[playerid][38], -1);
        PlayerTextDrawSetShadow(playerid, HbeNewv2[playerid][38], 0);
        PlayerTextDrawSetOutline(playerid, HbeNewv2[playerid][38], 0);
        PlayerTextDrawBackgroundColor(playerid, HbeNewv2[playerid][38], 255);
        PlayerTextDrawFont(playerid, HbeNewv2[playerid][38], 4);
        PlayerTextDrawSetProportional(playerid, HbeNewv2[playerid][38], 1);

        HbeNewv2[playerid][39] = CreatePlayerTextDraw(playerid, TDHBE1_PosX[playerid][i], TDHBE1_PosY[playerid][i], "<");
        PlayerTextDrawLetterSize(playerid, HbeNewv2[playerid][39], 0.109, 0.699);
        PlayerTextDrawAlignment(playerid, HbeNewv2[playerid][39], 2);
        PlayerTextDrawColor(playerid, HbeNewv2[playerid][39], 255);
        PlayerTextDrawSetShadow(playerid, HbeNewv2[playerid][39], 0);
        PlayerTextDrawSetOutline(playerid, HbeNewv2[playerid][39], 0);
        PlayerTextDrawBackgroundColor(playerid, HbeNewv2[playerid][39], 150);
        PlayerTextDrawFont(playerid, HbeNewv2[playerid][39], 1);
        PlayerTextDrawSetProportional(playerid, HbeNewv2[playerid][39], 1);

        HbeNewv2[playerid][40] = CreatePlayerTextDraw(playerid, TDHBE1_PosX[playerid][i], TDHBE1_PosY[playerid][i], ">");
        PlayerTextDrawLetterSize(playerid, HbeNewv2[playerid][40], 0.109, 0.699);
        PlayerTextDrawAlignment(playerid, HbeNewv2[playerid][40], 2);
        PlayerTextDrawColor(playerid, HbeNewv2[playerid][40], 255);
        PlayerTextDrawSetShadow(playerid, HbeNewv2[playerid][40], 0);
        PlayerTextDrawSetOutline(playerid, HbeNewv2[playerid][40], 0);
        PlayerTextDrawBackgroundColor(playerid, HbeNewv2[playerid][40], 150);
        PlayerTextDrawFont(playerid, HbeNewv2[playerid][40], 1);
        PlayerTextDrawSetProportional(playerid, HbeNewv2[playerid][40], 1);

        HbeNewv2[playerid][41] = CreatePlayerTextDraw(playerid, TDHBE1_PosX[playerid][i], TDHBE1_PosY[playerid][i], "AS");
        PlayerTextDrawLetterSize(playerid, HbeNewv2[playerid][41], 0.100, -0.400);
        PlayerTextDrawAlignment(playerid, HbeNewv2[playerid][41], 2);
        PlayerTextDrawColor(playerid, HbeNewv2[playerid][41], 255);
        PlayerTextDrawSetShadow(playerid, HbeNewv2[playerid][41], 0);
        PlayerTextDrawSetOutline(playerid, HbeNewv2[playerid][41], 0);
        PlayerTextDrawBackgroundColor(playerid, HbeNewv2[playerid][41], 150);
        PlayerTextDrawFont(playerid, HbeNewv2[playerid][41], 1);
        PlayerTextDrawSetProportional(playerid, HbeNewv2[playerid][41], 1);
    }
    
    ATRP_DutyTD[playerid][0] = CreatePlayerTextDraw(playerid, 425.000, 428.000, "ADMINISTRATOR: ~g~ON DUTY");
    PlayerTextDrawLetterSize(playerid, ATRP_DutyTD[playerid][0], 0.230, 1.199);
    PlayerTextDrawAlignment(playerid, ATRP_DutyTD[playerid][0], 1);
    PlayerTextDrawColor(playerid, ATRP_DutyTD[playerid][0], -1);
    PlayerTextDrawSetShadow(playerid, ATRP_DutyTD[playerid][0], 1);
    PlayerTextDrawSetOutline(playerid, ATRP_DutyTD[playerid][0], 1);
    PlayerTextDrawBackgroundColor(playerid, ATRP_DutyTD[playerid][0], 150);
    PlayerTextDrawFont(playerid, ATRP_DutyTD[playerid][0], 1);
    PlayerTextDrawSetProportional(playerid, ATRP_DutyTD[playerid][0], 1);

    // Spectator Info
    SpectatorInfoTD[playerid][0] = CreatePlayerTextDraw(playerid, 262.000, 277.000, "Nama IC/UCP: Rayy_Bonelo (Rayyzix)");
    PlayerTextDrawLetterSize(playerid, SpectatorInfoTD[playerid][0], 0.150, 1.098);
    PlayerTextDrawAlignment(playerid, SpectatorInfoTD[playerid][0], 1);
    PlayerTextDrawColor(playerid, SpectatorInfoTD[playerid][0], -1);
    PlayerTextDrawSetShadow(playerid, SpectatorInfoTD[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, SpectatorInfoTD[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, SpectatorInfoTD[playerid][0], 150);
    PlayerTextDrawFont(playerid, SpectatorInfoTD[playerid][0], 1);
    PlayerTextDrawSetProportional(playerid, SpectatorInfoTD[playerid][0], 1);

    SpectatorInfoTD[playerid][1] = CreatePlayerTextDraw(playerid, 250.000, 260.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, SpectatorInfoTD[playerid][1], 160.000, 122.000);
    PlayerTextDrawAlignment(playerid, SpectatorInfoTD[playerid][1], 1);
    PlayerTextDrawColor(playerid, SpectatorInfoTD[playerid][1], -849585017);
    PlayerTextDrawSetShadow(playerid, SpectatorInfoTD[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, SpectatorInfoTD[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, SpectatorInfoTD[playerid][1], 255);
    PlayerTextDrawFont(playerid, SpectatorInfoTD[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, SpectatorInfoTD[playerid][1], 1);

    SpectatorInfoTD[playerid][2] = CreatePlayerTextDraw(playerid, 262.000, 267.000, "ID: 1");
    PlayerTextDrawLetterSize(playerid, SpectatorInfoTD[playerid][2], 0.150, 1.098);
    PlayerTextDrawAlignment(playerid, SpectatorInfoTD[playerid][2], 1);
    PlayerTextDrawColor(playerid, SpectatorInfoTD[playerid][2], -1);
    PlayerTextDrawSetShadow(playerid, SpectatorInfoTD[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, SpectatorInfoTD[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, SpectatorInfoTD[playerid][2], 150);
    PlayerTextDrawFont(playerid, SpectatorInfoTD[playerid][2], 1);
    PlayerTextDrawSetProportional(playerid, SpectatorInfoTD[playerid][2], 1);

    SpectatorInfoTD[playerid][3] = CreatePlayerTextDraw(playerid, 262.000, 286.000, "Cash Money: $1441422");
    PlayerTextDrawLetterSize(playerid, SpectatorInfoTD[playerid][3], 0.150, 1.098);
    PlayerTextDrawAlignment(playerid, SpectatorInfoTD[playerid][3], 1);
    PlayerTextDrawColor(playerid, SpectatorInfoTD[playerid][3], -1);
    PlayerTextDrawSetShadow(playerid, SpectatorInfoTD[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, SpectatorInfoTD[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, SpectatorInfoTD[playerid][3], 150);
    PlayerTextDrawFont(playerid, SpectatorInfoTD[playerid][3], 1);
    PlayerTextDrawSetProportional(playerid, SpectatorInfoTD[playerid][3], 1);

    SpectatorInfoTD[playerid][4] = CreatePlayerTextDraw(playerid, 262.000, 314.000, "Health: 100");
    PlayerTextDrawLetterSize(playerid, SpectatorInfoTD[playerid][4], 0.150, 1.098);
    PlayerTextDrawAlignment(playerid, SpectatorInfoTD[playerid][4], 1);
    PlayerTextDrawColor(playerid, SpectatorInfoTD[playerid][4], -1);
    PlayerTextDrawSetShadow(playerid, SpectatorInfoTD[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, SpectatorInfoTD[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, SpectatorInfoTD[playerid][4], 150);
    PlayerTextDrawFont(playerid, SpectatorInfoTD[playerid][4], 1);
    PlayerTextDrawSetProportional(playerid, SpectatorInfoTD[playerid][4], 1);

    SpectatorInfoTD[playerid][5] = CreatePlayerTextDraw(playerid, 262.000, 324.000, "Armour:100");
    PlayerTextDrawLetterSize(playerid, SpectatorInfoTD[playerid][5], 0.150, 1.098);
    PlayerTextDrawAlignment(playerid, SpectatorInfoTD[playerid][5], 1);
    PlayerTextDrawColor(playerid, SpectatorInfoTD[playerid][5], -1);
    PlayerTextDrawSetShadow(playerid, SpectatorInfoTD[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, SpectatorInfoTD[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, SpectatorInfoTD[playerid][5], 150);
    PlayerTextDrawFont(playerid, SpectatorInfoTD[playerid][5], 1);
    PlayerTextDrawSetProportional(playerid, SpectatorInfoTD[playerid][5], 1);

    SpectatorInfoTD[playerid][6] = CreatePlayerTextDraw(playerid, 262.000, 343.000, "Interior: 1");
    PlayerTextDrawLetterSize(playerid, SpectatorInfoTD[playerid][6], 0.150, 1.098);
    PlayerTextDrawAlignment(playerid, SpectatorInfoTD[playerid][6], 1);
    PlayerTextDrawColor(playerid, SpectatorInfoTD[playerid][6], -1);
    PlayerTextDrawSetShadow(playerid, SpectatorInfoTD[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, SpectatorInfoTD[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, SpectatorInfoTD[playerid][6], 150);
    PlayerTextDrawFont(playerid, SpectatorInfoTD[playerid][6], 1);
    PlayerTextDrawSetProportional(playerid, SpectatorInfoTD[playerid][6], 1);

    SpectatorInfoTD[playerid][7] = CreatePlayerTextDraw(playerid, 262.000, 354.000, "World: 1");
    PlayerTextDrawLetterSize(playerid, SpectatorInfoTD[playerid][7], 0.150, 1.098);
    PlayerTextDrawAlignment(playerid, SpectatorInfoTD[playerid][7], 1);
    PlayerTextDrawColor(playerid, SpectatorInfoTD[playerid][7], -1);
    PlayerTextDrawSetShadow(playerid, SpectatorInfoTD[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, SpectatorInfoTD[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, SpectatorInfoTD[playerid][7], 150);
    PlayerTextDrawFont(playerid, SpectatorInfoTD[playerid][7], 1);
    PlayerTextDrawSetProportional(playerid, SpectatorInfoTD[playerid][7], 1);

    SpectatorInfoTD[playerid][8] = CreatePlayerTextDraw(playerid, 262.000, 334.000, "Stress: 100");
    PlayerTextDrawLetterSize(playerid, SpectatorInfoTD[playerid][8], 0.150, 1.098);
    PlayerTextDrawAlignment(playerid, SpectatorInfoTD[playerid][8], 1);
    PlayerTextDrawColor(playerid, SpectatorInfoTD[playerid][8], -1);
    PlayerTextDrawSetShadow(playerid, SpectatorInfoTD[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, SpectatorInfoTD[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, SpectatorInfoTD[playerid][8], 150);
    PlayerTextDrawFont(playerid, SpectatorInfoTD[playerid][8], 1);
    PlayerTextDrawSetProportional(playerid, SpectatorInfoTD[playerid][8], 1);

    SpectatorInfoTD[playerid][9] = CreatePlayerTextDraw(playerid, 262.000, 364.000, "Fps: 100 Ping: 100");
    PlayerTextDrawLetterSize(playerid, SpectatorInfoTD[playerid][9], 0.150, 1.098);
    PlayerTextDrawAlignment(playerid, SpectatorInfoTD[playerid][9], 1);
    PlayerTextDrawColor(playerid, SpectatorInfoTD[playerid][9], -1);
    PlayerTextDrawSetShadow(playerid, SpectatorInfoTD[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, SpectatorInfoTD[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, SpectatorInfoTD[playerid][9], 150);
    PlayerTextDrawFont(playerid, SpectatorInfoTD[playerid][9], 1);
    PlayerTextDrawSetProportional(playerid, SpectatorInfoTD[playerid][9], 1);

    SpectatorInfoTD[playerid][10] = CreatePlayerTextDraw(playerid, 250.000, 382.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, SpectatorInfoTD[playerid][10], 160.000, 7.000);
    PlayerTextDrawAlignment(playerid, SpectatorInfoTD[playerid][10], 1);
    PlayerTextDrawColor(playerid, SpectatorInfoTD[playerid][10], 201);
    PlayerTextDrawSetShadow(playerid, SpectatorInfoTD[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, SpectatorInfoTD[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, SpectatorInfoTD[playerid][10], 255);
    PlayerTextDrawFont(playerid, SpectatorInfoTD[playerid][10], 4);
    PlayerTextDrawSetProportional(playerid, SpectatorInfoTD[playerid][10], 1);

    SpectatorInfoTD[playerid][11] = CreatePlayerTextDraw(playerid, 250.000, 389.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, SpectatorInfoTD[playerid][11], -6.000, -136.000);
    PlayerTextDrawAlignment(playerid, SpectatorInfoTD[playerid][11], 1);
    PlayerTextDrawColor(playerid, SpectatorInfoTD[playerid][11], 201);
    PlayerTextDrawSetShadow(playerid, SpectatorInfoTD[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, SpectatorInfoTD[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, SpectatorInfoTD[playerid][11], 255);
    PlayerTextDrawFont(playerid, SpectatorInfoTD[playerid][11], 4);
    PlayerTextDrawSetProportional(playerid, SpectatorInfoTD[playerid][11], 1);

    SpectatorInfoTD[playerid][12] = CreatePlayerTextDraw(playerid, 416.000, 389.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, SpectatorInfoTD[playerid][12], -6.000, -136.000);
    PlayerTextDrawAlignment(playerid, SpectatorInfoTD[playerid][12], 1);
    PlayerTextDrawColor(playerid, SpectatorInfoTD[playerid][12], 201);
    PlayerTextDrawSetShadow(playerid, SpectatorInfoTD[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, SpectatorInfoTD[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, SpectatorInfoTD[playerid][12], 255);
    PlayerTextDrawFont(playerid, SpectatorInfoTD[playerid][12], 4);
    PlayerTextDrawSetProportional(playerid, SpectatorInfoTD[playerid][12], 1);

    SpectatorInfoTD[playerid][13] = CreatePlayerTextDraw(playerid, 250.000, 253.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, SpectatorInfoTD[playerid][13], 160.000, 7.000);
    PlayerTextDrawAlignment(playerid, SpectatorInfoTD[playerid][13], 1);
    PlayerTextDrawColor(playerid, SpectatorInfoTD[playerid][13], 201);
    PlayerTextDrawSetShadow(playerid, SpectatorInfoTD[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, SpectatorInfoTD[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, SpectatorInfoTD[playerid][13], 255);
    PlayerTextDrawFont(playerid, SpectatorInfoTD[playerid][13], 4);
    PlayerTextDrawSetProportional(playerid, SpectatorInfoTD[playerid][13], 1);

    SpectatorInfoTD[playerid][14] = CreatePlayerTextDraw(playerid, 262.000, 295.000, "Hungry: 100");
    PlayerTextDrawLetterSize(playerid, SpectatorInfoTD[playerid][14], 0.150, 1.098);
    PlayerTextDrawAlignment(playerid, SpectatorInfoTD[playerid][14], 1);
    PlayerTextDrawColor(playerid, SpectatorInfoTD[playerid][14], -1);
    PlayerTextDrawSetShadow(playerid, SpectatorInfoTD[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, SpectatorInfoTD[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, SpectatorInfoTD[playerid][14], 150);
    PlayerTextDrawFont(playerid, SpectatorInfoTD[playerid][14], 1);
    PlayerTextDrawSetProportional(playerid, SpectatorInfoTD[playerid][14], 1);

    SpectatorInfoTD[playerid][15] = CreatePlayerTextDraw(playerid, 262.000, 305.000, "Thirst: 100");
    PlayerTextDrawLetterSize(playerid, SpectatorInfoTD[playerid][15], 0.150, 1.098);
    PlayerTextDrawAlignment(playerid, SpectatorInfoTD[playerid][15], 1);
    PlayerTextDrawColor(playerid, SpectatorInfoTD[playerid][15], -1);
    PlayerTextDrawSetShadow(playerid, SpectatorInfoTD[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, SpectatorInfoTD[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, SpectatorInfoTD[playerid][15], 150);
    PlayerTextDrawFont(playerid, SpectatorInfoTD[playerid][15], 1);
    PlayerTextDrawSetProportional(playerid, SpectatorInfoTD[playerid][15], 1);
    
    // Footer
    ATRP_Footer[playerid] = CreatePlayerTextDraw(playerid, 321.000, 361.385, "_");
    PlayerTextDrawLetterSize(playerid, ATRP_Footer[playerid], 0.236, 1.453);
    PlayerTextDrawAlignment(playerid, ATRP_Footer[playerid], 2);
    PlayerTextDrawColor(playerid, ATRP_Footer[playerid], -1);
    PlayerTextDrawSetShadow(playerid, ATRP_Footer[playerid], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_Footer[playerid], 1);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Footer[playerid], 255);
    PlayerTextDrawFont(playerid, ATRP_Footer[playerid], 1);
    PlayerTextDrawSetProportional(playerid, ATRP_Footer[playerid], 1);

    // FPS
    FPStextdraws[playerid][0] = CreatePlayerTextDraw(playerid, 0.000, 0.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, FPStextdraws[playerid][0], 130.000, 19.000);
    PlayerTextDrawAlignment(playerid, FPStextdraws[playerid][0], 1);
    PlayerTextDrawColor(playerid, FPStextdraws[playerid][0], 1687547391);
    PlayerTextDrawSetShadow(playerid, FPStextdraws[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, FPStextdraws[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, FPStextdraws[playerid][0], 255);
    PlayerTextDrawFont(playerid, FPStextdraws[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, FPStextdraws[playerid][0], 1);

    FPStextdraws[playerid][1] = CreatePlayerTextDraw(playerid, 1.000, 1.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, FPStextdraws[playerid][1], 127.000, 16.000);
    PlayerTextDrawAlignment(playerid, FPStextdraws[playerid][1], 1);
    PlayerTextDrawColor(playerid, FPStextdraws[playerid][1], 505428735);
    PlayerTextDrawSetShadow(playerid, FPStextdraws[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, FPStextdraws[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, FPStextdraws[playerid][1], 255);
    PlayerTextDrawFont(playerid, FPStextdraws[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, FPStextdraws[playerid][1], 1);

    FPStextdraws[playerid][2] = CreatePlayerTextDraw(playerid, 11.000, 4.000, "FPS: 90");
    PlayerTextDrawLetterSize(playerid, FPStextdraws[playerid][2], 0.170, 0.899);
    PlayerTextDrawAlignment(playerid, FPStextdraws[playerid][2], 1);
    PlayerTextDrawColor(playerid, FPStextdraws[playerid][2], -1);
    PlayerTextDrawSetShadow(playerid, FPStextdraws[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, FPStextdraws[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, FPStextdraws[playerid][2], 150);
    PlayerTextDrawFont(playerid, FPStextdraws[playerid][2], 1);
    PlayerTextDrawSetProportional(playerid, FPStextdraws[playerid][2], 1);

    FPStextdraws[playerid][3] = CreatePlayerTextDraw(playerid, 53.000, 4.000, "PING: 12MS");
    PlayerTextDrawLetterSize(playerid, FPStextdraws[playerid][3], 0.170, 0.899);
    PlayerTextDrawAlignment(playerid, FPStextdraws[playerid][3], 1);
    PlayerTextDrawColor(playerid, FPStextdraws[playerid][3], -1);
    PlayerTextDrawSetShadow(playerid, FPStextdraws[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, FPStextdraws[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, FPStextdraws[playerid][3], 150);
    PlayerTextDrawFont(playerid, FPStextdraws[playerid][3], 1);
    PlayerTextDrawSetProportional(playerid, FPStextdraws[playerid][3], 1);

    FPStextdraws[playerid][4] = CreatePlayerTextDraw(playerid, 101.000, 4.000, "PL: 35#");
    PlayerTextDrawLetterSize(playerid, FPStextdraws[playerid][4], 0.170, 0.899);
    PlayerTextDrawAlignment(playerid, FPStextdraws[playerid][4], 1);
    PlayerTextDrawColor(playerid, FPStextdraws[playerid][4], -1);
    PlayerTextDrawSetShadow(playerid, FPStextdraws[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, FPStextdraws[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, FPStextdraws[playerid][4], 150);
    PlayerTextDrawFont(playerid, FPStextdraws[playerid][4], 1);
    PlayerTextDrawSetProportional(playerid, FPStextdraws[playerid][4], 1);

    FPStextdraws[playerid][5] = CreatePlayerTextDraw(playerid, 42.000, 1.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, FPStextdraws[playerid][5], 1.000, 16.000);
    PlayerTextDrawAlignment(playerid, FPStextdraws[playerid][5], 1);
    PlayerTextDrawColor(playerid, FPStextdraws[playerid][5], 1687547391);
    PlayerTextDrawSetShadow(playerid, FPStextdraws[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, FPStextdraws[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, FPStextdraws[playerid][5], 255);
    PlayerTextDrawFont(playerid, FPStextdraws[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, FPStextdraws[playerid][5], 1);

    FPStextdraws[playerid][6] = CreatePlayerTextDraw(playerid, 94.000, 1.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, FPStextdraws[playerid][6], 1.000, 16.000);
    PlayerTextDrawAlignment(playerid, FPStextdraws[playerid][6], 1);
    PlayerTextDrawColor(playerid, FPStextdraws[playerid][6], 1687547391);
    PlayerTextDrawSetShadow(playerid, FPStextdraws[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, FPStextdraws[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, FPStextdraws[playerid][6], 255);
    PlayerTextDrawFont(playerid, FPStextdraws[playerid][6], 4);
    PlayerTextDrawSetProportional(playerid, FPStextdraws[playerid][6], 1);
    
    // Kartu Tanda Anggota
    KtaTextdraw[playerid][0] = CreatePlayerTextDraw(playerid, 383.000, 269.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, KtaTextdraw[playerid][0], 143.000, 95.000);
    PlayerTextDrawAlignment(playerid, KtaTextdraw[playerid][0], 1);
    PlayerTextDrawColor(playerid, KtaTextdraw[playerid][0], -1);
    PlayerTextDrawSetShadow(playerid, KtaTextdraw[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, KtaTextdraw[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, KtaTextdraw[playerid][0], 255);
    PlayerTextDrawFont(playerid, KtaTextdraw[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, KtaTextdraw[playerid][0], 1);

    KtaTextdraw[playerid][1] = CreatePlayerTextDraw(playerid, 378.000, 253.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, KtaTextdraw[playerid][1], 33.000, 34.000);
    PlayerTextDrawAlignment(playerid, KtaTextdraw[playerid][1], 1);
    PlayerTextDrawColor(playerid, KtaTextdraw[playerid][1], -1);
    PlayerTextDrawSetShadow(playerid, KtaTextdraw[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, KtaTextdraw[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, KtaTextdraw[playerid][1], 255);
    PlayerTextDrawFont(playerid, KtaTextdraw[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, KtaTextdraw[playerid][1], 1);

    KtaTextdraw[playerid][2] = CreatePlayerTextDraw(playerid, 498.000, 253.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, KtaTextdraw[playerid][2], 33.000, 34.000);
    PlayerTextDrawAlignment(playerid, KtaTextdraw[playerid][2], 1);
    PlayerTextDrawColor(playerid, KtaTextdraw[playerid][2], -1);
    PlayerTextDrawSetShadow(playerid, KtaTextdraw[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, KtaTextdraw[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, KtaTextdraw[playerid][2], 255);
    PlayerTextDrawFont(playerid, KtaTextdraw[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, KtaTextdraw[playerid][2], 1);

    KtaTextdraw[playerid][3] = CreatePlayerTextDraw(playerid, 498.000, 347.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, KtaTextdraw[playerid][3], 33.000, 35.000);
    PlayerTextDrawAlignment(playerid, KtaTextdraw[playerid][3], 1);
    PlayerTextDrawColor(playerid, KtaTextdraw[playerid][3], -1);
    PlayerTextDrawSetShadow(playerid, KtaTextdraw[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, KtaTextdraw[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, KtaTextdraw[playerid][3], 255);
    PlayerTextDrawFont(playerid, KtaTextdraw[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, KtaTextdraw[playerid][3], 1);

    KtaTextdraw[playerid][4] = CreatePlayerTextDraw(playerid, 378.000, 347.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, KtaTextdraw[playerid][4], 33.000, 35.000);
    PlayerTextDrawAlignment(playerid, KtaTextdraw[playerid][4], 1);
    PlayerTextDrawColor(playerid, KtaTextdraw[playerid][4], -1);
    PlayerTextDrawSetShadow(playerid, KtaTextdraw[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, KtaTextdraw[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, KtaTextdraw[playerid][4], 255);
    PlayerTextDrawFont(playerid, KtaTextdraw[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, KtaTextdraw[playerid][4], 1);

    KtaTextdraw[playerid][5] = CreatePlayerTextDraw(playerid, 395.000, 258.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, KtaTextdraw[playerid][5], 118.000, 118.000);
    PlayerTextDrawAlignment(playerid, KtaTextdraw[playerid][5], 1);
    PlayerTextDrawColor(playerid, KtaTextdraw[playerid][5], -1);
    PlayerTextDrawSetShadow(playerid, KtaTextdraw[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, KtaTextdraw[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, KtaTextdraw[playerid][5], 255);
    PlayerTextDrawFont(playerid, KtaTextdraw[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, KtaTextdraw[playerid][5], 1);

    KtaTextdraw[playerid][6] = CreatePlayerTextDraw(playerid, 468.000, 288.000, "_");
    PlayerTextDrawTextSize(playerid, KtaTextdraw[playerid][6], 64.000, 52.000);
    PlayerTextDrawAlignment(playerid, KtaTextdraw[playerid][6], 1);
    PlayerTextDrawColor(playerid, KtaTextdraw[playerid][6], -1);
    PlayerTextDrawSetShadow(playerid, KtaTextdraw[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, KtaTextdraw[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, KtaTextdraw[playerid][6], 0);
    PlayerTextDrawFont(playerid, KtaTextdraw[playerid][6], 5);
    PlayerTextDrawSetProportional(playerid, KtaTextdraw[playerid][6], 0);
    PlayerTextDrawSetPreviewModel(playerid, KtaTextdraw[playerid][6], 0);
    PlayerTextDrawSetPreviewRot(playerid, KtaTextdraw[playerid][6], 0.000, 0.000, 0.000, 1.000);
    PlayerTextDrawSetPreviewVehCol(playerid, KtaTextdraw[playerid][6], 0, 0);

    KtaTextdraw[playerid][7] = CreatePlayerTextDraw(playerid, 431.000, 263.000, "Astral City City");
    PlayerTextDrawLetterSize(playerid, KtaTextdraw[playerid][7], 0.190, 1.099);
    PlayerTextDrawAlignment(playerid, KtaTextdraw[playerid][7], 1);
    PlayerTextDrawColor(playerid, KtaTextdraw[playerid][7], 255);
    PlayerTextDrawSetShadow(playerid, KtaTextdraw[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, KtaTextdraw[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, KtaTextdraw[playerid][7], 150);
    PlayerTextDrawFont(playerid, KtaTextdraw[playerid][7], 1);
    PlayerTextDrawSetProportional(playerid, KtaTextdraw[playerid][7], 1);

    KtaTextdraw[playerid][8] = CreatePlayerTextDraw(playerid, 383.000, 287.000, "LD_SPAC:black");
    PlayerTextDrawTextSize(playerid, KtaTextdraw[playerid][8], 144.000, 1.000);
    PlayerTextDrawAlignment(playerid, KtaTextdraw[playerid][8], 1);
    PlayerTextDrawColor(playerid, KtaTextdraw[playerid][8], -1);
    PlayerTextDrawSetShadow(playerid, KtaTextdraw[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, KtaTextdraw[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, KtaTextdraw[playerid][8], 255);
    PlayerTextDrawFont(playerid, KtaTextdraw[playerid][8], 4);
    PlayerTextDrawSetProportional(playerid, KtaTextdraw[playerid][8], 1);

    KtaTextdraw[playerid][9] = CreatePlayerTextDraw(playerid, 391.000, 260.000, "LD_DRV:brboat");
    PlayerTextDrawTextSize(playerid, KtaTextdraw[playerid][9], 14.000, 16.000);
    PlayerTextDrawAlignment(playerid, KtaTextdraw[playerid][9], 1);
    PlayerTextDrawColor(playerid, KtaTextdraw[playerid][9], -1);
    PlayerTextDrawSetShadow(playerid, KtaTextdraw[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, KtaTextdraw[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, KtaTextdraw[playerid][9], 255);
    PlayerTextDrawFont(playerid, KtaTextdraw[playerid][9], 4);
    PlayerTextDrawSetProportional(playerid, KtaTextdraw[playerid][9], 1);

    KtaTextdraw[playerid][10] = CreatePlayerTextDraw(playerid, 419.000, 274.000, "Kartu Tanda Anggota");
    PlayerTextDrawLetterSize(playerid, KtaTextdraw[playerid][10], 0.190, 1.099);
    PlayerTextDrawAlignment(playerid, KtaTextdraw[playerid][10], 1);
    PlayerTextDrawColor(playerid, KtaTextdraw[playerid][10], 255);
    PlayerTextDrawSetShadow(playerid, KtaTextdraw[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, KtaTextdraw[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, KtaTextdraw[playerid][10], 150);
    PlayerTextDrawFont(playerid, KtaTextdraw[playerid][10], 1);
    PlayerTextDrawSetProportional(playerid, KtaTextdraw[playerid][10], 1);

    KtaTextdraw[playerid][11] = CreatePlayerTextDraw(playerid, 383.000, 351.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, KtaTextdraw[playerid][11], 144.000, 13.000);
    PlayerTextDrawAlignment(playerid, KtaTextdraw[playerid][11], 1);
    PlayerTextDrawColor(playerid, KtaTextdraw[playerid][11], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, KtaTextdraw[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, KtaTextdraw[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, KtaTextdraw[playerid][11], 255);
    PlayerTextDrawFont(playerid, KtaTextdraw[playerid][11], 4);
    PlayerTextDrawSetProportional(playerid, KtaTextdraw[playerid][11], 1);

    KtaTextdraw[playerid][12] = CreatePlayerTextDraw(playerid, 378.000, 347.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, KtaTextdraw[playerid][12], 33.000, 35.000);
    PlayerTextDrawAlignment(playerid, KtaTextdraw[playerid][12], 1);
    PlayerTextDrawColor(playerid, KtaTextdraw[playerid][12], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, KtaTextdraw[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, KtaTextdraw[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, KtaTextdraw[playerid][12], 255);
    PlayerTextDrawFont(playerid, KtaTextdraw[playerid][12], 4);
    PlayerTextDrawSetProportional(playerid, KtaTextdraw[playerid][12], 1);

    KtaTextdraw[playerid][13] = CreatePlayerTextDraw(playerid, 499.000, 347.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, KtaTextdraw[playerid][13], 33.000, 35.000);
    PlayerTextDrawAlignment(playerid, KtaTextdraw[playerid][13], 1);
    PlayerTextDrawColor(playerid, KtaTextdraw[playerid][13], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, KtaTextdraw[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, KtaTextdraw[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, KtaTextdraw[playerid][13], 255);
    PlayerTextDrawFont(playerid, KtaTextdraw[playerid][13], 4);
    PlayerTextDrawSetProportional(playerid, KtaTextdraw[playerid][13], 1);

    KtaTextdraw[playerid][14] = CreatePlayerTextDraw(playerid, 391.000, 363.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, KtaTextdraw[playerid][14], 122.000, 14.000);
    PlayerTextDrawAlignment(playerid, KtaTextdraw[playerid][14], 1);
    PlayerTextDrawColor(playerid, KtaTextdraw[playerid][14], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, KtaTextdraw[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, KtaTextdraw[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, KtaTextdraw[playerid][14], 255);
    PlayerTextDrawFont(playerid, KtaTextdraw[playerid][14], 4);
    PlayerTextDrawSetProportional(playerid, KtaTextdraw[playerid][14], 1);

    KtaTextdraw[playerid][15] = CreatePlayerTextDraw(playerid, 383.000, 350.000, "LD_SPAC:black");
    PlayerTextDrawTextSize(playerid, KtaTextdraw[playerid][15], 144.000, 1.000);
    PlayerTextDrawAlignment(playerid, KtaTextdraw[playerid][15], 1);
    PlayerTextDrawColor(playerid, KtaTextdraw[playerid][15], -1);
    PlayerTextDrawSetShadow(playerid, KtaTextdraw[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, KtaTextdraw[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, KtaTextdraw[playerid][15], 255);
    PlayerTextDrawFont(playerid, KtaTextdraw[playerid][15], 4);
    PlayerTextDrawSetProportional(playerid, KtaTextdraw[playerid][15], 1);

    KtaTextdraw[playerid][16] = CreatePlayerTextDraw(playerid, 395.000, 297.000, "Nama:");
    PlayerTextDrawLetterSize(playerid, KtaTextdraw[playerid][16], 0.150, 0.999);
    PlayerTextDrawAlignment(playerid, KtaTextdraw[playerid][16], 1);
    PlayerTextDrawColor(playerid, KtaTextdraw[playerid][16], 255);
    PlayerTextDrawSetShadow(playerid, KtaTextdraw[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, KtaTextdraw[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, KtaTextdraw[playerid][16], 150);
    PlayerTextDrawFont(playerid, KtaTextdraw[playerid][16], 1);
    PlayerTextDrawSetProportional(playerid, KtaTextdraw[playerid][16], 1);

    KtaTextdraw[playerid][17] = CreatePlayerTextDraw(playerid, 412.000, 297.000, "Rayy_Bonelo");
    PlayerTextDrawLetterSize(playerid, KtaTextdraw[playerid][17], 0.150, 0.999);
    PlayerTextDrawAlignment(playerid, KtaTextdraw[playerid][17], 1);
    PlayerTextDrawColor(playerid, KtaTextdraw[playerid][17], 255);
    PlayerTextDrawSetShadow(playerid, KtaTextdraw[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, KtaTextdraw[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, KtaTextdraw[playerid][17], 150);
    PlayerTextDrawFont(playerid, KtaTextdraw[playerid][17], 1);
    PlayerTextDrawSetProportional(playerid, KtaTextdraw[playerid][17], 1);

    KtaTextdraw[playerid][18] = CreatePlayerTextDraw(playerid, 395.000, 307.000, "Faction:");
    PlayerTextDrawLetterSize(playerid, KtaTextdraw[playerid][18], 0.150, 0.999);
    PlayerTextDrawAlignment(playerid, KtaTextdraw[playerid][18], 1);
    PlayerTextDrawColor(playerid, KtaTextdraw[playerid][18], 255);
    PlayerTextDrawSetShadow(playerid, KtaTextdraw[playerid][18], 0);
    PlayerTextDrawSetOutline(playerid, KtaTextdraw[playerid][18], 0);
    PlayerTextDrawBackgroundColor(playerid, KtaTextdraw[playerid][18], 150);
    PlayerTextDrawFont(playerid, KtaTextdraw[playerid][18], 1);
    PlayerTextDrawSetProportional(playerid, KtaTextdraw[playerid][18], 1);

    KtaTextdraw[playerid][19] = CreatePlayerTextDraw(playerid, 415.000, 307.000, "Kepolisian");
    PlayerTextDrawLetterSize(playerid, KtaTextdraw[playerid][19], 0.150, 0.999);
    PlayerTextDrawAlignment(playerid, KtaTextdraw[playerid][19], 1);
    PlayerTextDrawColor(playerid, KtaTextdraw[playerid][19], 255);
    PlayerTextDrawSetShadow(playerid, KtaTextdraw[playerid][19], 0);
    PlayerTextDrawSetOutline(playerid, KtaTextdraw[playerid][19], 0);
    PlayerTextDrawBackgroundColor(playerid, KtaTextdraw[playerid][19], 150);
    PlayerTextDrawFont(playerid, KtaTextdraw[playerid][19], 1);
    PlayerTextDrawSetProportional(playerid, KtaTextdraw[playerid][19], 1);

    KtaTextdraw[playerid][20] = CreatePlayerTextDraw(playerid, 395.000, 317.000, "Rank:");
    PlayerTextDrawLetterSize(playerid, KtaTextdraw[playerid][20], 0.150, 0.999);
    PlayerTextDrawAlignment(playerid, KtaTextdraw[playerid][20], 1);
    PlayerTextDrawColor(playerid, KtaTextdraw[playerid][20], 255);
    PlayerTextDrawSetShadow(playerid, KtaTextdraw[playerid][20], 0);
    PlayerTextDrawSetOutline(playerid, KtaTextdraw[playerid][20], 0);
    PlayerTextDrawBackgroundColor(playerid, KtaTextdraw[playerid][20], 150);
    PlayerTextDrawFont(playerid, KtaTextdraw[playerid][20], 1);
    PlayerTextDrawSetProportional(playerid, KtaTextdraw[playerid][20], 1);

    KtaTextdraw[playerid][21] = CreatePlayerTextDraw(playerid, 409.000, 317.000, "DIRJEN");
    PlayerTextDrawLetterSize(playerid, KtaTextdraw[playerid][21], 0.150, 0.999);
    PlayerTextDrawAlignment(playerid, KtaTextdraw[playerid][21], 1);
    PlayerTextDrawColor(playerid, KtaTextdraw[playerid][21], 255);
    PlayerTextDrawSetShadow(playerid, KtaTextdraw[playerid][21], 0);
    PlayerTextDrawSetOutline(playerid, KtaTextdraw[playerid][21], 0);
    PlayerTextDrawBackgroundColor(playerid, KtaTextdraw[playerid][21], 150);
    PlayerTextDrawFont(playerid, KtaTextdraw[playerid][21], 1);
    PlayerTextDrawSetProportional(playerid, KtaTextdraw[playerid][21], 1);

    KtaTextdraw[playerid][22] = CreatePlayerTextDraw(playerid, 390.000, 352.000, "INI ADALAH KARTU TANDA ANGGOTA, KEASLIAN KEANGGOTAAN SESEORANG");
    PlayerTextDrawLetterSize(playerid, KtaTextdraw[playerid][22], 0.150, 0.999);
    PlayerTextDrawTextSize(playerid, KtaTextdraw[playerid][22], 520.000, -4.000);
    PlayerTextDrawAlignment(playerid, KtaTextdraw[playerid][22], 1);
    PlayerTextDrawColor(playerid, KtaTextdraw[playerid][22], 255);
    PlayerTextDrawSetShadow(playerid, KtaTextdraw[playerid][22], 0);
    PlayerTextDrawSetOutline(playerid, KtaTextdraw[playerid][22], 0);
    PlayerTextDrawBackgroundColor(playerid, KtaTextdraw[playerid][22], 150);
    PlayerTextDrawFont(playerid, KtaTextdraw[playerid][22], 1);
    PlayerTextDrawSetProportional(playerid, KtaTextdraw[playerid][22], 1);

    KtaTextdraw[playerid][23] = CreatePlayerTextDraw(playerid, 447.000, 257.000, "AS");
    PlayerTextDrawLetterSize(playerid, KtaTextdraw[playerid][23], 0.210, 1.099);
    PlayerTextDrawAlignment(playerid, KtaTextdraw[playerid][23], 1);
    PlayerTextDrawColor(playerid, KtaTextdraw[playerid][23], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, KtaTextdraw[playerid][23], 0);
    PlayerTextDrawSetOutline(playerid, KtaTextdraw[playerid][23], 0);
    PlayerTextDrawBackgroundColor(playerid, KtaTextdraw[playerid][23], 150);
    PlayerTextDrawFont(playerid, KtaTextdraw[playerid][23], 1);
    PlayerTextDrawSetProportional(playerid, KtaTextdraw[playerid][23], 1);

    TDNameServer[playerid][0] = CreatePlayerTextDraw(playerid, 333.000, 6.000, "AS");
    PlayerTextDrawLetterSize(playerid, TDNameServer[playerid][0], 0.679, 2.899);
    PlayerTextDrawAlignment(playerid, TDNameServer[playerid][0], 2);
    PlayerTextDrawColor(playerid, TDNameServer[playerid][0], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, TDNameServer[playerid][0], 1);
    PlayerTextDrawSetOutline(playerid, TDNameServer[playerid][0], 1);
    PlayerTextDrawBackgroundColor(playerid, TDNameServer[playerid][0], 150);
    PlayerTextDrawFont(playerid, TDNameServer[playerid][0], 2);
    PlayerTextDrawSetProportional(playerid, TDNameServer[playerid][0], 1);

    TDNameServer[playerid][1] = CreatePlayerTextDraw(playerid, 333.000, 9.000, "AS");
    PlayerTextDrawLetterSize(playerid, TDNameServer[playerid][1], 0.200, 0.999);
    PlayerTextDrawAlignment(playerid, TDNameServer[playerid][1], 2);
    PlayerTextDrawColor(playerid, TDNameServer[playerid][1], 255);
    PlayerTextDrawSetShadow(playerid, TDNameServer[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, TDNameServer[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, TDNameServer[playerid][1], 150);
    PlayerTextDrawFont(playerid, TDNameServer[playerid][1], 2);
    PlayerTextDrawSetProportional(playerid, TDNameServer[playerid][1], 1);

    TDNameServer[playerid][2] = CreatePlayerTextDraw(playerid, 334.000, 26.000, "Astral City");
    PlayerTextDrawLetterSize(playerid, TDNameServer[playerid][2], 0.160, 1.399);
    PlayerTextDrawAlignment(playerid, TDNameServer[playerid][2], 2);
    PlayerTextDrawColor(playerid, TDNameServer[playerid][2], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, TDNameServer[playerid][2], 1);
    PlayerTextDrawSetOutline(playerid, TDNameServer[playerid][2], 1);
    PlayerTextDrawBackgroundColor(playerid, TDNameServer[playerid][2], 150);
    PlayerTextDrawFont(playerid, TDNameServer[playerid][2], 2);
    PlayerTextDrawSetProportional(playerid, TDNameServer[playerid][2], 1);

    TDNameServer[playerid][3] = CreatePlayerTextDraw(playerid, 336.000, 35.000, "roleplay");
    PlayerTextDrawLetterSize(playerid, TDNameServer[playerid][3], 0.180, 1.399);
    PlayerTextDrawAlignment(playerid, TDNameServer[playerid][3], 2);
    PlayerTextDrawColor(playerid, TDNameServer[playerid][3], -1);
    PlayerTextDrawSetShadow(playerid, TDNameServer[playerid][3], 1);
    PlayerTextDrawSetOutline(playerid, TDNameServer[playerid][3], 1);
    PlayerTextDrawBackgroundColor(playerid, TDNameServer[playerid][3], 150);
    PlayerTextDrawFont(playerid, TDNameServer[playerid][3], 2);
    PlayerTextDrawSetProportional(playerid, TDNameServer[playerid][3], 1);

    /* Watermark
    Watermarktextdraws[playerid][0] = CreatePlayerTextDraw(playerid, 324.000, 19.000, "AS");
    PlayerTextDrawLetterSize(playerid, Watermarktextdraws[playerid][0], 0.449, -1.799);
    PlayerTextDrawAlignment(playerid, Watermarktextdraws[playerid][0], 1);
    PlayerTextDrawColor(playerid, Watermarktextdraws[playerid][0], -1);
    PlayerTextDrawSetShadow(playerid, Watermarktextdraws[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, Watermarktextdraws[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, Watermarktextdraws[playerid][0], 150);
    PlayerTextDrawFont(playerid, Watermarktextdraws[playerid][0], 1);
    PlayerTextDrawSetProportional(playerid, Watermarktextdraws[playerid][0], 1);

    Watermarktextdraws[playerid][1] = CreatePlayerTextDraw(playerid, 324.000, 19.000, "AS");
    PlayerTextDrawLetterSize(playerid, Watermarktextdraws[playerid][1], 0.439, -1.799);
    PlayerTextDrawAlignment(playerid, Watermarktextdraws[playerid][1], 1);
    PlayerTextDrawColor(playerid, Watermarktextdraws[playerid][1], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, Watermarktextdraws[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, Watermarktextdraws[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, Watermarktextdraws[playerid][1], 150);
    PlayerTextDrawFont(playerid, Watermarktextdraws[playerid][1], 1);
    PlayerTextDrawSetProportional(playerid, Watermarktextdraws[playerid][1], 1);

    Watermarktextdraws[playerid][2] = CreatePlayerTextDraw(playerid, 320.000, 17.000, "/");
    PlayerTextDrawLetterSize(playerid, Watermarktextdraws[playerid][2], 0.330, 0.999);
    PlayerTextDrawAlignment(playerid, Watermarktextdraws[playerid][2], 1);
    PlayerTextDrawColor(playerid, Watermarktextdraws[playerid][2], -1);
    PlayerTextDrawSetShadow(playerid, Watermarktextdraws[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, Watermarktextdraws[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, Watermarktextdraws[playerid][2], 150);
    PlayerTextDrawFont(playerid, Watermarktextdraws[playerid][2], 1);
    PlayerTextDrawSetProportional(playerid, Watermarktextdraws[playerid][2], 1);

    Watermarktextdraws[playerid][3] = CreatePlayerTextDraw(playerid, 320.200, 17.000, "/");
    PlayerTextDrawLetterSize(playerid, Watermarktextdraws[playerid][3], 0.330, 0.999);
    PlayerTextDrawAlignment(playerid, Watermarktextdraws[playerid][3], 1);
    PlayerTextDrawColor(playerid, Watermarktextdraws[playerid][3], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, Watermarktextdraws[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, Watermarktextdraws[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, Watermarktextdraws[playerid][3], 150);
    PlayerTextDrawFont(playerid, Watermarktextdraws[playerid][3], 1);
    PlayerTextDrawSetProportional(playerid, Watermarktextdraws[playerid][3], 1);

    Watermarktextdraws[playerid][4] = CreatePlayerTextDraw(playerid, 321.000, 18.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, Watermarktextdraws[playerid][4], 8.000, -2.000);
    PlayerTextDrawAlignment(playerid, Watermarktextdraws[playerid][4], 1);
    PlayerTextDrawColor(playerid, Watermarktextdraws[playerid][4], -1);
    PlayerTextDrawSetShadow(playerid, Watermarktextdraws[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, Watermarktextdraws[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, Watermarktextdraws[playerid][4], 255);
    PlayerTextDrawFont(playerid, Watermarktextdraws[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, Watermarktextdraws[playerid][4], 1);

    Watermarktextdraws[playerid][5] = CreatePlayerTextDraw(playerid, 321.299, 18.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, Watermarktextdraws[playerid][5], 8.199, -1.700);
    PlayerTextDrawAlignment(playerid, Watermarktextdraws[playerid][5], 1);
    PlayerTextDrawColor(playerid, Watermarktextdraws[playerid][5], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, Watermarktextdraws[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, Watermarktextdraws[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, Watermarktextdraws[playerid][5], 255);
    PlayerTextDrawFont(playerid, Watermarktextdraws[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, Watermarktextdraws[playerid][5], 1);

    Watermarktextdraws[playerid][6] = CreatePlayerTextDraw(playerid, 324.000, 17.000, "/");
    PlayerTextDrawLetterSize(playerid, Watermarktextdraws[playerid][6], 0.330, 0.999);
    PlayerTextDrawAlignment(playerid, Watermarktextdraws[playerid][6], 1);
    PlayerTextDrawColor(playerid, Watermarktextdraws[playerid][6], -1);
    PlayerTextDrawSetShadow(playerid, Watermarktextdraws[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, Watermarktextdraws[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, Watermarktextdraws[playerid][6], 150);
    PlayerTextDrawFont(playerid, Watermarktextdraws[playerid][6], 1);
    PlayerTextDrawSetProportional(playerid, Watermarktextdraws[playerid][6], 1);

    Watermarktextdraws[playerid][7] = CreatePlayerTextDraw(playerid, 324.200, 17.000, "/");
    PlayerTextDrawLetterSize(playerid, Watermarktextdraws[playerid][7], 0.330, 0.999);
    PlayerTextDrawAlignment(playerid, Watermarktextdraws[playerid][7], 1);
    PlayerTextDrawColor(playerid, Watermarktextdraws[playerid][7], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, Watermarktextdraws[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, Watermarktextdraws[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, Watermarktextdraws[playerid][7], 150);
    PlayerTextDrawFont(playerid, Watermarktextdraws[playerid][7], 1);
    PlayerTextDrawSetProportional(playerid, Watermarktextdraws[playerid][7], 1);

    Watermarktextdraws[playerid][8] = CreatePlayerTextDraw(playerid, 329.000, 23.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, Watermarktextdraws[playerid][8], 2.000, -2.000);
    PlayerTextDrawAlignment(playerid, Watermarktextdraws[playerid][8], 1);
    PlayerTextDrawColor(playerid, Watermarktextdraws[playerid][8], -1);
    PlayerTextDrawSetShadow(playerid, Watermarktextdraws[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, Watermarktextdraws[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, Watermarktextdraws[playerid][8], 255);
    PlayerTextDrawFont(playerid, Watermarktextdraws[playerid][8], 4);
    PlayerTextDrawSetProportional(playerid, Watermarktextdraws[playerid][8], 1);

    Watermarktextdraws[playerid][9] = CreatePlayerTextDraw(playerid, 329.299, 23.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, Watermarktextdraws[playerid][9], 3.198, -1.700);
    PlayerTextDrawAlignment(playerid, Watermarktextdraws[playerid][9], 1);
    PlayerTextDrawColor(playerid, Watermarktextdraws[playerid][9], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, Watermarktextdraws[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, Watermarktextdraws[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, Watermarktextdraws[playerid][9], 255);
    PlayerTextDrawFont(playerid, Watermarktextdraws[playerid][9], 4);
    PlayerTextDrawSetProportional(playerid, Watermarktextdraws[playerid][9], 1);

    Watermarktextdraws[playerid][10] = CreatePlayerTextDraw(playerid, 331.000, 16.000, "/");
    PlayerTextDrawLetterSize(playerid, Watermarktextdraws[playerid][10], 0.270, 0.698);
    PlayerTextDrawAlignment(playerid, Watermarktextdraws[playerid][10], 1);
    PlayerTextDrawColor(playerid, Watermarktextdraws[playerid][10], -1);
    PlayerTextDrawSetShadow(playerid, Watermarktextdraws[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, Watermarktextdraws[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, Watermarktextdraws[playerid][10], 150);
    PlayerTextDrawFont(playerid, Watermarktextdraws[playerid][10], 1);
    PlayerTextDrawSetProportional(playerid, Watermarktextdraws[playerid][10], 1);

    Watermarktextdraws[playerid][11] = CreatePlayerTextDraw(playerid, 331.000, 16.000, "/");
    PlayerTextDrawLetterSize(playerid, Watermarktextdraws[playerid][11], 0.270, 0.698);
    PlayerTextDrawAlignment(playerid, Watermarktextdraws[playerid][11], 1);
    PlayerTextDrawColor(playerid, Watermarktextdraws[playerid][11], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, Watermarktextdraws[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, Watermarktextdraws[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, Watermarktextdraws[playerid][11], 150);
    PlayerTextDrawFont(playerid, Watermarktextdraws[playerid][11], 1);
    PlayerTextDrawSetProportional(playerid, Watermarktextdraws[playerid][11], 1);

    Watermarktextdraws[playerid][12] = CreatePlayerTextDraw(playerid, 338.000, 16.000, "/");
    PlayerTextDrawLetterSize(playerid, Watermarktextdraws[playerid][12], -0.349, 0.797);
    PlayerTextDrawAlignment(playerid, Watermarktextdraws[playerid][12], 1);
    PlayerTextDrawColor(playerid, Watermarktextdraws[playerid][12], -1);
    PlayerTextDrawSetShadow(playerid, Watermarktextdraws[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, Watermarktextdraws[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, Watermarktextdraws[playerid][12], 150);
    PlayerTextDrawFont(playerid, Watermarktextdraws[playerid][12], 1);
    PlayerTextDrawSetProportional(playerid, Watermarktextdraws[playerid][12], 1);

    Watermarktextdraws[playerid][13] = CreatePlayerTextDraw(playerid, 338.000, 16.000, "/");
    PlayerTextDrawLetterSize(playerid, Watermarktextdraws[playerid][13], -0.349, 0.797);
    PlayerTextDrawAlignment(playerid, Watermarktextdraws[playerid][13], 1);
    PlayerTextDrawColor(playerid, Watermarktextdraws[playerid][13], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, Watermarktextdraws[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, Watermarktextdraws[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, Watermarktextdraws[playerid][13], 150);
    PlayerTextDrawFont(playerid, Watermarktextdraws[playerid][13], 1);
    PlayerTextDrawSetProportional(playerid, Watermarktextdraws[playerid][13], 1);

    Watermarktextdraws[playerid][14] = CreatePlayerTextDraw(playerid, 328.799, 25.798, "TTR");
    PlayerTextDrawLetterSize(playerid, Watermarktextdraws[playerid][14], 0.270, 1.098);
    PlayerTextDrawAlignment(playerid, Watermarktextdraws[playerid][14], 2);
    PlayerTextDrawColor(playerid, Watermarktextdraws[playerid][14], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, Watermarktextdraws[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, Watermarktextdraws[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, Watermarktextdraws[playerid][14], -92245249);
    PlayerTextDrawFont(playerid, Watermarktextdraws[playerid][14], 1);
    PlayerTextDrawSetProportional(playerid, Watermarktextdraws[playerid][14], 1);

    Watermarktextdraws[playerid][15] = CreatePlayerTextDraw(playerid, 334.000, 13.000, "/");
    PlayerTextDrawLetterSize(playerid, Watermarktextdraws[playerid][15], -0.349, 0.797);
    PlayerTextDrawAlignment(playerid, Watermarktextdraws[playerid][15], 1);
    PlayerTextDrawColor(playerid, Watermarktextdraws[playerid][15], -1);
    PlayerTextDrawSetShadow(playerid, Watermarktextdraws[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, Watermarktextdraws[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, Watermarktextdraws[playerid][15], 150);
    PlayerTextDrawFont(playerid, Watermarktextdraws[playerid][15], 1);
    PlayerTextDrawSetProportional(playerid, Watermarktextdraws[playerid][15], 1);

    Watermarktextdraws[playerid][16] = CreatePlayerTextDraw(playerid, 334.000, 13.000, "/");
    PlayerTextDrawLetterSize(playerid, Watermarktextdraws[playerid][16], -0.349, 0.797);
    PlayerTextDrawAlignment(playerid, Watermarktextdraws[playerid][16], 1);
    PlayerTextDrawColor(playerid, Watermarktextdraws[playerid][16], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, Watermarktextdraws[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, Watermarktextdraws[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, Watermarktextdraws[playerid][16], 150);
    PlayerTextDrawFont(playerid, Watermarktextdraws[playerid][16], 1);
    PlayerTextDrawSetProportional(playerid, Watermarktextdraws[playerid][16], 1);*/

    // Taxi Argo
    PlayerTextdraws[playerid][textdraw_taxi][0] = CreatePlayerTextDraw(playerid, 67.000, 176.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, PlayerTextdraws[playerid][textdraw_taxi][0], 81.000, 38.000);
    PlayerTextDrawAlignment(playerid, PlayerTextdraws[playerid][textdraw_taxi][0], 1);
    PlayerTextDrawColor(playerid, PlayerTextdraws[playerid][textdraw_taxi][0], 150);
    PlayerTextDrawSetShadow(playerid, PlayerTextdraws[playerid][textdraw_taxi][0], 0);
    PlayerTextDrawSetOutline(playerid, PlayerTextdraws[playerid][textdraw_taxi][0], 0);
    PlayerTextDrawBackgroundColor(playerid, PlayerTextdraws[playerid][textdraw_taxi][0], 255);
    PlayerTextDrawFont(playerid, PlayerTextdraws[playerid][textdraw_taxi][0], 4);
    PlayerTextDrawSetProportional(playerid, PlayerTextdraws[playerid][textdraw_taxi][0], 1);

    PlayerTextdraws[playerid][textdraw_taxi][1] = CreatePlayerTextDraw(playerid, 86.000, 179.000, "Taxi Argo");
    PlayerTextDrawLetterSize(playerid, PlayerTextdraws[playerid][textdraw_taxi][1], 0.240, 0.999);
    PlayerTextDrawAlignment(playerid, PlayerTextdraws[playerid][textdraw_taxi][1], 1);
    PlayerTextDrawColor(playerid, PlayerTextdraws[playerid][textdraw_taxi][1], -1);
    PlayerTextDrawSetShadow(playerid, PlayerTextdraws[playerid][textdraw_taxi][1], 1);
    PlayerTextDrawSetOutline(playerid, PlayerTextdraws[playerid][textdraw_taxi][1], 1);
    PlayerTextDrawBackgroundColor(playerid, PlayerTextdraws[playerid][textdraw_taxi][1], 255);
    PlayerTextDrawFont(playerid, PlayerTextdraws[playerid][textdraw_taxi][1], 3);
    PlayerTextDrawSetProportional(playerid, PlayerTextdraws[playerid][textdraw_taxi][1], 1);

    PlayerTextdraws[playerid][textdraw_taxi][2] = CreatePlayerTextDraw(playerid, 73.000, 194.000, "$55");
    PlayerTextDrawLetterSize(playerid, PlayerTextdraws[playerid][textdraw_taxi][2], 0.240, 0.999);
    PlayerTextDrawAlignment(playerid, PlayerTextdraws[playerid][textdraw_taxi][2], 1);
    PlayerTextDrawColor(playerid, PlayerTextdraws[playerid][textdraw_taxi][2], -1);
    PlayerTextDrawSetShadow(playerid, PlayerTextdraws[playerid][textdraw_taxi][2], 1);
    PlayerTextDrawSetOutline(playerid, PlayerTextdraws[playerid][textdraw_taxi][2], 1);
    PlayerTextDrawBackgroundColor(playerid, PlayerTextdraws[playerid][textdraw_taxi][2], 255);
    PlayerTextDrawFont(playerid, PlayerTextdraws[playerid][textdraw_taxi][2], 1);
    PlayerTextDrawSetProportional(playerid, PlayerTextdraws[playerid][textdraw_taxi][2], 1);
    
    // Vehicle
	SPEEDONEW[playerid][0] = CreatePlayerTextDraw(playerid, 222.000, 384.000, "ld_bum:blkdot");
    PlayerTextDrawLetterSize(playerid, SPEEDONEW[playerid][0], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, SPEEDONEW[playerid][0], 12.500, 47.500);
    PlayerTextDrawAlignment(playerid, SPEEDONEW[playerid][0], 1);
    PlayerTextDrawColor(playerid, SPEEDONEW[playerid][0], 842150655);
    PlayerTextDrawUseBox(playerid, SPEEDONEW[playerid][0], 1);
    PlayerTextDrawBoxColor(playerid, SPEEDONEW[playerid][0], 50);
    PlayerTextDrawSetShadow(playerid, SPEEDONEW[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, SPEEDONEW[playerid][0], 1);
    PlayerTextDrawBackgroundColor(playerid, SPEEDONEW[playerid][0], 255);
    PlayerTextDrawFont(playerid, SPEEDONEW[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, SPEEDONEW[playerid][0], 1);

    SPEEDONEW[playerid][1] = CreatePlayerTextDraw(playerid, 224.000, 387.000, "ld_bum:blkdot");
    PlayerTextDrawLetterSize(playerid, SPEEDONEW[playerid][1], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, SPEEDONEW[playerid][1], 8.500, 41.000);
    PlayerTextDrawAlignment(playerid, SPEEDONEW[playerid][1], 1);
    PlayerTextDrawColor(playerid, SPEEDONEW[playerid][1], 168430335);
    PlayerTextDrawUseBox(playerid, SPEEDONEW[playerid][1], 1);
    PlayerTextDrawBoxColor(playerid, SPEEDONEW[playerid][1], 50);
    PlayerTextDrawSetShadow(playerid, SPEEDONEW[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, SPEEDONEW[playerid][1], 1);
    PlayerTextDrawBackgroundColor(playerid, SPEEDONEW[playerid][1], 255);
    PlayerTextDrawFont(playerid, SPEEDONEW[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, SPEEDONEW[playerid][1], 1);

    SPEEDONEW[playerid][2] = CreatePlayerTextDraw(playerid, 182.000, 413.000, "000");
    PlayerTextDrawLetterSize(playerid, SPEEDONEW[playerid][2], 0.298, 1.149);
    PlayerTextDrawTextSize(playerid, SPEEDONEW[playerid][2], 40.500, 85.500);
    PlayerTextDrawAlignment(playerid, SPEEDONEW[playerid][2], 2);
    PlayerTextDrawColor(playerid, SPEEDONEW[playerid][2], -1);
    PlayerTextDrawSetShadow(playerid, SPEEDONEW[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, SPEEDONEW[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, SPEEDONEW[playerid][2], 255);
    PlayerTextDrawFont(playerid, SPEEDONEW[playerid][2], 1);
    PlayerTextDrawSetProportional(playerid, SPEEDONEW[playerid][2], 1);

    SPEEDONEW[playerid][3] = CreatePlayerTextDraw(playerid, 190.000, 403.000, "KMH");
    PlayerTextDrawLetterSize(playerid, SPEEDONEW[playerid][3], 0.186, 0.799);
    PlayerTextDrawTextSize(playerid, SPEEDONEW[playerid][3], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, SPEEDONEW[playerid][3], 1);
    PlayerTextDrawColor(playerid, SPEEDONEW[playerid][3], -1);
    PlayerTextDrawSetShadow(playerid, SPEEDONEW[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, SPEEDONEW[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, SPEEDONEW[playerid][3], 255);
    PlayerTextDrawFont(playerid, SPEEDONEW[playerid][3], 1);
    PlayerTextDrawSetProportional(playerid, SPEEDONEW[playerid][3], 1);

    SPEEDONEW[playerid][4] = CreatePlayerTextDraw(playerid, 184.000, 433.000, "The High Roller // 22.01");
    PlayerTextDrawLetterSize(playerid, SPEEDONEW[playerid][4], 0.148, 0.899);
    PlayerTextDrawTextSize(playerid, SPEEDONEW[playerid][4], 400.000, 168.500);
    PlayerTextDrawAlignment(playerid, SPEEDONEW[playerid][4], 2);
    PlayerTextDrawColor(playerid, SPEEDONEW[playerid][4], -1);
    PlayerTextDrawSetShadow(playerid, SPEEDONEW[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, SPEEDONEW[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, SPEEDONEW[playerid][4], 255);
    PlayerTextDrawFont(playerid, SPEEDONEW[playerid][4], 1);
    PlayerTextDrawSetProportional(playerid, SPEEDONEW[playerid][4], 1);

    SPEEDONEW[playerid][5] = CreatePlayerTextDraw(playerid, 169.000, 424.000, "ld_bum:blkdot");
    PlayerTextDrawLetterSize(playerid, SPEEDONEW[playerid][5], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, SPEEDONEW[playerid][5], 25.500, 1.500);
    PlayerTextDrawAlignment(playerid, SPEEDONEW[playerid][5], 1);
    PlayerTextDrawColor(playerid, SPEEDONEW[playerid][5], 336860415);
    PlayerTextDrawUseBox(playerid, SPEEDONEW[playerid][5], 1);
    PlayerTextDrawBoxColor(playerid, SPEEDONEW[playerid][5], 50);
    PlayerTextDrawSetShadow(playerid, SPEEDONEW[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, SPEEDONEW[playerid][5], 1);
    PlayerTextDrawBackgroundColor(playerid, SPEEDONEW[playerid][5], 255);
    PlayerTextDrawFont(playerid, SPEEDONEW[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, SPEEDONEW[playerid][5], 1);

    SPEEDONEW[playerid][6] = CreatePlayerTextDraw(playerid, 163.000, 427.500, "ld_bum:blkdot");
    PlayerTextDrawLetterSize(playerid, SPEEDONEW[playerid][6], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, SPEEDONEW[playerid][6], 36.000, 1.500);
    PlayerTextDrawAlignment(playerid, SPEEDONEW[playerid][6], 1);
    PlayerTextDrawColor(playerid, SPEEDONEW[playerid][6], 336860415);
    PlayerTextDrawUseBox(playerid, SPEEDONEW[playerid][6], 1);
    PlayerTextDrawBoxColor(playerid, SPEEDONEW[playerid][6], 50);
    PlayerTextDrawSetShadow(playerid, SPEEDONEW[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, SPEEDONEW[playerid][6], 1);
    PlayerTextDrawBackgroundColor(playerid, SPEEDONEW[playerid][6], 255);
    PlayerTextDrawFont(playerid, SPEEDONEW[playerid][6], 4);
    PlayerTextDrawSetProportional(playerid, SPEEDONEW[playerid][6], 1);

    SPEEDONEW[playerid][7] = CreatePlayerTextDraw(playerid, 158.000, 431.000, "ld_bum:blkdot");
    PlayerTextDrawLetterSize(playerid, SPEEDONEW[playerid][7], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, SPEEDONEW[playerid][7], 45.000, 1.500);
    PlayerTextDrawAlignment(playerid, SPEEDONEW[playerid][7], 1);
    PlayerTextDrawColor(playerid, SPEEDONEW[playerid][7], 336860415);
    PlayerTextDrawUseBox(playerid, SPEEDONEW[playerid][7], 1);
    PlayerTextDrawBoxColor(playerid, SPEEDONEW[playerid][7], 50);
    PlayerTextDrawSetShadow(playerid, SPEEDONEW[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, SPEEDONEW[playerid][7], 1);
    PlayerTextDrawBackgroundColor(playerid, SPEEDONEW[playerid][7], 255);
    PlayerTextDrawFont(playerid, SPEEDONEW[playerid][7], 4);
    PlayerTextDrawSetProportional(playerid, SPEEDONEW[playerid][7], 1);

    SPEEDONEW[playerid][8] = CreatePlayerTextDraw(playerid, 224.000, 428.000, "ld_bum:blkdot");
    PlayerTextDrawLetterSize(playerid, SPEEDONEW[playerid][8], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, SPEEDONEW[playerid][8], 8.500, -41.000);
    PlayerTextDrawAlignment(playerid, SPEEDONEW[playerid][8], 1);
    PlayerTextDrawColor(playerid, SPEEDONEW[playerid][8], 848710655);
    PlayerTextDrawUseBox(playerid, SPEEDONEW[playerid][8], 1);
    PlayerTextDrawBoxColor(playerid, SPEEDONEW[playerid][8], 50);
    PlayerTextDrawSetShadow(playerid, SPEEDONEW[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, SPEEDONEW[playerid][8], 1);
    PlayerTextDrawBackgroundColor(playerid, SPEEDONEW[playerid][8], 255);
    PlayerTextDrawFont(playerid, SPEEDONEW[playerid][8], 4);
    PlayerTextDrawSetProportional(playerid, SPEEDONEW[playerid][8], 1);

    SPEEDONEW[playerid][9] = CreatePlayerTextDraw(playerid, 226.000, 418.000, "F");
    PlayerTextDrawLetterSize(playerid, SPEEDONEW[playerid][9], 0.221, 1.149);
    PlayerTextDrawTextSize(playerid, SPEEDONEW[playerid][9], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, SPEEDONEW[playerid][9], 1);
    PlayerTextDrawColor(playerid, SPEEDONEW[playerid][9], 842150655);
    PlayerTextDrawSetShadow(playerid, SPEEDONEW[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, SPEEDONEW[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, SPEEDONEW[playerid][9], 255);
    PlayerTextDrawFont(playerid, SPEEDONEW[playerid][9], 1);
    PlayerTextDrawSetProportional(playerid, SPEEDONEW[playerid][9], 1);

    SPEEDONEW[playerid][10] = CreatePlayerTextDraw(playerid, 211.000, 418.000, "H");
    PlayerTextDrawLetterSize(playerid, SPEEDONEW[playerid][10], 0.221, 1.149);
    PlayerTextDrawTextSize(playerid, SPEEDONEW[playerid][10], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, SPEEDONEW[playerid][10], 1);
    PlayerTextDrawColor(playerid, SPEEDONEW[playerid][10], 842150655);
    PlayerTextDrawSetShadow(playerid, SPEEDONEW[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, SPEEDONEW[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, SPEEDONEW[playerid][10], 255);
    PlayerTextDrawFont(playerid, SPEEDONEW[playerid][10], 1);
    PlayerTextDrawSetProportional(playerid, SPEEDONEW[playerid][10], 1);

    SPEEDONEW[playerid][11] = CreatePlayerTextDraw(playerid, 207.000, 384.000, "ld_bum:blkdot");
    PlayerTextDrawLetterSize(playerid, SPEEDONEW[playerid][11], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, SPEEDONEW[playerid][11], 12.500, 47.500);
    PlayerTextDrawAlignment(playerid, SPEEDONEW[playerid][11], 1);
    PlayerTextDrawColor(playerid, SPEEDONEW[playerid][11], 842150655);
    PlayerTextDrawUseBox(playerid, SPEEDONEW[playerid][11], 1);
    PlayerTextDrawBoxColor(playerid, SPEEDONEW[playerid][11], 50);
    PlayerTextDrawSetShadow(playerid, SPEEDONEW[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, SPEEDONEW[playerid][11], 1);
    PlayerTextDrawBackgroundColor(playerid, SPEEDONEW[playerid][11], 255);
    PlayerTextDrawFont(playerid, SPEEDONEW[playerid][11], 4);
    PlayerTextDrawSetProportional(playerid, SPEEDONEW[playerid][11], 1);

    SPEEDONEW[playerid][12] = CreatePlayerTextDraw(playerid, 209.000, 387.000, "ld_bum:blkdot");
    PlayerTextDrawLetterSize(playerid, SPEEDONEW[playerid][12], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, SPEEDONEW[playerid][12], 8.500, 41.000);
    PlayerTextDrawAlignment(playerid, SPEEDONEW[playerid][12], 1);
    PlayerTextDrawColor(playerid, SPEEDONEW[playerid][12], 168430335);
    PlayerTextDrawUseBox(playerid, SPEEDONEW[playerid][12], 1);
    PlayerTextDrawBoxColor(playerid, SPEEDONEW[playerid][12], 50);
    PlayerTextDrawSetShadow(playerid, SPEEDONEW[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, SPEEDONEW[playerid][12], 1);
    PlayerTextDrawBackgroundColor(playerid, SPEEDONEW[playerid][12], 255);
    PlayerTextDrawFont(playerid, SPEEDONEW[playerid][12], 4);
    PlayerTextDrawSetProportional(playerid, SPEEDONEW[playerid][12], 1);

    SPEEDONEW[playerid][13] = CreatePlayerTextDraw(playerid, 209.000, 428.000, "ld_bum:blkdot");
    PlayerTextDrawLetterSize(playerid, SPEEDONEW[playerid][13], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, SPEEDONEW[playerid][13], 8.500, -41.000);
    PlayerTextDrawAlignment(playerid, SPEEDONEW[playerid][13], 1);
    PlayerTextDrawColor(playerid, SPEEDONEW[playerid][13], -1);
    PlayerTextDrawUseBox(playerid, SPEEDONEW[playerid][13], 1);
    PlayerTextDrawBoxColor(playerid, SPEEDONEW[playerid][13], 50);
    PlayerTextDrawSetShadow(playerid, SPEEDONEW[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, SPEEDONEW[playerid][13], 1);
    PlayerTextDrawBackgroundColor(playerid, SPEEDONEW[playerid][13], 255);
    PlayerTextDrawFont(playerid, SPEEDONEW[playerid][13], 4);
    PlayerTextDrawSetProportional(playerid, SPEEDONEW[playerid][13], 1);

    //Sks
    SksTextdraws[playerid][0] = CreatePlayerTextDraw(playerid, 319.000, 48.000, "_");
    PlayerTextDrawLetterSize(playerid, SksTextdraws[playerid][0], 1.049, 37.400);
    PlayerTextDrawTextSize(playerid, SksTextdraws[playerid][0], 348.500, 270.000);
    PlayerTextDrawAlignment(playerid, SksTextdraws[playerid][0], 2);
    PlayerTextDrawColor(playerid, SksTextdraws[playerid][0], -1);
    PlayerTextDrawUseBox(playerid, SksTextdraws[playerid][0], 1);
    PlayerTextDrawBoxColor(playerid, SksTextdraws[playerid][0], -741092353);
    PlayerTextDrawSetShadow(playerid, SksTextdraws[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, SksTextdraws[playerid][0], 1);
    PlayerTextDrawBackgroundColor(playerid, SksTextdraws[playerid][0], 255);
    PlayerTextDrawFont(playerid, SksTextdraws[playerid][0], 1);
    PlayerTextDrawSetProportional(playerid, SksTextdraws[playerid][0], 1);

    SksTextdraws[playerid][1] = CreatePlayerTextDraw(playerid, 395.000, 58.000, "SURAT KETERANGAN SEHAT");
    PlayerTextDrawLetterSize(playerid, SksTextdraws[playerid][1], 0.375, 1.748);
    PlayerTextDrawTextSize(playerid, SksTextdraws[playerid][1], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, SksTextdraws[playerid][1], 3);
    PlayerTextDrawColor(playerid, SksTextdraws[playerid][1], 255);
    PlayerTextDrawSetShadow(playerid, SksTextdraws[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, SksTextdraws[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, SksTextdraws[playerid][1], 255);
    PlayerTextDrawFont(playerid, SksTextdraws[playerid][1], 1);
    PlayerTextDrawSetProportional(playerid, SksTextdraws[playerid][1], 1);

    SksTextdraws[playerid][2] = CreatePlayerTextDraw(playerid, 416.000, 75.000, "DINAS KESEHATAN KOTA Astral City");
    PlayerTextDrawLetterSize(playerid, SksTextdraws[playerid][2], 0.375, 1.748);
    PlayerTextDrawTextSize(playerid, SksTextdraws[playerid][2], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, SksTextdraws[playerid][2], 3);
    PlayerTextDrawColor(playerid, SksTextdraws[playerid][2], 255);
    PlayerTextDrawSetShadow(playerid, SksTextdraws[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, SksTextdraws[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, SksTextdraws[playerid][2], 255);
    PlayerTextDrawFont(playerid, SksTextdraws[playerid][2], 1);
    PlayerTextDrawSetProportional(playerid, SksTextdraws[playerid][2], 1);

    SksTextdraws[playerid][3] = CreatePlayerTextDraw(playerid, 319.000, 99.000, "_");
    PlayerTextDrawLetterSize(playerid, SksTextdraws[playerid][3], 0.600, -0.199);
    PlayerTextDrawTextSize(playerid, SksTextdraws[playerid][3], 298.500, 265.000);
    PlayerTextDrawAlignment(playerid, SksTextdraws[playerid][3], 2);
    PlayerTextDrawColor(playerid, SksTextdraws[playerid][3], -1);
    PlayerTextDrawUseBox(playerid, SksTextdraws[playerid][3], 1);
    PlayerTextDrawBoxColor(playerid, SksTextdraws[playerid][3], 255);
    PlayerTextDrawSetShadow(playerid, SksTextdraws[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, SksTextdraws[playerid][3], 1);
    PlayerTextDrawBackgroundColor(playerid, SksTextdraws[playerid][3], 255);
    PlayerTextDrawFont(playerid, SksTextdraws[playerid][3], 1);
    PlayerTextDrawSetProportional(playerid, SksTextdraws[playerid][3], 1);

    SksTextdraws[playerid][4] = CreatePlayerTextDraw(playerid, 398.000, 104.000, "JKSN/AE25/pKy8/0000 Dinas Kesehatan KOTA Astral City");
    PlayerTextDrawLetterSize(playerid, SksTextdraws[playerid][4], 0.136, 0.898);
    PlayerTextDrawTextSize(playerid, SksTextdraws[playerid][4], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, SksTextdraws[playerid][4], 1);
    PlayerTextDrawColor(playerid, SksTextdraws[playerid][4], 255);
    PlayerTextDrawSetShadow(playerid, SksTextdraws[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, SksTextdraws[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, SksTextdraws[playerid][4], 255);
    PlayerTextDrawFont(playerid, SksTextdraws[playerid][4], 1);
    PlayerTextDrawSetProportional(playerid, SksTextdraws[playerid][4], 1);

    SksTextdraws[playerid][5] = CreatePlayerTextDraw(playerid, 207.000, 147.000, "Dengan ini kami pihak rumah sakit KOTA Astral City mengeluarkan surat keterangan sehat atau SKS kepada saudara/i");
    PlayerTextDrawLetterSize(playerid, SksTextdraws[playerid][5], 0.170, 1.450);
    PlayerTextDrawTextSize(playerid, SksTextdraws[playerid][5], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, SksTextdraws[playerid][5], 1);
    PlayerTextDrawColor(playerid, SksTextdraws[playerid][5], 255);
    PlayerTextDrawSetShadow(playerid, SksTextdraws[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, SksTextdraws[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, SksTextdraws[playerid][5], 255);
    PlayerTextDrawFont(playerid, SksTextdraws[playerid][5], 1);
    PlayerTextDrawSetProportional(playerid, SksTextdraws[playerid][5], 1);

    SksTextdraws[playerid][6] = CreatePlayerTextDraw(playerid, 209.000, 195.000, "Nama                 :");
    PlayerTextDrawLetterSize(playerid, SksTextdraws[playerid][6], 0.153, 1.248);
    PlayerTextDrawTextSize(playerid, SksTextdraws[playerid][6], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, SksTextdraws[playerid][6], 1);
    PlayerTextDrawColor(playerid, SksTextdraws[playerid][6], 255);
    PlayerTextDrawSetShadow(playerid, SksTextdraws[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, SksTextdraws[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, SksTextdraws[playerid][6], 255);
    PlayerTextDrawFont(playerid, SksTextdraws[playerid][6], 1);
    PlayerTextDrawSetProportional(playerid, SksTextdraws[playerid][6], 1);

    SksTextdraws[playerid][7] = CreatePlayerTextDraw(playerid, 209.000, 205.000, "Alamat               :");
    PlayerTextDrawLetterSize(playerid, SksTextdraws[playerid][7], 0.158, 1.299);
    PlayerTextDrawTextSize(playerid, SksTextdraws[playerid][7], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, SksTextdraws[playerid][7], 1);
    PlayerTextDrawColor(playerid, SksTextdraws[playerid][7], 255);
    PlayerTextDrawSetShadow(playerid, SksTextdraws[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, SksTextdraws[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, SksTextdraws[playerid][7], 255);
    PlayerTextDrawFont(playerid, SksTextdraws[playerid][7], 1);
    PlayerTextDrawSetProportional(playerid, SksTextdraws[playerid][7], 1);

    SksTextdraws[playerid][8] = CreatePlayerTextDraw(playerid, 209.000, 217.000, "Tempat & Tgl Lahir  :");
    PlayerTextDrawLetterSize(playerid, SksTextdraws[playerid][8], 0.158, 1.299);
    PlayerTextDrawTextSize(playerid, SksTextdraws[playerid][8], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, SksTextdraws[playerid][8], 1);
    PlayerTextDrawColor(playerid, SksTextdraws[playerid][8], 255);
    PlayerTextDrawSetShadow(playerid, SksTextdraws[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, SksTextdraws[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, SksTextdraws[playerid][8], 255);
    PlayerTextDrawFont(playerid, SksTextdraws[playerid][8], 1);
    PlayerTextDrawSetProportional(playerid, SksTextdraws[playerid][8], 1);

    SksTextdraws[playerid][9] = CreatePlayerTextDraw(playerid, 382.000, 287.000, "bersi dari narkob* dan tidak curi ayam");
    PlayerTextDrawLetterSize(playerid, SksTextdraws[playerid][9], 0.229, 1.950);
    PlayerTextDrawTextSize(playerid, SksTextdraws[playerid][9], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, SksTextdraws[playerid][9], 3);
    PlayerTextDrawColor(playerid, SksTextdraws[playerid][9], 255);
    PlayerTextDrawSetShadow(playerid, SksTextdraws[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, SksTextdraws[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, SksTextdraws[playerid][9], 255);
    PlayerTextDrawFont(playerid, SksTextdraws[playerid][9], 1);
    PlayerTextDrawSetProportional(playerid, SksTextdraws[playerid][9], 1);

    SksTextdraws[playerid][10] = CreatePlayerTextDraw(playerid, 268.000, 217.000, "11/01/2000");
    PlayerTextDrawLetterSize(playerid, SksTextdraws[playerid][10], 0.158, 1.299);
    PlayerTextDrawTextSize(playerid, SksTextdraws[playerid][10], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, SksTextdraws[playerid][10], 1);
    PlayerTextDrawColor(playerid, SksTextdraws[playerid][10], 255);
    PlayerTextDrawSetShadow(playerid, SksTextdraws[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, SksTextdraws[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, SksTextdraws[playerid][10], 255);
    PlayerTextDrawFont(playerid, SksTextdraws[playerid][10], 1);
    PlayerTextDrawSetProportional(playerid, SksTextdraws[playerid][10], 1);

    SksTextdraws[playerid][11] = CreatePlayerTextDraw(playerid, 269.000, 205.000, "Los Santos");
    PlayerTextDrawLetterSize(playerid, SksTextdraws[playerid][11], 0.158, 1.299);
    PlayerTextDrawTextSize(playerid, SksTextdraws[playerid][11], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, SksTextdraws[playerid][11], 1);
    PlayerTextDrawColor(playerid, SksTextdraws[playerid][11], 255);
    PlayerTextDrawSetShadow(playerid, SksTextdraws[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, SksTextdraws[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, SksTextdraws[playerid][11], 255);
    PlayerTextDrawFont(playerid, SksTextdraws[playerid][11], 1);
    PlayerTextDrawSetProportional(playerid, SksTextdraws[playerid][11], 1);

    SksTextdraws[playerid][12] = CreatePlayerTextDraw(playerid, 203.000, 243.000, "Menyatakan bahwa saudara/i tersebut telah lolos uji kesehata dengan dokter kami, dan dalam hasil pemeriksaan bahwa pasien denga");
    PlayerTextDrawLetterSize(playerid, SksTextdraws[playerid][12], 0.165, 1.299);
    PlayerTextDrawTextSize(playerid, SksTextdraws[playerid][12], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, SksTextdraws[playerid][12], 1);
    PlayerTextDrawColor(playerid, SksTextdraws[playerid][12], 255);
    PlayerTextDrawSetShadow(playerid, SksTextdraws[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, SksTextdraws[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, SksTextdraws[playerid][12], 255);
    PlayerTextDrawFont(playerid, SksTextdraws[playerid][12], 1);
    PlayerTextDrawSetProportional(playerid, SksTextdraws[playerid][12], 1);

    SksTextdraws[playerid][13] = CreatePlayerTextDraw(playerid, 203.000, 266.000, "Data yang tertulis diatas dinyatakan :");
    PlayerTextDrawLetterSize(playerid, SksTextdraws[playerid][13], 0.144, 1.350);
    PlayerTextDrawTextSize(playerid, SksTextdraws[playerid][13], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, SksTextdraws[playerid][13], 1);
    PlayerTextDrawColor(playerid, SksTextdraws[playerid][13], 255);
    PlayerTextDrawSetShadow(playerid, SksTextdraws[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, SksTextdraws[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, SksTextdraws[playerid][13], 255);
    PlayerTextDrawFont(playerid, SksTextdraws[playerid][13], 1);
    PlayerTextDrawSetProportional(playerid, SksTextdraws[playerid][13], 1);

    SksTextdraws[playerid][14] = CreatePlayerTextDraw(playerid, 203.000, 266.000, "Data yang tertulis diatas dinyatakan :");
    PlayerTextDrawLetterSize(playerid, SksTextdraws[playerid][14], 0.144, 1.350);
    PlayerTextDrawTextSize(playerid, SksTextdraws[playerid][14], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, SksTextdraws[playerid][14], 1);
    PlayerTextDrawColor(playerid, SksTextdraws[playerid][14], 255);
    PlayerTextDrawSetShadow(playerid, SksTextdraws[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, SksTextdraws[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, SksTextdraws[playerid][14], 255);
    PlayerTextDrawFont(playerid, SksTextdraws[playerid][14], 1);
    PlayerTextDrawSetProportional(playerid, SksTextdraws[playerid][14], 1);

    SksTextdraws[playerid][15] = CreatePlayerTextDraw(playerid, 318.000, 308.000, "_");
    PlayerTextDrawLetterSize(playerid, SksTextdraws[playerid][15], 0.600, -0.398);
    PlayerTextDrawTextSize(playerid, SksTextdraws[playerid][15], 293.000, 206.500);
    PlayerTextDrawAlignment(playerid, SksTextdraws[playerid][15], 2);
    PlayerTextDrawColor(playerid, SksTextdraws[playerid][15], -1);
    PlayerTextDrawUseBox(playerid, SksTextdraws[playerid][15], 1);
    PlayerTextDrawBoxColor(playerid, SksTextdraws[playerid][15], 255);
    PlayerTextDrawSetShadow(playerid, SksTextdraws[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, SksTextdraws[playerid][15], 1);
    PlayerTextDrawBackgroundColor(playerid, SksTextdraws[playerid][15], 255);
    PlayerTextDrawFont(playerid, SksTextdraws[playerid][15], 1);
    PlayerTextDrawSetProportional(playerid, SksTextdraws[playerid][15], 1);

    SksTextdraws[playerid][16] = CreatePlayerTextDraw(playerid, 199.000, 327.000, "TTD Dokter/Perawat");
    PlayerTextDrawLetterSize(playerid, SksTextdraws[playerid][16], 0.136, 0.898);
    PlayerTextDrawTextSize(playerid, SksTextdraws[playerid][16], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, SksTextdraws[playerid][16], 1);
    PlayerTextDrawColor(playerid, SksTextdraws[playerid][16], 255);
    PlayerTextDrawSetShadow(playerid, SksTextdraws[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, SksTextdraws[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, SksTextdraws[playerid][16], 255);
    PlayerTextDrawFont(playerid, SksTextdraws[playerid][16], 1);
    PlayerTextDrawSetProportional(playerid, SksTextdraws[playerid][16], 1);

    SksTextdraws[playerid][17] = CreatePlayerTextDraw(playerid, 205.000, 337.000, "Bang_Yud");
    PlayerTextDrawLetterSize(playerid, SksTextdraws[playerid][17], 0.136, 0.898);
    PlayerTextDrawTextSize(playerid, SksTextdraws[playerid][17], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, SksTextdraws[playerid][17], 1);
    PlayerTextDrawColor(playerid, SksTextdraws[playerid][17], 255);
    PlayerTextDrawSetShadow(playerid, SksTextdraws[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, SksTextdraws[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, SksTextdraws[playerid][17], 255);
    PlayerTextDrawFont(playerid, SksTextdraws[playerid][17], 1);
    PlayerTextDrawSetProportional(playerid, SksTextdraws[playerid][17], 1);

    SksTextdraws[playerid][18] = CreatePlayerTextDraw(playerid, 268.000, 195.000, "Udin_Racing");
    PlayerTextDrawLetterSize(playerid, SksTextdraws[playerid][18], 0.150, 1.299);
    PlayerTextDrawTextSize(playerid, SksTextdraws[playerid][18], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, SksTextdraws[playerid][18], 1);
    PlayerTextDrawColor(playerid, SksTextdraws[playerid][18], 255);
    PlayerTextDrawSetShadow(playerid, SksTextdraws[playerid][18], 0);
    PlayerTextDrawSetOutline(playerid, SksTextdraws[playerid][18], 0);
    PlayerTextDrawBackgroundColor(playerid, SksTextdraws[playerid][18], 255);
    PlayerTextDrawFont(playerid, SksTextdraws[playerid][18], 1);
    PlayerTextDrawSetProportional(playerid, SksTextdraws[playerid][18], 1);

    SksTextdraws[playerid][19] = CreatePlayerTextDraw(playerid, 407.000, 358.000, "#DINASKESEHATAN #KOTAAstral City");
    PlayerTextDrawLetterSize(playerid, SksTextdraws[playerid][19], 0.136, 0.898);
    PlayerTextDrawTextSize(playerid, SksTextdraws[playerid][19], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, SksTextdraws[playerid][19], 1);
    PlayerTextDrawColor(playerid, SksTextdraws[playerid][19], 255);
    PlayerTextDrawSetShadow(playerid, SksTextdraws[playerid][19], 0);
    PlayerTextDrawSetOutline(playerid, SksTextdraws[playerid][19], 0);
    PlayerTextDrawBackgroundColor(playerid, SksTextdraws[playerid][19], 255);
    PlayerTextDrawFont(playerid, SksTextdraws[playerid][19], 1);
    PlayerTextDrawSetProportional(playerid, SksTextdraws[playerid][19], 1);

    SksTextdraws[playerid][20] = CreatePlayerTextDraw(playerid, 209.000, 229.000, "Gender                :");
    PlayerTextDrawLetterSize(playerid, SksTextdraws[playerid][20], 0.158, 1.299);
    PlayerTextDrawTextSize(playerid, SksTextdraws[playerid][20], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, SksTextdraws[playerid][20], 1);
    PlayerTextDrawColor(playerid, SksTextdraws[playerid][20], 255);
    PlayerTextDrawSetShadow(playerid, SksTextdraws[playerid][20], 0);
    PlayerTextDrawSetOutline(playerid, SksTextdraws[playerid][20], 0);
    PlayerTextDrawBackgroundColor(playerid, SksTextdraws[playerid][20], 255);
    PlayerTextDrawFont(playerid, SksTextdraws[playerid][20], 1);
    PlayerTextDrawSetProportional(playerid, SksTextdraws[playerid][20], 1);

    SksTextdraws[playerid][21] = CreatePlayerTextDraw(playerid, 268.000, 227.000, "Perempuan");
    PlayerTextDrawLetterSize(playerid, SksTextdraws[playerid][21], 0.150, 1.299);
    PlayerTextDrawTextSize(playerid, SksTextdraws[playerid][21], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, SksTextdraws[playerid][21], 1);
    PlayerTextDrawColor(playerid, SksTextdraws[playerid][21], 255);
    PlayerTextDrawSetShadow(playerid, SksTextdraws[playerid][21], 0);
    PlayerTextDrawSetOutline(playerid, SksTextdraws[playerid][21], 0);
    PlayerTextDrawBackgroundColor(playerid, SksTextdraws[playerid][21], 255);
    PlayerTextDrawFont(playerid, SksTextdraws[playerid][21], 1);
    PlayerTextDrawSetProportional(playerid, SksTextdraws[playerid][21], 1);

    // Katepeh
    KTPTD[playerid][0] = CreatePlayerTextDraw(playerid, 505.000, 201.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, KTPTD[playerid][0], 131.000, 89.000);
    PlayerTextDrawAlignment(playerid, KTPTD[playerid][0], 1);
    PlayerTextDrawColor(playerid, KTPTD[playerid][0], -1);
    PlayerTextDrawSetShadow(playerid, KTPTD[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, KTPTD[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, KTPTD[playerid][0], 255);
    PlayerTextDrawFont(playerid, KTPTD[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, KTPTD[playerid][0], 1);

    KTPTD[playerid][1] = CreatePlayerTextDraw(playerid, 501.000, 188.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, KTPTD[playerid][1], 26.000, 27.000);
    PlayerTextDrawAlignment(playerid, KTPTD[playerid][1], 1);
    PlayerTextDrawColor(playerid, KTPTD[playerid][1], -1);
    PlayerTextDrawSetShadow(playerid, KTPTD[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, KTPTD[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, KTPTD[playerid][1], 255);
    PlayerTextDrawFont(playerid, KTPTD[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, KTPTD[playerid][1], 1);

    KTPTD[playerid][2] = CreatePlayerTextDraw(playerid, 614.000, 188.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, KTPTD[playerid][2], 26.000, 27.000);
    PlayerTextDrawAlignment(playerid, KTPTD[playerid][2], 1);
    PlayerTextDrawColor(playerid, KTPTD[playerid][2], -1);
    PlayerTextDrawSetShadow(playerid, KTPTD[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, KTPTD[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, KTPTD[playerid][2], 255);
    PlayerTextDrawFont(playerid, KTPTD[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, KTPTD[playerid][2], 1);

    KTPTD[playerid][3] = CreatePlayerTextDraw(playerid, 614.000, 278.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, KTPTD[playerid][3], 26.000, 27.000);
    PlayerTextDrawAlignment(playerid, KTPTD[playerid][3], 1);
    PlayerTextDrawColor(playerid, KTPTD[playerid][3], -1);
    PlayerTextDrawSetShadow(playerid, KTPTD[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, KTPTD[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, KTPTD[playerid][3], 255);
    PlayerTextDrawFont(playerid, KTPTD[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, KTPTD[playerid][3], 1);

    KTPTD[playerid][4] = CreatePlayerTextDraw(playerid, 501.000, 277.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, KTPTD[playerid][4], 26.000, 28.000);
    PlayerTextDrawAlignment(playerid, KTPTD[playerid][4], 1);
    PlayerTextDrawColor(playerid, KTPTD[playerid][4], -1);
    PlayerTextDrawSetShadow(playerid, KTPTD[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, KTPTD[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, KTPTD[playerid][4], 255);
    PlayerTextDrawFont(playerid, KTPTD[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, KTPTD[playerid][4], 1);

    KTPTD[playerid][5] = CreatePlayerTextDraw(playerid, 513.000, 192.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, KTPTD[playerid][5], 114.000, 109.000);
    PlayerTextDrawAlignment(playerid, KTPTD[playerid][5], 1);
    PlayerTextDrawColor(playerid, KTPTD[playerid][5], -1);
    PlayerTextDrawSetShadow(playerid, KTPTD[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, KTPTD[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, KTPTD[playerid][5], 255);
    PlayerTextDrawFont(playerid, KTPTD[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, KTPTD[playerid][5], 1);

    KTPTD[playerid][6] = CreatePlayerTextDraw(playerid, 569.000, 194.000, "KARTU TANDA PENDUDUK");
    PlayerTextDrawLetterSize(playerid, KTPTD[playerid][6], 0.210, 1.199);
    PlayerTextDrawAlignment(playerid, KTPTD[playerid][6], 2);
    PlayerTextDrawColor(playerid, KTPTD[playerid][6], 255);
    PlayerTextDrawSetShadow(playerid, KTPTD[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, KTPTD[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, KTPTD[playerid][6], 150);
    PlayerTextDrawFont(playerid, KTPTD[playerid][6], 1);
    PlayerTextDrawSetProportional(playerid, KTPTD[playerid][6], 1);

    KTPTD[playerid][7] = CreatePlayerTextDraw(playerid, 569.000, 205.000, "KOTA Astral City");
    PlayerTextDrawLetterSize(playerid, KTPTD[playerid][7], 0.190, 0.999);
    PlayerTextDrawAlignment(playerid, KTPTD[playerid][7], 2);
    PlayerTextDrawColor(playerid, KTPTD[playerid][7], 255);
    PlayerTextDrawSetShadow(playerid, KTPTD[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, KTPTD[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, KTPTD[playerid][7], 150);
    PlayerTextDrawFont(playerid, KTPTD[playerid][7], 1);
    PlayerTextDrawSetProportional(playerid, KTPTD[playerid][7], 1);

    KTPTD[playerid][8] = CreatePlayerTextDraw(playerid, 509.000, 218.000, "NIK");
    PlayerTextDrawLetterSize(playerid, KTPTD[playerid][8], 0.190, 1.299);
    PlayerTextDrawAlignment(playerid, KTPTD[playerid][8], 1);
    PlayerTextDrawColor(playerid, KTPTD[playerid][8], 255);
    PlayerTextDrawSetShadow(playerid, KTPTD[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, KTPTD[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, KTPTD[playerid][8], 150);
    PlayerTextDrawFont(playerid, KTPTD[playerid][8], 1);
    PlayerTextDrawSetProportional(playerid, KTPTD[playerid][8], 1);

    KTPTD[playerid][9] = CreatePlayerTextDraw(playerid, 525.000, 217.000, ":");
    PlayerTextDrawLetterSize(playerid, KTPTD[playerid][9], 0.190, 1.299);
    PlayerTextDrawAlignment(playerid, KTPTD[playerid][9], 1);
    PlayerTextDrawColor(playerid, KTPTD[playerid][9], 255);
    PlayerTextDrawSetShadow(playerid, KTPTD[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, KTPTD[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, KTPTD[playerid][9], 150);
    PlayerTextDrawFont(playerid, KTPTD[playerid][9], 1);
    PlayerTextDrawSetProportional(playerid, KTPTD[playerid][9], 1);

    KTPTD[playerid][10] = CreatePlayerTextDraw(playerid, 533.000, 217.000, "56092736133");
    PlayerTextDrawLetterSize(playerid, KTPTD[playerid][10], 0.190, 1.199);
    PlayerTextDrawAlignment(playerid, KTPTD[playerid][10], 1);
    PlayerTextDrawColor(playerid, KTPTD[playerid][10], 255);
    PlayerTextDrawSetShadow(playerid, KTPTD[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, KTPTD[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, KTPTD[playerid][10], 150);
    PlayerTextDrawFont(playerid, KTPTD[playerid][10], 2);
    PlayerTextDrawSetProportional(playerid, KTPTD[playerid][10], 1);

    KTPTD[playerid][11] = CreatePlayerTextDraw(playerid, 509.000, 239.000, "Nama");
    PlayerTextDrawLetterSize(playerid, KTPTD[playerid][11], 0.160, 0.899);
    PlayerTextDrawAlignment(playerid, KTPTD[playerid][11], 1);
    PlayerTextDrawColor(playerid, KTPTD[playerid][11], 255);
    PlayerTextDrawSetShadow(playerid, KTPTD[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, KTPTD[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, KTPTD[playerid][11], 150);
    PlayerTextDrawFont(playerid, KTPTD[playerid][11], 1);
    PlayerTextDrawSetProportional(playerid, KTPTD[playerid][11], 1);

    KTPTD[playerid][12] = CreatePlayerTextDraw(playerid, 509.000, 248.000, "Tanggal Lahir");
    PlayerTextDrawLetterSize(playerid, KTPTD[playerid][12], 0.160, 0.899);
    PlayerTextDrawAlignment(playerid, KTPTD[playerid][12], 1);
    PlayerTextDrawColor(playerid, KTPTD[playerid][12], 255);
    PlayerTextDrawSetShadow(playerid, KTPTD[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, KTPTD[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, KTPTD[playerid][12], 150);
    PlayerTextDrawFont(playerid, KTPTD[playerid][12], 1);
    PlayerTextDrawSetProportional(playerid, KTPTD[playerid][12], 1);

    KTPTD[playerid][13] = CreatePlayerTextDraw(playerid, 509.000, 256.000, "Jenis Kelamin");
    PlayerTextDrawLetterSize(playerid, KTPTD[playerid][13], 0.160, 0.899);
    PlayerTextDrawAlignment(playerid, KTPTD[playerid][13], 1);
    PlayerTextDrawColor(playerid, KTPTD[playerid][13], 255);
    PlayerTextDrawSetShadow(playerid, KTPTD[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, KTPTD[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, KTPTD[playerid][13], 150);
    PlayerTextDrawFont(playerid, KTPTD[playerid][13], 1);
    PlayerTextDrawSetProportional(playerid, KTPTD[playerid][13], 1);

    KTPTD[playerid][14] = CreatePlayerTextDraw(playerid, 509.000, 265.000, "Tinggi Badan");
    PlayerTextDrawLetterSize(playerid, KTPTD[playerid][14], 0.160, 0.899);
    PlayerTextDrawAlignment(playerid, KTPTD[playerid][14], 1);
    PlayerTextDrawColor(playerid, KTPTD[playerid][14], 255);
    PlayerTextDrawSetShadow(playerid, KTPTD[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, KTPTD[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, KTPTD[playerid][14], 150);
    PlayerTextDrawFont(playerid, KTPTD[playerid][14], 1);
    PlayerTextDrawSetProportional(playerid, KTPTD[playerid][14], 1);

    KTPTD[playerid][15] = CreatePlayerTextDraw(playerid, 509.000, 275.000, "Berlaku Hingga");
    PlayerTextDrawLetterSize(playerid, KTPTD[playerid][15], 0.160, 0.899);
    PlayerTextDrawAlignment(playerid, KTPTD[playerid][15], 1);
    PlayerTextDrawColor(playerid, KTPTD[playerid][15], 255);
    PlayerTextDrawSetShadow(playerid, KTPTD[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, KTPTD[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, KTPTD[playerid][15], 150);
    PlayerTextDrawFont(playerid, KTPTD[playerid][15], 1);
    PlayerTextDrawSetProportional(playerid, KTPTD[playerid][15], 1);

    KTPTD[playerid][16] = CreatePlayerTextDraw(playerid, 560.000, 239.000, ":");
    PlayerTextDrawLetterSize(playerid, KTPTD[playerid][16], 0.160, 0.899);
    PlayerTextDrawAlignment(playerid, KTPTD[playerid][16], 1);
    PlayerTextDrawColor(playerid, KTPTD[playerid][16], 255);
    PlayerTextDrawSetShadow(playerid, KTPTD[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, KTPTD[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, KTPTD[playerid][16], 150);
    PlayerTextDrawFont(playerid, KTPTD[playerid][16], 1);
    PlayerTextDrawSetProportional(playerid, KTPTD[playerid][16], 1);

    KTPTD[playerid][17] = CreatePlayerTextDraw(playerid, 560.000, 246.000, ":");
    PlayerTextDrawLetterSize(playerid, KTPTD[playerid][17], 0.160, 0.899);
    PlayerTextDrawAlignment(playerid, KTPTD[playerid][17], 1);
    PlayerTextDrawColor(playerid, KTPTD[playerid][17], 255);
    PlayerTextDrawSetShadow(playerid, KTPTD[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, KTPTD[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, KTPTD[playerid][17], 150);
    PlayerTextDrawFont(playerid, KTPTD[playerid][17], 1);
    PlayerTextDrawSetProportional(playerid, KTPTD[playerid][17], 1);

    KTPTD[playerid][18] = CreatePlayerTextDraw(playerid, 560.000, 255.000, ":");
    PlayerTextDrawLetterSize(playerid, KTPTD[playerid][18], 0.160, 0.899);
    PlayerTextDrawAlignment(playerid, KTPTD[playerid][18], 1);
    PlayerTextDrawColor(playerid, KTPTD[playerid][18], 255);
    PlayerTextDrawSetShadow(playerid, KTPTD[playerid][18], 0);
    PlayerTextDrawSetOutline(playerid, KTPTD[playerid][18], 0);
    PlayerTextDrawBackgroundColor(playerid, KTPTD[playerid][18], 150);
    PlayerTextDrawFont(playerid, KTPTD[playerid][18], 1);
    PlayerTextDrawSetProportional(playerid, KTPTD[playerid][18], 1);

    KTPTD[playerid][19] = CreatePlayerTextDraw(playerid, 560.000, 264.000, ":");
    PlayerTextDrawLetterSize(playerid, KTPTD[playerid][19], 0.160, 0.899);
    PlayerTextDrawAlignment(playerid, KTPTD[playerid][19], 1);
    PlayerTextDrawColor(playerid, KTPTD[playerid][19], 255);
    PlayerTextDrawSetShadow(playerid, KTPTD[playerid][19], 0);
    PlayerTextDrawSetOutline(playerid, KTPTD[playerid][19], 0);
    PlayerTextDrawBackgroundColor(playerid, KTPTD[playerid][19], 150);
    PlayerTextDrawFont(playerid, KTPTD[playerid][19], 1);
    PlayerTextDrawSetProportional(playerid, KTPTD[playerid][19], 1);

    KTPTD[playerid][20] = CreatePlayerTextDraw(playerid, 560.000, 274.000, ":");
    PlayerTextDrawLetterSize(playerid, KTPTD[playerid][20], 0.160, 0.899);
    PlayerTextDrawAlignment(playerid, KTPTD[playerid][20], 1);
    PlayerTextDrawColor(playerid, KTPTD[playerid][20], 255);
    PlayerTextDrawSetShadow(playerid, KTPTD[playerid][20], 0);
    PlayerTextDrawSetOutline(playerid, KTPTD[playerid][20], 0);
    PlayerTextDrawBackgroundColor(playerid, KTPTD[playerid][20], 150);
    PlayerTextDrawFont(playerid, KTPTD[playerid][20], 1);
    PlayerTextDrawSetProportional(playerid, KTPTD[playerid][20], 1);

    KTPTD[playerid][21] = CreatePlayerTextDraw(playerid, 564.000, 240.000, "Rayy Bonelo");
    PlayerTextDrawLetterSize(playerid, KTPTD[playerid][21], 0.150, 0.799);
    PlayerTextDrawAlignment(playerid, KTPTD[playerid][21], 1);
    PlayerTextDrawColor(playerid, KTPTD[playerid][21], 255);
    PlayerTextDrawSetShadow(playerid, KTPTD[playerid][21], 0);
    PlayerTextDrawSetOutline(playerid, KTPTD[playerid][21], 0);
    PlayerTextDrawBackgroundColor(playerid, KTPTD[playerid][21], 150);
    PlayerTextDrawFont(playerid, KTPTD[playerid][21], 1);
    PlayerTextDrawSetProportional(playerid, KTPTD[playerid][21], 1);

    KTPTD[playerid][22] = CreatePlayerTextDraw(playerid, 564.000, 248.000, "07/09/2000");
    PlayerTextDrawLetterSize(playerid, KTPTD[playerid][22], 0.150, 0.799);
    PlayerTextDrawAlignment(playerid, KTPTD[playerid][22], 1);
    PlayerTextDrawColor(playerid, KTPTD[playerid][22], 255);
    PlayerTextDrawSetShadow(playerid, KTPTD[playerid][22], 0);
    PlayerTextDrawSetOutline(playerid, KTPTD[playerid][22], 0);
    PlayerTextDrawBackgroundColor(playerid, KTPTD[playerid][22], 150);
    PlayerTextDrawFont(playerid, KTPTD[playerid][22], 1);
    PlayerTextDrawSetProportional(playerid, KTPTD[playerid][22], 1);

    KTPTD[playerid][23] = CreatePlayerTextDraw(playerid, 564.000, 256.000, "Laki-Laki");
    PlayerTextDrawLetterSize(playerid, KTPTD[playerid][23], 0.150, 0.799);
    PlayerTextDrawAlignment(playerid, KTPTD[playerid][23], 1);
    PlayerTextDrawColor(playerid, KTPTD[playerid][23], 255);
    PlayerTextDrawSetShadow(playerid, KTPTD[playerid][23], 0);
    PlayerTextDrawSetOutline(playerid, KTPTD[playerid][23], 0);
    PlayerTextDrawBackgroundColor(playerid, KTPTD[playerid][23], 150);
    PlayerTextDrawFont(playerid, KTPTD[playerid][23], 1);
    PlayerTextDrawSetProportional(playerid, KTPTD[playerid][23], 1);

    KTPTD[playerid][24] = CreatePlayerTextDraw(playerid, 564.000, 265.000, "170 cm");
    PlayerTextDrawLetterSize(playerid, KTPTD[playerid][24], 0.150, 0.799);
    PlayerTextDrawAlignment(playerid, KTPTD[playerid][24], 1);
    PlayerTextDrawColor(playerid, KTPTD[playerid][24], 255);
    PlayerTextDrawSetShadow(playerid, KTPTD[playerid][24], 0);
    PlayerTextDrawSetOutline(playerid, KTPTD[playerid][24], 0);
    PlayerTextDrawBackgroundColor(playerid, KTPTD[playerid][24], 150);
    PlayerTextDrawFont(playerid, KTPTD[playerid][24], 1);
    PlayerTextDrawSetProportional(playerid, KTPTD[playerid][24], 1);

    KTPTD[playerid][25] = CreatePlayerTextDraw(playerid, 564.000, 274.000, "Seumur Hidup");
    PlayerTextDrawLetterSize(playerid, KTPTD[playerid][25], 0.150, 0.799);
    PlayerTextDrawAlignment(playerid, KTPTD[playerid][25], 1);
    PlayerTextDrawColor(playerid, KTPTD[playerid][25], 255);
    PlayerTextDrawSetShadow(playerid, KTPTD[playerid][25], 0);
    PlayerTextDrawSetOutline(playerid, KTPTD[playerid][25], 0);
    PlayerTextDrawBackgroundColor(playerid, KTPTD[playerid][25], 150);
    PlayerTextDrawFont(playerid, KTPTD[playerid][25], 1);
    PlayerTextDrawSetProportional(playerid, KTPTD[playerid][25], 1);

    KTPTD[playerid][26] = CreatePlayerTextDraw(playerid, 602.000, 238.000, "_");
    PlayerTextDrawTextSize(playerid, KTPTD[playerid][26], 31.000, 35.000);
    PlayerTextDrawAlignment(playerid, KTPTD[playerid][26], 1);
    PlayerTextDrawColor(playerid, KTPTD[playerid][26], -1);
    PlayerTextDrawSetShadow(playerid, KTPTD[playerid][26], 0);
    PlayerTextDrawSetOutline(playerid, KTPTD[playerid][26], 0);
    PlayerTextDrawBackgroundColor(playerid, KTPTD[playerid][26], 512819199);
    PlayerTextDrawFont(playerid, KTPTD[playerid][26], 5);
    PlayerTextDrawSetProportional(playerid, KTPTD[playerid][26], 0);
    PlayerTextDrawSetPreviewModel(playerid, KTPTD[playerid][26], 0);
    PlayerTextDrawSetPreviewRot(playerid, KTPTD[playerid][26], 0.000, 0.000, 0.000, 1.000);
    PlayerTextDrawSetPreviewVehCol(playerid, KTPTD[playerid][26], 0, 0);

    KTPTD[playerid][27] = CreatePlayerTextDraw(playerid, 617.000, 274.000, "Rayyzix");
    PlayerTextDrawLetterSize(playerid, KTPTD[playerid][27], 0.190, 0.799);
    PlayerTextDrawAlignment(playerid, KTPTD[playerid][27], 2);
    PlayerTextDrawColor(playerid, KTPTD[playerid][27], 255);
    PlayerTextDrawSetShadow(playerid, KTPTD[playerid][27], 0);
    PlayerTextDrawSetOutline(playerid, KTPTD[playerid][27], 0);
    PlayerTextDrawBackgroundColor(playerid, KTPTD[playerid][27], 150);
    PlayerTextDrawFont(playerid, KTPTD[playerid][27], 0);
    PlayerTextDrawSetProportional(playerid, KTPTD[playerid][27], 1);

    // ATM Textdraw
    IDPATM[playerid][0] = CreatePlayerTextDraw(playerid, 180.000, 126.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, IDPATM[playerid][0], 280.000, 220.000);
	PlayerTextDrawAlignment(playerid, IDPATM[playerid][0], 1);
	PlayerTextDrawColor(playerid, IDPATM[playerid][0], -101058049);
	PlayerTextDrawSetShadow(playerid, IDPATM[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, IDPATM[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, IDPATM[playerid][0], 255);
	PlayerTextDrawFont(playerid, IDPATM[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, IDPATM[playerid][0], 1);

	IDPATM[playerid][1] = CreatePlayerTextDraw(playerid, 170.000, 107.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, IDPATM[playerid][1], 300.000, 14.000);
	PlayerTextDrawAlignment(playerid, IDPATM[playerid][1], 1);
	PlayerTextDrawColor(playerid, IDPATM[playerid][1], 1588015871);
	PlayerTextDrawSetShadow(playerid, IDPATM[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, IDPATM[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, IDPATM[playerid][1], 255);
	PlayerTextDrawFont(playerid, IDPATM[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, IDPATM[playerid][1], 1);
	PlayerTextDrawSetSelectable(playerid, IDPATM[playerid][1], 1);

	IDPATM[playerid][2] = CreatePlayerTextDraw(playerid, 180.000, 102.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, IDPATM[playerid][2], 280.000, 24.000);
	PlayerTextDrawAlignment(playerid, IDPATM[playerid][2], 1);
	PlayerTextDrawColor(playerid, IDPATM[playerid][2], 1588015871);
	PlayerTextDrawSetShadow(playerid, IDPATM[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, IDPATM[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, IDPATM[playerid][2], 255);
	PlayerTextDrawFont(playerid, IDPATM[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, IDPATM[playerid][2], 1);

	IDPATM[playerid][3] = CreatePlayerTextDraw(playerid, 190.000, 285.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, IDPATM[playerid][3], 125.000, 50.000);
	PlayerTextDrawAlignment(playerid, IDPATM[playerid][3], 1);
	PlayerTextDrawColor(playerid, IDPATM[playerid][3], -1);
	PlayerTextDrawSetShadow(playerid, IDPATM[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, IDPATM[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, IDPATM[playerid][3], 255);
	PlayerTextDrawFont(playerid, IDPATM[playerid][3], 4);
	PlayerTextDrawSetProportional(playerid, IDPATM[playerid][3], 1);

	IDPATM[playerid][4] = CreatePlayerTextDraw(playerid, 325.000, 285.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, IDPATM[playerid][4], 125.000, 50.000);
	PlayerTextDrawAlignment(playerid, IDPATM[playerid][4], 1);
	PlayerTextDrawColor(playerid, IDPATM[playerid][4], -1);
	PlayerTextDrawSetShadow(playerid, IDPATM[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, IDPATM[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, IDPATM[playerid][4], 255);
	PlayerTextDrawFont(playerid, IDPATM[playerid][4], 4);
	PlayerTextDrawSetProportional(playerid, IDPATM[playerid][4], 1);

	IDPATM[playerid][5] = CreatePlayerTextDraw(playerid, 381.000, 146.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, IDPATM[playerid][5], 70.000, 32.000);
	PlayerTextDrawAlignment(playerid, IDPATM[playerid][5], 1);
	PlayerTextDrawColor(playerid, IDPATM[playerid][5], 982771199);
	PlayerTextDrawSetShadow(playerid, IDPATM[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, IDPATM[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, IDPATM[playerid][5], 255);
	PlayerTextDrawFont(playerid, IDPATM[playerid][5], 4);
	PlayerTextDrawSetProportional(playerid, IDPATM[playerid][5], 1);
	PlayerTextDrawSetSelectable(playerid, IDPATM[playerid][5], 1);

	IDPATM[playerid][6] = CreatePlayerTextDraw(playerid, 381.000, 184.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, IDPATM[playerid][6], 70.000, 32.000);
	PlayerTextDrawAlignment(playerid, IDPATM[playerid][6], 1);
	PlayerTextDrawColor(playerid, IDPATM[playerid][6], -1521095937);
	PlayerTextDrawSetShadow(playerid, IDPATM[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, IDPATM[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, IDPATM[playerid][6], 255);
	PlayerTextDrawFont(playerid, IDPATM[playerid][6], 4);
	PlayerTextDrawSetProportional(playerid, IDPATM[playerid][6], 1);
	PlayerTextDrawSetSelectable(playerid, IDPATM[playerid][6], 1);

	IDPATM[playerid][7] = CreatePlayerTextDraw(playerid, 381.000, 222.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, IDPATM[playerid][7], 70.000, 32.000);
	PlayerTextDrawAlignment(playerid, IDPATM[playerid][7], 1);
	PlayerTextDrawColor(playerid, IDPATM[playerid][7], -460899585);
	PlayerTextDrawSetShadow(playerid, IDPATM[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, IDPATM[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, IDPATM[playerid][7], 255);
	PlayerTextDrawFont(playerid, IDPATM[playerid][7], 4);
	PlayerTextDrawSetProportional(playerid, IDPATM[playerid][7], 1);
	PlayerTextDrawSetSelectable(playerid, IDPATM[playerid][7], 1);

	IDPATM[playerid][8] = CreatePlayerTextDraw(playerid, 190.000, 108.000, "Fl~g~ee~w~ca Bank");
	PlayerTextDrawLetterSize(playerid, IDPATM[playerid][8], 0.239, 1.299);
	PlayerTextDrawAlignment(playerid, IDPATM[playerid][8], 1);
	PlayerTextDrawColor(playerid, IDPATM[playerid][8], -1);
	PlayerTextDrawSetShadow(playerid, IDPATM[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, IDPATM[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, IDPATM[playerid][8], 150);
	PlayerTextDrawFont(playerid, IDPATM[playerid][8], 3);
	PlayerTextDrawSetProportional(playerid, IDPATM[playerid][8], 1);

	IDPATM[playerid][9] = CreatePlayerTextDraw(playerid, 457.000, 108.000, "Would you like to disconnect? ->");
	PlayerTextDrawLetterSize(playerid, IDPATM[playerid][9], 0.159, 1.098);
	PlayerTextDrawAlignment(playerid, IDPATM[playerid][9], 3);
	PlayerTextDrawColor(playerid, IDPATM[playerid][9], -1);
	PlayerTextDrawSetShadow(playerid, IDPATM[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, IDPATM[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, IDPATM[playerid][9], 150);
	PlayerTextDrawFont(playerid, IDPATM[playerid][9], 1);
	PlayerTextDrawSetProportional(playerid, IDPATM[playerid][9], 1);

	IDPATM[playerid][10] = CreatePlayerTextDraw(playerid, 466.000, 108.000, "X");
	PlayerTextDrawLetterSize(playerid, IDPATM[playerid][10], 0.159, 1.098);
	PlayerTextDrawAlignment(playerid, IDPATM[playerid][10], 3);
	PlayerTextDrawColor(playerid, IDPATM[playerid][10], -1);
	PlayerTextDrawSetShadow(playerid, IDPATM[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, IDPATM[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, IDPATM[playerid][10], 150);
	PlayerTextDrawFont(playerid, IDPATM[playerid][10], 1);
	PlayerTextDrawSetProportional(playerid, IDPATM[playerid][10], 1);

	IDPATM[playerid][11] = CreatePlayerTextDraw(playerid, 190.000, 140.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, IDPATM[playerid][11], 180.000, 125.000);
	PlayerTextDrawAlignment(playerid, IDPATM[playerid][11], 1);
	PlayerTextDrawColor(playerid, IDPATM[playerid][11], -1);
	PlayerTextDrawSetShadow(playerid, IDPATM[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, IDPATM[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, IDPATM[playerid][11], 255);
	PlayerTextDrawFont(playerid, IDPATM[playerid][11], 4);
	PlayerTextDrawSetProportional(playerid, IDPATM[playerid][11], 1);

	IDPATM[playerid][12] = CreatePlayerTextDraw(playerid, 195.000, 145.000, "Welcome,");
	PlayerTextDrawLetterSize(playerid, IDPATM[playerid][12], 0.159, 1.098);
	PlayerTextDrawAlignment(playerid, IDPATM[playerid][12], 1);
	PlayerTextDrawColor(playerid, IDPATM[playerid][12], 255);
	PlayerTextDrawSetShadow(playerid, IDPATM[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, IDPATM[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, IDPATM[playerid][12], 150);
	PlayerTextDrawFont(playerid, IDPATM[playerid][12], 1);
	PlayerTextDrawSetProportional(playerid, IDPATM[playerid][12], 1);

	IDPATM[playerid][13] = CreatePlayerTextDraw(playerid, 195.000, 154.000, "Bambang Sukentu");
	PlayerTextDrawLetterSize(playerid, IDPATM[playerid][13], 0.230, 1.499);
	PlayerTextDrawAlignment(playerid, IDPATM[playerid][13], 1);
	PlayerTextDrawColor(playerid, IDPATM[playerid][13], 1588015871);
	PlayerTextDrawSetShadow(playerid, IDPATM[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, IDPATM[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, IDPATM[playerid][13], 150);
	PlayerTextDrawFont(playerid, IDPATM[playerid][13], 1);
	PlayerTextDrawSetProportional(playerid, IDPATM[playerid][13], 1);

	IDPATM[playerid][14] = CreatePlayerTextDraw(playerid, 195.000, 185.000, "You Have");
	PlayerTextDrawLetterSize(playerid, IDPATM[playerid][14], 0.158, 1.098);
	PlayerTextDrawAlignment(playerid, IDPATM[playerid][14], 1);
	PlayerTextDrawColor(playerid, IDPATM[playerid][14], 255);
	PlayerTextDrawSetShadow(playerid, IDPATM[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, IDPATM[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, IDPATM[playerid][14], 150);
	PlayerTextDrawFont(playerid, IDPATM[playerid][14], 1);
	PlayerTextDrawSetProportional(playerid, IDPATM[playerid][14], 1);

	IDPATM[playerid][15] = CreatePlayerTextDraw(playerid, 200.000, 195.000, "$1,000,000");
	PlayerTextDrawLetterSize(playerid, IDPATM[playerid][15], 0.389, 2.698);
	PlayerTextDrawAlignment(playerid, IDPATM[playerid][15], 1);
	PlayerTextDrawColor(playerid, IDPATM[playerid][15], 579543807);
	PlayerTextDrawSetShadow(playerid, IDPATM[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, IDPATM[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, IDPATM[playerid][15], 150);
	PlayerTextDrawFont(playerid, IDPATM[playerid][15], 1);
	PlayerTextDrawSetProportional(playerid, IDPATM[playerid][15], 1);

	IDPATM[playerid][16] = CreatePlayerTextDraw(playerid, 195.000, 290.000, "YOU CAN TRUST US");
	PlayerTextDrawLetterSize(playerid, IDPATM[playerid][16], 0.158, 0.898);
	PlayerTextDrawAlignment(playerid, IDPATM[playerid][16], 1);
	PlayerTextDrawColor(playerid, IDPATM[playerid][16], 255);
	PlayerTextDrawSetShadow(playerid, IDPATM[playerid][16], 0);
	PlayerTextDrawSetOutline(playerid, IDPATM[playerid][16], 0);
	PlayerTextDrawBackgroundColor(playerid, IDPATM[playerid][16], 150);
	PlayerTextDrawFont(playerid, IDPATM[playerid][16], 1);
	PlayerTextDrawSetProportional(playerid, IDPATM[playerid][16], 1);

	IDPATM[playerid][17] = CreatePlayerTextDraw(playerid, 195.000, 302.000, "The number of BNP Paribas account creation has increased by 7# since 2017");
	PlayerTextDrawLetterSize(playerid, IDPATM[playerid][17], 0.158, 0.898);
	PlayerTextDrawTextSize(playerid, IDPATM[playerid][17], 289.000, 200.000);
	PlayerTextDrawAlignment(playerid, IDPATM[playerid][17], 1);
	PlayerTextDrawColor(playerid, IDPATM[playerid][17], -1448498689);
	PlayerTextDrawSetShadow(playerid, IDPATM[playerid][17], 0);
	PlayerTextDrawSetOutline(playerid, IDPATM[playerid][17], 0);
	PlayerTextDrawBackgroundColor(playerid, IDPATM[playerid][17], 150);
	PlayerTextDrawFont(playerid, IDPATM[playerid][17], 1);
	PlayerTextDrawSetProportional(playerid, IDPATM[playerid][17], 1);

	IDPATM[playerid][18] = CreatePlayerTextDraw(playerid, 332.000, 299.000, "Start investing into companys This mode is currently not avaible but we will in a few years");
	PlayerTextDrawLetterSize(playerid, IDPATM[playerid][18], 0.158, 0.898);
	PlayerTextDrawTextSize(playerid, IDPATM[playerid][18], 439.000, 200.000);
	PlayerTextDrawAlignment(playerid, IDPATM[playerid][18], 1);
	PlayerTextDrawColor(playerid, IDPATM[playerid][18], -1448498689);
	PlayerTextDrawSetShadow(playerid, IDPATM[playerid][18], 0);
	PlayerTextDrawSetOutline(playerid, IDPATM[playerid][18], 0);
	PlayerTextDrawBackgroundColor(playerid, IDPATM[playerid][18], 150);
	PlayerTextDrawFont(playerid, IDPATM[playerid][18], 1);
	PlayerTextDrawSetProportional(playerid, IDPATM[playerid][18], 1);

	IDPATM[playerid][19] = CreatePlayerTextDraw(playerid, 400.000, 153.000, "DEPOSIT");
	PlayerTextDrawLetterSize(playerid, IDPATM[playerid][19], 0.158, 0.898);
	PlayerTextDrawAlignment(playerid, IDPATM[playerid][19], 1);
	PlayerTextDrawColor(playerid, IDPATM[playerid][19], -1);
	PlayerTextDrawSetShadow(playerid, IDPATM[playerid][19], 0);
	PlayerTextDrawSetOutline(playerid, IDPATM[playerid][19], 0);
	PlayerTextDrawBackgroundColor(playerid, IDPATM[playerid][19], 150);
	PlayerTextDrawFont(playerid, IDPATM[playerid][19], 1);
	PlayerTextDrawSetProportional(playerid, IDPATM[playerid][19], 1);

	IDPATM[playerid][20] = CreatePlayerTextDraw(playerid, 400.000, 161.000, "Your money is save here");
	PlayerTextDrawLetterSize(playerid, IDPATM[playerid][20], 0.107, 0.797);
	PlayerTextDrawAlignment(playerid, IDPATM[playerid][20], 1);
	PlayerTextDrawColor(playerid, IDPATM[playerid][20], 255);
	PlayerTextDrawSetShadow(playerid, IDPATM[playerid][20], 0);
	PlayerTextDrawSetOutline(playerid, IDPATM[playerid][20], 0);
	PlayerTextDrawBackgroundColor(playerid, IDPATM[playerid][20], 150);
	PlayerTextDrawFont(playerid, IDPATM[playerid][20], 1);
	PlayerTextDrawSetProportional(playerid, IDPATM[playerid][20], 1);

	IDPATM[playerid][21] = CreatePlayerTextDraw(playerid, 400.000, 188.000, "WITHDRAW");
	PlayerTextDrawLetterSize(playerid, IDPATM[playerid][21], 0.158, 0.898);
	PlayerTextDrawAlignment(playerid, IDPATM[playerid][21], 1);
	PlayerTextDrawColor(playerid, IDPATM[playerid][21], -1);
	PlayerTextDrawSetShadow(playerid, IDPATM[playerid][21], 0);
	PlayerTextDrawSetOutline(playerid, IDPATM[playerid][21], 0);
	PlayerTextDrawBackgroundColor(playerid, IDPATM[playerid][21], 150);
	PlayerTextDrawFont(playerid, IDPATM[playerid][21], 1);
	PlayerTextDrawSetProportional(playerid, IDPATM[playerid][21], 1);

	IDPATM[playerid][22] = CreatePlayerTextDraw(playerid, 400.000, 196.000, "We will give the money back you stored");
	PlayerTextDrawLetterSize(playerid, IDPATM[playerid][22], 0.107, 0.797);
	PlayerTextDrawTextSize(playerid, IDPATM[playerid][22], 445.000, 15.000);
	PlayerTextDrawAlignment(playerid, IDPATM[playerid][22], 1);
	PlayerTextDrawColor(playerid, IDPATM[playerid][22], 255);
	PlayerTextDrawSetShadow(playerid, IDPATM[playerid][22], 0);
	PlayerTextDrawSetOutline(playerid, IDPATM[playerid][22], 0);
	PlayerTextDrawBackgroundColor(playerid, IDPATM[playerid][22], 150);
	PlayerTextDrawFont(playerid, IDPATM[playerid][22], 1);
	PlayerTextDrawSetProportional(playerid, IDPATM[playerid][22], 1);

	IDPATM[playerid][23] = CreatePlayerTextDraw(playerid, 400.000, 226.000, "TRANSFER");
	PlayerTextDrawLetterSize(playerid, IDPATM[playerid][23], 0.158, 0.898);
	PlayerTextDrawAlignment(playerid, IDPATM[playerid][23], 1);
	PlayerTextDrawColor(playerid, IDPATM[playerid][23], -1);
	PlayerTextDrawSetShadow(playerid, IDPATM[playerid][23], 0);
	PlayerTextDrawSetOutline(playerid, IDPATM[playerid][23], 0);
	PlayerTextDrawBackgroundColor(playerid, IDPATM[playerid][23], 150);
	PlayerTextDrawFont(playerid, IDPATM[playerid][23], 1);
	PlayerTextDrawSetProportional(playerid, IDPATM[playerid][23], 1);

	IDPATM[playerid][24] = CreatePlayerTextDraw(playerid, 400.000, 234.000, "Give your money to someone else");
	PlayerTextDrawLetterSize(playerid, IDPATM[playerid][24], 0.107, 0.797);
	PlayerTextDrawTextSize(playerid, IDPATM[playerid][24], 445.000, 15.000);
	PlayerTextDrawAlignment(playerid, IDPATM[playerid][24], 1);
	PlayerTextDrawColor(playerid, IDPATM[playerid][24], 255);
	PlayerTextDrawSetShadow(playerid, IDPATM[playerid][24], 0);
	PlayerTextDrawSetOutline(playerid, IDPATM[playerid][24], 0);
	PlayerTextDrawBackgroundColor(playerid, IDPATM[playerid][24], 150);
	PlayerTextDrawFont(playerid, IDPATM[playerid][24], 1);
	PlayerTextDrawSetProportional(playerid, IDPATM[playerid][24], 1);

	IDPATM[playerid][25] = CreatePlayerTextDraw(playerid, 389.000, 231.000, "->");
	PlayerTextDrawLetterSize(playerid, IDPATM[playerid][25], 0.158, 0.898);
	PlayerTextDrawAlignment(playerid, IDPATM[playerid][25], 1);
	PlayerTextDrawColor(playerid, IDPATM[playerid][25], -1);
	PlayerTextDrawSetShadow(playerid, IDPATM[playerid][25], 0);
	PlayerTextDrawSetOutline(playerid, IDPATM[playerid][25], 0);
	PlayerTextDrawBackgroundColor(playerid, IDPATM[playerid][25], 150);
	PlayerTextDrawFont(playerid, IDPATM[playerid][25], 1);
	PlayerTextDrawSetProportional(playerid, IDPATM[playerid][25], 1);

	IDPATM[playerid][26] = CreatePlayerTextDraw(playerid, 388.000, 236.000, "<-");
	PlayerTextDrawLetterSize(playerid, IDPATM[playerid][26], 0.158, 0.898);
	PlayerTextDrawAlignment(playerid, IDPATM[playerid][26], 1);
	PlayerTextDrawColor(playerid, IDPATM[playerid][26], -1);
	PlayerTextDrawSetShadow(playerid, IDPATM[playerid][26], 0);
	PlayerTextDrawSetOutline(playerid, IDPATM[playerid][26], 0);
	PlayerTextDrawBackgroundColor(playerid, IDPATM[playerid][26], 150);
	PlayerTextDrawFont(playerid, IDPATM[playerid][26], 1);
	PlayerTextDrawSetProportional(playerid, IDPATM[playerid][26], 1);

	IDPATM[playerid][27] = CreatePlayerTextDraw(playerid, 386.000, 194.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, IDPATM[playerid][27], 10.000, 11.000);
	PlayerTextDrawAlignment(playerid, IDPATM[playerid][27], 1);
	PlayerTextDrawColor(playerid, IDPATM[playerid][27], -1);
	PlayerTextDrawSetShadow(playerid, IDPATM[playerid][27], 0);
	PlayerTextDrawSetOutline(playerid, IDPATM[playerid][27], 0);
	PlayerTextDrawBackgroundColor(playerid, IDPATM[playerid][27], 255);
	PlayerTextDrawFont(playerid, IDPATM[playerid][27], 4);
	PlayerTextDrawSetProportional(playerid, IDPATM[playerid][27], 1);

	IDPATM[playerid][28] = CreatePlayerTextDraw(playerid, 387.000, 195.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, IDPATM[playerid][28], 8.000, 9.000);
	PlayerTextDrawAlignment(playerid, IDPATM[playerid][28], 1);
	PlayerTextDrawColor(playerid, IDPATM[playerid][28], -1521095937);
	PlayerTextDrawSetShadow(playerid, IDPATM[playerid][28], 0);
	PlayerTextDrawSetOutline(playerid, IDPATM[playerid][28], 0);
	PlayerTextDrawBackgroundColor(playerid, IDPATM[playerid][28], 255);
	PlayerTextDrawFont(playerid, IDPATM[playerid][28], 4);
	PlayerTextDrawSetProportional(playerid, IDPATM[playerid][28], 1);

	IDPATM[playerid][29] = CreatePlayerTextDraw(playerid, 386.000, 196.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, IDPATM[playerid][29], 9.000, 2.000);
	PlayerTextDrawAlignment(playerid, IDPATM[playerid][29], 1);
	PlayerTextDrawColor(playerid, IDPATM[playerid][29], -1);
	PlayerTextDrawSetShadow(playerid, IDPATM[playerid][29], 0);
	PlayerTextDrawSetOutline(playerid, IDPATM[playerid][29], 0);
	PlayerTextDrawBackgroundColor(playerid, IDPATM[playerid][29], 255);
	PlayerTextDrawFont(playerid, IDPATM[playerid][29], 4);
	PlayerTextDrawSetProportional(playerid, IDPATM[playerid][29], 1);

	IDPATM[playerid][30] = CreatePlayerTextDraw(playerid, 388.000, 201.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, IDPATM[playerid][30], 1.000, 2.000);
	PlayerTextDrawAlignment(playerid, IDPATM[playerid][30], 1);
	PlayerTextDrawColor(playerid, IDPATM[playerid][30], -1);
	PlayerTextDrawSetShadow(playerid, IDPATM[playerid][30], 0);
	PlayerTextDrawSetOutline(playerid, IDPATM[playerid][30], 0);
	PlayerTextDrawBackgroundColor(playerid, IDPATM[playerid][30], 255);
	PlayerTextDrawFont(playerid, IDPATM[playerid][30], 4);
	PlayerTextDrawSetProportional(playerid, IDPATM[playerid][30], 1);

	IDPATM[playerid][31] = CreatePlayerTextDraw(playerid, 390.000, 201.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, IDPATM[playerid][31], 1.000, 2.000);
	PlayerTextDrawAlignment(playerid, IDPATM[playerid][31], 1);
	PlayerTextDrawColor(playerid, IDPATM[playerid][31], -1);
	PlayerTextDrawSetShadow(playerid, IDPATM[playerid][31], 0);
	PlayerTextDrawSetOutline(playerid, IDPATM[playerid][31], 0);
	PlayerTextDrawBackgroundColor(playerid, IDPATM[playerid][31], 255);
	PlayerTextDrawFont(playerid, IDPATM[playerid][31], 4);
	PlayerTextDrawSetProportional(playerid, IDPATM[playerid][31], 1);

	IDPATM[playerid][32] = CreatePlayerTextDraw(playerid, 386.000, 156.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, IDPATM[playerid][32], 10.000, 11.000);
	PlayerTextDrawAlignment(playerid, IDPATM[playerid][32], 1);
	PlayerTextDrawColor(playerid, IDPATM[playerid][32], -1);
	PlayerTextDrawSetShadow(playerid, IDPATM[playerid][32], 0);
	PlayerTextDrawSetOutline(playerid, IDPATM[playerid][32], 0);
	PlayerTextDrawBackgroundColor(playerid, IDPATM[playerid][32], 255);
	PlayerTextDrawFont(playerid, IDPATM[playerid][32], 4);
	PlayerTextDrawSetProportional(playerid, IDPATM[playerid][32], 1);

	IDPATM[playerid][33] = CreatePlayerTextDraw(playerid, 387.000, 157.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, IDPATM[playerid][33], 8.000, 9.000);
	PlayerTextDrawAlignment(playerid, IDPATM[playerid][33], 1);
	PlayerTextDrawColor(playerid, IDPATM[playerid][33], 982771199);
	PlayerTextDrawSetShadow(playerid, IDPATM[playerid][33], 0);
	PlayerTextDrawSetOutline(playerid, IDPATM[playerid][33], 0);
	PlayerTextDrawBackgroundColor(playerid, IDPATM[playerid][33], 255);
	PlayerTextDrawFont(playerid, IDPATM[playerid][33], 4);
	PlayerTextDrawSetProportional(playerid, IDPATM[playerid][33], 1);

	IDPATM[playerid][34] = CreatePlayerTextDraw(playerid, 389.500, 157.000, "$");
	PlayerTextDrawLetterSize(playerid, IDPATM[playerid][34], 0.158, 0.898);
	PlayerTextDrawAlignment(playerid, IDPATM[playerid][34], 1);
	PlayerTextDrawColor(playerid, IDPATM[playerid][34], -1);
	PlayerTextDrawSetShadow(playerid, IDPATM[playerid][34], 0);
	PlayerTextDrawSetOutline(playerid, IDPATM[playerid][34], 0);
	PlayerTextDrawBackgroundColor(playerid, IDPATM[playerid][34], 150);
	PlayerTextDrawFont(playerid, IDPATM[playerid][34], 1);
	PlayerTextDrawSetProportional(playerid, IDPATM[playerid][34], 1);

    // Karung
    VR_KARUNG[playerid][0] = CreatePlayerTextDraw(playerid, -29.000, -13.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, VR_KARUNG[playerid][0], 781.000, 582.000);
    PlayerTextDrawAlignment(playerid, VR_KARUNG[playerid][0], 1);
    PlayerTextDrawColor(playerid, VR_KARUNG[playerid][0], 255);
    PlayerTextDrawSetShadow(playerid, VR_KARUNG[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, VR_KARUNG[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_KARUNG[playerid][0], 255);
    PlayerTextDrawFont(playerid, VR_KARUNG[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, VR_KARUNG[playerid][0], 1);

    // Banned TD
    VR_BANNEDTD[playerid][0] = CreatePlayerTextDraw(playerid, 0.000, -6.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_BANNEDTD[playerid][0], 651.000, 470.000);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][0], 1);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][0], 943210495);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][0], 255);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][0], 1);

    VR_BANNEDTD[playerid][1] = CreatePlayerTextDraw(playerid, 89.000, 88.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_BANNEDTD[playerid][1], 458.000, 284.000);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][1], 1);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][1], -2139062017);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][1], 255);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][1], 1);

    VR_BANNEDTD[playerid][2] = CreatePlayerTextDraw(playerid, 116.000, 104.000, "Astral City Roleplay");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][2], 0.300, 1.500);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][2], 1);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][2], -1);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][2], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][2], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][2], 1);

    VR_BANNEDTD[playerid][3] = CreatePlayerTextDraw(playerid, 102.000, 94.000, "/");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][3], 0.539, 3.700);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][3], 1);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][3], -65281);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][3], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][3], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][3], 1);

    VR_BANNEDTD[playerid][4] = CreatePlayerTextDraw(playerid, 106.000, 96.000, "/");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][4], 0.539, 3.700);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][4], 1);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][4], -1);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][4], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][4], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][4], 1);

    VR_BANNEDTD[playerid][5] = CreatePlayerTextDraw(playerid, 117.000, 116.000, "Indonesia");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][5], 0.300, 1.500);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][5], 1);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][5], -1);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][5], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][5], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][5], 1);

    VR_BANNEDTD[playerid][6] = CreatePlayerTextDraw(playerid, 310.000, 144.000, "You Have Been Banned By Adm Mings");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][6], 0.300, 1.500);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][6], 2);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][6], -1);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][6], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][6], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][6], 1);

    VR_BANNEDTD[playerid][7] = CreatePlayerTextDraw(playerid, 209.000, 174.000, "UCP:_Kims");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][7], 0.300, 1.500);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][7], 1);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][7], -1);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][7], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][7], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][7], 1);

    VR_BANNEDTD[playerid][8] = CreatePlayerTextDraw(playerid, 209.000, 191.000, "Name: Kim_Jong");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][8], 0.300, 1.500);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][8], 1);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][8], -1);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][8], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][8], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][8], 1);

    VR_BANNEDTD[playerid][9] = CreatePlayerTextDraw(playerid, 201.000, 167.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_BANNEDTD[playerid][9], 233.000, 104.000);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][9], 1);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][9], 943210495);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][9], 255);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][9], 4);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][9], 1);

    VR_BANNEDTD[playerid][10] = CreatePlayerTextDraw(playerid, 209.000, 207.000, "Level: 51");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][10], 0.300, 1.500);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][10], 1);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][10], -1);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][10], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][10], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][10], 1);

    VR_BANNEDTD[playerid][11] = CreatePlayerTextDraw(playerid, 209.000, 223.000, "Reason:");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][11], 0.300, 1.500);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][11], 1);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][11], -1);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][11], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][11], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][11], 1);

    VR_BANNEDTD[playerid][12] = CreatePlayerTextDraw(playerid, 318.000, 245.000, "Anda Mencoba Menggunakan Teleportasi");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][12], 0.300, 1.500);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][12], 2);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][12], -1);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][12], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][12], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][12], 1);

    VR_BANNEDTD[playerid][13] = CreatePlayerTextDraw(playerid, 376.000, 167.000, "/");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][13], 0.439, 2.000);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][13], 1);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][13], -65281);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][13], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][13], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][13], 1);

    VR_BANNEDTD[playerid][14] = CreatePlayerTextDraw(playerid, 379.000, 168.000, "/");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][14], 0.439, 2.000);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][14], 1);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][14], -1);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][14], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][14], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][14], 1);

    VR_BANNEDTD[playerid][15] = CreatePlayerTextDraw(playerid, 387.000, 172.000, "Astral City Roleplay");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][15], 0.150, 1.100);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][15], 1);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][15], -1);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][15], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][15], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][15], 1);

    VR_BANNEDTD[playerid][16] = CreatePlayerTextDraw(playerid, 388.000, 181.000, "Indonesia");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][16], 0.150, 1.100);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][16], 1);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][16], -1);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][16], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][16], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][16], 1);

    VR_BANNEDTD[playerid][17] = CreatePlayerTextDraw(playerid, 321.000, 282.000, "TIDAK MERASA BERSALAH ATAUPUN TIDAK MERASA APA YANG DIBILANG OLEH ADMIN?");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][17], 0.220, 1.500);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][17], 2);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][17], 255);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][17], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][17], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][17], 1);

    VR_BANNEDTD[playerid][18] = CreatePlayerTextDraw(playerid, 319.000, 297.000, "Report Misunderstandings On Discord: ~y~http://discord.gg/ASTRALCITYROLEPLAY");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][18], 0.220, 1.500);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][18], 2);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][18], 255);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][18], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][18], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][18], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][18], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][18], 1);

    VR_BANNEDTD[playerid][19] = CreatePlayerTextDraw(playerid, 324.000, 314.000, "In Channel: #create-ticket");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][19], 0.220, 1.500);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][19], 2);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][19], 255);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][19], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][19], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][19], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][19], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][19], 1);

    VR_BANNEDTD[playerid][20] = CreatePlayerTextDraw(playerid, 94.000, 352.000, "Tanggal Terbanned: 25-02-2003");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][20], 0.220, 1.500);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][20], 1);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][20], 255);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][20], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][20], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][20], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][20], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][20], 1);

    ProgressBar[playerid][0] = CreatePlayerTextDraw(playerid, -850.000, -920.000, "Gambar teks baru");
    PlayerTextDrawLetterSize(playerid, ProgressBar[playerid][0], 0.300, 1.500);
    PlayerTextDrawAlignment(playerid, ProgressBar[playerid][0], 1);
    PlayerTextDrawColor(playerid, ProgressBar[playerid][0], -1);
    PlayerTextDrawSetShadow(playerid, ProgressBar[playerid][0], 1);
    PlayerTextDrawSetOutline(playerid, ProgressBar[playerid][0], 1);
    PlayerTextDrawBackgroundColor(playerid, ProgressBar[playerid][0], 150);
    PlayerTextDrawFont(playerid, ProgressBar[playerid][0], 1);
    PlayerTextDrawSetProportional(playerid, ProgressBar[playerid][0], 1);

    ProgressBar[playerid][1] = CreatePlayerTextDraw(playerid, 273.000, 378.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ProgressBar[playerid][1], 89.000, -19.000);
    PlayerTextDrawAlignment(playerid, ProgressBar[playerid][1], 1);
    PlayerTextDrawColor(playerid, ProgressBar[playerid][1], 30);
    PlayerTextDrawSetShadow(playerid, ProgressBar[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, ProgressBar[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, ProgressBar[playerid][1], 255);
    PlayerTextDrawFont(playerid, ProgressBar[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, ProgressBar[playerid][1], 1);

    ProgressBar[playerid][2] = CreatePlayerTextDraw(playerid, 275.000, 361.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ProgressBar[playerid][2], 85.000, 15.000);
    PlayerTextDrawAlignment(playerid, ProgressBar[playerid][2], 1);
    PlayerTextDrawColor(playerid, ProgressBar[playerid][2], X11_SALMON);
    PlayerTextDrawSetShadow(playerid, ProgressBar[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, ProgressBar[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, ProgressBar[playerid][2], 255);
    PlayerTextDrawFont(playerid, ProgressBar[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, ProgressBar[playerid][2], 1);

    ProgressBar[playerid][3] = CreatePlayerTextDraw(playerid, 317.000, 365.000, "MAKAN");
    PlayerTextDrawLetterSize(playerid, ProgressBar[playerid][3], 0.136, 0.598);
    PlayerTextDrawAlignment(playerid, ProgressBar[playerid][3], 2);
    PlayerTextDrawColor(playerid, ProgressBar[playerid][3], -1);
    PlayerTextDrawSetShadow(playerid, ProgressBar[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, ProgressBar[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, ProgressBar[playerid][3], 150);
    PlayerTextDrawFont(playerid, ProgressBar[playerid][3], 1);
    PlayerTextDrawSetProportional(playerid, ProgressBar[playerid][3], 1);
    
    // Robbery
    RobberyTextTD[playerid][0] = CreatePlayerTextDraw(playerid, 18.000, 195.000, "  Mohon tetap diwarung~n~selama 14 menit 59 detik");
    PlayerTextDrawLetterSize(playerid, RobberyTextTD[playerid][0], 0.249, 1.399);
    PlayerTextDrawAlignment(playerid, RobberyTextTD[playerid][0], 1);
    PlayerTextDrawColor(playerid, RobberyTextTD[playerid][0], 1926329087);
    PlayerTextDrawSetShadow(playerid, RobberyTextTD[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, RobberyTextTD[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, RobberyTextTD[playerid][0], 255);
    PlayerTextDrawFont(playerid, RobberyTextTD[playerid][0], 1);
    PlayerTextDrawSetProportional(playerid, RobberyTextTD[playerid][0], 1);

    //Clothes Warung
    ClotheMenu[playerid][0] = CreatePlayerTextDraw(playerid, 476.000, 393.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ClotheMenu[playerid][0], 41.000, 1.000);
    PlayerTextDrawAlignment(playerid, ClotheMenu[playerid][0], 1);
    PlayerTextDrawColor(playerid, ClotheMenu[playerid][0], -2139062017);
    PlayerTextDrawSetShadow(playerid, ClotheMenu[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, ClotheMenu[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, ClotheMenu[playerid][0], 255);
    PlayerTextDrawFont(playerid, ClotheMenu[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, ClotheMenu[playerid][0], 1);

    ClotheMenu[playerid][1] = CreatePlayerTextDraw(playerid, 135.000, 64.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ClotheMenu[playerid][1], 398.000, 1.000);
    PlayerTextDrawAlignment(playerid, ClotheMenu[playerid][1], 1);
    PlayerTextDrawColor(playerid, ClotheMenu[playerid][1], -2139062098);
    PlayerTextDrawSetShadow(playerid, ClotheMenu[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, ClotheMenu[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, ClotheMenu[playerid][1], 255);
    PlayerTextDrawFont(playerid, ClotheMenu[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, ClotheMenu[playerid][1], 1);

    ClotheMenu[playerid][2] = CreatePlayerTextDraw(playerid, 259.000, 64.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ClotheMenu[playerid][2], 158.000, 1.000);
    PlayerTextDrawAlignment(playerid, ClotheMenu[playerid][2], 1);
    PlayerTextDrawColor(playerid, ClotheMenu[playerid][2], -92245249);
    PlayerTextDrawSetShadow(playerid, ClotheMenu[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, ClotheMenu[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, ClotheMenu[playerid][2], 255);
    PlayerTextDrawFont(playerid, ClotheMenu[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, ClotheMenu[playerid][2], 1);

    ClotheMenu[playerid][3] = CreatePlayerTextDraw(playerid, 336.000, 47.000, "Clothes Shop");
    PlayerTextDrawLetterSize(playerid, ClotheMenu[playerid][3], 0.210, 1.499);
    PlayerTextDrawAlignment(playerid, ClotheMenu[playerid][3], 2);
    PlayerTextDrawColor(playerid, ClotheMenu[playerid][3], -92245249);
    PlayerTextDrawSetShadow(playerid, ClotheMenu[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, ClotheMenu[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, ClotheMenu[playerid][3], 150);
    PlayerTextDrawFont(playerid, ClotheMenu[playerid][3], 1);
    PlayerTextDrawSetProportional(playerid, ClotheMenu[playerid][3], 1);

    ClotheMenu[playerid][4] = CreatePlayerTextDraw(playerid, 154.000, 394.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ClotheMenu[playerid][4], 61.000, 23.000);
    PlayerTextDrawAlignment(playerid, ClotheMenu[playerid][4], 1);
    PlayerTextDrawColor(playerid, ClotheMenu[playerid][4], 0x3399FF66);
    PlayerTextDrawSetShadow(playerid, ClotheMenu[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, ClotheMenu[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, ClotheMenu[playerid][4], 255);
    PlayerTextDrawFont(playerid, ClotheMenu[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, ClotheMenu[playerid][4], 1);
    PlayerTextDrawSetSelectable(playerid, ClotheMenu[playerid][4], 1);

    ClotheMenu[playerid][5] = CreatePlayerTextDraw(playerid, 232.000, 394.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ClotheMenu[playerid][5], 61.000, 23.000);
    PlayerTextDrawAlignment(playerid, ClotheMenu[playerid][5], 1);
    PlayerTextDrawColor(playerid, ClotheMenu[playerid][5], 0x3399FF66);
    PlayerTextDrawSetShadow(playerid, ClotheMenu[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, ClotheMenu[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, ClotheMenu[playerid][5], 255);
    PlayerTextDrawFont(playerid, ClotheMenu[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, ClotheMenu[playerid][5], 1);
    PlayerTextDrawSetSelectable(playerid, ClotheMenu[playerid][5], 1);

    ClotheMenu[playerid][6] = CreatePlayerTextDraw(playerid, 309.000, 394.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ClotheMenu[playerid][6], 61.000, 23.000);
    PlayerTextDrawAlignment(playerid, ClotheMenu[playerid][6], 1);
    PlayerTextDrawColor(playerid, ClotheMenu[playerid][6], 0x3399FF66);
    PlayerTextDrawSetShadow(playerid, ClotheMenu[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, ClotheMenu[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, ClotheMenu[playerid][6], 255);
    PlayerTextDrawFont(playerid, ClotheMenu[playerid][6], 4);
    PlayerTextDrawSetProportional(playerid, ClotheMenu[playerid][6], 1);
    PlayerTextDrawSetSelectable(playerid, ClotheMenu[playerid][6], 1);

    ClotheMenu[playerid][7] = CreatePlayerTextDraw(playerid, 388.000, 394.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ClotheMenu[playerid][7], 61.000, 23.000);
    PlayerTextDrawAlignment(playerid, ClotheMenu[playerid][7], 1);
    PlayerTextDrawColor(playerid, ClotheMenu[playerid][7], 0x3399FF66);
    PlayerTextDrawSetShadow(playerid, ClotheMenu[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, ClotheMenu[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, ClotheMenu[playerid][7], 255);
    PlayerTextDrawFont(playerid, ClotheMenu[playerid][7], 4);
    PlayerTextDrawSetProportional(playerid, ClotheMenu[playerid][7], 1);
    PlayerTextDrawSetSelectable(playerid, ClotheMenu[playerid][7], 1);

    ClotheMenu[playerid][8] = CreatePlayerTextDraw(playerid, 465.000, 394.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ClotheMenu[playerid][8], 61.000, 23.000);
    PlayerTextDrawAlignment(playerid, ClotheMenu[playerid][8], 1);
    PlayerTextDrawColor(playerid, ClotheMenu[playerid][8], 0x3399FF66);
    PlayerTextDrawSetShadow(playerid, ClotheMenu[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, ClotheMenu[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, ClotheMenu[playerid][8], 255);
    PlayerTextDrawFont(playerid, ClotheMenu[playerid][8], 4);
    PlayerTextDrawSetProportional(playerid, ClotheMenu[playerid][8], 1);
    PlayerTextDrawSetSelectable(playerid, ClotheMenu[playerid][8], 1);

    ClotheMenu[playerid][9] = CreatePlayerTextDraw(playerid, 154.000, 419.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ClotheMenu[playerid][9], 61.000, 4.000);
    PlayerTextDrawAlignment(playerid, ClotheMenu[playerid][9], 1);
    PlayerTextDrawColor(playerid, ClotheMenu[playerid][9], 0x3399FF66);
    PlayerTextDrawSetShadow(playerid, ClotheMenu[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, ClotheMenu[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, ClotheMenu[playerid][9], 255);
    PlayerTextDrawFont(playerid, ClotheMenu[playerid][9], 4);
    PlayerTextDrawSetProportional(playerid, ClotheMenu[playerid][9], 1);

    ClotheMenu[playerid][10] = CreatePlayerTextDraw(playerid, 232.000, 419.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ClotheMenu[playerid][10], 61.000, 4.000);
    PlayerTextDrawAlignment(playerid, ClotheMenu[playerid][10], 1);
    PlayerTextDrawColor(playerid, ClotheMenu[playerid][10], 0x3399FF66);
    PlayerTextDrawSetShadow(playerid, ClotheMenu[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, ClotheMenu[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, ClotheMenu[playerid][10], 255);
    PlayerTextDrawFont(playerid, ClotheMenu[playerid][10], 4);
    PlayerTextDrawSetProportional(playerid, ClotheMenu[playerid][10], 1);

    ClotheMenu[playerid][11] = CreatePlayerTextDraw(playerid, 309.000, 419.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ClotheMenu[playerid][11], 61.000, 4.000);
    PlayerTextDrawAlignment(playerid, ClotheMenu[playerid][11], 1);
    PlayerTextDrawColor(playerid, ClotheMenu[playerid][11], 0x3399FF66);
    PlayerTextDrawSetShadow(playerid, ClotheMenu[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, ClotheMenu[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, ClotheMenu[playerid][11], 255);
    PlayerTextDrawFont(playerid, ClotheMenu[playerid][11], 4);
    PlayerTextDrawSetProportional(playerid, ClotheMenu[playerid][11], 1);

    ClotheMenu[playerid][12] = CreatePlayerTextDraw(playerid, 388.000, 419.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ClotheMenu[playerid][12], 61.000, 4.000);
    PlayerTextDrawAlignment(playerid, ClotheMenu[playerid][12], 1);
    PlayerTextDrawColor(playerid, ClotheMenu[playerid][12], 0x3399FF66);
    PlayerTextDrawSetShadow(playerid, ClotheMenu[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, ClotheMenu[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, ClotheMenu[playerid][12], 255);
    PlayerTextDrawFont(playerid, ClotheMenu[playerid][12], 4);
    PlayerTextDrawSetProportional(playerid, ClotheMenu[playerid][12], 1);

    ClotheMenu[playerid][13] = CreatePlayerTextDraw(playerid, 465.000, 419.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ClotheMenu[playerid][13], 61.000, 4.000);
    PlayerTextDrawAlignment(playerid, ClotheMenu[playerid][13], 1);
    PlayerTextDrawColor(playerid, ClotheMenu[playerid][13], 0x3399FF66);
    PlayerTextDrawSetShadow(playerid, ClotheMenu[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, ClotheMenu[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, ClotheMenu[playerid][13], 255);
    PlayerTextDrawFont(playerid, ClotheMenu[playerid][13], 4);
    PlayerTextDrawSetProportional(playerid, ClotheMenu[playerid][13], 1);

    ClotheMenu[playerid][14] = CreatePlayerTextDraw(playerid, 163.000, 393.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ClotheMenu[playerid][14], 41.000, 1.000);
    PlayerTextDrawAlignment(playerid, ClotheMenu[playerid][14], 1);
    PlayerTextDrawColor(playerid, ClotheMenu[playerid][14], -2139062017);
    PlayerTextDrawSetShadow(playerid, ClotheMenu[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, ClotheMenu[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, ClotheMenu[playerid][14], 255);
    PlayerTextDrawFont(playerid, ClotheMenu[playerid][14], 4);
    PlayerTextDrawSetProportional(playerid, ClotheMenu[playerid][14], 1);

    ClotheMenu[playerid][15] = CreatePlayerTextDraw(playerid, 241.000, 393.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ClotheMenu[playerid][15], 41.000, 1.000);
    PlayerTextDrawAlignment(playerid, ClotheMenu[playerid][15], 1);
    PlayerTextDrawColor(playerid, ClotheMenu[playerid][15], -2139062017);
    PlayerTextDrawSetShadow(playerid, ClotheMenu[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, ClotheMenu[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, ClotheMenu[playerid][15], 255);
    PlayerTextDrawFont(playerid, ClotheMenu[playerid][15], 4);
    PlayerTextDrawSetProportional(playerid, ClotheMenu[playerid][15], 1);

    ClotheMenu[playerid][16] = CreatePlayerTextDraw(playerid, 319.000, 393.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ClotheMenu[playerid][16], 41.000, 1.000);
    PlayerTextDrawAlignment(playerid, ClotheMenu[playerid][16], 1);
    PlayerTextDrawColor(playerid, ClotheMenu[playerid][16], -2139062017);
    PlayerTextDrawSetShadow(playerid, ClotheMenu[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, ClotheMenu[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, ClotheMenu[playerid][16], 255);
    PlayerTextDrawFont(playerid, ClotheMenu[playerid][16], 4);
    PlayerTextDrawSetProportional(playerid, ClotheMenu[playerid][16], 1);

    ClotheMenu[playerid][17] = CreatePlayerTextDraw(playerid, 398.000, 393.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ClotheMenu[playerid][17], 41.000, 1.000);
    PlayerTextDrawAlignment(playerid, ClotheMenu[playerid][17], 1);
    PlayerTextDrawColor(playerid, ClotheMenu[playerid][17], -2139062017);
    PlayerTextDrawSetShadow(playerid, ClotheMenu[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, ClotheMenu[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, ClotheMenu[playerid][17], 255);
    PlayerTextDrawFont(playerid, ClotheMenu[playerid][17], 4);
    PlayerTextDrawSetProportional(playerid, ClotheMenu[playerid][17], 1);

    ClotheMenu[playerid][18] = CreatePlayerTextDraw(playerid, 308.000, 350.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ClotheMenu[playerid][18], 60.000, 24.000);
    PlayerTextDrawAlignment(playerid, ClotheMenu[playerid][18], 1);
    PlayerTextDrawColor(playerid, ClotheMenu[playerid][18], -2139062172);
    PlayerTextDrawSetShadow(playerid, ClotheMenu[playerid][18], 0);
    PlayerTextDrawSetOutline(playerid, ClotheMenu[playerid][18], 0);
    PlayerTextDrawBackgroundColor(playerid, ClotheMenu[playerid][18], 255);
    PlayerTextDrawFont(playerid, ClotheMenu[playerid][18], 4);
    PlayerTextDrawSetProportional(playerid, ClotheMenu[playerid][18], 1);
    PlayerTextDrawSetSelectable(playerid, ClotheMenu[playerid][18], 1);

    ClotheMenu[playerid][19] = CreatePlayerTextDraw(playerid, 324.000, 323.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ClotheMenu[playerid][19], 27.000, 22.000);
    PlayerTextDrawAlignment(playerid, ClotheMenu[playerid][19], 1);
    PlayerTextDrawColor(playerid, ClotheMenu[playerid][19], -2139062172);
    PlayerTextDrawSetShadow(playerid, ClotheMenu[playerid][19], 0);
    PlayerTextDrawSetOutline(playerid, ClotheMenu[playerid][19], 0);
    PlayerTextDrawBackgroundColor(playerid, ClotheMenu[playerid][19], 255);
    PlayerTextDrawFont(playerid, ClotheMenu[playerid][19], 4);
    PlayerTextDrawSetProportional(playerid, ClotheMenu[playerid][19], 1);
    PlayerTextDrawSetSelectable(playerid, ClotheMenu[playerid][19], 1);

    ClotheMenu[playerid][20] = CreatePlayerTextDraw(playerid, 270.000, 350.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ClotheMenu[playerid][20], 31.000, 24.000);
    PlayerTextDrawAlignment(playerid, ClotheMenu[playerid][20], 1);
    PlayerTextDrawColor(playerid, ClotheMenu[playerid][20], 0x3399FF66);
    PlayerTextDrawSetShadow(playerid, ClotheMenu[playerid][20], 0);
    PlayerTextDrawSetOutline(playerid, ClotheMenu[playerid][20], 0);
    PlayerTextDrawBackgroundColor(playerid, ClotheMenu[playerid][20], 255);
    PlayerTextDrawFont(playerid, ClotheMenu[playerid][20], 4);
    PlayerTextDrawSetProportional(playerid, ClotheMenu[playerid][20], 1);
    PlayerTextDrawSetSelectable(playerid, ClotheMenu[playerid][20], 1);

    ClotheMenu[playerid][21] = CreatePlayerTextDraw(playerid, 375.000, 350.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ClotheMenu[playerid][21], 31.000, 24.000);
    PlayerTextDrawAlignment(playerid, ClotheMenu[playerid][21], 1);
    PlayerTextDrawColor(playerid, ClotheMenu[playerid][21], 0x3399FF66);
    PlayerTextDrawSetShadow(playerid, ClotheMenu[playerid][21], 0);
    PlayerTextDrawSetOutline(playerid, ClotheMenu[playerid][21], 0);
    PlayerTextDrawBackgroundColor(playerid, ClotheMenu[playerid][21], 255);
    PlayerTextDrawFont(playerid, ClotheMenu[playerid][21], 4);
    PlayerTextDrawSetProportional(playerid, ClotheMenu[playerid][21], 1);
    PlayerTextDrawSetSelectable(playerid, ClotheMenu[playerid][21], 1);

    ClotheMenu[playerid][22] = CreatePlayerTextDraw(playerid, 233.000, 350.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ClotheMenu[playerid][22], 31.000, 24.000);
    PlayerTextDrawAlignment(playerid, ClotheMenu[playerid][22], 1);
    PlayerTextDrawColor(playerid, ClotheMenu[playerid][22], 0x3399FF66);
    PlayerTextDrawSetShadow(playerid, ClotheMenu[playerid][22], 0);
    PlayerTextDrawSetOutline(playerid, ClotheMenu[playerid][22], 0);
    PlayerTextDrawBackgroundColor(playerid, ClotheMenu[playerid][22], 255);
    PlayerTextDrawFont(playerid, ClotheMenu[playerid][22], 4);
    PlayerTextDrawSetProportional(playerid, ClotheMenu[playerid][22], 1);
    PlayerTextDrawSetSelectable(playerid, ClotheMenu[playerid][22], 1);

    ClotheMenu[playerid][23] = CreatePlayerTextDraw(playerid, 412.000, 350.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ClotheMenu[playerid][23], 31.000, 24.000);
    PlayerTextDrawAlignment(playerid, ClotheMenu[playerid][23], 1);
    PlayerTextDrawColor(playerid, ClotheMenu[playerid][23], 0x3399FF66);
    PlayerTextDrawSetShadow(playerid, ClotheMenu[playerid][23], 0);
    PlayerTextDrawSetOutline(playerid, ClotheMenu[playerid][23], 0);
    PlayerTextDrawBackgroundColor(playerid, ClotheMenu[playerid][23], 255);
    PlayerTextDrawFont(playerid, ClotheMenu[playerid][23], 4);
    PlayerTextDrawSetProportional(playerid, ClotheMenu[playerid][23], 1);
    PlayerTextDrawSetSelectable(playerid, ClotheMenu[playerid][23], 1);

    ClotheMenu[playerid][24] = CreatePlayerTextDraw(playerid, 528.000, 311.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ClotheMenu[playerid][24], 22.000, 22.000);
    PlayerTextDrawAlignment(playerid, ClotheMenu[playerid][24], 1);
    PlayerTextDrawColor(playerid, ClotheMenu[playerid][24], 0x3399FF66);
    PlayerTextDrawSetShadow(playerid, ClotheMenu[playerid][24], 0);
    PlayerTextDrawSetOutline(playerid, ClotheMenu[playerid][24], 0);
    PlayerTextDrawBackgroundColor(playerid, ClotheMenu[playerid][24], 255);
    PlayerTextDrawFont(playerid, ClotheMenu[playerid][24], 4);
    PlayerTextDrawSetProportional(playerid, ClotheMenu[playerid][24], 1);
    PlayerTextDrawSetSelectable(playerid, ClotheMenu[playerid][24], 1);

    ClotheMenu[playerid][25] = CreatePlayerTextDraw(playerid, 535.000, 313.000, "X");
    PlayerTextDrawLetterSize(playerid, ClotheMenu[playerid][25], 0.349, 1.800);
    PlayerTextDrawAlignment(playerid, ClotheMenu[playerid][25], 1);
    PlayerTextDrawColor(playerid, ClotheMenu[playerid][25], -16776961);
    PlayerTextDrawSetShadow(playerid, ClotheMenu[playerid][25], 0);
    PlayerTextDrawSetOutline(playerid, ClotheMenu[playerid][25], 0);
    PlayerTextDrawBackgroundColor(playerid, ClotheMenu[playerid][25], 150);
    PlayerTextDrawFont(playerid, ClotheMenu[playerid][25], 1);
    PlayerTextDrawSetProportional(playerid, ClotheMenu[playerid][25], 1);

    ClotheMenu[playerid][26] = CreatePlayerTextDraw(playerid, 338.000, 327.000, "01/120");
    PlayerTextDrawLetterSize(playerid, ClotheMenu[playerid][26], 0.149, 1.199);
    PlayerTextDrawAlignment(playerid, ClotheMenu[playerid][26], 2);
    PlayerTextDrawColor(playerid, ClotheMenu[playerid][26], -1);
    PlayerTextDrawSetShadow(playerid, ClotheMenu[playerid][26], 0);
    PlayerTextDrawSetOutline(playerid, ClotheMenu[playerid][26], 0);
    PlayerTextDrawBackgroundColor(playerid, ClotheMenu[playerid][26], 150);
    PlayerTextDrawFont(playerid, ClotheMenu[playerid][26], 1);
    PlayerTextDrawSetProportional(playerid, ClotheMenu[playerid][26], 1);

    ClotheMenu[playerid][27] = CreatePlayerTextDraw(playerid, 337.000, 356.000, "Beli");
    PlayerTextDrawLetterSize(playerid, ClotheMenu[playerid][27], 0.220, 1.199);
    PlayerTextDrawAlignment(playerid, ClotheMenu[playerid][27], 2);
    PlayerTextDrawColor(playerid, ClotheMenu[playerid][27], -1);
    PlayerTextDrawSetShadow(playerid, ClotheMenu[playerid][27], 0);
    PlayerTextDrawSetOutline(playerid, ClotheMenu[playerid][27], 0);
    PlayerTextDrawBackgroundColor(playerid, ClotheMenu[playerid][27], 150);
    PlayerTextDrawFont(playerid, ClotheMenu[playerid][27], 1);
    PlayerTextDrawSetProportional(playerid, ClotheMenu[playerid][27], 1);

    ClotheMenu[playerid][28] = CreatePlayerTextDraw(playerid, 391.000, 355.000, ">>");
    PlayerTextDrawLetterSize(playerid, ClotheMenu[playerid][28], 0.220, 1.199);
    PlayerTextDrawAlignment(playerid, ClotheMenu[playerid][28], 2);
    PlayerTextDrawColor(playerid, ClotheMenu[playerid][28], -1);
    PlayerTextDrawSetShadow(playerid, ClotheMenu[playerid][28], 0);
    PlayerTextDrawSetOutline(playerid, ClotheMenu[playerid][28], 0);
    PlayerTextDrawBackgroundColor(playerid, ClotheMenu[playerid][28], 150);
    PlayerTextDrawFont(playerid, ClotheMenu[playerid][28], 1);
    PlayerTextDrawSetProportional(playerid, ClotheMenu[playerid][28], 1);

    ClotheMenu[playerid][29] = CreatePlayerTextDraw(playerid, 428.000, 354.000, "ROT>");
    PlayerTextDrawLetterSize(playerid, ClotheMenu[playerid][29], 0.220, 1.500);
    PlayerTextDrawAlignment(playerid, ClotheMenu[playerid][29], 2);
    PlayerTextDrawColor(playerid, ClotheMenu[playerid][29], -1);
    PlayerTextDrawSetShadow(playerid, ClotheMenu[playerid][29], 0);
    PlayerTextDrawSetOutline(playerid, ClotheMenu[playerid][29], 0);
    PlayerTextDrawBackgroundColor(playerid, ClotheMenu[playerid][29], 150);
    PlayerTextDrawFont(playerid, ClotheMenu[playerid][29], 1);
    PlayerTextDrawSetProportional(playerid, ClotheMenu[playerid][29], 1);

    ClotheMenu[playerid][30] = CreatePlayerTextDraw(playerid, 284.000, 355.000, "<<");
    PlayerTextDrawLetterSize(playerid, ClotheMenu[playerid][30], 0.220, 1.199);
    PlayerTextDrawAlignment(playerid, ClotheMenu[playerid][30], 2);
    PlayerTextDrawColor(playerid, ClotheMenu[playerid][30], -1);
    PlayerTextDrawSetShadow(playerid, ClotheMenu[playerid][30], 0);
    PlayerTextDrawSetOutline(playerid, ClotheMenu[playerid][30], 0);
    PlayerTextDrawBackgroundColor(playerid, ClotheMenu[playerid][30], 150);
    PlayerTextDrawFont(playerid, ClotheMenu[playerid][30], 1);
    PlayerTextDrawSetProportional(playerid, ClotheMenu[playerid][30], 1);

    ClotheMenu[playerid][31] = CreatePlayerTextDraw(playerid, 248.000, 354.000, "<ROT");
    PlayerTextDrawLetterSize(playerid, ClotheMenu[playerid][31], 0.220, 1.500);
    PlayerTextDrawAlignment(playerid, ClotheMenu[playerid][31], 2);
    PlayerTextDrawColor(playerid, ClotheMenu[playerid][31], -1);
    PlayerTextDrawSetShadow(playerid, ClotheMenu[playerid][31], 0);
    PlayerTextDrawSetOutline(playerid, ClotheMenu[playerid][31], 0);
    PlayerTextDrawBackgroundColor(playerid, ClotheMenu[playerid][31], 150);
    PlayerTextDrawFont(playerid, ClotheMenu[playerid][31], 1);
    PlayerTextDrawSetProportional(playerid, ClotheMenu[playerid][31], 1);

    ClotheMenu[playerid][32] = CreatePlayerTextDraw(playerid, 183.000, 400.000, "Pakaian");
    PlayerTextDrawLetterSize(playerid, ClotheMenu[playerid][32], 0.179, 0.999);
    PlayerTextDrawAlignment(playerid, ClotheMenu[playerid][32], 2);
    PlayerTextDrawColor(playerid, ClotheMenu[playerid][32], -1);
    PlayerTextDrawSetShadow(playerid, ClotheMenu[playerid][32], 0);
    PlayerTextDrawSetOutline(playerid, ClotheMenu[playerid][32], 0);
    PlayerTextDrawBackgroundColor(playerid, ClotheMenu[playerid][32], 150);
    PlayerTextDrawFont(playerid, ClotheMenu[playerid][32], 1);
    PlayerTextDrawSetProportional(playerid, ClotheMenu[playerid][32], 1);

    ClotheMenu[playerid][33] = CreatePlayerTextDraw(playerid, 339.000, 400.000, "Kacamata");
    PlayerTextDrawLetterSize(playerid, ClotheMenu[playerid][33], 0.179, 0.999);
    PlayerTextDrawAlignment(playerid, ClotheMenu[playerid][33], 2);
    PlayerTextDrawColor(playerid, ClotheMenu[playerid][33], -1);
    PlayerTextDrawSetShadow(playerid, ClotheMenu[playerid][33], 0);
    PlayerTextDrawSetOutline(playerid, ClotheMenu[playerid][33], 0);
    PlayerTextDrawBackgroundColor(playerid, ClotheMenu[playerid][33], 150);
    PlayerTextDrawFont(playerid, ClotheMenu[playerid][33], 1);
    PlayerTextDrawSetProportional(playerid, ClotheMenu[playerid][33], 1);

    ClotheMenu[playerid][34] = CreatePlayerTextDraw(playerid, 418.000, 400.000, "Backpack");
    PlayerTextDrawLetterSize(playerid, ClotheMenu[playerid][34], 0.179, 0.999);
    PlayerTextDrawAlignment(playerid, ClotheMenu[playerid][34], 2);
    PlayerTextDrawColor(playerid, ClotheMenu[playerid][34], -1);
    PlayerTextDrawSetShadow(playerid, ClotheMenu[playerid][34], 0);
    PlayerTextDrawSetOutline(playerid, ClotheMenu[playerid][34], 0);
    PlayerTextDrawBackgroundColor(playerid, ClotheMenu[playerid][34], 150);
    PlayerTextDrawFont(playerid, ClotheMenu[playerid][34], 1);
    PlayerTextDrawSetProportional(playerid, ClotheMenu[playerid][34], 1);

    ClotheMenu[playerid][35] = CreatePlayerTextDraw(playerid, 261.000, 400.000, "Aksesoris");
    PlayerTextDrawLetterSize(playerid, ClotheMenu[playerid][35], 0.179, 0.999);
    PlayerTextDrawAlignment(playerid, ClotheMenu[playerid][35], 2);
    PlayerTextDrawColor(playerid, ClotheMenu[playerid][35], -1);
    PlayerTextDrawSetShadow(playerid, ClotheMenu[playerid][35], 0);
    PlayerTextDrawSetOutline(playerid, ClotheMenu[playerid][35], 0);
    PlayerTextDrawBackgroundColor(playerid, ClotheMenu[playerid][35], 150);
    PlayerTextDrawFont(playerid, ClotheMenu[playerid][35], 1);
    PlayerTextDrawSetProportional(playerid, ClotheMenu[playerid][35], 1);

    ClotheMenu[playerid][36] = CreatePlayerTextDraw(playerid, 495.000, 400.000, "Topi");
    PlayerTextDrawLetterSize(playerid, ClotheMenu[playerid][36], 0.179, 0.999);
    PlayerTextDrawAlignment(playerid, ClotheMenu[playerid][36], 2);
    PlayerTextDrawColor(playerid, ClotheMenu[playerid][36], -1);
    PlayerTextDrawSetShadow(playerid, ClotheMenu[playerid][36], 0);
    PlayerTextDrawSetOutline(playerid, ClotheMenu[playerid][36], 0);
    PlayerTextDrawBackgroundColor(playerid, ClotheMenu[playerid][36], 150);
    PlayerTextDrawFont(playerid, ClotheMenu[playerid][36], 1);
    PlayerTextDrawSetProportional(playerid, ClotheMenu[playerid][36], 1);

    // Clothes Bizz
    ClothesMenuBizz[playerid][0] = CreatePlayerTextDraw(playerid, 476.000, 393.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ClothesMenuBizz[playerid][0], 41.000, 1.000);
    PlayerTextDrawAlignment(playerid, ClothesMenuBizz[playerid][0], 1);
    PlayerTextDrawColor(playerid, ClothesMenuBizz[playerid][0], -2139062017);
    PlayerTextDrawSetShadow(playerid, ClothesMenuBizz[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, ClothesMenuBizz[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, ClothesMenuBizz[playerid][0], 255);
    PlayerTextDrawFont(playerid, ClothesMenuBizz[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, ClothesMenuBizz[playerid][0], 1);

    ClothesMenuBizz[playerid][1] = CreatePlayerTextDraw(playerid, 135.000, 64.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ClothesMenuBizz[playerid][1], 398.000, 1.000);
    PlayerTextDrawAlignment(playerid, ClothesMenuBizz[playerid][1], 1);
    PlayerTextDrawColor(playerid, ClothesMenuBizz[playerid][1], -2139062098);
    PlayerTextDrawSetShadow(playerid, ClothesMenuBizz[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, ClothesMenuBizz[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, ClothesMenuBizz[playerid][1], 255);
    PlayerTextDrawFont(playerid, ClothesMenuBizz[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, ClothesMenuBizz[playerid][1], 1);

    ClothesMenuBizz[playerid][2] = CreatePlayerTextDraw(playerid, 259.000, 64.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ClothesMenuBizz[playerid][2], 158.000, 1.000);
    PlayerTextDrawAlignment(playerid, ClothesMenuBizz[playerid][2], 1);
    PlayerTextDrawColor(playerid, ClothesMenuBizz[playerid][2], -92245249);
    PlayerTextDrawSetShadow(playerid, ClothesMenuBizz[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, ClothesMenuBizz[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, ClothesMenuBizz[playerid][2], 255);
    PlayerTextDrawFont(playerid, ClothesMenuBizz[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, ClothesMenuBizz[playerid][2], 1);

    ClothesMenuBizz[playerid][3] = CreatePlayerTextDraw(playerid, 336.000, 47.000, "Clothes Shop");
    PlayerTextDrawLetterSize(playerid, ClothesMenuBizz[playerid][3], 0.210, 1.499);
    PlayerTextDrawAlignment(playerid, ClothesMenuBizz[playerid][3], 2);
    PlayerTextDrawColor(playerid, ClothesMenuBizz[playerid][3], -92245249);
    PlayerTextDrawSetShadow(playerid, ClothesMenuBizz[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, ClothesMenuBizz[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, ClothesMenuBizz[playerid][3], 150);
    PlayerTextDrawFont(playerid, ClothesMenuBizz[playerid][3], 1);
    PlayerTextDrawSetProportional(playerid, ClothesMenuBizz[playerid][3], 1);

    ClothesMenuBizz[playerid][4] = CreatePlayerTextDraw(playerid, 154.000, 394.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ClothesMenuBizz[playerid][4], 61.000, 23.000);
    PlayerTextDrawAlignment(playerid, ClothesMenuBizz[playerid][4], 1);
    PlayerTextDrawColor(playerid, ClothesMenuBizz[playerid][4], 0x3399FF66);
    PlayerTextDrawSetShadow(playerid, ClothesMenuBizz[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, ClothesMenuBizz[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, ClothesMenuBizz[playerid][4], 255);
    PlayerTextDrawFont(playerid, ClothesMenuBizz[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, ClothesMenuBizz[playerid][4], 1);
    PlayerTextDrawSetSelectable(playerid, ClothesMenuBizz[playerid][4], 1);

    ClothesMenuBizz[playerid][5] = CreatePlayerTextDraw(playerid, 232.000, 394.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ClothesMenuBizz[playerid][5], 61.000, 23.000);
    PlayerTextDrawAlignment(playerid, ClothesMenuBizz[playerid][5], 1);
    PlayerTextDrawColor(playerid, ClothesMenuBizz[playerid][5], 0x3399FF66);
    PlayerTextDrawSetShadow(playerid, ClothesMenuBizz[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, ClothesMenuBizz[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, ClothesMenuBizz[playerid][5], 255);
    PlayerTextDrawFont(playerid, ClothesMenuBizz[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, ClothesMenuBizz[playerid][5], 1);
    PlayerTextDrawSetSelectable(playerid, ClothesMenuBizz[playerid][5], 1);

    ClothesMenuBizz[playerid][6] = CreatePlayerTextDraw(playerid, 309.000, 394.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ClothesMenuBizz[playerid][6], 61.000, 23.000);
    PlayerTextDrawAlignment(playerid, ClothesMenuBizz[playerid][6], 1);
    PlayerTextDrawColor(playerid, ClothesMenuBizz[playerid][6], 0x3399FF66);
    PlayerTextDrawSetShadow(playerid, ClothesMenuBizz[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, ClothesMenuBizz[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, ClothesMenuBizz[playerid][6], 255);
    PlayerTextDrawFont(playerid, ClothesMenuBizz[playerid][6], 4);
    PlayerTextDrawSetProportional(playerid, ClothesMenuBizz[playerid][6], 1);
    PlayerTextDrawSetSelectable(playerid, ClothesMenuBizz[playerid][6], 1);

    ClothesMenuBizz[playerid][7] = CreatePlayerTextDraw(playerid, 388.000, 394.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ClothesMenuBizz[playerid][7], 61.000, 23.000);
    PlayerTextDrawAlignment(playerid, ClothesMenuBizz[playerid][7], 1);
    PlayerTextDrawColor(playerid, ClothesMenuBizz[playerid][7], 0x3399FF66);
    PlayerTextDrawSetShadow(playerid, ClothesMenuBizz[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, ClothesMenuBizz[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, ClothesMenuBizz[playerid][7], 255);
    PlayerTextDrawFont(playerid, ClothesMenuBizz[playerid][7], 4);
    PlayerTextDrawSetProportional(playerid, ClothesMenuBizz[playerid][7], 1);
    PlayerTextDrawSetSelectable(playerid, ClothesMenuBizz[playerid][7], 1);

    ClothesMenuBizz[playerid][8] = CreatePlayerTextDraw(playerid, 465.000, 394.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ClothesMenuBizz[playerid][8], 61.000, 23.000);
    PlayerTextDrawAlignment(playerid, ClothesMenuBizz[playerid][8], 1);
    PlayerTextDrawColor(playerid, ClothesMenuBizz[playerid][8], 0x3399FF66);
    PlayerTextDrawSetShadow(playerid, ClothesMenuBizz[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, ClothesMenuBizz[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, ClothesMenuBizz[playerid][8], 255);
    PlayerTextDrawFont(playerid, ClothesMenuBizz[playerid][8], 4);
    PlayerTextDrawSetProportional(playerid, ClothesMenuBizz[playerid][8], 1);
    PlayerTextDrawSetSelectable(playerid, ClothesMenuBizz[playerid][8], 1);

    ClothesMenuBizz[playerid][9] = CreatePlayerTextDraw(playerid, 154.000, 419.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ClothesMenuBizz[playerid][9], 61.000, 4.000);
    PlayerTextDrawAlignment(playerid, ClothesMenuBizz[playerid][9], 1);
    PlayerTextDrawColor(playerid, ClothesMenuBizz[playerid][9], 0x3399FF66);
    PlayerTextDrawSetShadow(playerid, ClothesMenuBizz[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, ClothesMenuBizz[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, ClothesMenuBizz[playerid][9], 255);
    PlayerTextDrawFont(playerid, ClothesMenuBizz[playerid][9], 4);
    PlayerTextDrawSetProportional(playerid, ClothesMenuBizz[playerid][9], 1);

    ClothesMenuBizz[playerid][10] = CreatePlayerTextDraw(playerid, 232.000, 419.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ClothesMenuBizz[playerid][10], 61.000, 4.000);
    PlayerTextDrawAlignment(playerid, ClothesMenuBizz[playerid][10], 1);
    PlayerTextDrawColor(playerid, ClothesMenuBizz[playerid][10], 0x3399FF66);
    PlayerTextDrawSetShadow(playerid, ClothesMenuBizz[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, ClothesMenuBizz[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, ClothesMenuBizz[playerid][10], 255);
    PlayerTextDrawFont(playerid, ClothesMenuBizz[playerid][10], 4);
    PlayerTextDrawSetProportional(playerid, ClothesMenuBizz[playerid][10], 1);

    ClothesMenuBizz[playerid][11] = CreatePlayerTextDraw(playerid, 309.000, 419.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ClothesMenuBizz[playerid][11], 61.000, 4.000);
    PlayerTextDrawAlignment(playerid, ClothesMenuBizz[playerid][11], 1);
    PlayerTextDrawColor(playerid, ClothesMenuBizz[playerid][11], 0x3399FF66);
    PlayerTextDrawSetShadow(playerid, ClothesMenuBizz[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, ClothesMenuBizz[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, ClothesMenuBizz[playerid][11], 255);
    PlayerTextDrawFont(playerid, ClothesMenuBizz[playerid][11], 4);
    PlayerTextDrawSetProportional(playerid, ClothesMenuBizz[playerid][11], 1);

    ClothesMenuBizz[playerid][12] = CreatePlayerTextDraw(playerid, 388.000, 419.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ClothesMenuBizz[playerid][12], 61.000, 4.000);
    PlayerTextDrawAlignment(playerid, ClothesMenuBizz[playerid][12], 1);
    PlayerTextDrawColor(playerid, ClothesMenuBizz[playerid][12], 0x3399FF66);
    PlayerTextDrawSetShadow(playerid, ClothesMenuBizz[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, ClothesMenuBizz[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, ClothesMenuBizz[playerid][12], 255);
    PlayerTextDrawFont(playerid, ClothesMenuBizz[playerid][12], 4);
    PlayerTextDrawSetProportional(playerid, ClothesMenuBizz[playerid][12], 1);

    ClothesMenuBizz[playerid][13] = CreatePlayerTextDraw(playerid, 465.000, 419.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ClothesMenuBizz[playerid][13], 61.000, 4.000);
    PlayerTextDrawAlignment(playerid, ClothesMenuBizz[playerid][13], 1);
    PlayerTextDrawColor(playerid, ClothesMenuBizz[playerid][13], 0x3399FF66);
    PlayerTextDrawSetShadow(playerid, ClothesMenuBizz[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, ClothesMenuBizz[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, ClothesMenuBizz[playerid][13], 255);
    PlayerTextDrawFont(playerid, ClothesMenuBizz[playerid][13], 4);
    PlayerTextDrawSetProportional(playerid, ClothesMenuBizz[playerid][13], 1);

    ClothesMenuBizz[playerid][14] = CreatePlayerTextDraw(playerid, 163.000, 393.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ClothesMenuBizz[playerid][14], 41.000, 1.000);
    PlayerTextDrawAlignment(playerid, ClothesMenuBizz[playerid][14], 1);
    PlayerTextDrawColor(playerid, ClothesMenuBizz[playerid][14], -2139062017);
    PlayerTextDrawSetShadow(playerid, ClothesMenuBizz[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, ClothesMenuBizz[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, ClothesMenuBizz[playerid][14], 255);
    PlayerTextDrawFont(playerid, ClothesMenuBizz[playerid][14], 4);
    PlayerTextDrawSetProportional(playerid, ClothesMenuBizz[playerid][14], 1);

    ClothesMenuBizz[playerid][15] = CreatePlayerTextDraw(playerid, 241.000, 393.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ClothesMenuBizz[playerid][15], 41.000, 1.000);
    PlayerTextDrawAlignment(playerid, ClothesMenuBizz[playerid][15], 1);
    PlayerTextDrawColor(playerid, ClothesMenuBizz[playerid][15], -2139062017);
    PlayerTextDrawSetShadow(playerid, ClothesMenuBizz[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, ClothesMenuBizz[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, ClothesMenuBizz[playerid][15], 255);
    PlayerTextDrawFont(playerid, ClothesMenuBizz[playerid][15], 4);
    PlayerTextDrawSetProportional(playerid, ClothesMenuBizz[playerid][15], 1);

    ClothesMenuBizz[playerid][16] = CreatePlayerTextDraw(playerid, 319.000, 393.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ClothesMenuBizz[playerid][16], 41.000, 1.000);
    PlayerTextDrawAlignment(playerid, ClothesMenuBizz[playerid][16], 1);
    PlayerTextDrawColor(playerid, ClothesMenuBizz[playerid][16], -2139062017);
    PlayerTextDrawSetShadow(playerid, ClothesMenuBizz[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, ClothesMenuBizz[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, ClothesMenuBizz[playerid][16], 255);
    PlayerTextDrawFont(playerid, ClothesMenuBizz[playerid][16], 4);
    PlayerTextDrawSetProportional(playerid, ClothesMenuBizz[playerid][16], 1);

    ClothesMenuBizz[playerid][17] = CreatePlayerTextDraw(playerid, 398.000, 393.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ClothesMenuBizz[playerid][17], 41.000, 1.000);
    PlayerTextDrawAlignment(playerid, ClothesMenuBizz[playerid][17], 1);
    PlayerTextDrawColor(playerid, ClothesMenuBizz[playerid][17], -2139062017);
    PlayerTextDrawSetShadow(playerid, ClothesMenuBizz[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, ClothesMenuBizz[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, ClothesMenuBizz[playerid][17], 255);
    PlayerTextDrawFont(playerid, ClothesMenuBizz[playerid][17], 4);
    PlayerTextDrawSetProportional(playerid, ClothesMenuBizz[playerid][17], 1);

    ClothesMenuBizz[playerid][18] = CreatePlayerTextDraw(playerid, 308.000, 350.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ClothesMenuBizz[playerid][18], 60.000, 24.000);
    PlayerTextDrawAlignment(playerid, ClothesMenuBizz[playerid][18], 1);
    PlayerTextDrawColor(playerid, ClothesMenuBizz[playerid][18], -2139062172);
    PlayerTextDrawSetShadow(playerid, ClothesMenuBizz[playerid][18], 0);
    PlayerTextDrawSetOutline(playerid, ClothesMenuBizz[playerid][18], 0);
    PlayerTextDrawBackgroundColor(playerid, ClothesMenuBizz[playerid][18], 255);
    PlayerTextDrawFont(playerid, ClothesMenuBizz[playerid][18], 4);
    PlayerTextDrawSetProportional(playerid, ClothesMenuBizz[playerid][18], 1);
    PlayerTextDrawSetSelectable(playerid, ClothesMenuBizz[playerid][18], 1);

    ClothesMenuBizz[playerid][19] = CreatePlayerTextDraw(playerid, 324.000, 323.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ClothesMenuBizz[playerid][19], 27.000, 22.000);
    PlayerTextDrawAlignment(playerid, ClothesMenuBizz[playerid][19], 1);
    PlayerTextDrawColor(playerid, ClothesMenuBizz[playerid][19], -2139062172);
    PlayerTextDrawSetShadow(playerid, ClothesMenuBizz[playerid][19], 0);
    PlayerTextDrawSetOutline(playerid, ClothesMenuBizz[playerid][19], 0);
    PlayerTextDrawBackgroundColor(playerid, ClothesMenuBizz[playerid][19], 255);
    PlayerTextDrawFont(playerid, ClothesMenuBizz[playerid][19], 4);
    PlayerTextDrawSetProportional(playerid, ClothesMenuBizz[playerid][19], 1);
    PlayerTextDrawSetSelectable(playerid, ClothesMenuBizz[playerid][19], 1);

    ClothesMenuBizz[playerid][20] = CreatePlayerTextDraw(playerid, 270.000, 350.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ClothesMenuBizz[playerid][20], 31.000, 24.000);
    PlayerTextDrawAlignment(playerid, ClothesMenuBizz[playerid][20], 1);
    PlayerTextDrawColor(playerid, ClothesMenuBizz[playerid][20], 0x3399FF66);
    PlayerTextDrawSetShadow(playerid, ClothesMenuBizz[playerid][20], 0);
    PlayerTextDrawSetOutline(playerid, ClothesMenuBizz[playerid][20], 0);
    PlayerTextDrawBackgroundColor(playerid, ClothesMenuBizz[playerid][20], 255);
    PlayerTextDrawFont(playerid, ClothesMenuBizz[playerid][20], 4);
    PlayerTextDrawSetProportional(playerid, ClothesMenuBizz[playerid][20], 1);
    PlayerTextDrawSetSelectable(playerid, ClothesMenuBizz[playerid][20], 1);

    ClothesMenuBizz[playerid][21] = CreatePlayerTextDraw(playerid, 375.000, 350.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ClothesMenuBizz[playerid][21], 31.000, 24.000);
    PlayerTextDrawAlignment(playerid, ClothesMenuBizz[playerid][21], 1);
    PlayerTextDrawColor(playerid, ClothesMenuBizz[playerid][21], 0x3399FF66);
    PlayerTextDrawSetShadow(playerid, ClothesMenuBizz[playerid][21], 0);
    PlayerTextDrawSetOutline(playerid, ClothesMenuBizz[playerid][21], 0);
    PlayerTextDrawBackgroundColor(playerid, ClothesMenuBizz[playerid][21], 255);
    PlayerTextDrawFont(playerid, ClothesMenuBizz[playerid][21], 4);
    PlayerTextDrawSetProportional(playerid, ClothesMenuBizz[playerid][21], 1);
    PlayerTextDrawSetSelectable(playerid, ClothesMenuBizz[playerid][21], 1);

    ClothesMenuBizz[playerid][22] = CreatePlayerTextDraw(playerid, 233.000, 350.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ClothesMenuBizz[playerid][22], 31.000, 24.000);
    PlayerTextDrawAlignment(playerid, ClothesMenuBizz[playerid][22], 1);
    PlayerTextDrawColor(playerid, ClothesMenuBizz[playerid][22], 0x3399FF66);
    PlayerTextDrawSetShadow(playerid, ClothesMenuBizz[playerid][22], 0);
    PlayerTextDrawSetOutline(playerid, ClothesMenuBizz[playerid][22], 0);
    PlayerTextDrawBackgroundColor(playerid, ClothesMenuBizz[playerid][22], 255);
    PlayerTextDrawFont(playerid, ClothesMenuBizz[playerid][22], 4);
    PlayerTextDrawSetProportional(playerid, ClothesMenuBizz[playerid][22], 1);
    PlayerTextDrawSetSelectable(playerid, ClothesMenuBizz[playerid][22], 1);

    ClothesMenuBizz[playerid][23] = CreatePlayerTextDraw(playerid, 412.000, 350.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ClothesMenuBizz[playerid][23], 31.000, 24.000);
    PlayerTextDrawAlignment(playerid, ClothesMenuBizz[playerid][23], 1);
    PlayerTextDrawColor(playerid, ClothesMenuBizz[playerid][23], 0x3399FF66);
    PlayerTextDrawSetShadow(playerid, ClothesMenuBizz[playerid][23], 0);
    PlayerTextDrawSetOutline(playerid, ClothesMenuBizz[playerid][23], 0);
    PlayerTextDrawBackgroundColor(playerid, ClothesMenuBizz[playerid][23], 255);
    PlayerTextDrawFont(playerid, ClothesMenuBizz[playerid][23], 4);
    PlayerTextDrawSetProportional(playerid, ClothesMenuBizz[playerid][23], 1);
    PlayerTextDrawSetSelectable(playerid, ClothesMenuBizz[playerid][23], 1);

    ClothesMenuBizz[playerid][24] = CreatePlayerTextDraw(playerid, 528.000, 311.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ClothesMenuBizz[playerid][24], 22.000, 22.000);
    PlayerTextDrawAlignment(playerid, ClothesMenuBizz[playerid][24], 1);
    PlayerTextDrawColor(playerid, ClothesMenuBizz[playerid][24], 0x3399FF66);
    PlayerTextDrawSetShadow(playerid, ClothesMenuBizz[playerid][24], 0);
    PlayerTextDrawSetOutline(playerid, ClothesMenuBizz[playerid][24], 0);
    PlayerTextDrawBackgroundColor(playerid, ClothesMenuBizz[playerid][24], 255);
    PlayerTextDrawFont(playerid, ClothesMenuBizz[playerid][24], 4);
    PlayerTextDrawSetProportional(playerid, ClothesMenuBizz[playerid][24], 1);
    PlayerTextDrawSetSelectable(playerid, ClothesMenuBizz[playerid][24], 1);

    ClothesMenuBizz[playerid][25] = CreatePlayerTextDraw(playerid, 535.000, 313.000, "X");
    PlayerTextDrawLetterSize(playerid, ClothesMenuBizz[playerid][25], 0.349, 1.800);
    PlayerTextDrawAlignment(playerid, ClothesMenuBizz[playerid][25], 1);
    PlayerTextDrawColor(playerid, ClothesMenuBizz[playerid][25], -16776961);
    PlayerTextDrawSetShadow(playerid, ClothesMenuBizz[playerid][25], 0);
    PlayerTextDrawSetOutline(playerid, ClothesMenuBizz[playerid][25], 0);
    PlayerTextDrawBackgroundColor(playerid, ClothesMenuBizz[playerid][25], 150);
    PlayerTextDrawFont(playerid, ClothesMenuBizz[playerid][25], 1);
    PlayerTextDrawSetProportional(playerid, ClothesMenuBizz[playerid][25], 1);

    ClothesMenuBizz[playerid][26] = CreatePlayerTextDraw(playerid, 338.000, 327.000, "01/120");
    PlayerTextDrawLetterSize(playerid, ClothesMenuBizz[playerid][26], 0.149, 1.199);
    PlayerTextDrawAlignment(playerid, ClothesMenuBizz[playerid][26], 2);
    PlayerTextDrawColor(playerid, ClothesMenuBizz[playerid][26], -1);
    PlayerTextDrawSetShadow(playerid, ClothesMenuBizz[playerid][26], 0);
    PlayerTextDrawSetOutline(playerid, ClothesMenuBizz[playerid][26], 0);
    PlayerTextDrawBackgroundColor(playerid, ClothesMenuBizz[playerid][26], 150);
    PlayerTextDrawFont(playerid, ClothesMenuBizz[playerid][26], 1);
    PlayerTextDrawSetProportional(playerid, ClothesMenuBizz[playerid][26], 1);

    ClothesMenuBizz[playerid][27] = CreatePlayerTextDraw(playerid, 337.000, 356.000, "Beli");
    PlayerTextDrawLetterSize(playerid, ClothesMenuBizz[playerid][27], 0.220, 1.199);
    PlayerTextDrawAlignment(playerid, ClothesMenuBizz[playerid][27], 2);
    PlayerTextDrawColor(playerid, ClothesMenuBizz[playerid][27], -1);
    PlayerTextDrawSetShadow(playerid, ClothesMenuBizz[playerid][27], 0);
    PlayerTextDrawSetOutline(playerid, ClothesMenuBizz[playerid][27], 0);
    PlayerTextDrawBackgroundColor(playerid, ClothesMenuBizz[playerid][27], 150);
    PlayerTextDrawFont(playerid, ClothesMenuBizz[playerid][27], 1);
    PlayerTextDrawSetProportional(playerid, ClothesMenuBizz[playerid][27], 1);

    ClothesMenuBizz[playerid][28] = CreatePlayerTextDraw(playerid, 391.000, 355.000, ">>");
    PlayerTextDrawLetterSize(playerid, ClothesMenuBizz[playerid][28], 0.220, 1.199);
    PlayerTextDrawAlignment(playerid, ClothesMenuBizz[playerid][28], 2);
    PlayerTextDrawColor(playerid, ClothesMenuBizz[playerid][28], -1);
    PlayerTextDrawSetShadow(playerid, ClothesMenuBizz[playerid][28], 0);
    PlayerTextDrawSetOutline(playerid, ClothesMenuBizz[playerid][28], 0);
    PlayerTextDrawBackgroundColor(playerid, ClothesMenuBizz[playerid][28], 150);
    PlayerTextDrawFont(playerid, ClothesMenuBizz[playerid][28], 1);
    PlayerTextDrawSetProportional(playerid, ClothesMenuBizz[playerid][28], 1);

    ClothesMenuBizz[playerid][29] = CreatePlayerTextDraw(playerid, 428.000, 354.000, "ROT>");
    PlayerTextDrawLetterSize(playerid, ClothesMenuBizz[playerid][29], 0.220, 1.500);
    PlayerTextDrawAlignment(playerid, ClothesMenuBizz[playerid][29], 2);
    PlayerTextDrawColor(playerid, ClothesMenuBizz[playerid][29], -1);
    PlayerTextDrawSetShadow(playerid, ClothesMenuBizz[playerid][29], 0);
    PlayerTextDrawSetOutline(playerid, ClothesMenuBizz[playerid][29], 0);
    PlayerTextDrawBackgroundColor(playerid, ClothesMenuBizz[playerid][29], 150);
    PlayerTextDrawFont(playerid, ClothesMenuBizz[playerid][29], 1);
    PlayerTextDrawSetProportional(playerid, ClothesMenuBizz[playerid][29], 1);

    ClothesMenuBizz[playerid][30] = CreatePlayerTextDraw(playerid, 284.000, 355.000, "<<");
    PlayerTextDrawLetterSize(playerid, ClothesMenuBizz[playerid][30], 0.220, 1.199);
    PlayerTextDrawAlignment(playerid, ClothesMenuBizz[playerid][30], 2);
    PlayerTextDrawColor(playerid, ClothesMenuBizz[playerid][30], -1);
    PlayerTextDrawSetShadow(playerid, ClothesMenuBizz[playerid][30], 0);
    PlayerTextDrawSetOutline(playerid, ClothesMenuBizz[playerid][30], 0);
    PlayerTextDrawBackgroundColor(playerid, ClothesMenuBizz[playerid][30], 150);
    PlayerTextDrawFont(playerid, ClothesMenuBizz[playerid][30], 1);
    PlayerTextDrawSetProportional(playerid, ClothesMenuBizz[playerid][30], 1);

    ClothesMenuBizz[playerid][31] = CreatePlayerTextDraw(playerid, 248.000, 354.000, "<ROT");
    PlayerTextDrawLetterSize(playerid, ClothesMenuBizz[playerid][31], 0.220, 1.500);
    PlayerTextDrawAlignment(playerid, ClothesMenuBizz[playerid][31], 2);
    PlayerTextDrawColor(playerid, ClothesMenuBizz[playerid][31], -1);
    PlayerTextDrawSetShadow(playerid, ClothesMenuBizz[playerid][31], 0);
    PlayerTextDrawSetOutline(playerid, ClothesMenuBizz[playerid][31], 0);
    PlayerTextDrawBackgroundColor(playerid, ClothesMenuBizz[playerid][31], 150);
    PlayerTextDrawFont(playerid, ClothesMenuBizz[playerid][31], 1);
    PlayerTextDrawSetProportional(playerid, ClothesMenuBizz[playerid][31], 1);

    ClothesMenuBizz[playerid][32] = CreatePlayerTextDraw(playerid, 183.000, 400.000, "Pakaian");
    PlayerTextDrawLetterSize(playerid, ClothesMenuBizz[playerid][32], 0.179, 0.999);
    PlayerTextDrawAlignment(playerid, ClothesMenuBizz[playerid][32], 2);
    PlayerTextDrawColor(playerid, ClothesMenuBizz[playerid][32], -1);
    PlayerTextDrawSetShadow(playerid, ClothesMenuBizz[playerid][32], 0);
    PlayerTextDrawSetOutline(playerid, ClothesMenuBizz[playerid][32], 0);
    PlayerTextDrawBackgroundColor(playerid, ClothesMenuBizz[playerid][32], 150);
    PlayerTextDrawFont(playerid, ClothesMenuBizz[playerid][32], 1);
    PlayerTextDrawSetProportional(playerid, ClothesMenuBizz[playerid][32], 1);

    ClothesMenuBizz[playerid][33] = CreatePlayerTextDraw(playerid, 339.000, 400.000, "Kacamata");
    PlayerTextDrawLetterSize(playerid, ClothesMenuBizz[playerid][33], 0.179, 0.999);
    PlayerTextDrawAlignment(playerid, ClothesMenuBizz[playerid][33], 2);
    PlayerTextDrawColor(playerid, ClothesMenuBizz[playerid][33], -1);
    PlayerTextDrawSetShadow(playerid, ClothesMenuBizz[playerid][33], 0);
    PlayerTextDrawSetOutline(playerid, ClothesMenuBizz[playerid][33], 0);
    PlayerTextDrawBackgroundColor(playerid, ClothesMenuBizz[playerid][33], 150);
    PlayerTextDrawFont(playerid, ClothesMenuBizz[playerid][33], 1);
    PlayerTextDrawSetProportional(playerid, ClothesMenuBizz[playerid][33], 1);

    ClothesMenuBizz[playerid][34] = CreatePlayerTextDraw(playerid, 418.000, 400.000, "Backpack");
    PlayerTextDrawLetterSize(playerid, ClothesMenuBizz[playerid][34], 0.179, 0.999);
    PlayerTextDrawAlignment(playerid, ClothesMenuBizz[playerid][34], 2);
    PlayerTextDrawColor(playerid, ClothesMenuBizz[playerid][34], -1);
    PlayerTextDrawSetShadow(playerid, ClothesMenuBizz[playerid][34], 0);
    PlayerTextDrawSetOutline(playerid, ClothesMenuBizz[playerid][34], 0);
    PlayerTextDrawBackgroundColor(playerid, ClothesMenuBizz[playerid][34], 150);
    PlayerTextDrawFont(playerid, ClothesMenuBizz[playerid][34], 1);
    PlayerTextDrawSetProportional(playerid, ClothesMenuBizz[playerid][34], 1);

    ClothesMenuBizz[playerid][35] = CreatePlayerTextDraw(playerid, 261.000, 400.000, "Aksesoris");
    PlayerTextDrawLetterSize(playerid, ClothesMenuBizz[playerid][35], 0.179, 0.999);
    PlayerTextDrawAlignment(playerid, ClothesMenuBizz[playerid][35], 2);
    PlayerTextDrawColor(playerid, ClothesMenuBizz[playerid][35], -1);
    PlayerTextDrawSetShadow(playerid, ClothesMenuBizz[playerid][35], 0);
    PlayerTextDrawSetOutline(playerid, ClothesMenuBizz[playerid][35], 0);
    PlayerTextDrawBackgroundColor(playerid, ClothesMenuBizz[playerid][35], 150);
    PlayerTextDrawFont(playerid, ClothesMenuBizz[playerid][35], 1);
    PlayerTextDrawSetProportional(playerid, ClothesMenuBizz[playerid][35], 1);

    ClothesMenuBizz[playerid][36] = CreatePlayerTextDraw(playerid, 495.000, 400.000, "Topi");
    PlayerTextDrawLetterSize(playerid, ClothesMenuBizz[playerid][36], 0.179, 0.999);
    PlayerTextDrawAlignment(playerid, ClothesMenuBizz[playerid][36], 2);
    PlayerTextDrawColor(playerid, ClothesMenuBizz[playerid][36], -1);
    PlayerTextDrawSetShadow(playerid, ClothesMenuBizz[playerid][36], 0);
    PlayerTextDrawSetOutline(playerid, ClothesMenuBizz[playerid][36], 0);
    PlayerTextDrawBackgroundColor(playerid, ClothesMenuBizz[playerid][36], 150);
    PlayerTextDrawFont(playerid, ClothesMenuBizz[playerid][36], 1);
    PlayerTextDrawSetProportional(playerid, ClothesMenuBizz[playerid][36], 1);

    // Bus Waiting
    BusWait[playerid][0] = CreatePlayerTextDraw(playerid, 320.000, 351.000, "~w~Waiting_Time:_10~n~~r~NOTE~w~: Tunggu untuk lanjut ke rute berikutnya");
    PlayerTextDrawLetterSize(playerid, BusWait[playerid][0], 0.300, 1.500);
    PlayerTextDrawAlignment(playerid, BusWait[playerid][0], 2);
    PlayerTextDrawColor(playerid, BusWait[playerid][0], -1);
    PlayerTextDrawSetShadow(playerid, BusWait[playerid][0], 1);
    PlayerTextDrawSetOutline(playerid, BusWait[playerid][0], 1);
    PlayerTextDrawBackgroundColor(playerid, BusWait[playerid][0], 150);
    PlayerTextDrawFont(playerid, BusWait[playerid][0], 1);
    PlayerTextDrawSetProportional(playerid, BusWait[playerid][0], 1);
}

CreateTextDraw()
{ 
    gServerMessage[0] = TextDrawCreate(211.000, 41.000, "LD_SPAC:white");
    TextDrawTextSize(gServerMessage[0], 218.000, 62.000);
    TextDrawAlignment(gServerMessage[0], 1);
    TextDrawColor(gServerMessage[0], -6710840);
    TextDrawSetShadow(gServerMessage[0], 0);
    TextDrawSetOutline(gServerMessage[0], 0);
    TextDrawBackgroundColor(gServerMessage[0], 255);
    TextDrawFont(gServerMessage[0], 4);
    TextDrawSetProportional(gServerMessage[0], 1);

    gServerMessage[1] = TextDrawCreate(213.000, 44.000, "LD_SPAC:white");
    TextDrawTextSize(gServerMessage[1], 214.000, 57.000);
    TextDrawAlignment(gServerMessage[1], 1);
    TextDrawColor(gServerMessage[1], 200);
    TextDrawSetShadow(gServerMessage[1], 0);
    TextDrawSetOutline(gServerMessage[1], 0);
    TextDrawBackgroundColor(gServerMessage[1], 255);
    TextDrawFont(gServerMessage[1], 4);
    TextDrawSetProportional(gServerMessage[1], 1);

    gServerMessage[2] = TextDrawCreate(220.000, 50.000, "LD_CHAT:badchat");
    TextDrawTextSize(gServerMessage[2], 10.000, 10.000);
    TextDrawAlignment(gServerMessage[2], 1);
    TextDrawColor(gServerMessage[2], -1);
    TextDrawSetShadow(gServerMessage[2], 0);
    TextDrawSetOutline(gServerMessage[2], 0);
    TextDrawBackgroundColor(gServerMessage[2], 255);
    TextDrawFont(gServerMessage[2], 4);
    TextDrawSetProportional(gServerMessage[2], 1);

    gServerMessage[3] = TextDrawCreate(232.000, 50.000, "ANNOUNCEMENT");
    TextDrawLetterSize(gServerMessage[3], 0.200, 0.999);
    TextDrawAlignment(gServerMessage[3], 1);
    TextDrawColor(gServerMessage[3], -1);
    TextDrawSetShadow(gServerMessage[3], 1);
    TextDrawSetOutline(gServerMessage[3], 1);
    TextDrawBackgroundColor(gServerMessage[3], 150);
    TextDrawFont(gServerMessage[3], 1);
    TextDrawSetProportional(gServerMessage[3], 1);

    gServerMessage[4] = TextDrawCreate(219.000, 71.000, "SERVER AKAN MAINTANCE PADA PUKUL 12.00 WIB, DIHARAPKAN UNTUK KALIAN MEMASUKKAN KENDARAAN KE GARASI TERDEKAT");
    TextDrawLetterSize(gServerMessage[4], 0.209, 0.898);
    TextDrawTextSize(gServerMessage[4], 416.000, 61.000);
    TextDrawAlignment(gServerMessage[4], 1);
    TextDrawColor(gServerMessage[4], -1);
    TextDrawSetShadow(gServerMessage[4], 1);
    TextDrawSetOutline(gServerMessage[4], 1);
    TextDrawBackgroundColor(gServerMessage[4], 150);
    TextDrawFont(gServerMessage[4], 1);
    TextDrawSetProportional(gServerMessage[4], 1);

    gServerMessage[5] = TextDrawCreate(379.000, 106.000, "Admin By: Astral City - YellowKitty");
    TextDrawLetterSize(gServerMessage[5], 0.159, 0.898);
    TextDrawAlignment(gServerMessage[5], 2);
    TextDrawColor(gServerMessage[5], -1);
    TextDrawSetShadow(gServerMessage[5], 1);
    TextDrawSetOutline(gServerMessage[5], 1);
    TextDrawBackgroundColor(gServerMessage[5], 150);
    TextDrawFont(gServerMessage[5], 1);
    TextDrawSetProportional(gServerMessage[5], 1);

    gServerMessage[6] = TextDrawCreate(328.000, 104.000, "LD_SPAC:white");
    TextDrawTextSize(gServerMessage[6], 101.000, 14.000);
    TextDrawAlignment(gServerMessage[6], 1);
    TextDrawColor(gServerMessage[6], 200);
    TextDrawSetShadow(gServerMessage[6], 0);
    TextDrawSetOutline(gServerMessage[6], 0);
    TextDrawBackgroundColor(gServerMessage[6], 255);
    TextDrawFont(gServerMessage[6], 4);
    TextDrawSetProportional(gServerMessage[6], 1);
    
    ATRP_Warning[0] = TextDrawCreate(-2.000, -2.000, "LD_BUM:blkdot");
    TextDrawTextSize(ATRP_Warning[0], 657.000, 460.000);
    TextDrawAlignment(ATRP_Warning[0], 1);
    TextDrawColor(ATRP_Warning[0], -16777126);
    TextDrawSetShadow(ATRP_Warning[0], 0);
    TextDrawSetOutline(ATRP_Warning[0], 0);
    TextDrawBackgroundColor(ATRP_Warning[0], 255);
    TextDrawFont(ATRP_Warning[0], 4);
    TextDrawSetProportional(ATRP_Warning[0], 1);

    ATRP_Warning[1] = TextDrawCreate(238.000, 153.000, "LD_BUM:blkdot");
    TextDrawTextSize(ATRP_Warning[1], 165.000, 2.000);
    TextDrawAlignment(ATRP_Warning[1], 1);
    TextDrawColor(ATRP_Warning[1], -1);
    TextDrawSetShadow(ATRP_Warning[1], 0);
    TextDrawSetOutline(ATRP_Warning[1], 0);
    TextDrawBackgroundColor(ATRP_Warning[1], 255);
    TextDrawFont(ATRP_Warning[1], 4);
    TextDrawSetProportional(ATRP_Warning[1], 1);

    ATRP_Warning[2] = TextDrawCreate(238.000, 260.000, "LD_BUM:blkdot");
    TextDrawTextSize(ATRP_Warning[2], 165.000, 2.000);
    TextDrawAlignment(ATRP_Warning[2], 1);
    TextDrawColor(ATRP_Warning[2], -1);
    TextDrawSetShadow(ATRP_Warning[2], 0);
    TextDrawSetOutline(ATRP_Warning[2], 0);
    TextDrawBackgroundColor(ATRP_Warning[2], 255);
    TextDrawFont(ATRP_Warning[2], 4);
    TextDrawSetProportional(ATRP_Warning[2], 1);

    ATRP_Warning[3] = TextDrawCreate(238.000, 154.000, "LD_BUM:blkdot");
    TextDrawTextSize(ATRP_Warning[3], 2.000, 107.000);
    TextDrawAlignment(ATRP_Warning[3], 1);
    TextDrawColor(ATRP_Warning[3], -1);
    TextDrawSetShadow(ATRP_Warning[3], 0);
    TextDrawSetOutline(ATRP_Warning[3], 0);
    TextDrawBackgroundColor(ATRP_Warning[3], 255);
    TextDrawFont(ATRP_Warning[3], 4);
    TextDrawSetProportional(ATRP_Warning[3], 1);

    ATRP_Warning[4] = TextDrawCreate(401.000, 154.000, "LD_BUM:blkdot");
    TextDrawTextSize(ATRP_Warning[4], 2.000, 107.000);
    TextDrawAlignment(ATRP_Warning[4], 1);
    TextDrawColor(ATRP_Warning[4], -1);
    TextDrawSetShadow(ATRP_Warning[4], 0);
    TextDrawSetOutline(ATRP_Warning[4], 0);
    TextDrawBackgroundColor(ATRP_Warning[4], 255);
    TextDrawFont(ATRP_Warning[4], 4);
    TextDrawSetProportional(ATRP_Warning[4], 1);

    ATRP_Warning[5] = TextDrawCreate(243.000, 181.000, "LD_BUM:blkdot");
    TextDrawTextSize(ATRP_Warning[5], 156.000, -1.000);
    TextDrawAlignment(ATRP_Warning[5], 1);
    TextDrawColor(ATRP_Warning[5], -1);
    TextDrawSetShadow(ATRP_Warning[5], 0);
    TextDrawSetOutline(ATRP_Warning[5], 0);
    TextDrawBackgroundColor(ATRP_Warning[5], 255);
    TextDrawFont(ATRP_Warning[5], 4);
    TextDrawSetProportional(ATRP_Warning[5], 1);

    ATRP_Warning[6] = TextDrawCreate(268.000, 157.000, "WARNING!");
    TextDrawLetterSize(ATRP_Warning[6], 0.458, 2.198);
    TextDrawAlignment(ATRP_Warning[6], 1);
    TextDrawColor(ATRP_Warning[6], -1);
    TextDrawSetShadow(ATRP_Warning[6], 0);
    TextDrawSetOutline(ATRP_Warning[6], 0);
    TextDrawBackgroundColor(ATRP_Warning[6], 150);
    TextDrawFont(ATRP_Warning[6], 1);
    TextDrawSetProportional(ATRP_Warning[6], 1);

    ATRP_Warning[7] = TextDrawCreate(347.000, 158.000, "LD_CHAT:badchat");
    TextDrawTextSize(ATRP_Warning[7], 17.000, 17.000);
    TextDrawAlignment(ATRP_Warning[7], 1);
    TextDrawColor(ATRP_Warning[7], -1);
    TextDrawSetShadow(ATRP_Warning[7], 0);
    TextDrawSetOutline(ATRP_Warning[7], 0);
    TextDrawBackgroundColor(ATRP_Warning[7], 255);
    TextDrawFont(ATRP_Warning[7], 4);
    TextDrawSetProportional(ATRP_Warning[7], 1);

    ATRP_Warning[8] = TextDrawCreate(256.000, 193.000, "ANAK BUAH WAHYU DILARANG Astral City DI Astral City");
    TextDrawLetterSize(ATRP_Warning[8], 0.250, 1.299);
    TextDrawTextSize(ATRP_Warning[8], 381.000, 7.000);
    TextDrawAlignment(ATRP_Warning[8], 1);
    TextDrawColor(ATRP_Warning[8], -1);
    TextDrawSetShadow(ATRP_Warning[8], 0);
    TextDrawSetOutline(ATRP_Warning[8], 0);
    TextDrawBackgroundColor(ATRP_Warning[8], 150);
    TextDrawFont(ATRP_Warning[8], 1);
    TextDrawSetProportional(ATRP_Warning[8], 1);

    ATRP_Warning[9] = TextDrawCreate(397.000, 242.000, "Warned by: Astral City - Azpsss.");
    TextDrawLetterSize(ATRP_Warning[9], 0.159, 1.098);
    TextDrawTextSize(ATRP_Warning[9], 462.000, -5.000);
    TextDrawAlignment(ATRP_Warning[9], 3);
    TextDrawColor(ATRP_Warning[9], -1);
    TextDrawSetShadow(ATRP_Warning[9], 0);
    TextDrawSetOutline(ATRP_Warning[9], 0);
    TextDrawBackgroundColor(ATRP_Warning[9], 150);
    TextDrawFont(ATRP_Warning[9], 1);
    TextDrawSetProportional(ATRP_Warning[9], 1);
            
    // Restart Server
    gServerTextdraws[0] = TextDrawCreate(22.005966, 209.766693, "_");
    TextDrawLetterSize(gServerTextdraws[0], 0.263191, 1.156665);
    TextDrawAlignment(gServerTextdraws[0], 1);
    TextDrawColor(gServerTextdraws[0], -1);
    TextDrawSetShadow(gServerTextdraws[0], 0);
    TextDrawSetOutline(gServerTextdraws[0], 1);
    TextDrawBackgroundColor(gServerTextdraws[0], 255);
    TextDrawFont(gServerTextdraws[0], 3);
    TextDrawSetProportional(gServerTextdraws[0], 1);
    TextDrawSetShadow(gServerTextdraws[0], 0);

    // Robbery
    RobberyGlobalTD[0] = TextDrawCreate(18.000, 294.000, "LD_DUAL:white");
    TextDrawTextSize(RobberyGlobalTD[0], 104.000, 38.000);
    TextDrawAlignment(RobberyGlobalTD[0], 1);
    TextDrawColor(RobberyGlobalTD[0], 1926328957);
    TextDrawSetShadow(RobberyGlobalTD[0], 0);
    TextDrawSetOutline(RobberyGlobalTD[0], 0);
    TextDrawBackgroundColor(RobberyGlobalTD[0], 255);
    TextDrawFont(RobberyGlobalTD[0], 4);
    TextDrawSetProportional(RobberyGlobalTD[0], 1);

    RobberyGlobalTD[1] = TextDrawCreate(18.000, 294.000, "LD_DUAL:white");
    TextDrawTextSize(RobberyGlobalTD[1], 24.000, 19.000);
    TextDrawAlignment(RobberyGlobalTD[1], 1);
    TextDrawColor(RobberyGlobalTD[1], 1926329087);
    TextDrawSetShadow(RobberyGlobalTD[1], 0);
    TextDrawSetOutline(RobberyGlobalTD[1], 0);
    TextDrawBackgroundColor(RobberyGlobalTD[1], 255);
    TextDrawFont(RobberyGlobalTD[1], 4);
    TextDrawSetProportional(RobberyGlobalTD[1], 1);

    RobberyGlobalTD[2] = TextDrawCreate(25.000, 297.000, "HUD:radar_ammugun");
    TextDrawTextSize(RobberyGlobalTD[2], 12.000, 12.000);
    TextDrawAlignment(RobberyGlobalTD[2], 1);
    TextDrawColor(RobberyGlobalTD[2], -1);
    TextDrawSetShadow(RobberyGlobalTD[2], 0);
    TextDrawSetOutline(RobberyGlobalTD[2], 0);
    TextDrawBackgroundColor(RobberyGlobalTD[2], 255);
    TextDrawFont(RobberyGlobalTD[2], 4);
    TextDrawSetProportional(RobberyGlobalTD[2], 1);

    RobberyGlobalTD[3] = TextDrawCreate(44.000, 293.000, "Astral City Roleplay~n~Perampokan Warung");
    TextDrawLetterSize(RobberyGlobalTD[3], 0.129, 0.999);
    TextDrawAlignment(RobberyGlobalTD[3], 1);
    TextDrawColor(RobberyGlobalTD[3], -1);
    TextDrawSetShadow(RobberyGlobalTD[3], 0);
    TextDrawSetOutline(RobberyGlobalTD[3], 0);
    TextDrawBackgroundColor(RobberyGlobalTD[3], 150);
    TextDrawFont(RobberyGlobalTD[3], 2);
    TextDrawSetProportional(RobberyGlobalTD[3], 1);

    RobberyGlobalTD[4] = TextDrawCreate(20.000, 312.000, "Perampokan Warung gagal, anda terlalu~n~jauh dari Warung!");
    TextDrawLetterSize(RobberyGlobalTD[4], 0.129, 0.999);
    TextDrawAlignment(RobberyGlobalTD[4], 1);
    TextDrawColor(RobberyGlobalTD[4], -1);
    TextDrawSetShadow(RobberyGlobalTD[4], 0);
    TextDrawSetOutline(RobberyGlobalTD[4], 0);
    TextDrawBackgroundColor(RobberyGlobalTD[4], 150);
    TextDrawFont(RobberyGlobalTD[4], 1);
    TextDrawSetProportional(RobberyGlobalTD[4], 1);

    TollTD[0] = TextDrawCreate(396.000, 144.000, "LD_BUM:blkdot");
    TextDrawTextSize(TollTD[0], 103.000, 222.000);
    TextDrawAlignment(TollTD[0], 1);
    TextDrawColor(TollTD[0], -2139062017);
    TextDrawSetShadow(TollTD[0], 0);
    TextDrawSetOutline(TollTD[0], 0);
    TextDrawBackgroundColor(TollTD[0], 255);
    TextDrawFont(TollTD[0], 4);
    TextDrawSetProportional(TollTD[0], 1);

    TollTD[1] = TextDrawCreate(443.000, 147.000, "LD_BUM:blkdot");
    TextDrawTextSize(TollTD[1], 53.000, 84.000);
    TextDrawAlignment(TollTD[1], 1);
    TextDrawColor(TollTD[1], 12582911);
    TextDrawSetShadow(TollTD[1], 0);
    TextDrawSetOutline(TollTD[1], 0);
    TextDrawBackgroundColor(TollTD[1], 255);
    TextDrawFont(TollTD[1], 4);
    TextDrawSetProportional(TollTD[1], 1);

    TollTD[2] = TextDrawCreate(399.000, 231.000, "LD_BUM:blkdot");
    TextDrawTextSize(TollTD[2], 97.000, 131.000);
    TextDrawAlignment(TollTD[2], 1);
    TextDrawColor(TollTD[2], 421097727);
    TextDrawSetShadow(TollTD[2], 0);
    TextDrawSetOutline(TollTD[2], 0);
    TextDrawBackgroundColor(TollTD[2], 255);
    TextDrawFont(TollTD[2], 4);
    TextDrawSetProportional(TollTD[2], 1);

    TollTD[3] = TextDrawCreate(399.000, 147.000, "LD_BUM:blkdot");
    TextDrawTextSize(TollTD[3], 50.000, 84.000);
    TextDrawAlignment(TollTD[3], 1);
    TextDrawColor(TollTD[3], 421097727);
    TextDrawSetShadow(TollTD[3], 0);
    TextDrawSetOutline(TollTD[3], 0);
    TextDrawBackgroundColor(TollTD[3], 255);
    TextDrawFont(TollTD[3], 4);
    TextDrawSetProportional(TollTD[3], 1);

    TollTD[4] = TextDrawCreate(402.000, 150.000, "LD_BUM:blkdot");
    TextDrawTextSize(TollTD[4], 3.000, 207.000);
    TextDrawAlignment(TollTD[4], 1);
    TextDrawColor(TollTD[4], -1);
    TextDrawSetShadow(TollTD[4], 0);
    TextDrawSetOutline(TollTD[4], 0);
    TextDrawBackgroundColor(TollTD[4], 255);
    TextDrawFont(TollTD[4], 4);
    TextDrawSetProportional(TollTD[4], 1);

    TollTD[5] = TextDrawCreate(490.000, 150.000, "LD_BUM:blkdot");
    TextDrawTextSize(TollTD[5], 3.000, 207.000);
    TextDrawAlignment(TollTD[5], 1);
    TextDrawColor(TollTD[5], -1);
    TextDrawSetShadow(TollTD[5], 0);
    TextDrawSetOutline(TollTD[5], 0);
    TextDrawBackgroundColor(TollTD[5], 255);
    TextDrawFont(TollTD[5], 4);
    TextDrawSetProportional(TollTD[5], 1);

    TollTD[6] = TextDrawCreate(404.000, 150.000, "LD_BUM:blkdot");
    TextDrawTextSize(TollTD[6], 87.000, 3.000);
    TextDrawAlignment(TollTD[6], 1);
    TextDrawColor(TollTD[6], -1);
    TextDrawSetShadow(TollTD[6], 0);
    TextDrawSetOutline(TollTD[6], 0);
    TextDrawBackgroundColor(TollTD[6], 255);
    TextDrawFont(TollTD[6], 4);
    TextDrawSetProportional(TollTD[6], 1);

    TollTD[7] = TextDrawCreate(411.000, 160.000, "LD_BUM:blkdot");
    TextDrawTextSize(TollTD[7], 73.000, 44.000);
    TextDrawAlignment(TollTD[7], 1);
    TextDrawColor(TollTD[7], 1768516095);
    TextDrawSetShadow(TollTD[7], 0);
    TextDrawSetOutline(TollTD[7], 0);
    TextDrawBackgroundColor(TollTD[7], 255);
    TextDrawFont(TollTD[7], 4);
    TextDrawSetProportional(TollTD[7], 1);

    TollTD[8] = TextDrawCreate(452.000, 235.000, "LD_BUM:blkdot");
    TextDrawTextSize(TollTD[8], 35.000, 65.000);
    TextDrawAlignment(TollTD[8], 1);
    TextDrawColor(TollTD[8], -2686721);
    TextDrawSetShadow(TollTD[8], 0);
    TextDrawSetOutline(TollTD[8], 0);
    TextDrawBackgroundColor(TollTD[8], 255);
    TextDrawFont(TollTD[8], 4);
    TextDrawSetProportional(TollTD[8], 1);

    TollTD[9] = TextDrawCreate(404.000, 354.000, "LD_BUM:blkdot");
    TextDrawTextSize(TollTD[9], 87.000, 3.000);
    TextDrawAlignment(TollTD[9], 1);
    TextDrawColor(TollTD[9], -1);
    TextDrawSetShadow(TollTD[9], 0);
    TextDrawSetOutline(TollTD[9], 0);
    TextDrawBackgroundColor(TollTD[9], 255);
    TextDrawFont(TollTD[9], 4);
    TextDrawSetProportional(TollTD[9], 1);

    TollTD[10] = TextDrawCreate(452.000, 298.000, "LD_BUM:blkdot");
    TextDrawTextSize(TollTD[10], 35.000, 2.000);
    TextDrawAlignment(TollTD[10], 1);
    TextDrawColor(TollTD[10], -65281);
    TextDrawSetShadow(TollTD[10], 0);
    TextDrawSetOutline(TollTD[10], 0);
    TextDrawBackgroundColor(TollTD[10], 255);
    TextDrawFont(TollTD[10], 4);
    TextDrawSetProportional(TollTD[10], 1);

    TollTD[11] = TextDrawCreate(402.000, 235.000, "LD_BUM:blkdot");
    TextDrawTextSize(TollTD[11], 47.000, 122.000);
    TextDrawAlignment(TollTD[11], 1);
    TextDrawColor(TollTD[11], -2686721);
    TextDrawSetShadow(TollTD[11], 0);
    TextDrawSetOutline(TollTD[11], 0);
    TextDrawBackgroundColor(TollTD[11], 255);
    TextDrawFont(TollTD[11], 4);
    TextDrawSetProportional(TollTD[11], 1);

    TollTD[12] = TextDrawCreate(407.000, 248.000, "LD_BUM:blkdot");
    TextDrawTextSize(TollTD[12], 38.000, 53.000);
    TextDrawAlignment(TollTD[12], 1);
    TextDrawColor(TollTD[12], 421097727);
    TextDrawSetShadow(TollTD[12], 0);
    TextDrawSetOutline(TollTD[12], 0);
    TextDrawBackgroundColor(TollTD[12], 255);
    TextDrawFont(TollTD[12], 4);
    TextDrawSetProportional(TollTD[12], 1);

    TollTD[13] = TextDrawCreate(415.000, 267.000, "LD_BUM:blkdot");
    TextDrawTextSize(TollTD[13], 23.000, 5.000);
    TextDrawAlignment(TollTD[13], 1);
    TextDrawColor(TollTD[13], 255);
    TextDrawSetShadow(TollTD[13], 0);
    TextDrawSetOutline(TollTD[13], 0);
    TextDrawBackgroundColor(TollTD[13], 255);
    TextDrawFont(TollTD[13], 4);
    TextDrawSetProportional(TollTD[13], 1);

    TollTD[14] = TextDrawCreate(417.000, 269.000, "LD_BUM:blkdot");
    TextDrawTextSize(TollTD[14], 19.000, 6.000);
    TextDrawAlignment(TollTD[14], 1);
    TextDrawColor(TollTD[14], -1);
    TextDrawSetShadow(TollTD[14], 0);
    TextDrawSetOutline(TollTD[14], 0);
    TextDrawBackgroundColor(TollTD[14], 255);
    TextDrawFont(TollTD[14], 4);
    TextDrawSetProportional(TollTD[14], 1);

    TollTD[15] = TextDrawCreate(418.000, 270.000, "LD_BUM:blkdot");
    TextDrawTextSize(TollTD[15], 17.000, 0.500);
    TextDrawAlignment(TollTD[15], 1);
    TextDrawColor(TollTD[15], -2139062017);
    TextDrawSetShadow(TollTD[15], 0);
    TextDrawSetOutline(TollTD[15], 0);
    TextDrawBackgroundColor(TollTD[15], 255);
    TextDrawFont(TollTD[15], 4);
    TextDrawSetProportional(TollTD[15], 1);

    TollTD[16] = TextDrawCreate(425.500, 238.000, "Tanda terima");
    TextDrawLetterSize(TollTD[16], 0.158, 0.799);
    TextDrawAlignment(TollTD[16], 2);
    TextDrawColor(TollTD[16], -1);
    TextDrawSetShadow(TollTD[16], 1);
    TextDrawSetOutline(TollTD[16], 0);
    TextDrawBackgroundColor(TollTD[16], 255);
    TextDrawFont(TollTD[16], 1);
    TextDrawSetProportional(TollTD[16], 1);

    TollTD[17] = TextDrawCreate(454.000, 258.000, "LD_BEAT:chit");
    TextDrawTextSize(TollTD[17], 32.000, 40.000);
    TextDrawAlignment(TollTD[17], 1);
    TextDrawColor(TollTD[17], 255);
    TextDrawSetShadow(TollTD[17], 0);
    TextDrawSetOutline(TollTD[17], 0);
    TextDrawBackgroundColor(TollTD[17], 255);
    TextDrawFont(TollTD[17], 4);
    TextDrawSetProportional(TollTD[17], 1);

    TollTD[18] = TextDrawCreate(455.000, 259.000, "LD_BEAT:chit");
    TextDrawTextSize(TollTD[18], 30.000, 38.000);
    TextDrawAlignment(TollTD[18], 1);
    TextDrawColor(TollTD[18], -2686721);
    TextDrawSetShadow(TollTD[18], 0);
    TextDrawSetOutline(TollTD[18], 0);
    TextDrawBackgroundColor(TollTD[18], 255);
    TextDrawFont(TollTD[18], 4);
    TextDrawSetProportional(TollTD[18], 1);

    TollTD[19] = TextDrawCreate(458.000, 263.000, "LD_BEAT:chit");
    TextDrawTextSize(TollTD[19], 24.000, 30.000);
    TextDrawAlignment(TollTD[19], 1);
    TextDrawColor(TollTD[19], 255);
    TextDrawSetShadow(TollTD[19], 0);
    TextDrawSetOutline(TollTD[19], 0);
    TextDrawBackgroundColor(TollTD[19], 255);
    TextDrawFont(TollTD[19], 4);
    TextDrawSetProportional(TollTD[19], 1);
    TextDrawSetSelectable(TollTD[19], 1);

    TollTD[20] = TextDrawCreate(470.000, 274.000, "TAP");
    TextDrawLetterSize(TollTD[20], 0.128, 0.699);
    TextDrawAlignment(TollTD[20], 2);
    TextDrawColor(TollTD[20], -2686721);
    TextDrawSetShadow(TollTD[20], 1);
    TextDrawSetOutline(TollTD[20], 1);
    TextDrawBackgroundColor(TollTD[20], 0);
    TextDrawFont(TollTD[20], 1);
    TextDrawSetProportional(TollTD[20], 1);

    TollTD[21] = TextDrawCreate(455.000, 238.000, "LD_BUM:blkdot");
    TextDrawTextSize(TollTD[21], 29.000, 20.000);
    TextDrawAlignment(TollTD[21], 1);
    TextDrawColor(TollTD[21], 255);
    TextDrawSetShadow(TollTD[21], 0);
    TextDrawSetOutline(TollTD[21], 0);
    TextDrawBackgroundColor(TollTD[21], 255);
    TextDrawFont(TollTD[21], 4);
    TextDrawSetProportional(TollTD[21], 1);

    TollTD[22] = TextDrawCreate(456.000, 239.000, "LD_BUM:blkdot");
    TextDrawTextSize(TollTD[22], 27.000, 18.000);
    TextDrawAlignment(TollTD[22], 1);
    TextDrawColor(TollTD[22], 1768516095);
    TextDrawSetShadow(TollTD[22], 0);
    TextDrawSetOutline(TollTD[22], 0);
    TextDrawBackgroundColor(TollTD[22], 255);
    TextDrawFont(TollTD[22], 4);
    TextDrawSetProportional(TollTD[22], 1);

    TollTD[23] = TextDrawCreate(470.000, 244.000, "$50");
    TextDrawLetterSize(TollTD[23], 0.128, 0.699);
    TextDrawAlignment(TollTD[23], 2);
    TextDrawColor(TollTD[23], 3604735);
    TextDrawSetShadow(TollTD[23], 1);
    TextDrawSetOutline(TollTD[23], 0);
    TextDrawBackgroundColor(TollTD[23], 0);
    TextDrawFont(TollTD[23], 1);
    TextDrawSetProportional(TollTD[23], 1);

    TollTD[24] = TextDrawCreate(448.000, 167.000, "GERBANG TOLL");
    TextDrawLetterSize(TollTD[24], 0.179, 0.999);
    TextDrawAlignment(TollTD[24], 2);
    TextDrawColor(TollTD[24], -7601921);
    TextDrawSetShadow(TollTD[24], 1);
    TextDrawSetOutline(TollTD[24], 6);
    TextDrawBackgroundColor(TollTD[24], 0);
    TextDrawFont(TollTD[24], 1);
    TextDrawSetProportional(TollTD[24], 1);

    TollTD[25] = TextDrawCreate(448.000, 179.000, "Astral City");
    TextDrawLetterSize(TollTD[25], 0.298, 1.799);
    TextDrawAlignment(TollTD[25], 2);
    TextDrawColor(TollTD[25], -7601921);
    TextDrawSetShadow(TollTD[25], 1);
    TextDrawSetOutline(TollTD[25], 6);
    TextDrawBackgroundColor(TollTD[25], 0);
    TextDrawFont(TollTD[25], 1);
    TextDrawSetProportional(TollTD[25], 1);
        
    //Stress Purple
    StressPurple[0] = TextDrawCreate(314.000000, 1.000000, "_");
	TextDrawFont(StressPurple[0], 1);
	TextDrawLetterSize(StressPurple[0], 0.600000, 51.049999);
	TextDrawTextSize(StressPurple[0], 298.500000, 676.500000);
	TextDrawSetOutline(StressPurple[0], 1);
	TextDrawSetShadow(StressPurple[0], 0);
	TextDrawAlignment(StressPurple[0], 2);
	TextDrawColor(StressPurple[0], -1);
	TextDrawBackgroundColor(StressPurple[0], 255);
	TextDrawBoxColor(StressPurple[0], -2147450812);
	TextDrawUseBox(StressPurple[0], 1);
	TextDrawSetProportional(StressPurple[0], 1);
	TextDrawSetSelectable(StressPurple[0], 0);
}
