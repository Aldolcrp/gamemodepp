#include <YSI\y_hooks>

new Text:RadialTD[51],
	Text:RadialActionTD[45],
	Text:RadialVehTD[50],
	Text:RadialCardTD[28];

CreateRadialTD()
{
	RadialTD[0] = TextDrawCreate(263.000, 199.000, "_");
	TextDrawTextSize(RadialTD[0], 45.000, 57.000);
	TextDrawAlignment(RadialTD[0], 1);
	TextDrawColor(RadialTD[0], 40);
	TextDrawSetShadow(RadialTD[0], 0);
	TextDrawSetOutline(RadialTD[0], 0);
	TextDrawBackgroundColor(RadialTD[0], 0);
	TextDrawFont(RadialTD[0], 5);
	TextDrawSetProportional(RadialTD[0], 0);
	TextDrawSetPreviewModel(RadialTD[0], 2751);
	TextDrawSetPreviewRot(RadialTD[0], -90.000, 0.000, -30.000, 0.799);
	TextDrawSetPreviewVehCol(RadialTD[0], 0, 0);
	TextDrawSetSelectable(RadialTD[0], 1);

	RadialTD[1] = TextDrawCreate(299.000, 199.000, "_");
	TextDrawTextSize(RadialTD[1], 45.000, 57.000);
	TextDrawAlignment(RadialTD[1], 1);
	TextDrawColor(RadialTD[1], -16777176);
	TextDrawSetShadow(RadialTD[1], 0);
	TextDrawSetOutline(RadialTD[1], 0);
	TextDrawBackgroundColor(RadialTD[1], 0);
	TextDrawFont(RadialTD[1], 5);
	TextDrawSetProportional(RadialTD[1], 0);
	TextDrawSetPreviewModel(RadialTD[1], 2751);
	TextDrawSetPreviewRot(RadialTD[1], -90.000, 0.000, -30.000, 0.799);
	TextDrawSetPreviewVehCol(RadialTD[1], 0, 0);
	TextDrawSetSelectable(RadialTD[1], 1);

	RadialTD[2] = TextDrawCreate(281.000, 159.000, "_");
	TextDrawTextSize(RadialTD[2], 45.000, 57.000);
	TextDrawAlignment(RadialTD[2], 1);
	TextDrawColor(RadialTD[2], 50);
	TextDrawSetShadow(RadialTD[2], 0);
	TextDrawSetOutline(RadialTD[2], 0);
	TextDrawBackgroundColor(RadialTD[2], 0);
	TextDrawFont(RadialTD[2], 5);
	TextDrawSetProportional(RadialTD[2], 0);
	TextDrawSetPreviewModel(RadialTD[2], 2751);
	TextDrawSetPreviewRot(RadialTD[2], -90.000, 0.000, -30.000, 0.799);
	TextDrawSetPreviewVehCol(RadialTD[2], 0, 0);
	TextDrawSetSelectable(RadialTD[2], 1);

	RadialTD[3] = TextDrawCreate(318.000, 159.000, "_");
	TextDrawTextSize(RadialTD[3], 45.000, 57.000);
	TextDrawAlignment(RadialTD[3], 1);
	TextDrawColor(RadialTD[3], 50);
	TextDrawSetShadow(RadialTD[3], 0);
	TextDrawSetOutline(RadialTD[3], 0);
	TextDrawBackgroundColor(RadialTD[3], 0);
	TextDrawFont(RadialTD[3], 5);
	TextDrawSetProportional(RadialTD[3], 0);
	TextDrawSetPreviewModel(RadialTD[3], 2751);
	TextDrawSetPreviewRot(RadialTD[3], -90.000, 0.000, -30.000, 0.799);
	TextDrawSetPreviewVehCol(RadialTD[3], 0, 0);
	TextDrawSetSelectable(RadialTD[3], 1);

	RadialTD[4] = TextDrawCreate(336.000, 200.000, "_");
	TextDrawTextSize(RadialTD[4], 45.000, 57.000);
	TextDrawAlignment(RadialTD[4], 1);
	TextDrawColor(RadialTD[4], 50);
	TextDrawSetShadow(RadialTD[4], 0);
	TextDrawSetOutline(RadialTD[4], 0);
	TextDrawBackgroundColor(RadialTD[4], 0);
	TextDrawFont(RadialTD[4], 5);
	TextDrawSetProportional(RadialTD[4], 0);
	TextDrawSetPreviewModel(RadialTD[4], 2751);
	TextDrawSetPreviewRot(RadialTD[4], -90.000, 0.000, -30.000, 0.799);
	TextDrawSetPreviewVehCol(RadialTD[4], 0, 0);
	TextDrawSetSelectable(RadialTD[4], 1);

	RadialTD[5] = TextDrawCreate(317.000, 240.000, "_");
	TextDrawTextSize(RadialTD[5], 45.000, 57.000);
	TextDrawAlignment(RadialTD[5], 1);
	TextDrawColor(RadialTD[5], 40);
	TextDrawSetShadow(RadialTD[5], 0);
	TextDrawSetOutline(RadialTD[5], 0);
	TextDrawBackgroundColor(RadialTD[5], 0);
	TextDrawFont(RadialTD[5], 5);
	TextDrawSetProportional(RadialTD[5], 0);
	TextDrawSetPreviewModel(RadialTD[5], 2751);
	TextDrawSetPreviewRot(RadialTD[5], -90.000, 0.000, -30.000, 0.799);
	TextDrawSetPreviewVehCol(RadialTD[5], 0, 0);
	TextDrawSetSelectable(RadialTD[5], 1);

	RadialTD[6] = TextDrawCreate(280.000, 240.000, "_");
	TextDrawTextSize(RadialTD[6], 45.000, 57.000);
	TextDrawAlignment(RadialTD[6], 1);
	TextDrawColor(RadialTD[6], 40);
	TextDrawSetShadow(RadialTD[6], 0);
	TextDrawSetOutline(RadialTD[6], 0);
	TextDrawBackgroundColor(RadialTD[6], 0);
	TextDrawFont(RadialTD[6], 5);
	TextDrawSetProportional(RadialTD[6], 0);
	TextDrawSetPreviewModel(RadialTD[6], 2751);
	TextDrawSetPreviewRot(RadialTD[6], -90.000, 0.000, -30.000, 0.799);
	TextDrawSetPreviewVehCol(RadialTD[6], 0, 0);
	TextDrawSetSelectable(RadialTD[6], 1);

	RadialTD[7] = TextDrawCreate(313.000, 223.000, "<");
	TextDrawLetterSize(RadialTD[7], 0.230, 1.199);
	TextDrawAlignment(RadialTD[7], 1);
	TextDrawColor(RadialTD[7], -1);
	TextDrawSetShadow(RadialTD[7], 0);
	TextDrawSetOutline(RadialTD[7], 0);
	TextDrawBackgroundColor(RadialTD[7], 150);
	TextDrawFont(RadialTD[7], 1);
	TextDrawSetProportional(RadialTD[7], 1);

	RadialTD[8] = TextDrawCreate(314.000, 228.000, "LD_SPAC:white");
	TextDrawTextSize(RadialTD[8], 13.000, 2.000);
	TextDrawAlignment(RadialTD[8], 1);
	TextDrawColor(RadialTD[8], -1);
	TextDrawSetShadow(RadialTD[8], 0);
	TextDrawSetOutline(RadialTD[8], 0);
	TextDrawBackgroundColor(RadialTD[8], 255);
	TextDrawFont(RadialTD[8], 4);
	TextDrawSetProportional(RadialTD[8], 1);

	RadialTD[9] = TextDrawCreate(314.000, 231.000, "Keluar");
	TextDrawLetterSize(RadialTD[9], 0.150, 0.799);
	TextDrawAlignment(RadialTD[9], 1);
	TextDrawColor(RadialTD[9], -1);
	TextDrawSetShadow(RadialTD[9], 0);
	TextDrawSetOutline(RadialTD[9], 0);
	TextDrawBackgroundColor(RadialTD[9], 150);
	TextDrawFont(RadialTD[9], 1);
	TextDrawSetProportional(RadialTD[9], 1);

	RadialTD[10] = TextDrawCreate(331.000, 278.000, "Invoice");
	TextDrawLetterSize(RadialTD[10], 0.150, 0.799);
	TextDrawAlignment(RadialTD[10], 1);
	TextDrawColor(RadialTD[10], -1);
	TextDrawSetShadow(RadialTD[10], 0);
	TextDrawSetOutline(RadialTD[10], 0);
	TextDrawBackgroundColor(RadialTD[10], 150);
	TextDrawFont(RadialTD[10], 1);
	TextDrawSetProportional(RadialTD[10], 1);

	RadialTD[11] = TextDrawCreate(347.000, 222.000, "LD_SPAC:white");
	TextDrawTextSize(RadialTD[11], 22.000, 15.000);
	TextDrawAlignment(RadialTD[11], 1);
	TextDrawColor(RadialTD[11], -1061109505);
	TextDrawSetShadow(RadialTD[11], 0);
	TextDrawSetOutline(RadialTD[11], 0);
	TextDrawBackgroundColor(RadialTD[11], 255);
	TextDrawFont(RadialTD[11], 4);
	TextDrawSetProportional(RadialTD[11], 1);

	RadialTD[12] = TextDrawCreate(349.000, 224.000, "LD_SPAC:white");
	TextDrawTextSize(RadialTD[12], 8.000, 6.000);
	TextDrawAlignment(RadialTD[12], 1);
	TextDrawColor(RadialTD[12], -1);
	TextDrawSetShadow(RadialTD[12], 0);
	TextDrawSetOutline(RadialTD[12], 0);
	TextDrawBackgroundColor(RadialTD[12], 255);
	TextDrawFont(RadialTD[12], 4);
	TextDrawSetProportional(RadialTD[12], 1);

	RadialTD[13] = TextDrawCreate(359.000, 224.000, "LD_SPAC:white");
	TextDrawTextSize(RadialTD[13], 8.000, 2.000);
	TextDrawAlignment(RadialTD[13], 1);
	TextDrawColor(RadialTD[13], -1);
	TextDrawSetShadow(RadialTD[13], 0);
	TextDrawSetOutline(RadialTD[13], 0);
	TextDrawBackgroundColor(RadialTD[13], 255);
	TextDrawFont(RadialTD[13], 4);
	TextDrawSetProportional(RadialTD[13], 1);

	RadialTD[14] = TextDrawCreate(359.000, 227.000, "LD_SPAC:white");
	TextDrawTextSize(RadialTD[14], 8.000, 2.000);
	TextDrawAlignment(RadialTD[14], 1);
	TextDrawColor(RadialTD[14], -1);
	TextDrawSetShadow(RadialTD[14], 0);
	TextDrawSetOutline(RadialTD[14], 0);
	TextDrawBackgroundColor(RadialTD[14], 255);
	TextDrawFont(RadialTD[14], 4);
	TextDrawSetProportional(RadialTD[14], 1);

	RadialTD[15] = TextDrawCreate(359.000, 231.000, "LD_SPAC:white");
	TextDrawTextSize(RadialTD[15], 8.000, 2.000);
	TextDrawAlignment(RadialTD[15], 1);
	TextDrawColor(RadialTD[15], -1);
	TextDrawSetShadow(RadialTD[15], 0);
	TextDrawSetOutline(RadialTD[15], 0);
	TextDrawBackgroundColor(RadialTD[15], 255);
	TextDrawFont(RadialTD[15], 4);
	TextDrawSetProportional(RadialTD[15], 1);

	RadialTD[16] = TextDrawCreate(348.000, 237.000, "Dokumen");
	TextDrawLetterSize(RadialTD[16], 0.150, 0.799);
	TextDrawAlignment(RadialTD[16], 1);
	TextDrawColor(RadialTD[16], -1);
	TextDrawSetShadow(RadialTD[16], 0);
	TextDrawSetOutline(RadialTD[16], 0);
	TextDrawBackgroundColor(RadialTD[16], 150);
	TextDrawFont(RadialTD[16], 1);
	TextDrawSetProportional(RadialTD[16], 1);

	RadialTD[17] = TextDrawCreate(334.000, 176.000, "LD_SPAC:white");
	TextDrawTextSize(RadialTD[17], 11.000, 19.000);
	TextDrawAlignment(RadialTD[17], 1);
	TextDrawColor(RadialTD[17], -1061109505);
	TextDrawSetShadow(RadialTD[17], 0);
	TextDrawSetOutline(RadialTD[17], 0);
	TextDrawBackgroundColor(RadialTD[17], 255);
	TextDrawFont(RadialTD[17], 4);
	TextDrawSetProportional(RadialTD[17], 1);

	RadialTD[18] = TextDrawCreate(335.000, 177.000, "LD_SPAC:white");
	TextDrawTextSize(RadialTD[18], 5.000, 6.000);
	TextDrawAlignment(RadialTD[18], 1);
	TextDrawColor(RadialTD[18], -2139062017);
	TextDrawSetShadow(RadialTD[18], 0);
	TextDrawSetOutline(RadialTD[18], 0);
	TextDrawBackgroundColor(RadialTD[18], 255);
	TextDrawFont(RadialTD[18], 4);
	TextDrawSetProportional(RadialTD[18], 1);

	RadialTD[19] = TextDrawCreate(335.000, 177.000, "LD_BEAT:chit");
	TextDrawTextSize(RadialTD[19], 3.000, 4.000);
	TextDrawAlignment(RadialTD[19], 1);
	TextDrawColor(RadialTD[19], 255);
	TextDrawSetShadow(RadialTD[19], 0);
	TextDrawSetOutline(RadialTD[19], 0);
	TextDrawBackgroundColor(RadialTD[19], 255);
	TextDrawFont(RadialTD[19], 4);
	TextDrawSetProportional(RadialTD[19], 1);

	RadialTD[20] = TextDrawCreate(337.000, 179.000, "LD_BEAT:chit");
	TextDrawTextSize(RadialTD[20], 3.000, 4.000);
	TextDrawAlignment(RadialTD[20], 1);
	TextDrawColor(RadialTD[20], 255);
	TextDrawSetShadow(RadialTD[20], 0);
	TextDrawSetOutline(RadialTD[20], 0);
	TextDrawBackgroundColor(RadialTD[20], 255);
	TextDrawFont(RadialTD[20], 4);
	TextDrawSetProportional(RadialTD[20], 1);

	RadialTD[21] = TextDrawCreate(333.000, 197.000, "Phone");
	TextDrawLetterSize(RadialTD[21], 0.150, 0.799);
	TextDrawAlignment(RadialTD[21], 1);
	TextDrawColor(RadialTD[21], -1);
	TextDrawSetShadow(RadialTD[21], 0);
	TextDrawSetOutline(RadialTD[21], 0);
	TextDrawBackgroundColor(RadialTD[21], 150);
	TextDrawFont(RadialTD[21], 1);
	TextDrawSetProportional(RadialTD[21], 1);

	RadialTD[22] = TextDrawCreate(294.000, 192.000, "LD_SPAC:white");
	TextDrawTextSize(RadialTD[22], 18.000, 2.000);
	TextDrawAlignment(RadialTD[22], 1);
	TextDrawColor(RadialTD[22], -1061109505);
	TextDrawSetShadow(RadialTD[22], 0);
	TextDrawSetOutline(RadialTD[22], 0);
	TextDrawBackgroundColor(RadialTD[22], 255);
	TextDrawFont(RadialTD[22], 4);
	TextDrawSetProportional(RadialTD[22], 1);

	RadialTD[23] = TextDrawCreate(294.000, 178.000, "LD_SPAC:white");
	TextDrawTextSize(RadialTD[23], 18.000, 2.000);
	TextDrawAlignment(RadialTD[23], 1);
	TextDrawColor(RadialTD[23], -1061109505);
	TextDrawSetShadow(RadialTD[23], 0);
	TextDrawSetOutline(RadialTD[23], 0);
	TextDrawBackgroundColor(RadialTD[23], 255);
	TextDrawFont(RadialTD[23], 4);
	TextDrawSetProportional(RadialTD[23], 1);

	RadialTD[24] = TextDrawCreate(294.000, 179.000, "LD_SPAC:white");
	TextDrawTextSize(RadialTD[24], 1.000, 14.000);
	TextDrawAlignment(RadialTD[24], 1);
	TextDrawColor(RadialTD[24], -1061109505);
	TextDrawSetShadow(RadialTD[24], 0);
	TextDrawSetOutline(RadialTD[24], 0);
	TextDrawBackgroundColor(RadialTD[24], 255);
	TextDrawFont(RadialTD[24], 4);
	TextDrawSetProportional(RadialTD[24], 1);

	RadialTD[25] = TextDrawCreate(312.000, 179.000, "LD_SPAC:white");
	TextDrawTextSize(RadialTD[25], -1.000, 14.000);
	TextDrawAlignment(RadialTD[25], 1);
	TextDrawColor(RadialTD[25], -1061109505);
	TextDrawSetShadow(RadialTD[25], 0);
	TextDrawSetOutline(RadialTD[25], 0);
	TextDrawBackgroundColor(RadialTD[25], 255);
	TextDrawFont(RadialTD[25], 4);
	TextDrawSetProportional(RadialTD[25], 1);

	RadialTD[26] = TextDrawCreate(300.000, 166.000, "o");
	TextDrawLetterSize(RadialTD[26], 0.358, 1.799);
	TextDrawTextSize(RadialTD[26], 0.000, 3.000);
	TextDrawAlignment(RadialTD[26], 1);
	TextDrawColor(RadialTD[26], -1061109505);
	TextDrawSetShadow(RadialTD[26], 0);
	TextDrawSetOutline(RadialTD[26], 0);
	TextDrawBackgroundColor(RadialTD[26], 150);
	TextDrawFont(RadialTD[26], 1);
	TextDrawSetProportional(RadialTD[26], 1);

	RadialTD[27] = TextDrawCreate(302.000, 180.000, "/");
	TextDrawLetterSize(RadialTD[27], 0.216, 0.799);
	TextDrawTextSize(RadialTD[27], 0.000, 3.000);
	TextDrawAlignment(RadialTD[27], 1);
	TextDrawColor(RadialTD[27], -1);
	TextDrawSetShadow(RadialTD[27], 0);
	TextDrawSetOutline(RadialTD[27], 0);
	TextDrawBackgroundColor(RadialTD[27], 150);
	TextDrawFont(RadialTD[27], 1);
	TextDrawSetProportional(RadialTD[27], 1);

	RadialTD[28] = TextDrawCreate(304.000, 180.000, "/");
	TextDrawLetterSize(RadialTD[28], 0.216, 0.799);
	TextDrawTextSize(RadialTD[28], 0.000, 3.000);
	TextDrawAlignment(RadialTD[28], 1);
	TextDrawColor(RadialTD[28], -1);
	TextDrawSetShadow(RadialTD[28], 0);
	TextDrawSetOutline(RadialTD[28], 0);
	TextDrawBackgroundColor(RadialTD[28], 150);
	TextDrawFont(RadialTD[28], 1);
	TextDrawSetProportional(RadialTD[28], 1);

	RadialTD[29] = TextDrawCreate(293.000, 196.000, "inventory");
	TextDrawLetterSize(RadialTD[29], 0.150, 0.799);
	TextDrawAlignment(RadialTD[29], 1);
	TextDrawColor(RadialTD[29], -1);
	TextDrawSetShadow(RadialTD[29], 0);
	TextDrawSetOutline(RadialTD[29], 0);
	TextDrawBackgroundColor(RadialTD[29], 150);
	TextDrawFont(RadialTD[29], 1);
	TextDrawSetProportional(RadialTD[29], 1);

	RadialTD[30] = TextDrawCreate(276.000, 227.000, "LD_SPAC:white");
	TextDrawTextSize(RadialTD[30], 17.000, 10.000);
	TextDrawAlignment(RadialTD[30], 1);
	TextDrawColor(RadialTD[30], -1061109505);
	TextDrawSetShadow(RadialTD[30], 0);
	TextDrawSetOutline(RadialTD[30], 0);
	TextDrawBackgroundColor(RadialTD[30], 255);
	TextDrawFont(RadialTD[30], 4);
	TextDrawSetProportional(RadialTD[30], 1);

	RadialTD[31] = TextDrawCreate(279.000, 219.000, "LD_SPAC:white");
	TextDrawTextSize(RadialTD[31], 11.000, 2.000);
	TextDrawAlignment(RadialTD[31], 1);
	TextDrawColor(RadialTD[31], -1061109505);
	TextDrawSetShadow(RadialTD[31], 0);
	TextDrawSetOutline(RadialTD[31], 0);
	TextDrawBackgroundColor(RadialTD[31], 255);
	TextDrawFont(RadialTD[31], 4);
	TextDrawSetProportional(RadialTD[31], 1);

	RadialTD[32] = TextDrawCreate(287.000, 236.000, "LD_SPAC:white");
	TextDrawTextSize(RadialTD[32], 4.000, 3.000);
	TextDrawAlignment(RadialTD[32], 1);
	TextDrawColor(RadialTD[32], -1061109505);
	TextDrawSetShadow(RadialTD[32], 0);
	TextDrawSetOutline(RadialTD[32], 0);
	TextDrawBackgroundColor(RadialTD[32], 255);
	TextDrawFont(RadialTD[32], 4);
	TextDrawSetProportional(RadialTD[32], 1);

	RadialTD[33] = TextDrawCreate(278.000, 236.000, "LD_SPAC:white");
	TextDrawTextSize(RadialTD[33], 4.000, 3.000);
	TextDrawAlignment(RadialTD[33], 1);
	TextDrawColor(RadialTD[33], -1061109505);
	TextDrawSetShadow(RadialTD[33], 0);
	TextDrawSetOutline(RadialTD[33], 0);
	TextDrawBackgroundColor(RadialTD[33], 255);
	TextDrawFont(RadialTD[33], 4);
	TextDrawSetProportional(RadialTD[33], 1);

	RadialTD[34] = TextDrawCreate(276.000, 218.000, "/");
	TextDrawLetterSize(RadialTD[34], 0.337, 1.098);
	TextDrawTextSize(RadialTD[34], 0.000, 3.000);
	TextDrawAlignment(RadialTD[34], 1);
	TextDrawColor(RadialTD[34], -1061109505);
	TextDrawSetShadow(RadialTD[34], 0);
	TextDrawSetOutline(RadialTD[34], 0);
	TextDrawBackgroundColor(RadialTD[34], 150);
	TextDrawFont(RadialTD[34], 1);
	TextDrawSetProportional(RadialTD[34], 1);

	RadialTD[35] = TextDrawCreate(293.000, 218.000, "/");
	TextDrawLetterSize(RadialTD[35], -0.310, 1.098);
	TextDrawTextSize(RadialTD[35], 0.000, 3.000);
	TextDrawAlignment(RadialTD[35], 1);
	TextDrawColor(RadialTD[35], -1061109505);
	TextDrawSetShadow(RadialTD[35], 0);
	TextDrawSetOutline(RadialTD[35], 0);
	TextDrawBackgroundColor(RadialTD[35], 150);
	TextDrawFont(RadialTD[35], 1);
	TextDrawSetProportional(RadialTD[35], 1);

	RadialTD[36] = TextDrawCreate(274.000, 225.000, "LD_SPAC:white");
	TextDrawTextSize(RadialTD[36], 4.000, 3.000);
	TextDrawAlignment(RadialTD[36], 1);
	TextDrawColor(RadialTD[36], -1061109505);
	TextDrawSetShadow(RadialTD[36], 0);
	TextDrawSetOutline(RadialTD[36], 0);
	TextDrawBackgroundColor(RadialTD[36], 255);
	TextDrawFont(RadialTD[36], 4);
	TextDrawSetProportional(RadialTD[36], 1);

	RadialTD[37] = TextDrawCreate(291.000, 225.000, "LD_SPAC:white");
	TextDrawTextSize(RadialTD[37], 4.000, 3.000);
	TextDrawAlignment(RadialTD[37], 1);
	TextDrawColor(RadialTD[37], -1061109505);
	TextDrawSetShadow(RadialTD[37], 0);
	TextDrawSetOutline(RadialTD[37], 0);
	TextDrawBackgroundColor(RadialTD[37], 255);
	TextDrawFont(RadialTD[37], 4);
	TextDrawSetProportional(RadialTD[37], 1);

	RadialTD[38] = TextDrawCreate(278.000, 231.000, "LD_SPAC:white");
	TextDrawTextSize(RadialTD[38], 3.000, 2.000);
	TextDrawAlignment(RadialTD[38], 1);
	TextDrawColor(RadialTD[38], -1);
	TextDrawSetShadow(RadialTD[38], 0);
	TextDrawSetOutline(RadialTD[38], 0);
	TextDrawBackgroundColor(RadialTD[38], 255);
	TextDrawFont(RadialTD[38], 4);
	TextDrawSetProportional(RadialTD[38], 1);

	RadialTD[39] = TextDrawCreate(288.000, 231.000, "LD_SPAC:white");
	TextDrawTextSize(RadialTD[39], 3.000, 2.000);
	TextDrawAlignment(RadialTD[39], 1);
	TextDrawColor(RadialTD[39], -1);
	TextDrawSetShadow(RadialTD[39], 0);
	TextDrawSetOutline(RadialTD[39], 0);
	TextDrawBackgroundColor(RadialTD[39], 255);
	TextDrawFont(RadialTD[39], 4);
	TextDrawSetProportional(RadialTD[39], 1);

	RadialTD[40] = TextDrawCreate(277.000, 239.000, "Vehicle");
	TextDrawLetterSize(RadialTD[40], 0.150, 0.799);
	TextDrawAlignment(RadialTD[40], 1);
	TextDrawColor(RadialTD[40], -1);
	TextDrawSetShadow(RadialTD[40], 0);
	TextDrawSetOutline(RadialTD[40], 0);
	TextDrawBackgroundColor(RadialTD[40], 150);
	TextDrawFont(RadialTD[40], 1);
	TextDrawSetProportional(RadialTD[40], 1);

	RadialTD[41] = TextDrawCreate(300.000, 255.000, "LD_BEAT:chit");
	TextDrawTextSize(RadialTD[41], 12.000, 14.000);
	TextDrawAlignment(RadialTD[41], 1);
	TextDrawColor(RadialTD[41], -1061109505);
	TextDrawSetShadow(RadialTD[41], 0);
	TextDrawSetOutline(RadialTD[41], 0);
	TextDrawBackgroundColor(RadialTD[41], 255);
	TextDrawFont(RadialTD[41], 4);
	TextDrawSetProportional(RadialTD[41], 1);

	RadialTD[42] = TextDrawCreate(298.000, 265.000, "LD_BEAT:chit");
	TextDrawTextSize(RadialTD[42], 16.000, 15.000);
	TextDrawAlignment(RadialTD[42], 1);
	TextDrawColor(RadialTD[42], -1061109505);
	TextDrawSetShadow(RadialTD[42], 0);
	TextDrawSetOutline(RadialTD[42], 0);
	TextDrawBackgroundColor(RadialTD[42], 255);
	TextDrawFont(RadialTD[42], 4);
	TextDrawSetProportional(RadialTD[42], 1);

	RadialTD[43] = TextDrawCreate(293.000, 267.000, "LD_BEAT:chit");
	TextDrawTextSize(RadialTD[43], 16.000, 15.000);
	TextDrawAlignment(RadialTD[43], 1);
	TextDrawColor(RadialTD[43], -1);
	TextDrawSetShadow(RadialTD[43], 0);
	TextDrawSetOutline(RadialTD[43], 0);
	TextDrawBackgroundColor(RadialTD[43], 255);
	TextDrawFont(RadialTD[43], 4);
	TextDrawSetProportional(RadialTD[43], 1);

	RadialTD[44] = TextDrawCreate(295.000, 257.000, "LD_BEAT:chit");
	TextDrawTextSize(RadialTD[44], 12.000, 15.000);
	TextDrawAlignment(RadialTD[44], 1);
	TextDrawColor(RadialTD[44], -1);
	TextDrawSetShadow(RadialTD[44], 0);
	TextDrawSetOutline(RadialTD[44], 0);
	TextDrawBackgroundColor(RadialTD[44], 255);
	TextDrawFont(RadialTD[44], 4);
	TextDrawSetProportional(RadialTD[44], 1);

	RadialTD[45] = TextDrawCreate(295.000, 279.000, "Action");
	TextDrawLetterSize(RadialTD[45], 0.150, 0.799);
	TextDrawAlignment(RadialTD[45], 1);
	TextDrawColor(RadialTD[45], -1);
	TextDrawSetShadow(RadialTD[45], 0);
	TextDrawSetOutline(RadialTD[45], 0);
	TextDrawBackgroundColor(RadialTD[45], 150);
	TextDrawFont(RadialTD[45], 1);
	TextDrawSetProportional(RadialTD[45], 1);

	RadialTD[46] = TextDrawCreate(333.000, 258.000, "LD_SPAC:white");
	TextDrawTextSize(RadialTD[46], 11.000, 18.000);
	TextDrawAlignment(RadialTD[46], 1);
	TextDrawColor(RadialTD[46], -1061109505);
	TextDrawSetShadow(RadialTD[46], 0);
	TextDrawSetOutline(RadialTD[46], 0);
	TextDrawBackgroundColor(RadialTD[46], 255);
	TextDrawFont(RadialTD[46], 4);
	TextDrawSetProportional(RadialTD[46], 1);

	RadialTD[47] = TextDrawCreate(334.000, 273.000, "LD_SPAC:white");
	TextDrawTextSize(RadialTD[47], 9.000, 2.000);
	TextDrawAlignment(RadialTD[47], 1);
	TextDrawColor(RadialTD[47], -2139062017);
	TextDrawSetShadow(RadialTD[47], 0);
	TextDrawSetOutline(RadialTD[47], 0);
	TextDrawBackgroundColor(RadialTD[47], 255);
	TextDrawFont(RadialTD[47], 4);
	TextDrawSetProportional(RadialTD[47], 1);

	RadialTD[48] = TextDrawCreate(334.000, 270.000, "LD_SPAC:white");
	TextDrawTextSize(RadialTD[48], 9.000, 2.000);
	TextDrawAlignment(RadialTD[48], 1);
	TextDrawColor(RadialTD[48], -2139062017);
	TextDrawSetShadow(RadialTD[48], 0);
	TextDrawSetOutline(RadialTD[48], 0);
	TextDrawBackgroundColor(RadialTD[48], 255);
	TextDrawFont(RadialTD[48], 4);
	TextDrawSetProportional(RadialTD[48], 1);

	RadialTD[49] = TextDrawCreate(334.000, 267.000, "LD_SPAC:white");
	TextDrawTextSize(RadialTD[49], 9.000, 2.000);
	TextDrawAlignment(RadialTD[49], 1);
	TextDrawColor(RadialTD[49], -2139062017);
	TextDrawSetShadow(RadialTD[49], 0);
	TextDrawSetOutline(RadialTD[49], 0);
	TextDrawBackgroundColor(RadialTD[49], 255);
	TextDrawFont(RadialTD[49], 4);
	TextDrawSetProportional(RadialTD[49], 1);

	RadialTD[50] = TextDrawCreate(337.000, 259.000, "$");
	TextDrawLetterSize(RadialTD[50], 0.150, 0.799);
	TextDrawAlignment(RadialTD[50], 1);
	TextDrawColor(RadialTD[50], -1448498689);
	TextDrawSetShadow(RadialTD[50], 0);
	TextDrawSetOutline(RadialTD[50], 0);
	TextDrawBackgroundColor(RadialTD[50], 150);
	TextDrawFont(RadialTD[50], 1);
	TextDrawSetProportional(RadialTD[50], 1);
}

CreateRadialActionTD()
{
	RadialActionTD[0] = TextDrawCreate(263.000, 199.000, "_");
	TextDrawTextSize(RadialActionTD[0], 45.000, 57.000);
	TextDrawAlignment(RadialActionTD[0], 1);
	TextDrawColor(RadialActionTD[0], 40);
	TextDrawSetShadow(RadialActionTD[0], 0);
	TextDrawSetOutline(RadialActionTD[0], 0);
	TextDrawBackgroundColor(RadialActionTD[0], 0);
	TextDrawFont(RadialActionTD[0], 5);
	TextDrawSetProportional(RadialActionTD[0], 0);
	TextDrawSetPreviewModel(RadialActionTD[0], 2751);
	TextDrawSetPreviewRot(RadialActionTD[0], -90.000, 0.000, -30.000, 0.799);
	TextDrawSetPreviewVehCol(RadialActionTD[0], 0, 0);
	TextDrawSetSelectable(RadialActionTD[0], 1);

	RadialActionTD[1] = TextDrawCreate(299.000, 199.000, "_");
	TextDrawTextSize(RadialActionTD[1], 45.000, 57.000);
	TextDrawAlignment(RadialActionTD[1], 1);
	TextDrawColor(RadialActionTD[1], -16777176);
	TextDrawSetShadow(RadialActionTD[1], 0);
	TextDrawSetOutline(RadialActionTD[1], 0);
	TextDrawBackgroundColor(RadialActionTD[1], 0);
	TextDrawFont(RadialActionTD[1], 5);
	TextDrawSetProportional(RadialActionTD[1], 0);
	TextDrawSetPreviewModel(RadialActionTD[1], 2751);
	TextDrawSetPreviewRot(RadialActionTD[1], -90.000, 0.000, -30.000, 0.799);
	TextDrawSetPreviewVehCol(RadialActionTD[1], 0, 0);
	TextDrawSetSelectable(RadialActionTD[1], 1);

	RadialActionTD[2] = TextDrawCreate(281.000, 159.000, "_");
	TextDrawTextSize(RadialActionTD[2], 45.000, 57.000);
	TextDrawAlignment(RadialActionTD[2], 1);
	TextDrawColor(RadialActionTD[2], 50);
	TextDrawSetShadow(RadialActionTD[2], 0);
	TextDrawSetOutline(RadialActionTD[2], 0);
	TextDrawBackgroundColor(RadialActionTD[2], 0);
	TextDrawFont(RadialActionTD[2], 5);
	TextDrawSetProportional(RadialActionTD[2], 0);
	TextDrawSetPreviewModel(RadialActionTD[2], 2751);
	TextDrawSetPreviewRot(RadialActionTD[2], -90.000, 0.000, -30.000, 0.799);
	TextDrawSetPreviewVehCol(RadialActionTD[2], 0, 0);
	TextDrawSetSelectable(RadialActionTD[2], 1);

	RadialActionTD[3] = TextDrawCreate(318.000, 159.000, "_");
	TextDrawTextSize(RadialActionTD[3], 45.000, 57.000);
	TextDrawAlignment(RadialActionTD[3], 1);
	TextDrawColor(RadialActionTD[3], 50);
	TextDrawSetShadow(RadialActionTD[3], 0);
	TextDrawSetOutline(RadialActionTD[3], 0);
	TextDrawBackgroundColor(RadialActionTD[3], 0);
	TextDrawFont(RadialActionTD[3], 5);
	TextDrawSetProportional(RadialActionTD[3], 0);
	TextDrawSetPreviewModel(RadialActionTD[3], 2751);
	TextDrawSetPreviewRot(RadialActionTD[3], -90.000, 0.000, -30.000, 0.799);
	TextDrawSetPreviewVehCol(RadialActionTD[3], 0, 0);
	TextDrawSetSelectable(RadialActionTD[3], 1);

	RadialActionTD[4] = TextDrawCreate(336.000, 200.000, "_");
	TextDrawTextSize(RadialActionTD[4], 45.000, 57.000);
	TextDrawAlignment(RadialActionTD[4], 1);
	TextDrawColor(RadialActionTD[4], 50);
	TextDrawSetShadow(RadialActionTD[4], 0);
	TextDrawSetOutline(RadialActionTD[4], 0);
	TextDrawBackgroundColor(RadialActionTD[4], 0);
	TextDrawFont(RadialActionTD[4], 5);
	TextDrawSetProportional(RadialActionTD[4], 0);
	TextDrawSetPreviewModel(RadialActionTD[4], 2751);
	TextDrawSetPreviewRot(RadialActionTD[4], -90.000, 0.000, -30.000, 0.799);
	TextDrawSetPreviewVehCol(RadialActionTD[4], 0, 0);
	TextDrawSetSelectable(RadialActionTD[4], 1);

	RadialActionTD[5] = TextDrawCreate(317.000, 240.000, "_");
	TextDrawTextSize(RadialActionTD[5], 45.000, 57.000);
	TextDrawAlignment(RadialActionTD[5], 1);
	TextDrawColor(RadialActionTD[5], 50);
	TextDrawSetShadow(RadialActionTD[5], 0);
	TextDrawSetOutline(RadialActionTD[5], 0);
	TextDrawBackgroundColor(RadialActionTD[5], 0);
	TextDrawFont(RadialActionTD[5], 5);
	TextDrawSetProportional(RadialActionTD[5], 0);
	TextDrawSetPreviewModel(RadialActionTD[5], 2751);
	TextDrawSetPreviewRot(RadialActionTD[5], -90.000, 0.000, -30.000, 0.799);
	TextDrawSetPreviewVehCol(RadialActionTD[5], 0, 0);
	TextDrawSetSelectable(RadialActionTD[5], 1);

	RadialActionTD[6] = TextDrawCreate(280.000, 240.000, "_");
	TextDrawTextSize(RadialActionTD[6], 45.000, 57.000);
	TextDrawAlignment(RadialActionTD[6], 1);
	TextDrawColor(RadialActionTD[6], 50);
	TextDrawSetShadow(RadialActionTD[6], 0);
	TextDrawSetOutline(RadialActionTD[6], 0);
	TextDrawBackgroundColor(RadialActionTD[6], 0);
	TextDrawFont(RadialActionTD[6], 5);
	TextDrawSetProportional(RadialActionTD[6], 0);
	TextDrawSetPreviewModel(RadialActionTD[6], 2751);
	TextDrawSetPreviewRot(RadialActionTD[6], -90.000, 0.000, -30.000, 0.799);
	TextDrawSetPreviewVehCol(RadialActionTD[6], 0, 0);
	TextDrawSetSelectable(RadialActionTD[6], 1);

	RadialActionTD[7] = TextDrawCreate(328.000, 262.000, "ld_dual:white");
	TextDrawLetterSize(RadialActionTD[7], 0.600, 2.000);
	TextDrawTextSize(RadialActionTD[7], 22.000, 14.500);
	TextDrawAlignment(RadialActionTD[7], 1);
	TextDrawColor(RadialActionTD[7], 0x0080FFFF);
	TextDrawUseBox(RadialActionTD[7], 1);
	TextDrawBoxColor(RadialActionTD[7], 50);
	TextDrawSetShadow(RadialActionTD[7], 0);
	TextDrawSetOutline(RadialActionTD[7], 0);
	TextDrawBackgroundColor(RadialActionTD[7], 255);
	TextDrawFont(RadialActionTD[7], 4);
	TextDrawSetProportional(RadialActionTD[7], 1);

	RadialActionTD[8] = TextDrawCreate(330.000, 264.000, "ld_dual:white");
	TextDrawLetterSize(RadialActionTD[8], 0.600, 2.000);
	TextDrawTextSize(RadialActionTD[8], 8.000, 6.500);
	TextDrawAlignment(RadialActionTD[8], 1);
	TextDrawColor(RadialActionTD[8], -1061109505);
	TextDrawUseBox(RadialActionTD[8], 1);
	TextDrawBoxColor(RadialActionTD[8], 50);
	TextDrawSetShadow(RadialActionTD[8], 0);
	TextDrawSetOutline(RadialActionTD[8], 0);
	TextDrawBackgroundColor(RadialActionTD[8], 255);
	TextDrawFont(RadialActionTD[8], 4);
	TextDrawSetProportional(RadialActionTD[8], 1);

	RadialActionTD[9] = TextDrawCreate(341.000, 264.000, "ld_dual:white");
	TextDrawLetterSize(RadialActionTD[9], 0.600, 2.000);
	TextDrawTextSize(RadialActionTD[9], 8.000, 1.500);
	TextDrawAlignment(RadialActionTD[9], 1);
	TextDrawColor(RadialActionTD[9], -1061109505);
	TextDrawUseBox(RadialActionTD[9], 1);
	TextDrawBoxColor(RadialActionTD[9], 50);
	TextDrawSetShadow(RadialActionTD[9], 0);
	TextDrawSetOutline(RadialActionTD[9], 0);
	TextDrawBackgroundColor(RadialActionTD[9], 255);
	TextDrawFont(RadialActionTD[9], 4);
	TextDrawSetProportional(RadialActionTD[9], 1);

	RadialActionTD[10] = TextDrawCreate(341.000, 267.000, "ld_dual:white");
	TextDrawLetterSize(RadialActionTD[10], 0.600, 2.000);
	TextDrawTextSize(RadialActionTD[10], 8.000, 1.500);
	TextDrawAlignment(RadialActionTD[10], 1);
	TextDrawColor(RadialActionTD[10], -1061109505);
	TextDrawUseBox(RadialActionTD[10], 1);
	TextDrawBoxColor(RadialActionTD[10], 50);
	TextDrawSetShadow(RadialActionTD[10], 0);
	TextDrawSetOutline(RadialActionTD[10], 0);
	TextDrawBackgroundColor(RadialActionTD[10], 255);
	TextDrawFont(RadialActionTD[10], 4);
	TextDrawSetProportional(RadialActionTD[10], 1);

	RadialActionTD[11] = TextDrawCreate(336.000, 273.000, "ld_dual:white");
	TextDrawLetterSize(RadialActionTD[11], 0.600, 2.000);
	TextDrawTextSize(RadialActionTD[11], 13.000, 1.500);
	TextDrawAlignment(RadialActionTD[11], 1);
	TextDrawColor(RadialActionTD[11], -1061109505);
	TextDrawUseBox(RadialActionTD[11], 1);
	TextDrawBoxColor(RadialActionTD[11], 50);
	TextDrawSetShadow(RadialActionTD[11], 0);
	TextDrawSetOutline(RadialActionTD[11], 0);
	TextDrawBackgroundColor(RadialActionTD[11], 255);
	TextDrawFont(RadialActionTD[11], 4);
	TextDrawSetProportional(RadialActionTD[11], 1);

	RadialActionTD[12] = TextDrawCreate(344.000, 214.000, "ld_beat:chit");
	TextDrawLetterSize(RadialActionTD[12], 0.600, 2.000);
	TextDrawTextSize(RadialActionTD[12], 28.500, 29.000);
	TextDrawAlignment(RadialActionTD[12], 1);
	TextDrawColor(RadialActionTD[12], 0x0080FFFF);
	TextDrawUseBox(RadialActionTD[12], 1);
	TextDrawBoxColor(RadialActionTD[12], 50);
	TextDrawSetShadow(RadialActionTD[12], 0);
	TextDrawSetOutline(RadialActionTD[12], 0);
	TextDrawBackgroundColor(RadialActionTD[12], 255);
	TextDrawFont(RadialActionTD[12], 4);
	TextDrawSetProportional(RadialActionTD[12], 0);

	RadialActionTD[13] = TextDrawCreate(348.000, 224.000, "ld_dual:white");
	TextDrawLetterSize(RadialActionTD[13], 0.600, 2.000);
	TextDrawTextSize(RadialActionTD[13], 8.000, 12.000);
	TextDrawAlignment(RadialActionTD[13], 1);
	TextDrawColor(RadialActionTD[13], 0x0080FFFF);
	TextDrawUseBox(RadialActionTD[13], 1);
	TextDrawBoxColor(RadialActionTD[13], 50);
	TextDrawSetShadow(RadialActionTD[13], 0);
	TextDrawSetOutline(RadialActionTD[13], 0);
	TextDrawBackgroundColor(RadialActionTD[13], 255);
	TextDrawFont(RadialActionTD[13], 4);
	TextDrawSetProportional(RadialActionTD[13], 1);

	RadialActionTD[14] = TextDrawCreate(342.000, 221.000, "ld_beat:chit");
	TextDrawLetterSize(RadialActionTD[14], 0.600, 2.000);
	TextDrawTextSize(RadialActionTD[14], 21.500, 7.000);
	TextDrawAlignment(RadialActionTD[14], 1);
	TextDrawColor(RadialActionTD[14], 0x0080FFFF);
	TextDrawUseBox(RadialActionTD[14], 1);
	TextDrawBoxColor(RadialActionTD[14], 50);
	TextDrawSetShadow(RadialActionTD[14], 0);
	TextDrawSetOutline(RadialActionTD[14], 0);
	TextDrawBackgroundColor(RadialActionTD[14], 255);
	TextDrawFont(RadialActionTD[14], 4);
	TextDrawSetProportional(RadialActionTD[14], 0);

	RadialActionTD[15] = TextDrawCreate(349.000, 223.000, "/");
	TextDrawLetterSize(RadialActionTD[15], 0.629, 1.500);
	TextDrawTextSize(RadialActionTD[15], 400.000, 17.000);
	TextDrawAlignment(RadialActionTD[15], 1);
	TextDrawColor(RadialActionTD[15], -1061109505);
	TextDrawSetShadow(RadialActionTD[15], 0);
	TextDrawSetOutline(RadialActionTD[15], 0);
	TextDrawBackgroundColor(RadialActionTD[15], 255);
	TextDrawFont(RadialActionTD[15], 0);
	TextDrawSetProportional(RadialActionTD[15], 1);

	RadialActionTD[16] = TextDrawCreate(348.000, 226.000, "ld_dual:white");
	TextDrawLetterSize(RadialActionTD[16], 0.600, 2.000);
	TextDrawTextSize(RadialActionTD[16], 5.500, 11.000);
	TextDrawAlignment(RadialActionTD[16], 1);
	TextDrawColor(RadialActionTD[16], 0x0080FFFF);
	TextDrawUseBox(RadialActionTD[16], 1);
	TextDrawBoxColor(RadialActionTD[16], 50);
	TextDrawSetShadow(RadialActionTD[16], 0);
	TextDrawSetOutline(RadialActionTD[16], 0);
	TextDrawBackgroundColor(RadialActionTD[16], 255);
	TextDrawFont(RadialActionTD[16], 4);
	TextDrawSetProportional(RadialActionTD[16], 1);

	RadialActionTD[17] = TextDrawCreate(348.000, 225.000, "ld_dual:white");
	TextDrawLetterSize(RadialActionTD[17], 0.600, 2.000);
	TextDrawTextSize(RadialActionTD[17], 9.000, 2.500);
	TextDrawAlignment(RadialActionTD[17], 1);
	TextDrawColor(RadialActionTD[17], 0x0080FFFF);
	TextDrawUseBox(RadialActionTD[17], 1);
	TextDrawBoxColor(RadialActionTD[17], 50);
	TextDrawSetShadow(RadialActionTD[17], 0);
	TextDrawSetOutline(RadialActionTD[17], 0);
	TextDrawBackgroundColor(RadialActionTD[17], 255);
	TextDrawFont(RadialActionTD[17], 4);
	TextDrawSetProportional(RadialActionTD[17], 1);

	RadialActionTD[18] = TextDrawCreate(325.000, 180.000, "ld_beat:chit");
	TextDrawLetterSize(RadialActionTD[18], 0.600, 2.000);
	TextDrawTextSize(RadialActionTD[18], 16.500, 15.500);
	TextDrawAlignment(RadialActionTD[18], 1);
	TextDrawColor(RadialActionTD[18], 0x0080FFFF);
	TextDrawUseBox(RadialActionTD[18], 1);
	TextDrawBoxColor(RadialActionTD[18], 50);
	TextDrawSetShadow(RadialActionTD[18], 0);
	TextDrawSetOutline(RadialActionTD[18], 0);
	TextDrawBackgroundColor(RadialActionTD[18], 255);
	TextDrawFont(RadialActionTD[18], 4);
	TextDrawSetProportional(RadialActionTD[18], 0);

	RadialActionTD[19] = TextDrawCreate(338.000, 180.000, "ld_beat:chit");
	TextDrawLetterSize(RadialActionTD[19], 0.600, 2.000);
	TextDrawTextSize(RadialActionTD[19], 16.500, 15.500);
	TextDrawAlignment(RadialActionTD[19], 1);
	TextDrawColor(RadialActionTD[19], 0x0080FFFF);
	TextDrawUseBox(RadialActionTD[19], 1);
	TextDrawBoxColor(RadialActionTD[19], 50);
	TextDrawSetShadow(RadialActionTD[19], 0);
	TextDrawSetOutline(RadialActionTD[19], 0);
	TextDrawBackgroundColor(RadialActionTD[19], 255);
	TextDrawFont(RadialActionTD[19], 4);
	TextDrawSetProportional(RadialActionTD[19], 0);

	RadialActionTD[20] = TextDrawCreate(335.000, 183.000, "ld_dual:white");
	TextDrawLetterSize(RadialActionTD[20], 0.600, 2.000);
	TextDrawTextSize(RadialActionTD[20], 10.000, 1.500);
	TextDrawAlignment(RadialActionTD[20], 1);
	TextDrawColor(RadialActionTD[20], 0x0080FFFF);
	TextDrawUseBox(RadialActionTD[20], 1);
	TextDrawBoxColor(RadialActionTD[20], 50);
	TextDrawSetShadow(RadialActionTD[20], 0);
	TextDrawSetOutline(RadialActionTD[20], 0);
	TextDrawBackgroundColor(RadialActionTD[20], 255);
	TextDrawFont(RadialActionTD[20], 4);
	TextDrawSetProportional(RadialActionTD[20], 1);

	RadialActionTD[21] = TextDrawCreate(337.000, 185.000, "ld_dual:white");
	TextDrawLetterSize(RadialActionTD[21], 0.600, 2.000);
	TextDrawTextSize(RadialActionTD[21], 7.500, 1.500);
	TextDrawAlignment(RadialActionTD[21], 1);
	TextDrawColor(RadialActionTD[21], 0x0080FFFF);
	TextDrawUseBox(RadialActionTD[21], 1);
	TextDrawBoxColor(RadialActionTD[21], 50);
	TextDrawSetShadow(RadialActionTD[21], 0);
	TextDrawSetOutline(RadialActionTD[21], 0);
	TextDrawBackgroundColor(RadialActionTD[21], 255);
	TextDrawFont(RadialActionTD[21], 4);
	TextDrawSetProportional(RadialActionTD[21], 1);

	RadialActionTD[22] = TextDrawCreate(327.000, 181.000, "ld_beat:chit");
	TextDrawLetterSize(RadialActionTD[22], 0.600, 2.000);
	TextDrawTextSize(RadialActionTD[22], 13.000, 13.500);
	TextDrawAlignment(RadialActionTD[22], 1);
	TextDrawColor(RadialActionTD[22], -1094795521);
	TextDrawUseBox(RadialActionTD[22], 1);
	TextDrawBoxColor(RadialActionTD[22], 50);
	TextDrawSetShadow(RadialActionTD[22], 0);
	TextDrawSetOutline(RadialActionTD[22], 0);
	TextDrawBackgroundColor(RadialActionTD[22], 255);
	TextDrawFont(RadialActionTD[22], 4);
	TextDrawSetProportional(RadialActionTD[22], 0);

	RadialActionTD[23] = TextDrawCreate(340.000, 181.000, "ld_beat:chit");
	TextDrawLetterSize(RadialActionTD[23], 0.600, 2.000);
	TextDrawTextSize(RadialActionTD[23], 13.000, 13.500);
	TextDrawAlignment(RadialActionTD[23], 1);
	TextDrawColor(RadialActionTD[23], -1094795521);
	TextDrawUseBox(RadialActionTD[23], 1);
	TextDrawBoxColor(RadialActionTD[23], 50);
	TextDrawSetShadow(RadialActionTD[23], 0);
	TextDrawSetOutline(RadialActionTD[23], 0);
	TextDrawBackgroundColor(RadialActionTD[23], 255);
	TextDrawFont(RadialActionTD[23], 4);
	TextDrawSetProportional(RadialActionTD[23], 0);

	RadialActionTD[24] = TextDrawCreate(282.000, 217.000, "ld_dual:white");
	TextDrawLetterSize(RadialActionTD[24], 0.600, 2.000);
	TextDrawTextSize(RadialActionTD[24], 4.000, 22.000);
	TextDrawAlignment(RadialActionTD[24], 1);
	TextDrawColor(RadialActionTD[24], -1);
	TextDrawUseBox(RadialActionTD[24], 1);
	TextDrawBoxColor(RadialActionTD[24], 50);
	TextDrawSetShadow(RadialActionTD[24], 0);
	TextDrawSetOutline(RadialActionTD[24], 0);
	TextDrawBackgroundColor(RadialActionTD[24], 255);
	TextDrawFont(RadialActionTD[24], 4);
	TextDrawSetProportional(RadialActionTD[24], 1);

	RadialActionTD[25] = TextDrawCreate(279.000, 222.000, "ld_dual:white");
	TextDrawLetterSize(RadialActionTD[25], 0.600, 2.000);
	TextDrawTextSize(RadialActionTD[25], 10.500, 11.500);
	TextDrawAlignment(RadialActionTD[25], 1);
	TextDrawColor(RadialActionTD[25], 0x0080FFFF);
	TextDrawUseBox(RadialActionTD[25], 1);
	TextDrawBoxColor(RadialActionTD[25], 50);
	TextDrawSetShadow(RadialActionTD[25], 0);
	TextDrawSetOutline(RadialActionTD[25], 0);
	TextDrawBackgroundColor(RadialActionTD[25], 255);
	TextDrawFont(RadialActionTD[25], 4);
	TextDrawSetProportional(RadialActionTD[25], 1);

	RadialActionTD[26] = TextDrawCreate(280.000, 224.000, "ld_dual:white");
	TextDrawLetterSize(RadialActionTD[26], 0.600, 2.000);
	TextDrawTextSize(RadialActionTD[26], 8.500, 8.000);
	TextDrawAlignment(RadialActionTD[26], 1);
	TextDrawColor(RadialActionTD[26], -741092353);
	TextDrawUseBox(RadialActionTD[26], 1);
	TextDrawBoxColor(RadialActionTD[26], 50);
	TextDrawSetShadow(RadialActionTD[26], 0);
	TextDrawSetOutline(RadialActionTD[26], 0);
	TextDrawBackgroundColor(RadialActionTD[26], 255);
	TextDrawFont(RadialActionTD[26], 4);
	TextDrawSetProportional(RadialActionTD[26], 1);

	RadialActionTD[27] = TextDrawCreate(284.000, 225.000, "ld_dual:white");
	TextDrawLetterSize(RadialActionTD[27], 0.600, 2.000);
	TextDrawTextSize(RadialActionTD[27], 1.000, 3.000);
	TextDrawAlignment(RadialActionTD[27], 1);
	TextDrawColor(RadialActionTD[27], 255);
	TextDrawUseBox(RadialActionTD[27], 1);
	TextDrawBoxColor(RadialActionTD[27], 50);
	TextDrawSetShadow(RadialActionTD[27], 0);
	TextDrawSetOutline(RadialActionTD[27], 0);
	TextDrawBackgroundColor(RadialActionTD[27], 255);
	TextDrawFont(RadialActionTD[27], 4);
	TextDrawSetProportional(RadialActionTD[27], 1);

	RadialActionTD[28] = TextDrawCreate(281.000, 228.000, "ld_dual:white");
	TextDrawLetterSize(RadialActionTD[28], 0.600, 2.000);
	TextDrawTextSize(RadialActionTD[28], 4.000, 1.500);
	TextDrawAlignment(RadialActionTD[28], 1);
	TextDrawColor(RadialActionTD[28], 255);
	TextDrawUseBox(RadialActionTD[28], 1);
	TextDrawBoxColor(RadialActionTD[28], 50);
	TextDrawSetShadow(RadialActionTD[28], 0);
	TextDrawSetOutline(RadialActionTD[28], 0);
	TextDrawBackgroundColor(RadialActionTD[28], 255);
	TextDrawFont(RadialActionTD[28], 4);
	TextDrawSetProportional(RadialActionTD[28], 1);

	RadialActionTD[29] = TextDrawCreate(293.000, 181.000, "ld_dual:white");
	TextDrawLetterSize(RadialActionTD[29], 0.600, 2.000);
	TextDrawTextSize(RadialActionTD[29], 19.000, 16.000);
	TextDrawAlignment(RadialActionTD[29], 1);
	TextDrawColor(RadialActionTD[29], 0x0080FFFF);
	TextDrawUseBox(RadialActionTD[29], 1);
	TextDrawBoxColor(RadialActionTD[29], 50);
	TextDrawSetShadow(RadialActionTD[29], 0);
	TextDrawSetOutline(RadialActionTD[29], 0);
	TextDrawBackgroundColor(RadialActionTD[29], 255);
	TextDrawFont(RadialActionTD[29], 4);
	TextDrawSetProportional(RadialActionTD[29], 1);

	RadialActionTD[30] = TextDrawCreate(293.000, 184.000, "ld_dual:white");
	TextDrawLetterSize(RadialActionTD[30], 0.600, 2.000);
	TextDrawTextSize(RadialActionTD[30], 19.000, 2.500);
	TextDrawAlignment(RadialActionTD[30], 1);
	TextDrawColor(RadialActionTD[30], 1061109644);
	TextDrawUseBox(RadialActionTD[30], 1);
	TextDrawBoxColor(RadialActionTD[30], 50);
	TextDrawSetShadow(RadialActionTD[30], 0);
	TextDrawSetOutline(RadialActionTD[30], 0);
	TextDrawBackgroundColor(RadialActionTD[30], 255);
	TextDrawFont(RadialActionTD[30], 4);
	TextDrawSetProportional(RadialActionTD[30], 1);

	RadialActionTD[31] = TextDrawCreate(299.000, 183.000, "ld_dual:white");
	TextDrawLetterSize(RadialActionTD[31], 0.600, 2.000);
	TextDrawTextSize(RadialActionTD[31], 5.500, 5.000);
	TextDrawAlignment(RadialActionTD[31], 1);
	TextDrawColor(RadialActionTD[31], 1061109644);
	TextDrawUseBox(RadialActionTD[31], 1);
	TextDrawBoxColor(RadialActionTD[31], 50);
	TextDrawSetShadow(RadialActionTD[31], 0);
	TextDrawSetOutline(RadialActionTD[31], 0);
	TextDrawBackgroundColor(RadialActionTD[31], 255);
	TextDrawFont(RadialActionTD[31], 4);
	TextDrawSetProportional(RadialActionTD[31], 1);

	RadialActionTD[32] = TextDrawCreate(297.000, 177.000, "ld_dual:white");
	TextDrawLetterSize(RadialActionTD[32], 0.600, 2.000);
	TextDrawTextSize(RadialActionTD[32], 10.000, 5.000);
	TextDrawAlignment(RadialActionTD[32], 1);
	TextDrawColor(RadialActionTD[32], 0x0080FFFF);
	TextDrawUseBox(RadialActionTD[32], 1);
	TextDrawBoxColor(RadialActionTD[32], 50);
	TextDrawSetShadow(RadialActionTD[32], 0);
	TextDrawSetOutline(RadialActionTD[32], 0);
	TextDrawBackgroundColor(RadialActionTD[32], 255);
	TextDrawFont(RadialActionTD[32], 4);
	TextDrawSetProportional(RadialActionTD[32], 1);

	RadialActionTD[33] = TextDrawCreate(299.000, 178.000, "ld_dual:white");
	TextDrawLetterSize(RadialActionTD[33], 0.600, 2.000);
	TextDrawTextSize(RadialActionTD[33], 5.000, 2.500);
	TextDrawAlignment(RadialActionTD[33], 1);
	TextDrawColor(RadialActionTD[33], 1061109644);
	TextDrawUseBox(RadialActionTD[33], 1);
	TextDrawBoxColor(RadialActionTD[33], 50);
	TextDrawSetShadow(RadialActionTD[33], 0);
	TextDrawSetOutline(RadialActionTD[33], 0);
	TextDrawBackgroundColor(RadialActionTD[33], 255);
	TextDrawFont(RadialActionTD[33], 4);
	TextDrawSetProportional(RadialActionTD[33], 1);

	RadialActionTD[34] = TextDrawCreate(294.000, 256.000, "O");
	TextDrawLetterSize(RadialActionTD[34], 0.519, 2.299);
	TextDrawAlignment(RadialActionTD[34], 1);
	TextDrawColor(RadialActionTD[34], -1);
	TextDrawSetShadow(RadialActionTD[34], 0);
	TextDrawSetOutline(RadialActionTD[34], 0);
	TextDrawBackgroundColor(RadialActionTD[34], 150);
	TextDrawFont(RadialActionTD[34], 1);
	TextDrawSetProportional(RadialActionTD[34], 1);

	RadialActionTD[35] = TextDrawCreate(309.000, 270.000, "/");
	TextDrawLetterSize(RadialActionTD[35], -0.539, 0.799);
	TextDrawAlignment(RadialActionTD[35], 1);
	TextDrawColor(RadialActionTD[35], -1);
	TextDrawSetShadow(RadialActionTD[35], 0);
	TextDrawSetOutline(RadialActionTD[35], 0);
	TextDrawBackgroundColor(RadialActionTD[35], 150);
	TextDrawFont(RadialActionTD[35], 1);
	TextDrawSetProportional(RadialActionTD[35], 1);

	RadialActionTD[36] = TextDrawCreate(313.000, 223.000, "<");
	TextDrawLetterSize(RadialActionTD[36], 0.230, 1.199);
	TextDrawAlignment(RadialActionTD[36], 1);
	TextDrawColor(RadialActionTD[36], -1);
	TextDrawSetShadow(RadialActionTD[36], 0);
	TextDrawSetOutline(RadialActionTD[36], 0);
	TextDrawBackgroundColor(RadialActionTD[36], 150);
	TextDrawFont(RadialActionTD[36], 1);
	TextDrawSetProportional(RadialActionTD[36], 1);

	RadialActionTD[37] = TextDrawCreate(314.000, 228.000, "LD_SPAC:white");
	TextDrawTextSize(RadialActionTD[37], 13.000, 2.000);
	TextDrawAlignment(RadialActionTD[37], 1);
	TextDrawColor(RadialActionTD[37], -1);
	TextDrawSetShadow(RadialActionTD[37], 0);
	TextDrawSetOutline(RadialActionTD[37], 0);
	TextDrawBackgroundColor(RadialActionTD[37], 255);
	TextDrawFont(RadialActionTD[37], 4);
	TextDrawSetProportional(RadialActionTD[37], 1);

	RadialActionTD[38] = TextDrawCreate(314.000, 231.000, "Return");
	TextDrawLetterSize(RadialActionTD[38], 0.150, 0.799);
	TextDrawAlignment(RadialActionTD[38], 1);
	TextDrawColor(RadialActionTD[38], -1);
	TextDrawSetShadow(RadialActionTD[38], 0);
	TextDrawSetOutline(RadialActionTD[38], 0);
	TextDrawBackgroundColor(RadialActionTD[38], 150);
	TextDrawFont(RadialActionTD[38], 1);
	TextDrawSetProportional(RadialActionTD[38], 1);

	RadialActionTD[39] = TextDrawCreate(294.000, 277.000, "Search");
	TextDrawLetterSize(RadialActionTD[39], 0.150, 0.799);
	TextDrawAlignment(RadialActionTD[39], 1);
	TextDrawColor(RadialActionTD[39], -1);
	TextDrawSetShadow(RadialActionTD[39], 0);
	TextDrawSetOutline(RadialActionTD[39], 0);
	TextDrawBackgroundColor(RadialActionTD[39], 150);
	TextDrawFont(RadialActionTD[39], 1);
	TextDrawSetProportional(RadialActionTD[39], 1);

	RadialActionTD[40] = TextDrawCreate(329.000, 277.000, "Identitas");
	TextDrawLetterSize(RadialActionTD[40], 0.150, 0.799);
	TextDrawAlignment(RadialActionTD[40], 1);
	TextDrawColor(RadialActionTD[40], -1);
	TextDrawSetShadow(RadialActionTD[40], 0);
	TextDrawSetOutline(RadialActionTD[40], 0);
	TextDrawBackgroundColor(RadialActionTD[40], 150);
	TextDrawFont(RadialActionTD[40], 1);
	TextDrawSetProportional(RadialActionTD[40], 1);

	RadialActionTD[41] = TextDrawCreate(344.000, 238.000, "Hat/Helmet");
	TextDrawLetterSize(RadialActionTD[41], 0.150, 0.799);
	TextDrawAlignment(RadialActionTD[41], 1);
	TextDrawColor(RadialActionTD[41], -1);
	TextDrawSetShadow(RadialActionTD[41], 0);
	TextDrawSetOutline(RadialActionTD[41], 0);
	TextDrawBackgroundColor(RadialActionTD[41], 150);
	TextDrawFont(RadialActionTD[41], 1);
	TextDrawSetProportional(RadialActionTD[41], 1);

	RadialActionTD[42] = TextDrawCreate(328.000, 195.000, "Kacamata");
	TextDrawLetterSize(RadialActionTD[42], 0.150, 0.799);
	TextDrawAlignment(RadialActionTD[42], 1);
	TextDrawColor(RadialActionTD[42], -1);
	TextDrawSetShadow(RadialActionTD[42], 0);
	TextDrawSetOutline(RadialActionTD[42], 0);
	TextDrawBackgroundColor(RadialActionTD[42], 150);
	TextDrawFont(RadialActionTD[42], 1);
	TextDrawSetProportional(RadialActionTD[42], 1);

	RadialActionTD[43] = TextDrawCreate(291.000, 198.000, "Tas/Koper");
	TextDrawLetterSize(RadialActionTD[43], 0.150, 0.799);
	TextDrawAlignment(RadialActionTD[43], 1);
	TextDrawColor(RadialActionTD[43], -1);
	TextDrawSetShadow(RadialActionTD[43], 0);
	TextDrawSetOutline(RadialActionTD[43], 0);
	TextDrawBackgroundColor(RadialActionTD[43], 150);
	TextDrawFont(RadialActionTD[43], 1);
	TextDrawSetProportional(RadialActionTD[43], 1);

	RadialActionTD[44] = TextDrawCreate(274.000, 237.000, "Aksesoris");
	TextDrawLetterSize(RadialActionTD[44], 0.140, 0.799);
	TextDrawAlignment(RadialActionTD[44], 1);
	TextDrawColor(RadialActionTD[44], -1);
	TextDrawSetShadow(RadialActionTD[44], 0);
	TextDrawSetOutline(RadialActionTD[44], 0);
	TextDrawBackgroundColor(RadialActionTD[44], 150);
	TextDrawFont(RadialActionTD[44], 1);
	TextDrawSetProportional(RadialActionTD[44], 1);
}

CreateRadialVehTD()
{
	RadialVehTD[0] = TextDrawCreate(263.000, 199.000, "_");
	TextDrawTextSize(RadialVehTD[0], 45.000, 57.000);
	TextDrawAlignment(RadialVehTD[0], 1);
	TextDrawColor(RadialVehTD[0], 40);
	TextDrawSetShadow(RadialVehTD[0], 0);
	TextDrawSetOutline(RadialVehTD[0], 0);
	TextDrawBackgroundColor(RadialVehTD[0], 0);
	TextDrawFont(RadialVehTD[0], 5);
	TextDrawSetProportional(RadialVehTD[0], 0);
	TextDrawSetPreviewModel(RadialVehTD[0], 2751);
	TextDrawSetPreviewRot(RadialVehTD[0], -90.000, 0.000, -30.000, 0.799);
	TextDrawSetPreviewVehCol(RadialVehTD[0], 0, 0);
	TextDrawSetSelectable(RadialVehTD[0], 1);

	RadialVehTD[1] = TextDrawCreate(299.000, 199.000, "_");
	TextDrawTextSize(RadialVehTD[1], 45.000, 57.000);
	TextDrawAlignment(RadialVehTD[1], 1);
	TextDrawColor(RadialVehTD[1], -16777176);
	TextDrawSetShadow(RadialVehTD[1], 0);
	TextDrawSetOutline(RadialVehTD[1], 0);
	TextDrawBackgroundColor(RadialVehTD[1], 0);
	TextDrawFont(RadialVehTD[1], 5);
	TextDrawSetProportional(RadialVehTD[1], 0);
	TextDrawSetPreviewModel(RadialVehTD[1], 2751);
	TextDrawSetPreviewRot(RadialVehTD[1], -90.000, 0.000, -30.000, 0.799);
	TextDrawSetPreviewVehCol(RadialVehTD[1], 0, 0);
	TextDrawSetSelectable(RadialVehTD[1], 1);

	RadialVehTD[2] = TextDrawCreate(281.000, 159.000, "_");
	TextDrawTextSize(RadialVehTD[2], 45.000, 57.000);
	TextDrawAlignment(RadialVehTD[2], 1);
	TextDrawColor(RadialVehTD[2], 50);
	TextDrawSetShadow(RadialVehTD[2], 0);
	TextDrawSetOutline(RadialVehTD[2], 0);
	TextDrawBackgroundColor(RadialVehTD[2], 0);
	TextDrawFont(RadialVehTD[2], 5);
	TextDrawSetProportional(RadialVehTD[2], 0);
	TextDrawSetPreviewModel(RadialVehTD[2], 2751);
	TextDrawSetPreviewRot(RadialVehTD[2], -90.000, 0.000, -30.000, 0.799);
	TextDrawSetPreviewVehCol(RadialVehTD[2], 0, 0);
	TextDrawSetSelectable(RadialVehTD[2], 1);

	RadialVehTD[3] = TextDrawCreate(318.000, 159.000, "_");
	TextDrawTextSize(RadialVehTD[3], 45.000, 57.000);
	TextDrawAlignment(RadialVehTD[3], 1);
	TextDrawColor(RadialVehTD[3], 50);
	TextDrawSetShadow(RadialVehTD[3], 0);
	TextDrawSetOutline(RadialVehTD[3], 0);
	TextDrawBackgroundColor(RadialVehTD[3], 0);
	TextDrawFont(RadialVehTD[3], 5);
	TextDrawSetProportional(RadialVehTD[3], 0);
	TextDrawSetPreviewModel(RadialVehTD[3], 2751);
	TextDrawSetPreviewRot(RadialVehTD[3], -90.000, 0.000, -30.000, 0.799);
	TextDrawSetPreviewVehCol(RadialVehTD[3], 0, 0);
	TextDrawSetSelectable(RadialVehTD[3], 1);

	RadialVehTD[4] = TextDrawCreate(336.000, 200.000, "_");
	TextDrawTextSize(RadialVehTD[4], 45.000, 57.000);
	TextDrawAlignment(RadialVehTD[4], 1);
	TextDrawColor(RadialVehTD[4], 50);
	TextDrawSetShadow(RadialVehTD[4], 0);
	TextDrawSetOutline(RadialVehTD[4], 0);
	TextDrawBackgroundColor(RadialVehTD[4], 0);
	TextDrawFont(RadialVehTD[4], 5);
	TextDrawSetProportional(RadialVehTD[4], 0);
	TextDrawSetPreviewModel(RadialVehTD[4], 2751);
	TextDrawSetPreviewRot(RadialVehTD[4], -90.000, 0.000, -30.000, 0.799);
	TextDrawSetPreviewVehCol(RadialVehTD[4], 0, 0);
	TextDrawSetSelectable(RadialVehTD[4], 1);

	RadialVehTD[5] = TextDrawCreate(317.000, 240.000, "_");
	TextDrawTextSize(RadialVehTD[5], 45.000, 57.000);
	TextDrawAlignment(RadialVehTD[5], 1);
	TextDrawColor(RadialVehTD[5], 50);
	TextDrawSetShadow(RadialVehTD[5], 0);
	TextDrawSetOutline(RadialVehTD[5], 0);
	TextDrawBackgroundColor(RadialVehTD[5], 0);
	TextDrawFont(RadialVehTD[5], 5);
	TextDrawSetProportional(RadialVehTD[5], 0);
	TextDrawSetPreviewModel(RadialVehTD[5], 2751);
	TextDrawSetPreviewRot(RadialVehTD[5], -90.000, 0.000, -30.000, 0.799);
	TextDrawSetPreviewVehCol(RadialVehTD[5], 0, 0);
	TextDrawSetSelectable(RadialVehTD[5], 1);

	RadialVehTD[6] = TextDrawCreate(280.000, 240.000, "_");
	TextDrawTextSize(RadialVehTD[6], 45.000, 57.000);
	TextDrawAlignment(RadialVehTD[6], 1);
	TextDrawColor(RadialVehTD[6], 50);
	TextDrawSetShadow(RadialVehTD[6], 0);
	TextDrawSetOutline(RadialVehTD[6], 0);
	TextDrawBackgroundColor(RadialVehTD[6], 0);
	TextDrawFont(RadialVehTD[6], 5);
	TextDrawSetProportional(RadialVehTD[6], 0);
	TextDrawSetPreviewModel(RadialVehTD[6], 2751);
	TextDrawSetPreviewRot(RadialVehTD[6], -90.000, 0.000, -30.000, 0.799);
	TextDrawSetPreviewVehCol(RadialVehTD[6], 0, 0);
	TextDrawSetSelectable(RadialVehTD[6], 1);

	RadialVehTD[7] = TextDrawCreate(330.000, 187.000, "LD_BUM:blkdot");
	TextDrawTextSize(RadialVehTD[7], 19.000, 10.000);
	TextDrawAlignment(RadialVehTD[7], 1);
	TextDrawColor(RadialVehTD[7], -1);
	TextDrawSetShadow(RadialVehTD[7], 0);
	TextDrawSetOutline(RadialVehTD[7], 0);
	TextDrawBackgroundColor(RadialVehTD[7], 255);
	TextDrawFont(RadialVehTD[7], 4);
	TextDrawSetProportional(RadialVehTD[7], 1);

	RadialVehTD[8] = TextDrawCreate(339.000, 190.000, "LD_BEAT:chit");
	TextDrawTextSize(RadialVehTD[8], 9.000, 12.000);
	TextDrawAlignment(RadialVehTD[8], 1);
	TextDrawColor(RadialVehTD[8], 1768516095);
	TextDrawSetShadow(RadialVehTD[8], 0);
	TextDrawSetOutline(RadialVehTD[8], 0);
	TextDrawBackgroundColor(RadialVehTD[8], 255);
	TextDrawFont(RadialVehTD[8], 4);
	TextDrawSetProportional(RadialVehTD[8], 1);

	RadialVehTD[9] = TextDrawCreate(331.000, 190.000, "LD_BEAT:chit");
	TextDrawTextSize(RadialVehTD[9], 9.000, 12.000);
	TextDrawAlignment(RadialVehTD[9], 1);
	TextDrawColor(RadialVehTD[9], 1768516095);
	TextDrawSetShadow(RadialVehTD[9], 0);
	TextDrawSetOutline(RadialVehTD[9], 0);
	TextDrawBackgroundColor(RadialVehTD[9], 255);
	TextDrawFont(RadialVehTD[9], 4);
	TextDrawSetProportional(RadialVehTD[9], 1);

	RadialVehTD[10] = TextDrawCreate(337.000, 180.000, "LD_BUM:blkdot");
	TextDrawTextSize(RadialVehTD[10], 6.000, 1.000);
	TextDrawAlignment(RadialVehTD[10], 1);
	TextDrawColor(RadialVehTD[10], -1);
	TextDrawSetShadow(RadialVehTD[10], 0);
	TextDrawSetOutline(RadialVehTD[10], 0);
	TextDrawBackgroundColor(RadialVehTD[10], 255);
	TextDrawFont(RadialVehTD[10], 4);
	TextDrawSetProportional(RadialVehTD[10], 1);

	RadialVehTD[11] = TextDrawCreate(334.000, 179.000, "/");
	TextDrawLetterSize(RadialVehTD[11], 0.319, 0.899);
	TextDrawAlignment(RadialVehTD[11], 1);
	TextDrawColor(RadialVehTD[11], -1);
	TextDrawSetShadow(RadialVehTD[11], 0);
	TextDrawSetOutline(RadialVehTD[11], 0);
	TextDrawBackgroundColor(RadialVehTD[11], 150);
	TextDrawFont(RadialVehTD[11], 1);
	TextDrawSetProportional(RadialVehTD[11], 1);

	RadialVehTD[12] = TextDrawCreate(346.000, 179.000, "/");
	TextDrawLetterSize(RadialVehTD[12], -0.310, 0.899);
	TextDrawAlignment(RadialVehTD[12], 1);
	TextDrawColor(RadialVehTD[12], -1);
	TextDrawSetShadow(RadialVehTD[12], 0);
	TextDrawSetOutline(RadialVehTD[12], 0);
	TextDrawBackgroundColor(RadialVehTD[12], 150);
	TextDrawFont(RadialVehTD[12], 1);
	TextDrawSetProportional(RadialVehTD[12], 1);

	RadialVehTD[13] = TextDrawCreate(335.000, 179.000, "/");
	TextDrawLetterSize(RadialVehTD[13], -0.310, 0.899);
	TextDrawAlignment(RadialVehTD[13], 1);
	TextDrawColor(RadialVehTD[13], -1);
	TextDrawSetShadow(RadialVehTD[13], 0);
	TextDrawSetOutline(RadialVehTD[13], 0);
	TextDrawBackgroundColor(RadialVehTD[13], 150);
	TextDrawFont(RadialVehTD[13], 1);
	TextDrawSetProportional(RadialVehTD[13], 1);

	RadialVehTD[14] = TextDrawCreate(293.000, 187.000, "LD_BUM:blkdot");
	TextDrawTextSize(RadialVehTD[14], 19.000, 10.000);
	TextDrawAlignment(RadialVehTD[14], 1);
	TextDrawColor(RadialVehTD[14], -1);
	TextDrawSetShadow(RadialVehTD[14], 0);
	TextDrawSetOutline(RadialVehTD[14], 0);
	TextDrawBackgroundColor(RadialVehTD[14], 255);
	TextDrawFont(RadialVehTD[14], 4);
	TextDrawSetProportional(RadialVehTD[14], 1);

	RadialVehTD[15] = TextDrawCreate(302.000, 190.000, "LD_BEAT:chit");
	TextDrawTextSize(RadialVehTD[15], 9.000, 12.000);
	TextDrawAlignment(RadialVehTD[15], 1);
	TextDrawColor(RadialVehTD[15], 1768516095);
	TextDrawSetShadow(RadialVehTD[15], 0);
	TextDrawSetOutline(RadialVehTD[15], 0);
	TextDrawBackgroundColor(RadialVehTD[15], 255);
	TextDrawFont(RadialVehTD[15], 4);
	TextDrawSetProportional(RadialVehTD[15], 1);

	RadialVehTD[16] = TextDrawCreate(294.000, 190.000, "LD_BEAT:chit");
	TextDrawTextSize(RadialVehTD[16], 9.000, 12.000);
	TextDrawAlignment(RadialVehTD[16], 1);
	TextDrawColor(RadialVehTD[16], 1768516095);
	TextDrawSetShadow(RadialVehTD[16], 0);
	TextDrawSetOutline(RadialVehTD[16], 0);
	TextDrawBackgroundColor(RadialVehTD[16], 255);
	TextDrawFont(RadialVehTD[16], 4);
	TextDrawSetProportional(RadialVehTD[16], 1);

	RadialVehTD[17] = TextDrawCreate(299.000, 180.000, "LD_BUM:blkdot");
	TextDrawTextSize(RadialVehTD[17], 6.000, 1.000);
	TextDrawAlignment(RadialVehTD[17], 1);
	TextDrawColor(RadialVehTD[17], -1);
	TextDrawSetShadow(RadialVehTD[17], 0);
	TextDrawSetOutline(RadialVehTD[17], 0);
	TextDrawBackgroundColor(RadialVehTD[17], 255);
	TextDrawFont(RadialVehTD[17], 4);
	TextDrawSetProportional(RadialVehTD[17], 1);

	RadialVehTD[18] = TextDrawCreate(296.000, 179.000, "/");
	TextDrawLetterSize(RadialVehTD[18], 0.319, 0.899);
	TextDrawAlignment(RadialVehTD[18], 1);
	TextDrawColor(RadialVehTD[18], -1);
	TextDrawSetShadow(RadialVehTD[18], 0);
	TextDrawSetOutline(RadialVehTD[18], 0);
	TextDrawBackgroundColor(RadialVehTD[18], 150);
	TextDrawFont(RadialVehTD[18], 1);
	TextDrawSetProportional(RadialVehTD[18], 1);

	RadialVehTD[19] = TextDrawCreate(308.000, 179.000, "/");
	TextDrawLetterSize(RadialVehTD[19], -0.310, 0.899);
	TextDrawAlignment(RadialVehTD[19], 1);
	TextDrawColor(RadialVehTD[19], -1);
	TextDrawSetShadow(RadialVehTD[19], 0);
	TextDrawSetOutline(RadialVehTD[19], 0);
	TextDrawBackgroundColor(RadialVehTD[19], 150);
	TextDrawFont(RadialVehTD[19], 1);
	TextDrawSetProportional(RadialVehTD[19], 1);

	RadialVehTD[20] = TextDrawCreate(308.000, 179.000, "/");
	TextDrawLetterSize(RadialVehTD[20], 0.280, 0.899);
	TextDrawAlignment(RadialVehTD[20], 1);
	TextDrawColor(RadialVehTD[20], -1);
	TextDrawSetShadow(RadialVehTD[20], 0);
	TextDrawSetOutline(RadialVehTD[20], 0);
	TextDrawBackgroundColor(RadialVehTD[20], 150);
	TextDrawFont(RadialVehTD[20], 1);
	TextDrawSetProportional(RadialVehTD[20], 1);

	RadialVehTD[21] = TextDrawCreate(360.000, 219.000, "D");
	TextDrawLetterSize(RadialVehTD[21], 0.469, 1.999);
	TextDrawAlignment(RadialVehTD[21], 1);
	TextDrawColor(RadialVehTD[21], -1);
	TextDrawSetShadow(RadialVehTD[21], 0);
	TextDrawSetOutline(RadialVehTD[21], 0);
	TextDrawBackgroundColor(RadialVehTD[21], 150);
	TextDrawFont(RadialVehTD[21], 1);
	TextDrawSetProportional(RadialVehTD[21], 1);

	RadialVehTD[22] = TextDrawCreate(279.000, 224.000, "LD_BUM:blkdot");
	TextDrawTextSize(RadialVehTD[22], 11.000, 12.000);
	TextDrawAlignment(RadialVehTD[22], 1);
	TextDrawColor(RadialVehTD[22], -1);
	TextDrawSetShadow(RadialVehTD[22], 0);
	TextDrawSetOutline(RadialVehTD[22], 0);
	TextDrawBackgroundColor(RadialVehTD[22], 255);
	TextDrawFont(RadialVehTD[22], 4);
	TextDrawSetProportional(RadialVehTD[22], 1);

	RadialVehTD[23] = TextDrawCreate(282.000, 228.000, "LD_BEAT:chit");
	TextDrawTextSize(RadialVehTD[23], 5.000, 5.000);
	TextDrawAlignment(RadialVehTD[23], 1);
	TextDrawColor(RadialVehTD[23], 1768516095);
	TextDrawSetShadow(RadialVehTD[23], 0);
	TextDrawSetOutline(RadialVehTD[23], 0);
	TextDrawBackgroundColor(RadialVehTD[23], 255);
	TextDrawFont(RadialVehTD[23], 4);
	TextDrawSetProportional(RadialVehTD[23], 1);

	RadialVehTD[24] = TextDrawCreate(283.000, 232.000, "LD_BUM:blkdot");
	TextDrawTextSize(RadialVehTD[24], 2.000, 2.000);
	TextDrawAlignment(RadialVehTD[24], 1);
	TextDrawColor(RadialVehTD[24], 1768516095);
	TextDrawSetShadow(RadialVehTD[24], 0);
	TextDrawSetOutline(RadialVehTD[24], 0);
	TextDrawBackgroundColor(RadialVehTD[24], 255);
	TextDrawFont(RadialVehTD[24], 4);
	TextDrawSetProportional(RadialVehTD[24], 1);

	RadialVehTD[25] = TextDrawCreate(349.000, 224.000, "LD_BUM:blkdot");
	TextDrawTextSize(RadialVehTD[25], 11.000, 2.000);
	TextDrawAlignment(RadialVehTD[25], 1);
	TextDrawColor(RadialVehTD[25], -1);
	TextDrawSetShadow(RadialVehTD[25], 0);
	TextDrawSetOutline(RadialVehTD[25], 0);
	TextDrawBackgroundColor(RadialVehTD[25], 255);
	TextDrawFont(RadialVehTD[25], 4);
	TextDrawSetProportional(RadialVehTD[25], 1);

	RadialVehTD[26] = TextDrawCreate(352.000, 228.000, "LD_BUM:blkdot");
	TextDrawTextSize(RadialVehTD[26], 8.000, 2.000);
	TextDrawAlignment(RadialVehTD[26], 1);
	TextDrawColor(RadialVehTD[26], -1);
	TextDrawSetShadow(RadialVehTD[26], 0);
	TextDrawSetOutline(RadialVehTD[26], 0);
	TextDrawBackgroundColor(RadialVehTD[26], 255);
	TextDrawFont(RadialVehTD[26], 4);
	TextDrawSetProportional(RadialVehTD[26], 1);

	RadialVehTD[27] = TextDrawCreate(349.000, 232.000, "LD_BUM:blkdot");
	TextDrawTextSize(RadialVehTD[27], 11.000, 2.000);
	TextDrawAlignment(RadialVehTD[27], 1);
	TextDrawColor(RadialVehTD[27], -1);
	TextDrawSetShadow(RadialVehTD[27], 0);
	TextDrawSetOutline(RadialVehTD[27], 0);
	TextDrawBackgroundColor(RadialVehTD[27], 255);
	TextDrawFont(RadialVehTD[27], 4);
	TextDrawSetProportional(RadialVehTD[27], 1);

	RadialVehTD[28] = TextDrawCreate(279.000, 213.000, "O");
	TextDrawLetterSize(RadialVehTD[28], 0.469, 1.999);
	TextDrawAlignment(RadialVehTD[28], 1);
	TextDrawColor(RadialVehTD[28], -1);
	TextDrawSetShadow(RadialVehTD[28], 0);
	TextDrawSetOutline(RadialVehTD[28], 0);
	TextDrawBackgroundColor(RadialVehTD[28], 150);
	TextDrawFont(RadialVehTD[28], 1);
	TextDrawSetProportional(RadialVehTD[28], 1);

	RadialVehTD[29] = TextDrawCreate(296.000, 260.000, "LD_BUM:blkdot");
	TextDrawTextSize(RadialVehTD[29], 11.000, 18.000);
	TextDrawAlignment(RadialVehTD[29], 1);
	TextDrawColor(RadialVehTD[29], -1);
	TextDrawSetShadow(RadialVehTD[29], 0);
	TextDrawSetOutline(RadialVehTD[29], 0);
	TextDrawBackgroundColor(RadialVehTD[29], 255);
	TextDrawFont(RadialVehTD[29], 4);
	TextDrawSetProportional(RadialVehTD[29], 1);

	RadialVehTD[30] = TextDrawCreate(299.000, 256.000, "LD_BUM:blkdot");
	TextDrawTextSize(RadialVehTD[30], 5.000, 5.000);
	TextDrawAlignment(RadialVehTD[30], 1);
	TextDrawColor(RadialVehTD[30], -1);
	TextDrawSetShadow(RadialVehTD[30], 0);
	TextDrawSetOutline(RadialVehTD[30], 0);
	TextDrawBackgroundColor(RadialVehTD[30], 255);
	TextDrawFont(RadialVehTD[30], 4);
	TextDrawSetProportional(RadialVehTD[30], 1);

	RadialVehTD[31] = TextDrawCreate(300.000, 257.000, "LD_BUM:blkdot");
	TextDrawTextSize(RadialVehTD[31], 3.000, 3.000);
	TextDrawAlignment(RadialVehTD[31], 1);
	TextDrawColor(RadialVehTD[31], 1768516095);
	TextDrawSetShadow(RadialVehTD[31], 0);
	TextDrawSetOutline(RadialVehTD[31], 0);
	TextDrawBackgroundColor(RadialVehTD[31], 255);
	TextDrawFont(RadialVehTD[31], 4);
	TextDrawSetProportional(RadialVehTD[31], 1);

	RadialVehTD[32] = TextDrawCreate(297.000, 261.000, "LD_BUM:blkdot");
	TextDrawTextSize(RadialVehTD[32], 1.000, 17.000);
	TextDrawAlignment(RadialVehTD[32], 1);
	TextDrawColor(RadialVehTD[32], 1768516095);
	TextDrawSetShadow(RadialVehTD[32], 0);
	TextDrawSetOutline(RadialVehTD[32], 0);
	TextDrawBackgroundColor(RadialVehTD[32], 255);
	TextDrawFont(RadialVehTD[32], 4);
	TextDrawSetProportional(RadialVehTD[32], 1);

	RadialVehTD[33] = TextDrawCreate(305.000, 261.000, "LD_BUM:blkdot");
	TextDrawTextSize(RadialVehTD[33], 1.000, 17.000);
	TextDrawAlignment(RadialVehTD[33], 1);
	TextDrawColor(RadialVehTD[33], 1768516095);
	TextDrawSetShadow(RadialVehTD[33], 0);
	TextDrawSetOutline(RadialVehTD[33], 0);
	TextDrawBackgroundColor(RadialVehTD[33], 255);
	TextDrawFont(RadialVehTD[33], 4);
	TextDrawSetProportional(RadialVehTD[33], 1);

	RadialVehTD[34] = TextDrawCreate(301.000, 261.000, "LD_BUM:blkdot");
	TextDrawTextSize(RadialVehTD[34], 1.000, 17.000);
	TextDrawAlignment(RadialVehTD[34], 1);
	TextDrawColor(RadialVehTD[34], 1768516095);
	TextDrawSetShadow(RadialVehTD[34], 0);
	TextDrawSetOutline(RadialVehTD[34], 0);
	TextDrawBackgroundColor(RadialVehTD[34], 255);
	TextDrawFont(RadialVehTD[34], 4);
	TextDrawSetProportional(RadialVehTD[34], 1);

	RadialVehTD[35] = TextDrawCreate(297.000, 278.000, "LD_BUM:blkdot");
	TextDrawTextSize(RadialVehTD[35], 1.000, 2.000);
	TextDrawAlignment(RadialVehTD[35], 1);
	TextDrawColor(RadialVehTD[35], -1);
	TextDrawSetShadow(RadialVehTD[35], 0);
	TextDrawSetOutline(RadialVehTD[35], 0);
	TextDrawBackgroundColor(RadialVehTD[35], 255);
	TextDrawFont(RadialVehTD[35], 4);
	TextDrawSetProportional(RadialVehTD[35], 1);

	RadialVehTD[36] = TextDrawCreate(305.000, 278.000, "LD_BUM:blkdot");
	TextDrawTextSize(RadialVehTD[36], 1.000, 2.000);
	TextDrawAlignment(RadialVehTD[36], 1);
	TextDrawColor(RadialVehTD[36], -1);
	TextDrawSetShadow(RadialVehTD[36], 0);
	TextDrawSetOutline(RadialVehTD[36], 0);
	TextDrawBackgroundColor(RadialVehTD[36], 255);
	TextDrawFont(RadialVehTD[36], 4);
	TextDrawSetProportional(RadialVehTD[36], 1);

	RadialVehTD[37] = TextDrawCreate(330.000, 263.000, "LD_BUM:blkdot");
	TextDrawTextSize(RadialVehTD[37], 18.000, 4.000);
	TextDrawAlignment(RadialVehTD[37], 1);
	TextDrawColor(RadialVehTD[37], -1);
	TextDrawSetShadow(RadialVehTD[37], 0);
	TextDrawSetOutline(RadialVehTD[37], 0);
	TextDrawBackgroundColor(RadialVehTD[37], 255);
	TextDrawFont(RadialVehTD[37], 4);
	TextDrawSetProportional(RadialVehTD[37], 1);

	RadialVehTD[38] = TextDrawCreate(342.000, 267.000, "LD_BUM:blkdot");
	TextDrawTextSize(RadialVehTD[38], 5.000, 8.000);
	TextDrawAlignment(RadialVehTD[38], 1);
	TextDrawColor(RadialVehTD[38], -1);
	TextDrawSetShadow(RadialVehTD[38], 0);
	TextDrawSetOutline(RadialVehTD[38], 0);
	TextDrawBackgroundColor(RadialVehTD[38], 255);
	TextDrawFont(RadialVehTD[38], 4);
	TextDrawSetProportional(RadialVehTD[38], 1);

	RadialVehTD[39] = TextDrawCreate(338.000, 263.000, "LD_BUM:blkdot");
	TextDrawTextSize(RadialVehTD[39], 5.000, 8.000);
	TextDrawAlignment(RadialVehTD[39], 1);
	TextDrawColor(RadialVehTD[39], -1);
	TextDrawSetShadow(RadialVehTD[39], 0);
	TextDrawSetOutline(RadialVehTD[39], 0);
	TextDrawBackgroundColor(RadialVehTD[39], 255);
	TextDrawFont(RadialVehTD[39], 4);
	TextDrawSetProportional(RadialVehTD[39], 1);

	RadialVehTD[40] = TextDrawCreate(339.000, 267.000, "LD_BUM:blkdot");
	TextDrawTextSize(RadialVehTD[40], 3.000, 3.000);
	TextDrawAlignment(RadialVehTD[40], 1);
	TextDrawColor(RadialVehTD[40], 1768516095);
	TextDrawSetShadow(RadialVehTD[40], 0);
	TextDrawSetOutline(RadialVehTD[40], 0);
	TextDrawBackgroundColor(RadialVehTD[40], 255);
	TextDrawFont(RadialVehTD[40], 4);
	TextDrawSetProportional(RadialVehTD[40], 1);

	RadialVehTD[41] = TextDrawCreate(331.000, 276.000, "Holster");
	TextDrawLetterSize(RadialVehTD[41], 0.150, 0.899);
	TextDrawAlignment(RadialVehTD[41], 1);
	TextDrawColor(RadialVehTD[41], -1);
	TextDrawSetShadow(RadialVehTD[41], 0);
	TextDrawSetOutline(RadialVehTD[41], 0);
	TextDrawBackgroundColor(RadialVehTD[41], 150);
	TextDrawFont(RadialVehTD[41], 1);
	TextDrawSetProportional(RadialVehTD[41], 1);

	RadialVehTD[42] = TextDrawCreate(294.000, 278.000, "Bagasi");
	TextDrawLetterSize(RadialVehTD[42], 0.150, 0.899);
	TextDrawAlignment(RadialVehTD[42], 1);
	TextDrawColor(RadialVehTD[42], -1);
	TextDrawSetShadow(RadialVehTD[42], 0);
	TextDrawSetOutline(RadialVehTD[42], 0);
	TextDrawBackgroundColor(RadialVehTD[42], 150);
	TextDrawFont(RadialVehTD[42], 1);
	TextDrawSetProportional(RadialVehTD[42], 1);

	RadialVehTD[43] = TextDrawCreate(279.000, 237.000, "Kunci");
	TextDrawLetterSize(RadialVehTD[43], 0.150, 0.899);
	TextDrawAlignment(RadialVehTD[43], 1);
	TextDrawColor(RadialVehTD[43], -1);
	TextDrawSetShadow(RadialVehTD[43], 0);
	TextDrawSetOutline(RadialVehTD[43], 0);
	TextDrawBackgroundColor(RadialVehTD[43], 150);
	TextDrawFont(RadialVehTD[43], 1);
	TextDrawSetProportional(RadialVehTD[43], 1);

	RadialVehTD[44] = TextDrawCreate(350.000, 235.000, "Lampu");
	TextDrawLetterSize(RadialVehTD[44], 0.150, 0.899);
	TextDrawAlignment(RadialVehTD[44], 1);
	TextDrawColor(RadialVehTD[44], -1);
	TextDrawSetShadow(RadialVehTD[44], 0);
	TextDrawSetOutline(RadialVehTD[44], 0);
	TextDrawBackgroundColor(RadialVehTD[44], 150);
	TextDrawFont(RadialVehTD[44], 1);
	TextDrawSetProportional(RadialVehTD[44], 1);

	RadialVehTD[45] = TextDrawCreate(333.000, 199.000, "Trunk");
	TextDrawLetterSize(RadialVehTD[45], 0.150, 0.899);
	TextDrawAlignment(RadialVehTD[45], 1);
	TextDrawColor(RadialVehTD[45], -1);
	TextDrawSetShadow(RadialVehTD[45], 0);
	TextDrawSetOutline(RadialVehTD[45], 0);
	TextDrawBackgroundColor(RadialVehTD[45], 150);
	TextDrawFont(RadialVehTD[45], 1);
	TextDrawSetProportional(RadialVehTD[45], 1);

	RadialVehTD[46] = TextDrawCreate(296.000, 199.000, "Hood");
	TextDrawLetterSize(RadialVehTD[46], 0.150, 0.899);
	TextDrawAlignment(RadialVehTD[46], 1);
	TextDrawColor(RadialVehTD[46], -1);
	TextDrawSetShadow(RadialVehTD[46], 0);
	TextDrawSetOutline(RadialVehTD[46], 0);
	TextDrawBackgroundColor(RadialVehTD[46], 150);
	TextDrawFont(RadialVehTD[46], 1);
	TextDrawSetProportional(RadialVehTD[46], 1);

	RadialVehTD[47] = TextDrawCreate(314.000, 231.000, "Keluar");
	TextDrawLetterSize(RadialVehTD[47], 0.150, 0.799);
	TextDrawAlignment(RadialVehTD[47], 1);
	TextDrawColor(RadialVehTD[47], -1);
	TextDrawSetShadow(RadialVehTD[47], 0);
	TextDrawSetOutline(RadialVehTD[47], 0);
	TextDrawBackgroundColor(RadialVehTD[47], 150);
	TextDrawFont(RadialVehTD[47], 1);
	TextDrawSetProportional(RadialVehTD[47], 1);

	RadialVehTD[48] = TextDrawCreate(313.000, 223.000, "<");
	TextDrawLetterSize(RadialVehTD[48], 0.230, 1.199);
	TextDrawAlignment(RadialVehTD[48], 1);
	TextDrawColor(RadialVehTD[48], -1);
	TextDrawSetShadow(RadialVehTD[48], 0);
	TextDrawSetOutline(RadialVehTD[48], 0);
	TextDrawBackgroundColor(RadialVehTD[48], 150);
	TextDrawFont(RadialVehTD[48], 1);
	TextDrawSetProportional(RadialVehTD[48], 1);

	RadialVehTD[49] = TextDrawCreate(314.000, 228.000, "LD_SPAC:white");
	TextDrawTextSize(RadialVehTD[49], 13.000, 2.000);
	TextDrawAlignment(RadialVehTD[49], 1);
	TextDrawColor(RadialVehTD[49], -1);
	TextDrawSetShadow(RadialVehTD[49], 0);
	TextDrawSetOutline(RadialVehTD[49], 0);
	TextDrawBackgroundColor(RadialVehTD[49], 255);
	TextDrawFont(RadialVehTD[49], 4);
	TextDrawSetProportional(RadialVehTD[49], 1);
}

CreateRadialCardTD()
{
	RadialCardTD[0] = TextDrawCreate(263.000, 199.000, "_");
	TextDrawTextSize(RadialCardTD[0], 45.000, 57.000);
	TextDrawAlignment(RadialCardTD[0], 1);
	TextDrawColor(RadialCardTD[0], 40);
	TextDrawSetShadow(RadialCardTD[0], 0);
	TextDrawSetOutline(RadialCardTD[0], 0);
	TextDrawBackgroundColor(RadialCardTD[0], 0);
	TextDrawFont(RadialCardTD[0], 5);
	TextDrawSetProportional(RadialCardTD[0], 0);
	TextDrawSetPreviewModel(RadialCardTD[0], 2751);
	TextDrawSetPreviewRot(RadialCardTD[0], -90.000, 0.000, -30.000, 0.799);
	TextDrawSetPreviewVehCol(RadialCardTD[0], 0, 0);
	TextDrawSetSelectable(RadialCardTD[0], 1);

	RadialCardTD[1] = TextDrawCreate(299.000, 199.000, "_");
	TextDrawTextSize(RadialCardTD[1], 45.000, 57.000);
	TextDrawAlignment(RadialCardTD[1], 1);
	TextDrawColor(RadialCardTD[1], -16777176);
	TextDrawSetShadow(RadialCardTD[1], 0);
	TextDrawSetOutline(RadialCardTD[1], 0);
	TextDrawBackgroundColor(RadialCardTD[1], 0);
	TextDrawFont(RadialCardTD[1], 5);
	TextDrawSetProportional(RadialCardTD[1], 0);
	TextDrawSetPreviewModel(RadialCardTD[1], 2751);
	TextDrawSetPreviewRot(RadialCardTD[1], -90.000, 0.000, -30.000, 0.799);
	TextDrawSetPreviewVehCol(RadialCardTD[1], 0, 0);
	TextDrawSetSelectable(RadialCardTD[1], 1);

	RadialCardTD[2] = TextDrawCreate(281.000, 159.000, "_");
	TextDrawTextSize(RadialCardTD[2], 45.000, 57.000);
	TextDrawAlignment(RadialCardTD[2], 1);
	TextDrawColor(RadialCardTD[2], 50);
	TextDrawSetShadow(RadialCardTD[2], 0);
	TextDrawSetOutline(RadialCardTD[2], 0);
	TextDrawBackgroundColor(RadialCardTD[2], 0);
	TextDrawFont(RadialCardTD[2], 5);
	TextDrawSetProportional(RadialCardTD[2], 0);
	TextDrawSetPreviewModel(RadialCardTD[2], 2751);
	TextDrawSetPreviewRot(RadialCardTD[2], -90.000, 0.000, -30.000, 0.799);
	TextDrawSetPreviewVehCol(RadialCardTD[2], 0, 0);
	TextDrawSetSelectable(RadialCardTD[2], 1);

	RadialCardTD[3] = TextDrawCreate(318.000, 159.000, "_");
	TextDrawTextSize(RadialCardTD[3], 45.000, 57.000);
	TextDrawAlignment(RadialCardTD[3], 1);
	TextDrawColor(RadialCardTD[3], 50);
	TextDrawSetShadow(RadialCardTD[3], 0);
	TextDrawSetOutline(RadialCardTD[3], 0);
	TextDrawBackgroundColor(RadialCardTD[3], 0);
	TextDrawFont(RadialCardTD[3], 5);
	TextDrawSetProportional(RadialCardTD[3], 0);
	TextDrawSetPreviewModel(RadialCardTD[3], 2751);
	TextDrawSetPreviewRot(RadialCardTD[3], -90.000, 0.000, -30.000, 0.799);
	TextDrawSetPreviewVehCol(RadialCardTD[3], 0, 0);
	TextDrawSetSelectable(RadialCardTD[3], 1);

	RadialCardTD[4] = TextDrawCreate(336.000, 200.000, "_");
	TextDrawTextSize(RadialCardTD[4], 45.000, 57.000);
	TextDrawAlignment(RadialCardTD[4], 1);
	TextDrawColor(RadialCardTD[4], 50);
	TextDrawSetShadow(RadialCardTD[4], 0);
	TextDrawSetOutline(RadialCardTD[4], 0);
	TextDrawBackgroundColor(RadialCardTD[4], 0);
	TextDrawFont(RadialCardTD[4], 5);
	TextDrawSetProportional(RadialCardTD[4], 0);
	TextDrawSetPreviewModel(RadialCardTD[4], 2751);
	TextDrawSetPreviewRot(RadialCardTD[4], -90.000, 0.000, -30.000, 0.799);
	TextDrawSetPreviewVehCol(RadialCardTD[4], 0, 0);
	TextDrawSetSelectable(RadialCardTD[4], 1);

	RadialCardTD[5] = TextDrawCreate(313.000, 223.000, "<");
	TextDrawLetterSize(RadialCardTD[5], 0.230, 1.199);
	TextDrawAlignment(RadialCardTD[5], 1);
	TextDrawColor(RadialCardTD[5], -1);
	TextDrawSetShadow(RadialCardTD[5], 0);
	TextDrawSetOutline(RadialCardTD[5], 0);
	TextDrawBackgroundColor(RadialCardTD[5], 150);
	TextDrawFont(RadialCardTD[5], 1);
	TextDrawSetProportional(RadialCardTD[5], 1);

	RadialCardTD[6] = TextDrawCreate(314.000, 228.000, "LD_SPAC:white");
	TextDrawTextSize(RadialCardTD[6], 13.000, 2.000);
	TextDrawAlignment(RadialCardTD[6], 1);
	TextDrawColor(RadialCardTD[6], -1);
	TextDrawSetShadow(RadialCardTD[6], 0);
	TextDrawSetOutline(RadialCardTD[6], 0);
	TextDrawBackgroundColor(RadialCardTD[6], 255);
	TextDrawFont(RadialCardTD[6], 4);
	TextDrawSetProportional(RadialCardTD[6], 1);

	RadialCardTD[7] = TextDrawCreate(314.000, 231.000, "Return");
	TextDrawLetterSize(RadialCardTD[7], 0.150, 0.799);
	TextDrawAlignment(RadialCardTD[7], 1);
	TextDrawColor(RadialCardTD[7], -1);
	TextDrawSetShadow(RadialCardTD[7], 0);
	TextDrawSetOutline(RadialCardTD[7], 0);
	TextDrawBackgroundColor(RadialCardTD[7], 150);
	TextDrawFont(RadialCardTD[7], 1);
	TextDrawSetProportional(RadialCardTD[7], 1);

	RadialCardTD[8] = TextDrawCreate(292.000, 182.000, "LD_BUM:blkdot");
	TextDrawTextSize(RadialCardTD[8], 21.000, 12.000);
	TextDrawAlignment(RadialCardTD[8], 1);
	TextDrawColor(RadialCardTD[8], 0x0080FFFF);
	TextDrawSetShadow(RadialCardTD[8], 0);
	TextDrawSetOutline(RadialCardTD[8], 0);
	TextDrawBackgroundColor(RadialCardTD[8], 255);
	TextDrawFont(RadialCardTD[8], 4);
	TextDrawSetProportional(RadialCardTD[8], 1);

	RadialCardTD[9] = TextDrawCreate(307.000, 183.000, "LD_BUM:blkdot");
	TextDrawTextSize(RadialCardTD[9], 5.000, 7.000);
	TextDrawAlignment(RadialCardTD[9], 1);
	TextDrawColor(RadialCardTD[9], 1061109644);
	TextDrawSetShadow(RadialCardTD[9], 0);
	TextDrawSetOutline(RadialCardTD[9], 0);
	TextDrawBackgroundColor(RadialCardTD[9], 255);
	TextDrawFont(RadialCardTD[9], 4);
	TextDrawSetProportional(RadialCardTD[9], 1);

	RadialCardTD[10] = TextDrawCreate(293.000, 183.000, "LD_BUM:blkdot");
	TextDrawTextSize(RadialCardTD[10], 13.000, 2.000);
	TextDrawAlignment(RadialCardTD[10], 1);
	TextDrawColor(RadialCardTD[10], 1061109644);
	TextDrawSetShadow(RadialCardTD[10], 0);
	TextDrawSetOutline(RadialCardTD[10], 0);
	TextDrawBackgroundColor(RadialCardTD[10], 255);
	TextDrawFont(RadialCardTD[10], 4);
	TextDrawSetProportional(RadialCardTD[10], 1);

	RadialCardTD[11] = TextDrawCreate(293.000, 186.000, "LD_BUM:blkdot");
	TextDrawTextSize(RadialCardTD[11], 13.000, 2.000);
	TextDrawAlignment(RadialCardTD[11], 1);
	TextDrawColor(RadialCardTD[11], 1061109644);
	TextDrawSetShadow(RadialCardTD[11], 0);
	TextDrawSetOutline(RadialCardTD[11], 0);
	TextDrawBackgroundColor(RadialCardTD[11], 255);
	TextDrawFont(RadialCardTD[11], 4);
	TextDrawSetProportional(RadialCardTD[11], 1);

	RadialCardTD[12] = TextDrawCreate(329.000, 181.000, "LD_BUM:blkdot");
	TextDrawTextSize(RadialCardTD[12], 21.000, 12.000);
	TextDrawAlignment(RadialCardTD[12], 1);
	TextDrawColor(RadialCardTD[12], 0x0080FFFF);
	TextDrawSetShadow(RadialCardTD[12], 0);
	TextDrawSetOutline(RadialCardTD[12], 0);
	TextDrawBackgroundColor(RadialCardTD[12], 255);
	TextDrawFont(RadialCardTD[12], 4);
	TextDrawSetProportional(RadialCardTD[12], 1);

	RadialCardTD[13] = TextDrawCreate(344.000, 182.000, "LD_BUM:blkdot");
	TextDrawTextSize(RadialCardTD[13], 5.000, 7.000);
	TextDrawAlignment(RadialCardTD[13], 1);
	TextDrawColor(RadialCardTD[13], 1061109644);
	TextDrawSetShadow(RadialCardTD[13], 0);
	TextDrawSetOutline(RadialCardTD[13], 0);
	TextDrawBackgroundColor(RadialCardTD[13], 255);
	TextDrawFont(RadialCardTD[13], 4);
	TextDrawSetProportional(RadialCardTD[13], 1);

	RadialCardTD[14] = TextDrawCreate(330.000, 182.000, "LD_BUM:blkdot");
	TextDrawTextSize(RadialCardTD[14], 13.000, 2.000);
	TextDrawAlignment(RadialCardTD[14], 1);
	TextDrawColor(RadialCardTD[14], 1061109644);
	TextDrawSetShadow(RadialCardTD[14], 0);
	TextDrawSetOutline(RadialCardTD[14], 0);
	TextDrawBackgroundColor(RadialCardTD[14], 255);
	TextDrawFont(RadialCardTD[14], 4);
	TextDrawSetProportional(RadialCardTD[14], 1);

	RadialCardTD[15] = TextDrawCreate(330.000, 185.000, "LD_BUM:blkdot");
	TextDrawTextSize(RadialCardTD[15], 13.000, 2.000);
	TextDrawAlignment(RadialCardTD[15], 1);
	TextDrawColor(RadialCardTD[15], 1061109644);
	TextDrawSetShadow(RadialCardTD[15], 0);
	TextDrawSetOutline(RadialCardTD[15], 0);
	TextDrawBackgroundColor(RadialCardTD[15], 255);
	TextDrawFont(RadialCardTD[15], 4);
	TextDrawSetProportional(RadialCardTD[15], 1);

	RadialCardTD[16] = TextDrawCreate(347.000, 223.000, "LD_BUM:blkdot");
	TextDrawTextSize(RadialCardTD[16], 21.000, 12.000);
	TextDrawAlignment(RadialCardTD[16], 1);
	TextDrawColor(RadialCardTD[16], 0x0080FFFF);
	TextDrawSetShadow(RadialCardTD[16], 0);
	TextDrawSetOutline(RadialCardTD[16], 0);
	TextDrawBackgroundColor(RadialCardTD[16], 255);
	TextDrawFont(RadialCardTD[16], 4);
	TextDrawSetProportional(RadialCardTD[16], 1);

	RadialCardTD[17] = TextDrawCreate(348.000, 226.000, "LD_BUM:blkdot");
	TextDrawTextSize(RadialCardTD[17], 5.000, 7.000);
	TextDrawAlignment(RadialCardTD[17], 1);
	TextDrawColor(RadialCardTD[17], 1061109644);
	TextDrawSetShadow(RadialCardTD[17], 0);
	TextDrawSetOutline(RadialCardTD[17], 0);
	TextDrawBackgroundColor(RadialCardTD[17], 255);
	TextDrawFont(RadialCardTD[17], 4);
	TextDrawSetProportional(RadialCardTD[17], 1);

	RadialCardTD[18] = TextDrawCreate(354.000, 227.000, "LD_BUM:blkdot");
	TextDrawTextSize(RadialCardTD[18], 11.000, 2.000);
	TextDrawAlignment(RadialCardTD[18], 1);
	TextDrawColor(RadialCardTD[18], 1061109644);
	TextDrawSetShadow(RadialCardTD[18], 0);
	TextDrawSetOutline(RadialCardTD[18], 0);
	TextDrawBackgroundColor(RadialCardTD[18], 255);
	TextDrawFont(RadialCardTD[18], 4);
	TextDrawSetProportional(RadialCardTD[18], 1);

	RadialCardTD[19] = TextDrawCreate(354.000, 230.000, "LD_BUM:blkdot");
	TextDrawTextSize(RadialCardTD[19], 11.000, 2.000);
	TextDrawAlignment(RadialCardTD[19], 1);
	TextDrawColor(RadialCardTD[19], 1061109644);
	TextDrawSetShadow(RadialCardTD[19], 0);
	TextDrawSetOutline(RadialCardTD[19], 0);
	TextDrawBackgroundColor(RadialCardTD[19], 255);
	TextDrawFont(RadialCardTD[19], 4);
	TextDrawSetProportional(RadialCardTD[19], 1);

	RadialCardTD[20] = TextDrawCreate(274.000, 223.000, "LD_BUM:blkdot");
	TextDrawTextSize(RadialCardTD[20], 21.000, 12.000);
	TextDrawAlignment(RadialCardTD[20], 1);
	TextDrawColor(RadialCardTD[20], 0x0080FFFF);
	TextDrawSetShadow(RadialCardTD[20], 0);
	TextDrawSetOutline(RadialCardTD[20], 0);
	TextDrawBackgroundColor(RadialCardTD[20], 255);
	TextDrawFont(RadialCardTD[20], 4);
	TextDrawSetProportional(RadialCardTD[20], 1);

	RadialCardTD[21] = TextDrawCreate(275.000, 226.000, "LD_BUM:blkdot");
	TextDrawTextSize(RadialCardTD[21], 5.000, 7.000);
	TextDrawAlignment(RadialCardTD[21], 1);
	TextDrawColor(RadialCardTD[21], 1061109644);
	TextDrawSetShadow(RadialCardTD[21], 0);
	TextDrawSetOutline(RadialCardTD[21], 0);
	TextDrawBackgroundColor(RadialCardTD[21], 255);
	TextDrawFont(RadialCardTD[21], 4);
	TextDrawSetProportional(RadialCardTD[21], 1);

	RadialCardTD[22] = TextDrawCreate(281.000, 227.000, "LD_BUM:blkdot");
	TextDrawTextSize(RadialCardTD[22], 11.000, 2.000);
	TextDrawAlignment(RadialCardTD[22], 1);
	TextDrawColor(RadialCardTD[22], 1061109644);
	TextDrawSetShadow(RadialCardTD[22], 0);
	TextDrawSetOutline(RadialCardTD[22], 0);
	TextDrawBackgroundColor(RadialCardTD[22], 255);
	TextDrawFont(RadialCardTD[22], 4);
	TextDrawSetProportional(RadialCardTD[22], 1);

	RadialCardTD[23] = TextDrawCreate(281.000, 230.000, "LD_BUM:blkdot");
	TextDrawTextSize(RadialCardTD[23], 11.000, 2.000);
	TextDrawAlignment(RadialCardTD[23], 1);
	TextDrawColor(RadialCardTD[23], 1061109644);
	TextDrawSetShadow(RadialCardTD[23], 0);
	TextDrawSetOutline(RadialCardTD[23], 0);
	TextDrawBackgroundColor(RadialCardTD[23], 255);
	TextDrawFont(RadialCardTD[23], 4);
	TextDrawSetProportional(RadialCardTD[23], 1);

	RadialCardTD[24] = TextDrawCreate(290.000, 195.000, "LIHAT IDCARD");
	TextDrawLetterSize(RadialCardTD[24], 0.119, 0.699);
	TextDrawAlignment(RadialCardTD[24], 1);
	TextDrawColor(RadialCardTD[24], 0x0080FFFF);
	TextDrawSetShadow(RadialCardTD[24], 0);
	TextDrawSetOutline(RadialCardTD[24], 0);
	TextDrawBackgroundColor(RadialCardTD[24], 150);
	TextDrawFont(RadialCardTD[24], 1);
	TextDrawSetProportional(RadialCardTD[24], 1);

	RadialCardTD[25] = TextDrawCreate(327.000, 195.000, "BERI IDCARD");
	TextDrawLetterSize(RadialCardTD[25], 0.128, 0.699);
	TextDrawAlignment(RadialCardTD[25], 1);
	TextDrawColor(RadialCardTD[25], 0x0080FFFF);
	TextDrawSetShadow(RadialCardTD[25], 0);
	TextDrawSetOutline(RadialCardTD[25], 0);
	TextDrawBackgroundColor(RadialCardTD[25], 150);
	TextDrawFont(RadialCardTD[25], 1);
	TextDrawSetProportional(RadialCardTD[25], 1);

	RadialCardTD[26] = TextDrawCreate(275.000, 237.000, "LIHAT SIM");
	TextDrawLetterSize(RadialCardTD[26], 0.128, 0.699);
	TextDrawAlignment(RadialCardTD[26], 1);
	TextDrawColor(RadialCardTD[26], 0x0080FFFF);
	TextDrawSetShadow(RadialCardTD[26], 0);
	TextDrawSetOutline(RadialCardTD[26], 0);
	TextDrawBackgroundColor(RadialCardTD[26], 150);
	TextDrawFont(RadialCardTD[26], 1);
	TextDrawSetProportional(RadialCardTD[26], 1);

	RadialCardTD[27] = TextDrawCreate(349.000, 236.000, "BERI SIM");
	TextDrawLetterSize(RadialCardTD[27], 0.128, 0.699);
	TextDrawAlignment(RadialCardTD[27], 1);
	TextDrawColor(RadialCardTD[27], 0x0080FFFF);
	TextDrawSetShadow(RadialCardTD[27], 0);
	TextDrawSetOutline(RadialCardTD[27], 0);
	TextDrawBackgroundColor(RadialCardTD[27], 150);
	TextDrawFont(RadialCardTD[27], 1);
	TextDrawSetProportional(RadialCardTD[27], 1);
}

ShowRadialTD(playerid)
{
    for(new x; x < 51; x++)
    {
        TextDrawShowForPlayer(playerid, RadialTD[x]);
    }
    SelectTextDraw(playerid, 0x33CCFFFF);
}

HideRadialTD(playerid)
{
    for(new x; x < 51; x++)
    {
        TextDrawHideForPlayer(playerid, RadialTD[x]);
    }
	CancelSelectTextDraw(playerid);
}

ShowRadialActionTD(playerid)
{
    for(new x; x < 45; x++)
    {
        TextDrawShowForPlayer(playerid, RadialActionTD[x]);
    }
    SelectTextDraw(playerid, 0x33CCFFFF);
}

HideRadialActionTD(playerid)
{
    for(new x; x < 45; x++)
    {
        TextDrawHideForPlayer(playerid, RadialActionTD[x]);
    }
}

ShowRadialVehTD(playerid)
{
    for(new x; x < 50; x++)
    {
        TextDrawShowForPlayer(playerid, RadialVehTD[x]);
    }
    SelectTextDraw(playerid, 0x33CCFFFF);
}

HideRadialVehTD(playerid)
{
    for(new x; x < 50; x++)
    {
        TextDrawHideForPlayer(playerid, RadialVehTD[x]);
    }
}

ShowRadialCardTD(playerid)
{
    for(new x; x < 28; x++)
    {
        TextDrawShowForPlayer(playerid, RadialCardTD[x]);
    }
    SelectTextDraw(playerid, 0x33CCFFFF);
}

HideRadialCardTD(playerid)
{
    for(new x; x < 28; x++)
    {
        TextDrawHideForPlayer(playerid, RadialCardTD[x]);
    }
}

hook OnGameModeInit()
{
    CreateRadialTD();
	CreateRadialActionTD();
	CreateRadialVehTD();
	CreateRadialCardTD();
    return 1;
}

hook OnPlayerClickTextDraw(playerid, Text:clickedid)
{
    // Radial Menu 1
	if(clickedid == RadialTD[1]) // Close Radial 1
	{
		PlayerPlaySound(playerid, 21001, 0.0, 0.0, 0.0);
		HideRadialTD(playerid);
		Toggle_AllTextdraws(playerid, true);
	}

	else if(clickedid == RadialTD[5]) // Payment
	{
		PlayerPlaySound(playerid, 21000, 0.0, 0.0, 0.0);
		HideRadialTD(playerid);
		Toggle_AllTextdraws(playerid, true);
		ShowPlayerDialog(playerid, DIALOG_MENU_PAYMENT, DIALOG_STYLE_TABLIST, ""TTR"Astral City Roleplay "WHITE"- Payment", 
    	"Give Cash\tKirim uang tunai ke player terdekat\n\
		Invoice\tinformasi tagihan kamu", 
    	"Pilih", "Tutup");
	}
    else if(clickedid == RadialTD[0]) //kendaraan //done
	{
		PlayerPlaySound(playerid, 21000, 0.0, 0.0, 0.0);
		HideRadialTD(playerid);
		ShowRadialVehTD(playerid);
	}
	else if(clickedid == RadialTD[4]) // Dokument
	{
		PlayerPlaySound(playerid, 21000, 0.0, 0.0, 0.0);
		HideRadialTD(playerid);
		Toggle_AllTextdraws(playerid, true);
		Dialog_Show(playerid, DOKUMENT_MENU, DIALOG_STYLE_LIST, ""TTR"Astral City Roleplay "WHITE"- Dokument",
		"Lihat SKWB\
		\n"GRAY"Tunjukan SKWB\
		\n\nLihat BPJS\
		\n"GRAY"Perlihatkan BPJS\
		\nLihat SKCK\
		\n"GRAY"Perlihatkan SKCK\
		\nLihat SKS\
		\n"GRAY"Perlihatkan SKS\
		\nLihat SKU\
		\n"GRAY"Perlihatkan SKU", "Pilih", "Batal");
	}
	else if(clickedid == RadialTD[2]) // Inventory
	{
		PlayerPlaySound(playerid, 21000, 0.0, 0.0, 0.0);
		HideRadialTD(playerid);

		if(AccountData[playerid][ActivityTime] != 0)
		{
			CancelSelectTextDraw(playerid);
			return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang melakukan sesuatu, tunggu sampai progress selesai!");
		}
		
		AccountData[playerid][pStorageSelect] = 0;

		Inventory_Show(playerid);
		PlayerPlaySound(playerid, 1039, 0.0, 0.0, 0.0);
	}
	else if(clickedid == RadialTD[3]) // Smartphone
	{
		if(!PlayerHasItem(playerid, "Smartphone"))
		{
			return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak memiliki Smartphone!");
		}

		PlayerPlaySound(playerid, 21000, 0.0, 0.0, 0.0);
		HideRadialTD(playerid);
        Phone(playerid, true);
        SelectTextDraw(playerid, COLOR_WHITE);
        if(!IsPlayerInAnyVehicle(playerid)) {
            SetPlayerAttachedObject(playerid, 9, 18867, 6, 0.1070, 0.0230, 0.0920, -87.4999, -12.0999, 163.8000, 1.0000, 1.0000, 1.0000, 0xFFFFFFFF, 0xFFFFFFFF);
            ApplyAnimation(playerid, "CASINO", "CARDS_LOOP", 4.1, 0, 0, 0, 1, 0, 1);
        }
	}
    else if(clickedid == RadialTD[6]) //Action //done
	{
		PlayerPlaySound(playerid, 21000, 0.0, 0.0, 0.0);

		HideRadialTD(playerid);
		ShowRadialActionTD(playerid);
	}
	//Radial Action
	else if(clickedid == RadialActionTD[1]) //fashion exit
	{
		PlayerPlaySound(playerid, 21001, 0.0, 0.0, 0.0);
		HideRadialActionTD(playerid);
		ShowRadialTD(playerid);
	}
	else if(clickedid == RadialActionTD[6]) // Faction Panel
	{
		new frmtx[300], count = 0;

		foreach(new i : Player) if (i != playerid) if (IsPlayerNearPlayer(playerid, i, 2.5))
		{
			format(frmtx, sizeof(frmtx), "%sCitizen ID: %d\n", frmtx, i);
			NearestPlayer[playerid][count++] = i;
		}
			
		if (AccountData[playerid][pFaction] == FACTION_NONE && AccountData[playerid][pFamily] == -1)
		{
			Dialog_Show(playerid, PANEL_NONE, DIALOG_STYLE_LIST, ""TTR"Astral City Roleplay "WHITE"- Menu Warga", "Drag/Undrag Person", "Pilih", "Batal");
			HideRadialActionTD(playerid);
			Toggle_AllTextdraws(playerid, true);
		}
		else if (AccountData[playerid][pFaction] == FACTION_TRANS && AccountData[playerid][pFamily] == -1)
		{
			Dialog_Show(playerid, PANEL_NONE, DIALOG_STYLE_LIST, ""TTR"Astral City Roleplay "WHITE"- Menu Warga", "Drag/Undrag Person", "Pilih", "Batal");
			HideRadialActionTD(playerid);
			Toggle_AllTextdraws(playerid, true);
		}
		else
		{
			if (count > 0)
			{
				Dialog_Show(playerid, DialogKantongPanel, DIALOG_STYLE_LIST, ""TTR"Astral City Roleplay"WHITE" - Faction Panel", frmtx, "Pilih", "Batal");
			}
			else ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak ada orang disekitar anda!");
			Toggle_AllTextdraws(playerid, true);
			HideRadialActionTD(playerid);
		}
		
		if (AccountData[playerid][pFamily] > -1 && AccountData[playerid][pFamilyRank] > 1)
		{
			if (count > 0)
			{
				Dialog_Show(playerid, FamiliesKantongList, DIALOG_STYLE_LIST, ""TTR"Astral City Roleplay"WHITE" - Faction Panel (Gang)", frmtx, "Pilih", "Batal");
			}
			else ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak ada orang disekitar anda!");
			Toggle_AllTextdraws(playerid, true);
		    HideRadialActionTD(playerid);
		}
	}
	else if(clickedid == RadialActionTD[5]) //Identitas
	{
		PlayerPlaySound(playerid, 21000, 0.0, 0.0, 0.0);
		HideRadialActionTD(playerid);
		ShowRadialCardTD(playerid);
	}
	else if(clickedid == RadialActionTD[4]) //helmet/topi
	{
		PlayerPlaySound(playerid, 21000, 0.0, 0.0, 0.0);
		CancelSelectTextDraw(playerid);
		HideRadialActionTD(playerid);
		Toggle_AllTextdraws(playerid, true);

		new status[256], status2[256];
		if(pToys[playerid][0][toy_status] == 1)
		{
			status = ""ASTRALCITY_ARWIN"Sembunyikan";
			status2 = ""ASTRALCITY_ARWIN"(Jika ingin disembunyikan)";
		}
		else 
		{
			status = ""ASTRALCITY_ARWIN"Perlihatkan";
			status2 = ""ASTRALCITY_ARWIN"(Jika ingin diperlihatkan)";
		}

		AccountData[playerid][toySelected] = 0;
		if(pToys[playerid][0][toy_model] == 0)
		{
			ShowTDN(playerid, NOTIFICATION_ERROR, "Anda belum memiliki Topi / Helmet");
		}
		else
		{
			new string[1800];
			format(string, sizeof string, "Pengaturan\tParameter\n");
			format(string, sizeof string, "%s"WHITE"Edit Posisi\t(Khusus PC)\n", string);
			format(string, sizeof string, "%s"ASTRALCITY_ARWIN"Edit Posisi\t(Khusus Android)\n", string);
			format(string, sizeof string, "%s"WHITE"Ubah Posisi Tulang\t(Bone)\n", string);
			format(string, sizeof string, "%s"ASTRALCITY_ARWIN"Sumbu X:\t%f\n", string, pToys[playerid][AccountData[playerid][toySelected]][toy_x]);
			format(string, sizeof string, "%s"WHITE"Sumbu Y:\t%f\n", string, pToys[playerid][AccountData[playerid][toySelected]][toy_y]);
			format(string, sizeof string, "%s"ASTRALCITY_ARWIN"Sumbu Z:\t%f\n", string, pToys[playerid][AccountData[playerid][toySelected]][toy_z]);
			format(string, sizeof string, "%s"WHITE"Rotasi X:\t%f\n", string, pToys[playerid][AccountData[playerid][toySelected]][toy_rx]);
			format(string, sizeof string, "%s"ASTRALCITY_ARWIN"Rotasi Y:\t%f\n", string, pToys[playerid][AccountData[playerid][toySelected]][toy_ry]);
			format(string, sizeof string, "%s"WHITE"Rotasi Z:\t%f\n", string, pToys[playerid][AccountData[playerid][toySelected]][toy_rz]);
			format(string, sizeof string, "%s"ASTRALCITY_ARWIN"Skala X:\t%f\n", string, pToys[playerid][AccountData[playerid][toySelected]][toy_sx]);
			format(string, sizeof string, "%s"WHITE"Skala Y:\t%f\n", string, pToys[playerid][AccountData[playerid][toySelected]][toy_sy]);
			format(string, sizeof string, "%s"ASTRALCITY_ARWIN"Skala Z:\t%f\n", string, pToys[playerid][AccountData[playerid][toySelected]][toy_sz]);
			format(string, sizeof string, "%s"WHITE"Hapus\t(Pilih jika anda ingin menghapus permanent)\n", string);
			format(string, sizeof string, "%s"ASTRALCITY_ARWIN"%s\t%s\n", string, status, status2);
			ShowPlayerDialog(playerid, DialogToyEdit, DIALOG_STYLE_TABLIST_HEADERS, ""TTR"Astral City Roleplay "WHITE"- Edit Fashion (Topi/Helmet)", string, "Select", "Cancel");
		}
	}
	else if(clickedid == RadialActionTD[3]) //kacamata
	{
		PlayerPlaySound(playerid, 21000, 0.0, 0.0, 0.0);
		CancelSelectTextDraw(playerid);
		HideRadialActionTD(playerid);
		Toggle_AllTextdraws(playerid, true);

		new status[256], status2[256];
		if(pToys[playerid][1][toy_status] == 1)
		{
			status = ""ASTRALCITY_ARWIN"Sembunyikan";
			status2 = ""ASTRALCITY_ARWIN"(Jika ingin disembunyikan)";
		}
		else 
		{
			status = ""ASTRALCITY_ARWIN"Perlihatkan";
			status2 = ""ASTRALCITY_ARWIN"(Jika ingin diperlihatkan)";
		}
		
		AccountData[playerid][toySelected] = 1;
		if(pToys[playerid][1][toy_model] == 0)
		{
			ShowTDN(playerid, NOTIFICATION_ERROR, "Anda belum memiliki Kacamata!");
		}
		else
		{
			new string[1800];
			format(string, sizeof string, "Pengaturan\tParameter\n");
			format(string, sizeof string, "%s"WHITE"Edit Posisi\t(Khusus PC)\n", string);
			format(string, sizeof string, "%s"ASTRALCITY_ARWIN"Edit Posisi\t(Khusus Android)\n", string);
			format(string, sizeof string, "%s"WHITE"Ubah Posisi Tulang\t(Bone)\n", string);
			format(string, sizeof string, "%s"ASTRALCITY_ARWIN"Sumbu X:\t%f\n", string, pToys[playerid][AccountData[playerid][toySelected]][toy_x]);
			format(string, sizeof string, "%s"WHITE"Sumbu Y:\t%f\n", string, pToys[playerid][AccountData[playerid][toySelected]][toy_y]);
			format(string, sizeof string, "%s"ASTRALCITY_ARWIN"Sumbu Z:\t%f\n", string, pToys[playerid][AccountData[playerid][toySelected]][toy_z]);
			format(string, sizeof string, "%s"WHITE"Rotasi X:\t%f\n", string, pToys[playerid][AccountData[playerid][toySelected]][toy_rx]);
			format(string, sizeof string, "%s"ASTRALCITY_ARWIN"Rotasi Y:\t%f\n", string, pToys[playerid][AccountData[playerid][toySelected]][toy_ry]);
			format(string, sizeof string, "%s"WHITE"Rotasi Z:\t%f\n", string, pToys[playerid][AccountData[playerid][toySelected]][toy_rz]);
			format(string, sizeof string, "%s"ASTRALCITY_ARWIN"Skala X:\t%f\n", string, pToys[playerid][AccountData[playerid][toySelected]][toy_sx]);
			format(string, sizeof string, "%s"WHITE"Skala Y:\t%f\n", string, pToys[playerid][AccountData[playerid][toySelected]][toy_sy]);
			format(string, sizeof string, "%s"ASTRALCITY_ARWIN"Skala Z:\t%f\n", string, pToys[playerid][AccountData[playerid][toySelected]][toy_sz]);
			format(string, sizeof string, "%s"WHITE"Hapus\t(Pilih jika anda ingin menghapus permanent)\n", string);
			format(string, sizeof string, "%s"ASTRALCITY_ARWIN"%s\t%s\n", string, status, status2);
			ShowPlayerDialog(playerid, DialogToyEdit, DIALOG_STYLE_TABLIST_HEADERS, ""TTR"Astral City Roleplay "WHITE"- Edit Fashion (Kacamata)", string, "Select", "Cancel");
		}
	}
	else if(clickedid == RadialActionTD[0]) //aksesoris
	{
		PlayerPlaySound(playerid, 21000, 0.0, 0.0, 0.0);
		CancelSelectTextDraw(playerid);
		HideRadialActionTD(playerid);

		new status[256], status2[256];
		if(pToys[playerid][2][toy_status] == 1)
		{
			status = ""ASTRALCITY_ARWIN"Sembunyikan";
			status2 = ""ASTRALCITY_ARWIN"(Jika ingin disembunyikan)";
		}
		else 
		{
			status = ""ASTRALCITY_ARWIN"Perlihatkan";
			status2 = ""ASTRALCITY_ARWIN"(Jika ingin diperlihatkan)";
		}

		AccountData[playerid][toySelected] = 2;
		if(pToys[playerid][2][toy_model] == 0)
		{
			ShowTDN(playerid, NOTIFICATION_ERROR, "Anda belum memiliki Aksesoris");
		}
		else
		{
			new string[1800];
			format(string, sizeof string, "Pengaturan\tParameter\n");
			format(string, sizeof string, "%s"WHITE"Edit Posisi\t(Khusus PC)\n", string);
			format(string, sizeof string, "%s"ASTRALCITY_ARWIN"Edit Posisi\t(Khusus Android)\n", string);
			format(string, sizeof string, "%s"WHITE"Ubah Posisi Tulang\t(Bone)\n", string);
			format(string, sizeof string, "%s"ASTRALCITY_ARWIN"Sumbu X:\t%f\n", string, pToys[playerid][AccountData[playerid][toySelected]][toy_x]);
			format(string, sizeof string, "%s"WHITE"Sumbu Y:\t%f\n", string, pToys[playerid][AccountData[playerid][toySelected]][toy_y]);
			format(string, sizeof string, "%s"ASTRALCITY_ARWIN"Sumbu Z:\t%f\n", string, pToys[playerid][AccountData[playerid][toySelected]][toy_z]);
			format(string, sizeof string, "%s"WHITE"Rotasi X:\t%f\n", string, pToys[playerid][AccountData[playerid][toySelected]][toy_rx]);
			format(string, sizeof string, "%s"ASTRALCITY_ARWIN"Rotasi Y:\t%f\n", string, pToys[playerid][AccountData[playerid][toySelected]][toy_ry]);
			format(string, sizeof string, "%s"WHITE"Rotasi Z:\t%f\n", string, pToys[playerid][AccountData[playerid][toySelected]][toy_rz]);
			format(string, sizeof string, "%s"ASTRALCITY_ARWIN"Skala X:\t%f\n", string, pToys[playerid][AccountData[playerid][toySelected]][toy_sx]);
			format(string, sizeof string, "%s"WHITE"Skala Y:\t%f\n", string, pToys[playerid][AccountData[playerid][toySelected]][toy_sy]);
			format(string, sizeof string, "%s"ASTRALCITY_ARWIN"Skala Z:\t%f\n", string, pToys[playerid][AccountData[playerid][toySelected]][toy_sz]);
			format(string, sizeof string, "%s"WHITE"Hapus\t(Pilih jika anda ingin menghapus permanent)\n", string);
			format(string, sizeof string, "%s"ASTRALCITY_ARWIN"%s\t%s\n", string, status, status2);
			ShowPlayerDialog(playerid, DialogToyEdit, DIALOG_STYLE_TABLIST_HEADERS, ""TTR"Astral City Roleplay "WHITE"- Edit Fashion (Aksesoris)", string, "Select", "Cancel");
		}
		
	}
	else if(clickedid == RadialActionTD[2]) //tas/koper
	{
		PlayerPlaySound(playerid, 21000, 0.0, 0.0, 0.0);
		CancelSelectTextDraw(playerid);
		HideRadialActionTD(playerid);
		Toggle_AllTextdraws(playerid, true);

		new status[256], status2[256];
		if(pToys[playerid][3][toy_status] == 1)
		{
			status = ""ASTRALCITY_ARWIN"Sembunyikan";
			status2 = ""ASTRALCITY_ARWIN"(Jika ingin disembunyikan)";
		}
		else 
		{
			status = ""ASTRALCITY_ARWIN"Perlihatkan";
			status2 = ""ASTRALCITY_ARWIN"(Jika ingin diperlihatkan)";
		}

		AccountData[playerid][toySelected] = 3;
		if(pToys[playerid][3][toy_model] == 0)
		{
			ShowTDN(playerid, NOTIFICATION_ERROR, "Anda belum memiliki Tas / Koper");
		}
		else
		{
			new string[1800];
			format(string, sizeof string, "Pengaturan\tParameter\n");
			format(string, sizeof string, "%s"WHITE"Edit Posisi\t(Khusus PC)\n", string);
			format(string, sizeof string, "%s"ASTRALCITY_ARWIN"Edit Posisi\t(Khusus Android)\n", string);
			format(string, sizeof string, "%s"WHITE"Ubah Posisi Tulang\t(Bone)\n", string);
			format(string, sizeof string, "%s"ASTRALCITY_ARWIN"Sumbu X:\t%f\n", string, pToys[playerid][AccountData[playerid][toySelected]][toy_x]);
			format(string, sizeof string, "%s"WHITE"Sumbu Y:\t%f\n", string, pToys[playerid][AccountData[playerid][toySelected]][toy_y]);
			format(string, sizeof string, "%s"ASTRALCITY_ARWIN"Sumbu Z:\t%f\n", string, pToys[playerid][AccountData[playerid][toySelected]][toy_z]);
			format(string, sizeof string, "%s"WHITE"Rotasi X:\t%f\n", string, pToys[playerid][AccountData[playerid][toySelected]][toy_rx]);
			format(string, sizeof string, "%s"ASTRALCITY_ARWIN"Rotasi Y:\t%f\n", string, pToys[playerid][AccountData[playerid][toySelected]][toy_ry]);
			format(string, sizeof string, "%s"WHITE"Rotasi Z:\t%f\n", string, pToys[playerid][AccountData[playerid][toySelected]][toy_rz]);
			format(string, sizeof string, "%s"ASTRALCITY_ARWIN"Skala X:\t%f\n", string, pToys[playerid][AccountData[playerid][toySelected]][toy_sx]);
			format(string, sizeof string, "%s"WHITE"Skala Y:\t%f\n", string, pToys[playerid][AccountData[playerid][toySelected]][toy_sy]);
			format(string, sizeof string, "%s"ASTRALCITY_ARWIN"Skala Z:\t%f\n", string, pToys[playerid][AccountData[playerid][toySelected]][toy_sz]);
			format(string, sizeof string, "%s"WHITE"Hapus\t(Pilih jika anda ingin menghapus permanent)\n", string);
			format(string, sizeof string, "%s"ASTRALCITY_ARWIN"%s\t%s\n", string, status, status2);
			ShowPlayerDialog(playerid, DialogToyEdit, DIALOG_STYLE_TABLIST_HEADERS, ""TTR"Astral City Roleplay "WHITE"- Edit Fashion (Tas/Koper)", string, "Select", "Cancel");
		}
	}
	//Radial Vehicle
	else if(clickedid == RadialVehTD[1]) //exit
	{
		PlayerPlaySound(playerid, 21001, 0.0, 0.0, 0.0);
		HideRadialVehTD(playerid);
		ShowRadialTD(playerid);
	}
	else if(clickedid == RadialVehTD[0]) //kunci
	{
		new vehid = GetNearestVehicleToPlayer(playerid, 4.0, false);
		if(vehid == INVALID_VEHICLE_ID) return ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak ada kendaraan apapun di sekitar!");
		
		PlayerPlaySound(playerid, 21000, 0.0, 0.0, 0.0);
		CancelSelectTextDraw(playerid);
		HideRadialVehTD(playerid);
		Toggle_AllTextdraws(playerid, true);

		foreach(new iterpv : PvtVehicles)
		{
			if(PlayerVehicle[iterpv][pVehExists])
			{
				if(PlayerVehicle[iterpv][pVehPhysic] == vehid)
				{
					if(PlayerVehicle[iterpv][pVehOwnerID] != AccountData[playerid][pID])
					{
						NearestVehicleID[playerid] = INVALID_VEHICLE_ID;
						return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini bukan milik anda!");
					}

					PlayerPlaySound(playerid, 1147, 0.0, 0.0, 0.0);
					PlayerVehicle[iterpv][pVehLocked] = !(PlayerVehicle[iterpv][pVehLocked]);
					
					PlayerPlayNearbySound(playerid, SOUND_LOCK_CAR_DOOR);
					LockVehicle(PlayerVehicle[iterpv][pVehPhysic], PlayerVehicle[iterpv][pVehLocked]);
					ToggleVehicleLights(PlayerVehicle[iterpv][pVehPhysic], PlayerVehicle[iterpv][pVehLocked]);
					GameTextForPlayer(playerid, sprintf("~w~%s %s", GetVehicleName(PlayerVehicle[iterpv][pVehPhysic]), PlayerVehicle[iterpv][pVehLocked] ? ("~r~Locked") : ("~g~Unlocked")), 4000, 4);
				}
			}
		}
	}
	else if(clickedid == RadialVehTD[4]) //lampu
	{
		new vehid = GetNearestVehicleToPlayer(playerid, 4.0, false);
		if(vehid == INVALID_VEHICLE_ID) return ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak ada kendaraan apapun di sekitar!");

		PlayerPlaySound(playerid, 21000, 0.0, 0.0, 0.0);
		CancelSelectTextDraw(playerid);
		HideRadialVehTD(playerid);
		Toggle_AllTextdraws(playerid, true);

		if(!IsEngineVehicle(vehid)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan tersebut bukan kendaraan bermesin!");

		new lightstatus = GetLightStatus(vehid);
		foreach(new i : PvtVehicles)
		{
			if(vehid == PlayerVehicle[i][pVehPhysic])
			{
				if(lightstatus)
				{
					if(PlayerVehicle[i][pVehNeon] > 0)
					{
						SetVehicleNeonLights(PlayerVehicle[i][pVehPhysic], false, PlayerVehicle[i][pVehNeon], 0);
					}
				}
				else 
				{
					if(PlayerVehicle[i][pVehNeon] > 0)
					{
						SetVehicleNeonLights(PlayerVehicle[i][pVehPhysic], true, PlayerVehicle[i][pVehNeon], 0);
					}
				}
			}
		}
		// mati atau nyalakan lampu sesuai status yang didapatkan
		SwitchVehicleLight(vehid, !lightstatus);
	}
	else if(clickedid == RadialVehTD[6]) //bagasi
	{
		new vehid = GetNearestVehicleToPlayer(playerid, 4.0, false);
		if(vehid == INVALID_VEHICLE_ID) return ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak ada kendaraan apapun di sekitar!");

		PlayerPlaySound(playerid, 21000, 0.0, 0.0, 0.0);
		CancelSelectTextDraw(playerid);
		HideRadialVehTD(playerid);
		Toggle_AllTextdraws(playerid, true);

		static Float:x, Float:y, Float:z;
		GetVehicleBoot(vehid, x, y, z);
		
		if(GetPlayerState(playerid) != PLAYER_STATE_ONFOOT) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda harus turun dari kendaraan!");
		if(IsABike(vehid) || !IsAVehicleStorage(vehid)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak memiliki bagasi!");
		if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang melakukan sesuatu, tunggu hingga progress selesai!");
		if(!IsPlayerInRangeOfPoint(playerid, 2.8, x, y, z)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda harus berada didekat bagasi!");
		if(!GetTrunkStatus(vehid)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda harus membuka trunk terlebih dahulu!");
		
		foreach(new carid : PvtVehicles)
		{
			if(vehid == PlayerVehicle[carid][pVehPhysic]) 
			{
				if(PlayerVehicle[carid][pVehLocked]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan tersebut terkunci!");
				if(IsBagasiOpened[carid]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Seseorang sedang memeriksa bagasi ini!");

				IsBagasiOpened[carid] = true;
				AccountData[playerid][menuShowed] = true;
				AccountData[playerid][pTempVehID] = carid;
				SwitchVehicleBoot(PlayerVehicle[carid][pVehPhysic], true);
				SendRPMeAboveHead(playerid, "Membuka bagasi kendaraannya", X11_PLUM1);
				ShowPlayerDialog(playerid, DIALOG_BAGASI, DIALOG_STYLE_LIST, sprintf("Bagasi %s", PlayerVehicle[carid][pVehPlate]), "Simpan Barang\n"GRAY"Ambil Barang", "Pilih", "Batal");
			}
		}
	}
	else if(clickedid == RadialVehTD[5]) //holster
	{
		new vehid = GetNearestVehicleToPlayer(playerid, 4.0, false);
		if(vehid == INVALID_VEHICLE_ID) return ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak ada kendaraan apapun di sekitar!");

		PlayerPlaySound(playerid, 21000, 0.0, 0.0, 0.0);
		CancelSelectTextDraw(playerid);
		HideRadialVehTD(playerid);
		Toggle_AllTextdraws(playerid, true);

		static Float:x, Float:y, Float:z;
		GetVehicleBoot(vehid, x, y, z);
		if(GetPlayerState(playerid) != PLAYER_STATE_ONFOOT) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda harus berada diluar kendaran!");
		if(IsABike(vehid)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak memiliki bagasi!");
		if(!IsPlayerInRangeOfPoint(playerid, 1.8, x, y, z)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda harus berada didekat bagasi!");
		if(!GetTrunkStatus(vehid)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda harus membuka trunk terlebih dahulu!");

		foreach(new carid : PvtVehicles)
		{
			if(vehid == PlayerVehicle[carid][pVehPhysic])
			{
				if(PlayerVehicle[carid][pVehLocked]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini terkunci!");

				AccountData[playerid][pTempVehID] = carid;
				SwitchVehicleBoot(vehid, true);
				ShowPlayerDialog(playerid, DIALOG_VHOLSTER, DIALOG_STYLE_LIST, sprintf("Holster %s", PlayerVehicle[carid][pVehPlate]), "Simpan Senjata\n"GRAY"Ambil Senjata", "Pilih", "Batal");
			}
		}
	}
	else if(clickedid == RadialVehTD[3]) //trunk
	{
		new vehid = GetNearestVehicleToPlayer(playerid, 4.0, false);
		if(vehid == INVALID_VEHICLE_ID) return ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak ada kendaraan apapun di sekitar!");

		PlayerPlaySound(playerid, 21000, 0.0, 0.0, 0.0);
		CancelSelectTextDraw(playerid);
		HideRadialVehTD(playerid);
		Toggle_AllTextdraws(playerid, true);

		static string[256];
		NearestVehicleID[playerid] = vehid;
		format(string, sizeof(string), 
		""GRAY"Trunk buka/tutup"\
		"\nMasuk ke dalam bagasi"\
		"\n"GRAY"Masukan orang ke dalam bagasi"\
		"\nKeluarkan orang dalam bagasi"\
		"\n"GRAY"Tendang dari dalam kendaraan");
		
		ShowPlayerDialog(playerid, DIALOG_VEHICLETRUNK_MENU, DIALOG_STYLE_LIST, ""TTR"Astral City Roleplay "WHITE"- Vehicle Menu",
		string, "Pilih", "Batal");
	}
	else if(clickedid == RadialVehTD[2]) //hood
	{
		new vehid = GetNearestVehicleToPlayer(playerid, 4.0, false);
		if(vehid == INVALID_VEHICLE_ID) return ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak ada kendaraan apapun di sekitar!");

		PlayerPlaySound(playerid, 21000, 0.0, 0.0, 0.0);
		CancelSelectTextDraw(playerid);
		HideRadialVehTD(playerid);
		Toggle_AllTextdraws(playerid, true);

		static Float:x, Float:y, Float:z;
		GetVehicleHood(vehid, x, y, z);

		if(!IsPlayerInRangeOfPoint(playerid, 2.0, x, y, z)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda harus berada di dekat hood!");
		if(GetPlayerState(playerid) != PLAYER_STATE_ONFOOT) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda harus berada diluar kendaraan!");
		switch (GetHoodStatus(vehid))
		{
			case false:
			{
				SwitchVehicleBonnet(vehid, true);
			}
			case true:
			{
				SwitchVehicleBonnet(vehid, false);
			}
		}
	}
	//Radial Identitas
	else if(clickedid == RadialCardTD[1]) //exit
	{
		PlayerPlaySound(playerid, 21001, 0.0, 0.0, 0.0);
		HideRadialCardTD(playerid);
		ShowRadialActionTD(playerid);
	}
	else if(clickedid == RadialCardTD[2]) //lihat KTP
	{
		if(!AccountData[playerid][Ktp]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak memiliki KTP!");
		PlayerPlaySound(playerid, 21000, 0.0, 0.0, 0.0);
		CancelSelectTextDraw(playerid);
		HideRadialCardTD(playerid);
		ShowKTPTD(playerid);
		Toggle_AllTextdraws(playerid, true);
	}
	else if(clickedid == RadialCardTD[3]) //tunjuk KTP
	{
		if(!AccountData[playerid][Ktp]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak memiliki KTP!");

		PlayerPlaySound(playerid, 21000, 0.0, 0.0, 0.0);
		CancelSelectTextDraw(playerid);
		HideRadialCardTD(playerid);
		Toggle_AllTextdraws(playerid, true);
		foreach(new i : Player) if (IsPlayerConnected(i)) if (i != playerid)
		{
			if(IsPlayerNearPlayer(playerid, i, 3.0))
			{
				ShowMyKTPTD(playerid, i);
			}
		}
	}
	else if(clickedid == RadialCardTD[0]) //lihat lisensi
	{
		PlayerPlaySound(playerid, 21000, 0.0, 0.0, 0.0);
		CancelSelectTextDraw(playerid);
		HideRadialCardTD(playerid);
		DisplayLicensi(playerid, playerid);
		Toggle_AllTextdraws(playerid, true);
	}
	else if(clickedid == RadialCardTD[4]) //tunjuk lisensi
	{
		PlayerPlaySound(playerid, 21000, 0.0, 0.0, 0.0);
		CancelSelectTextDraw(playerid);
		HideRadialCardTD(playerid);
		Toggle_AllTextdraws(playerid, true);

		foreach(new i : Player) if (IsPlayerConnected(i)) if (i != playerid)
		{
			if(IsPlayerNearPlayer(playerid, i, 3.0))
			{
				DisplayLicensi(i, playerid);
			}
		}
	}
    return 1;
}