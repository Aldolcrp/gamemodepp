/*stock*/
forward CheckCharacters(playerid);
public CheckCharacters(playerid)
{
	new query[256];
	mysql_format(g_SQL, query, sizeof(query), "SELECT `Char_Name`, `Char_Skin` FROM `player_characters` WHERE `Char_UCP`= '%s' LIMIT %d;", AccountData[playerid][pUCP], MAX_CHARS + AccountData[playerid][pExtraChar]);
	mysql_tquery(g_SQL, query, "LoadCharacter", "d", playerid);
	return 1;
}

forward LoadCharacter(playerid);
public LoadCharacter(playerid)
{
	for(new x = 0; x < MAX_CHARS; x ++)
	{
		PlayerChar[playerid][x][0] = EOS;
		PlayerCharSkin[playerid][x] = 0;
	}
	for(new x = 0; x < cache_num_rows(); x ++)
	{
		cache_get_value_name(x, "Char_Name", PlayerChar[playerid][x]);
		cache_get_value_name_int(x, "Char_Skin", PlayerCharSkin[playerid][x]);
		SetPVarInt(playerid, "CCount", x);
	}
	SelectCharTD[playerid] = 0;
	ShowCharacterMenu(playerid);
	return 1;
}

ShowCharacterMenu(playerid)
{
    SetPVarInt(playerid, "CharacterMenu", 1);

    SetPlayerVirtualWorld(playerid, playerid + 100);
    SetPlayerInterior(playerid, 0);
	
    SetPlayerCameraPos(playerid, 409.95, -2087.60, 8.85);
	SetPlayerCameraLookAt(playerid, 409.31, -2086.89, 8.58);

    for(new i = 0; i < 10; i++)
    {
        PlayerTextDrawShow(playerid, Ui_CharSelect[playerid][i]);
    }
    UpdateCharSelectString(playerid);
    SelectTextDraw(playerid, 0x33CCFFFF);
    return 1;
}

/*functions*/
forward CheckPlayerUCP(playerid, rcc);
public CheckPlayerUCP(playerid, rcc)
{
	if(rcc != g_RaceCheck[playerid]) return KickEx(playerid);
	
	new frmxtdialog[255];
	if(cache_num_rows() > 0)
	{
		cache_get_field_content(0, "password", AccountData[playerid][pPassword], 65);
		cache_get_field_content(0, "salt", AccountData[playerid][pSalt], 65);
		AccountData[playerid][pVerifyCode] = cache_get_field_int(0, "verifycode");

		if(!Blacklist_Check(playerid, "name", AccountData[playerid][pUCP])) 
		{
			if(AccountData[playerid][pPassword] < 1)
			{
				format(frmxtdialog, sizeof(frmxtdialog), ""WHITE"Selamat datang di "TTR"Astral City Roleplay\n"WHITE"UCP Ini telah terdaftar!\nNama UCP: "LIGHTGREEN"%s\
				\n"WHITE"Version: "TTR"ACRP v2.1.1\n"YELLOW"(Silahkan masukkan PIN yang dikirimkan oleh Bot Astral City ke Discord anda dibawah ini):", AccountData[playerid][pUCP]);
				ShowPlayerDialog(playerid, DIALOG_VERIFYCODE, DIALOG_STYLE_INPUT, "UCP - Verifikasi", frmxtdialog, "Input", "Keluar");
			}
			else if(AccountData[playerid][pPassword] > 10)
			{
				PlayerTextDrawSetString(playerid, TextdrawLoginUI[playerid][26], AccountData[playerid][pUCP]);
				PlayerTextDrawSetString(playerid, TextdrawLoginUI[playerid][27], AccountData[playerid][pUCP]);
				for (new i = 0; i < 36; i++) PlayerTextDrawShow(playerid, TextdrawLoginUI[playerid][i]);
				SelectTextDraw(playerid, X11_BLACK);
			}
		}
	}
	else
	{
		printf("[DEBUG] CheckPlayerUCP: Tidak ditemukan akun dengan UCP: %s", AccountData[playerid][pUCP]);

		new shstr[596];
		format(shstr, sizeof(shstr), ""WHITE"Dari: Astral City Roleplay Bot\nKepada: Calon Aktor (pemain peran) di Astral City Roleplay kami, "RED"%s\
		\n\n"WHITE"Silahkan terlebih dahulu mengambil tiket Astral City Roleplay di discord sebelum dapat memasuki Astral City Roleplay.\
		\nLink Discord: "YELLOW"discord.gg/Astral City", AccountData[playerid][pUCP]);
		ShowPlayerDialog(playerid, DIALOG_UNUSED, DIALOG_STYLE_MSGBOX, ""TTR"Astral City Roleplay "WHITE"- Checking Tiket", shstr, "Keluar", "");
		KickEx(playerid);
	}
	return 1;
}

forward LoginTimerDelay(playerid);
public LoginTimerDelay(playerid)
{
	KillTimer(LoginTimer[playerid]);
	SendClientMessage(playerid, 0xFFFF00AA, "[i] Anda telah ditendang dari server karena terlalu lama memasukkan password!");
	KickEx(playerid);
	return 1;
}

forward CheckBanUCP(playerid);
public CheckBanUCP(playerid)
{
	if(cache_num_rows())
	{
		new Reason[40], PlayerName[24], BannedName[24];
	    new banTime_Int, banDate, banIP[16];
		cache_get_value_name(0, "name", BannedName);
		cache_get_value_name(0, "admin", PlayerName);
		cache_get_value_name(0, "reason", Reason);
		cache_get_value_name(0, "ip", banIP);
		cache_get_value_name_int(0, "ban_expire", banTime_Int);
		cache_get_value_name_int(0, "ban_date", banDate);

		new currentTime = gettime();
        if(banTime_Int != 0 && banTime_Int <= currentTime) // Unban the player.
		{
			new query[248];
			mysql_format(g_SQL, query, sizeof(query), "DELETE FROM player_bans WHERE name = '%s'", AccountData[playerid][pUCP]);
			mysql_tquery(g_SQL, query);
				
			SendClientMessageEx(playerid, X11_PINK1, "[i]"WHITE" Selamat datang kembali ke Kota, Sudah %s Sejak Kamu Di Banned.", ReturnTimelapse(banTime_Int, gettime()));
		}
		else
		{
			new query[248], PlayerIP[16];
  			mysql_format(g_SQL, query, sizeof query, "UPDATE `player_bans` SET `last_activity_timestamp` = '%d' WHERE `name` = '%s'", gettime(), AccountData[playerid][pUCP]);
			mysql_tquery(g_SQL, query);
				
			AccountData[playerid][IsLoggedIn] = false;
			printf("[BANNED INFO]: Ban Getting Called on %s", AccountData[playerid][pUCP]);
			GetPlayerIp(playerid, PlayerIP, sizeof(PlayerIP));
			
			if(banTime_Int == 0)
			{
				new ucp[200];
				new Addresstr[200];
				new AdminStr[200];
				new TanggalStr[200];
				new ReasonStr[200];
				format(ucp, sizeof ucp, "Nama UCP/IC: %s", BannedName);
				PlayerTextDrawSetString(playerid, BannedTD[playerid][11], ucp);
				format(Addresstr, sizeof Addresstr, "IP Address: %s", PlayerIP);
				PlayerTextDrawSetString(playerid, BannedTD[playerid][12], Addresstr);
				format(AdminStr, sizeof AdminStr, "Admin On Duty: %s", PlayerName);
				PlayerTextDrawSetString(playerid, BannedTD[playerid][13], AdminStr);
				format(TanggalStr, sizeof TanggalStr, "Tanggal Blokir: %s", ReturnDate(banDate));
				PlayerTextDrawSetString(playerid, BannedTD[playerid][14], TanggalStr);
				format(ReasonStr, sizeof ReasonStr, "Reason: %s", ReturnDate(banDate));
				PlayerTextDrawSetString(playerid, BannedTD[playerid][15], ReasonStr);
				PlayerTextDrawSetString(playerid, BannedTD[playerid][16], "Durasi Blokir: Permanent");
				for(new i = 0; i < 22; i ++)
				{
					PlayerTextDrawShow(playerid, BannedTD[playerid][i]);
				}
				KickEx(playerid);
			}
			else
			{
				new ucp[200];
				new Addresstr[200];
				new AdminStr[200];
				new TanggalStr[200];
				new ReasonStr[200];
				new DurasiStr[200];
				format(ucp, sizeof ucp, "Nama UCP/IC: %s", BannedName);
				PlayerTextDrawSetString(playerid, BannedTD[playerid][11], ucp);
				format(Addresstr, sizeof Addresstr, "IP Address: %s", PlayerIP);
				PlayerTextDrawSetString(playerid, BannedTD[playerid][12], Addresstr);
				format(AdminStr, sizeof AdminStr, "Admin On Duty: %s", PlayerName);
				PlayerTextDrawSetString(playerid, BannedTD[playerid][13], AdminStr);
				format(TanggalStr, sizeof TanggalStr, "Tanggal Blokir: %s", ReturnDate(banDate));
				PlayerTextDrawSetString(playerid, BannedTD[playerid][14], TanggalStr);
				format(ReasonStr, sizeof ReasonStr, "Reason: %s", ReturnDate(banDate));
				PlayerTextDrawSetString(playerid, BannedTD[playerid][15], ReasonStr);
				format(DurasiStr, sizeof DurasiStr, "Durasi Blokir: %s", RemainingTimelapse(banTime_Int));
				PlayerTextDrawSetString(playerid, BannedTD[playerid][16], DurasiStr);
				for(new i = 0; i < 22; i ++)
				{
					PlayerTextDrawShow(playerid, BannedTD[playerid][i]);
				}
				KickEx(playerid);
			}
  		}
	}
	return 1;
}

Function: LoadPlayerData(playerid)
{	
	cache_get_value_name_int(0, "pID", AccountData[playerid][pID]);
	cache_get_value_name(0, "Char_UCP", AccountData[playerid][pUCP], 64);
	cache_get_value_name(0, "Char_Name", AccountData[playerid][pName]);
	cache_get_value_name(0, "Char_AdminName", AccountData[playerid][pAdminname]);
	cache_get_value_name(0, "Char_Origin", AccountData[playerid][pOrigin]);
	cache_get_value_name(0, "Char_IP", AccountData[playerid][pIP]);
	cache_get_value_name_int(0, "Char_Admin", AccountData[playerid][pAdmin]);

	//the star
	cache_get_value_name_int(0, "Char_TheStars", AccountData[playerid][pTheStars]);
	cache_get_value_name_int(0, "Char_TheStarsTime", AccountData[playerid][pTheStarsTime]);

	cache_get_value_name_int(0, "Char_AdminToggle", AccountData[playerid][pTogAC]);
	cache_get_value_name_int(0, "Char_AdminPoint", AccountData[playerid][aReceivedReports]);
	cache_get_value_name_int(0, "Char_Spy", AccountData[playerid][pTogSpy]);
	cache_get_value_name_int(0, "Char_Level", AccountData[playerid][pLevel]);
	cache_get_value_name_int(0, "Char_Vip", AccountData[playerid][pVip]);
	cache_get_value_name_int(0, "Char_VipTime", AccountData[playerid][pVipTime]);
	cache_get_value_name(0, "Char_RegisterDate", AccountData[playerid][pRegDate]);
	cache_get_value_name(0, "Char_LastLogin", AccountData[playerid][pLastLogin]);
	cache_get_value_name_int(0, "Char_Money", AccountData[playerid][pMoney]);
	cache_get_value_name_int(0, "Char_RedMoney", AccountData[playerid][pRedMoney]);
	cache_get_value_name_int(0, "Char_BankMoney", AccountData[playerid][pBankMoney]);
	cache_get_value_name_int(0, "Char_Gopay", AccountData[playerid][pSaldoGopay]);
	cache_get_value_name_int(0, "Char_BankRek", AccountData[playerid][pBankRek]);

	cache_get_value_name(0, "Char_PhoneNum", AccountData[playerid][pPhone]);
	cache_get_value_name_int(0, "Char_Hours", AccountData[playerid][pHours]);
	cache_get_value_name_int(0, "Char_Minutes", AccountData[playerid][pMinutes]);
	cache_get_value_name_int(0, "Char_Seconds", AccountData[playerid][pSeconds]);
	cache_get_value_name_int(0, "Char_Payday", AccountData[playerid][pPaycheck]);
	cache_get_value_name_int(0, "Char_Skin", AccountData[playerid][pSkin]);
	cache_get_value_name_int(0, "Char_Gender", AccountData[playerid][pGender]);
	cache_get_value_name(0, "Char_Age", AccountData[playerid][pAge]);
	cache_get_value_name_int(0, "Char_BodyHeight", AccountData[playerid][pTinggiBadan]);	
	cache_get_value_name_int(0, "Char_BodyWeight", AccountData[playerid][pBeratBadan]);	
	cache_get_value_name_int(0, "Char_InDoor", AccountData[playerid][pInDoor]);
	cache_get_value_name_int(0, "Char_InHouse", AccountData[playerid][pInHouse]);
	cache_get_value_name_int(0, "Char_InRusun", AccountData[playerid][pInRusun]);
	cache_get_value_name_int(0, "Char_InBiz", AccountData[playerid][pInBiz]);
	cache_get_value_name_int(0, "Char_InFamily", AccountData[playerid][pInFamily]);
	cache_get_value_name_float(0, "Char_Render", AccountData[playerid][pMapSettings]);
	cache_get_value_name_int(0, "Char_RenderValue", AccountData[playerid][pMapRender]);
	cache_get_value_name_float(0, "Char_PosX", AccountData[playerid][pPosX]);
	cache_get_value_name_float(0, "Char_PosY", AccountData[playerid][pPosY]);
	cache_get_value_name_float(0, "Char_PosZ", AccountData[playerid][pPosZ]);
	cache_get_value_name_float(0, "Char_PosA", AccountData[playerid][pPosA]);
	cache_get_value_name_int(0, "Char_IntID", AccountData[playerid][pInt]);
	cache_get_value_name_int(0, "Char_WID", AccountData[playerid][pWorld]);
	cache_get_value_name_float(0, "Char_Health", AccountData[playerid][pHealth]);
	if(AccountData[playerid][pHealth] < 0.0 || AccountData[playerid][pHealth] > 100.0) AccountData[playerid][pHealth] = 100.0;

	cache_get_value_name_float(0, "Char_Armour", AccountData[playerid][pArmour]);
	cache_get_value_name_int(0, "Char_Hunger", AccountData[playerid][pHunger]);
	cache_get_value_name_int(0, "Char_Thirst", AccountData[playerid][pThirst]);
	cache_get_value_name_int(0, "Char_Stress", AccountData[playerid][pStress]);
	cache_get_value_name_int(0, "Char_KnockDown", AccountData[playerid][pInjured]);
	cache_get_value_name_int(0, "Char_OnDuty", AccountData[playerid][pOnDuty]);
	cache_get_value_name_int(0, "Char_Faction", AccountData[playerid][pFaction]);
	cache_get_value_name_int(0, "Char_FactionRank", AccountData[playerid][pFactionRank]);
	cache_get_value_name_int(0, "Char_Family", AccountData[playerid][pFamily]);
	cache_get_value_name_int(0, "Char_FamilyRank", AccountData[playerid][pFamilyRank]);
	cache_get_value_name_int(0, "Char_Jail", AccountData[playerid][pJail]);
	cache_get_value_name_int(0, "Char_JailTime", AccountData[playerid][pJailTime]);
	cache_get_value_name(0, "Char_JailReason", AccountData[playerid][pJailReason]);
	cache_get_value_name(0, "Char_JailBy", AccountData[playerid][pJailBy]);
	cache_get_value_name_int(0, "Char_Arrest", AccountData[playerid][pArrest]);
	cache_get_value_name_int(0, "Char_ArrestTime", AccountData[playerid][pArrestTime]);
	cache_get_value_name_int(0, "Char_AskTime", AccountData[playerid][pAskTime]);
	cache_get_value_name_int(0, "Char_Warn", AccountData[playerid][pWarn]);
	cache_get_value_name_int(0, "Char_Job", AccountData[playerid][pJob]);
	cache_get_value_name_int(0, "Char_MowerTime", AccountData[playerid][pMowerTime]);
	cache_get_value_name_int(0, "Char_Helmet", AccountData[playerid][pHelmet]);
	cache_get_value_name_int(0, "Char_TogPM", AccountData[playerid][pTogPM]);
	cache_get_value_name_int(0, "Char_TogGlobal", AccountData[playerid][pTogGlobal]);
	
	forex(i, 13)
	{
		new zquery[256];
		format(zquery, sizeof(zquery), "Gun%d", i + 1);
		cache_get_value_name_int(0, zquery, AccountData[playerid][pGuns][i]);

		format(zquery, sizeof(zquery), "Ammo%d", i + 1);
		cache_get_value_name_int(0, zquery, AccountData[playerid][pAmmo][i]);
	}
	cache_get_value_name_int(0, "Char_Head", AccountData[playerid][pHead]);
	cache_get_value_name_int(0, "Char_Stomach", AccountData[playerid][pPerut]);
	cache_get_value_name_int(0, "Char_LeftArm", AccountData[playerid][pLHand]);
	cache_get_value_name_int(0, "Char_RightArm", AccountData[playerid][pRHand]);
	cache_get_value_name_int(0, "Char_LeftFoot", AccountData[playerid][pLFoot]);
	cache_get_value_name_int(0, "Char_RightFoot", AccountData[playerid][pRFoot]);
	cache_get_value_name_float(0, "Char_BackpackWeight", AccountData[playerid][pBeratItem]);
	cache_get_value_name_float(0, "Char_RusunStorage", AccountData[playerid][pRusunCapacity]);
	cache_get_value_name_float(0, "Char_GudangStorage", AccountData[playerid][pGudangCapacity]);
	cache_get_value_name_int(0, "Char_DCTime", AccountData[playerid][LastSpawn]);
	cache_get_value_name_int(0, "Char_HasRusunID", AccountData[playerid][pOwnedRusun]);
	cache_get_value_name_int(0, "Char_SimA", AccountData[playerid][pSimA]);
	cache_get_value_name_int(0, "Char_SimB", AccountData[playerid][pSimB]);
	cache_get_value_name_int(0, "Char_SimC", AccountData[playerid][pSimC]);
	cache_get_value_name_int(0, "Char_SimATime", AccountData[playerid][pSimATime]);
	cache_get_value_name_int(0, "Char_SimBTime", AccountData[playerid][pSimBTime]);
	cache_get_value_name_int(0, "Char_SimCTime", AccountData[playerid][pSimCTime]);
	cache_get_value_name_int(0, "Char_WeaponLic", AccountData[playerid][pGunLic]);
	cache_get_value_name_int(0, "Char_WeaponLicTime", AccountData[playerid][pGunLicTime]);
	cache_get_value_name_int(0, "Char_HuntingLic", AccountData[playerid][pHuntingLic]);
	cache_get_value_name_int(0, "Char_HuntingLicTime", AccountData[playerid][pHuntingLicTime]);
	cache_get_value_name_int(0, "Char_Earphone", AccountData[playerid][pEarphone]);
	cache_get_value_name_int(0, "Char_Radio", AccountData[playerid][pRadio]);
	cache_get_value_name_int(0, "Char_KnockTime", AccountData[playerid][pInjuredTime]);
	cache_get_value_name_int(0, "Char_Ktp", AccountData[playerid][Ktp]);
	cache_get_value_name_int(0, "Char_HasGudangID", AccountData[playerid][pHasGudangID]);
	cache_get_value_name_int(0, "Char_GudangRentTime", AccountData[playerid][pGudangRentTime]);
	cache_get_value_name_int(0, "Char_DownloadWhatsapp", AccountData[playerid][DownloadWhatsapp]);
	cache_get_value_name_int(0, "Char_DownloadGojek", AccountData[playerid][DownloadGojek]);
	cache_get_value_name_int(0, "Char_DownloadSpotify", AccountData[playerid][DownloadSpotify]);
	cache_get_value_name_int(0, "Char_DownloadTwitter", AccountData[playerid][DownloadTwitter]);

	cache_get_value_name_int(0, "Char_MaskID", AccountData[playerid][pMaskID]);
	cache_get_value_name_int(0, "Char_Uniform", AccountData[playerid][pUniform]);
	cache_get_value_name_int(0, "Char_UsingUniform", AccountData[playerid][pUsingUniform]);
	cache_get_value_name_int(0, "Char_DutyPD", AccountData[playerid][pDutyPD]);
	cache_get_value_name_int(0, "Char_DutyPemerintah", AccountData[playerid][pDutyPemerintah]);
	cache_get_value_name_int(0, "Char_DutyEms", AccountData[playerid][pDutyEms]);
	cache_get_value_name_int(0, "Char_DutyBengkel", AccountData[playerid][pDutyBengkel]);
	cache_get_value_name_int(0, "Char_DutyPedagang", AccountData[playerid][pDutyPedagang]);
	cache_get_value_name_int(0, "Char_DutyTrans", AccountData[playerid][pDutyTrans]);
	cache_get_value_name_int(0, "Char_Kompensasi", AccountData[playerid][pKompensasi]);
	cache_get_value_name_int(0, "Char_AdminHide", AccountData[playerid][pAdminHide]);
	cache_get_value_name_int(0, "Char_OwnedHouse", AccountData[playerid][pOwnedHouse]);
	cache_get_value_name_int(0, "Char_TogAutoEngine", AccountData[playerid][pTogAutoEngine]);
	cache_get_value_name_int(0, "Char_DelayTrashmaster", AccountData[playerid][pTrashmasterDelay]);
	cache_get_value_name_int(0, "Char_ClaimSP", AccountData[playerid][pClaimStarterpack]);
	cache_get_value_name_int(0, "Char_OnlineTimer", AccountData[playerid][OnlineTimer]);
	
	cache_get_value_name_int(0, "Char_SKS", AccountData[playerid][pSKS]);
	cache_get_value_name_int(0, "Char_SKSTime", AccountData[playerid][pSKSTime]);
	cache_get_value_name(0, "Char_SKSNameDoc", AccountData[playerid][pSKSNameDoc]);
	cache_get_value_name(0, "Char_SKSRankDoc", AccountData[playerid][pSKSRankDoc]);
	cache_get_value_name(0, "Char_SKSReason", AccountData[playerid][pSKSReason]);
	cache_get_value_name_int(0, "Char_SKCK", AccountData[playerid][pSKCK]);
	cache_get_value_name_int(0, "Char_SKCKTime", AccountData[playerid][pSKCKTime]);
	cache_get_value_name(0, "Char_SKCKNamePol", AccountData[playerid][pSKCKNamePol]);
	cache_get_value_name(0, "Char_SKCKRankPol", AccountData[playerid][pSKCKRankPol]);
	cache_get_value_name(0, "Char_SKCKReason", AccountData[playerid][pSKCKReason]);

	cache_get_value_name_int(0, "Char_BPJS", AccountData[playerid][pBPJS]);
	cache_get_value_name_int(0, "Char_BPJSTime", AccountData[playerid][pBPJSTime]);
	cache_get_value_name(0, "Char_BPJSLevel", AccountData[playerid][pBPJSLevel]);

	cache_get_value_name(0, "Char_VipName", AccountData[playerid][pVipNameCustom]);
	cache_get_value_name(0, "Char_CallRingtone", AccountData[playerid][phoneCallRingtone]);

	cache_get_value_name(0, "Char_TwitterPassword", AccountData[playerid][TwitterPassword]);
	cache_get_value_name(0, "Char_TwitterName", AccountData[playerid][TwitterName]);
	cache_get_value_name_int(0, "Char_Twitter", AccountData[playerid][Twitter]);
	cache_get_value_name_int(0, "Char_FriendHouse", AccountData[playerid][pFriendHouseID]);
	cache_get_value_name_int(0, "Char_SweeperDelay", AccountData[playerid][pSweeperTime]);
	cache_get_value_name_int(0, "Char_DeliveryDelay", AccountData[playerid][pDeliveryTime]);
	cache_get_value_name_int(0, "Char_ForkliftDelay", AccountData[playerid][pForkliftTime]);
	cache_get_value_name_int(0, "Char_XmasGift", AccountData[playerid][pXmasTime]);
	cache_get_value_name_int(0, "Char_SKWB", AccountData[playerid][pSKWB]);
	cache_get_value_name_int(0, "Char_SKWBTime", AccountData[playerid][pSKWBTime]);
	cache_get_value_name_int(0, "Char_NotifStyle", AccountData[playerid][pStyleNotif]);
	cache_get_value_name_int(0, "Char_AirplaneMode", AccountData[playerid][phoneAirplaneMode]);
	cache_get_value_name_int(0, "Char_HUDMode", AccountData[playerid][pHUDMode]);
	cache_get_value_name_int(0, "Char_VehicleSlotPlus", AccountData[playerid][pVehicleSlotPlus]);
	cache_get_value_name_int(0, "Char_HouseSlotPlus", AccountData[playerid][pHouseSlotPlus]);
	cache_get_value_name_int(0, "Char_WallpaperColor", AccountData[playerid][phoneWallpaper]);
	cache_get_value_name_int(0, "Char_CaseColor", AccountData[playerid][phonecase]);
	cache_get_value_name_int(0, "Char_PajakTime", AccountData[playerid][pPajakTime]);
	AccountData[playerid][PlaySessionStart] = gettime();
	
	for (new i; i < 17; i++)
	{
		WeaponSettings[playerid][i][Position][0] = -0.116;
		WeaponSettings[playerid][i][Position][1] = 0.189;
		WeaponSettings[playerid][i][Position][2] = 0.088;
		WeaponSettings[playerid][i][Position][3] = 0.0;
		WeaponSettings[playerid][i][Position][4] = 44.5;
		WeaponSettings[playerid][i][Position][5] = 0.0;
		WeaponSettings[playerid][i][Bone] = 1;
		WeaponSettings[playerid][i][Hidden] = false;
	}

	if(!AccountData[playerid][pMaskID])
		AccountData[playerid][pMaskID] = random(90000) + 10000;
	
	AccountData[playerid][IsLoggedIn] = true;
	AccountData[playerid][pACTime] = gettime() + 5;

	new cQuery[1048];
	mysql_format(g_SQL, cQuery, sizeof(cQuery), "SELECT * FROM `inventory` WHERE `ID`=%d", AccountData[playerid][pID]);
	mysql_tquery(g_SQL, cQuery, "LoadPlayerInventory", "d", playerid);
	
	mysql_format(g_SQL, cQuery, sizeof(cQuery), "SELECT * FROM `weaponsettings` WHERE `Owner`=%d", AccountData[playerid][pID]);
	mysql_tquery(g_SQL, cQuery, "OnWeaponsLoaded", "d", playerid);

	mysql_format(g_SQL, cQuery, sizeof(cQuery), "SELECT * FROM `contacts` WHERE `contactOwner`=%d", AccountData[playerid][pID]);
	mysql_tquery(g_SQL, cQuery, "LoadPlayerContact", "d", playerid);

	mysql_format(g_SQL, cQuery, sizeof(cQuery), "SELECT * FROM `blacklist_players` WHERE `PID` = %d", AccountData[playerid][pID]);
	mysql_tquery(g_SQL, cQuery, "LoadBlacklistInfo", "d", playerid);

	mysql_format(g_SQL, cQuery, sizeof(cQuery), "SELECT * FROM `toys` WHERE `Owner` = '%s' LIMIT 1", AccountData[playerid][pName]);
	mysql_tquery(g_SQL, cQuery, "LoadPlayerToys", "d", playerid);

	if(gettime() > AccountData[playerid][LastSpawn])
	{
		if(AccountData[playerid][pArrest] > 0)
		{
			SetPlayerArrest(playerid, AccountData[playerid][pArrest]);
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
			AccountData[playerid][playerClickSpawn] = 1;
		}
		else if(AccountData[playerid][pJail] > 0)
		{
			SpawnPlayerInJail(playerid);
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
			AccountData[playerid][playerClickSpawn] = 1;
		}
		else
		{
			SetSpawnInfo(playerid, NO_TEAM, AccountData[playerid][pSkin],
			AccountData[playerid][pPosX], AccountData[playerid][pPosY], AccountData[playerid][pPosZ], AccountData[playerid][pPosA],
			0, 0, 0, 0, 0, 0);
			SpawnPlayer(playerid);

			Info(playerid, "Waktu last exit anda sudah expired 1 jam. Silahkan memilih Spawn Kembali.");
			ShowSpawnTextdraws(playerid);
			ResetVariableSpawn(playerid);
			Toggle_AllTextdraws(playerid, false);
			SetPlayerInterior(playerid, 0);
			SetPlayerVirtualWorld(playerid, 0);
			SetPlayerPos(playerid, -1958.217, 159.308, 27.687);
			SetPlayerFacingAngle(playerid, 268.628);
			SetPlayerCameraPos(playerid, 816.992, -1290.699, 63.719);
			SetPlayerCameraLookAt(playerid, 816.992, -1290.699, 63.719);
			AccountData[playerid][playerClickSpawn] = 0;
		}
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
	else if(AccountData[playerid][pInjured] == 1 && AccountData[playerid][pInjuredTime] != 0)
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
	else
	{
		HideSpawnTextdraws(playerid);
		AccountData[playerid][pPosX] = AccountData[playerid][pPosX];
		AccountData[playerid][pPosY] = AccountData[playerid][pPosY];
		AccountData[playerid][pPosZ] = AccountData[playerid][pPosZ];
		AccountData[playerid][pPosA] = AccountData[playerid][pPosA];
		SetSpawnInfo(playerid, NO_TEAM, AccountData[playerid][pSkin], AccountData[playerid][pPosX], AccountData[playerid][pPosY], AccountData[playerid][pPosZ], AccountData[playerid][pPosA], 0, 0, 0, 0, 0, 0);
		SetPlayerPositionEx(playerid, AccountData[playerid][pPosX],
			AccountData[playerid][pPosY], AccountData[playerid][pPosZ],
			AccountData[playerid][pPosA]);
		SetPlayerVirtualWorldEx(playerid, AccountData[playerid][pWorld]);
		SetPlayerInteriorEx(playerid, AccountData[playerid][pInt]);
		AccountData[playerid][playerClickSpawn] = 1;
		SetCameraBehindPlayer(playerid);
		ShowHbeTextdraws(playerid);
		GameTextForPlayer(playerid, "MEMUAT OBJECT...", 6000, 4);
	}
	TogglePlayerSpectating(playerid, false);
	TogglePlayerControllable(playerid, 0);
	Streamer_UpdateEx(playerid, AccountData[playerid][pPosX], AccountData[playerid][pPosY], AccountData[playerid][pPosZ]);
	LoadPlayerJob(playerid);
	LoadTextdrawHbe1(playerid);
	RefreshFactionMap(playerid);
	LoadNewbieProtection(playerid);
	ShowHbeTextdraws(playerid);
	SetPlayerColor(playerid, COLOR_WHITE);
	SyncPlayerTime(playerid);
	Player_ToggleDisableAntiCheat(playerid, false);
	Player_ToggleAntiHealthHack(playerid, true);
	Player_ToggleTelportAntiCheat(playerid, true);
	Streamer_SetVisibleItems(STREAMER_TYPE_OBJECT, AccountData[playerid][pMapRender], playerid);
	Streamer_SetRadiusMultiplier(STREAMER_TYPE_OBJECT, AccountData[playerid][pMapSettings], playerid);
	Streamer_Update(playerid, STREAMER_TYPE_OBJECT);
	return 1;
}

ResetVariableSpawn(playerid)
{
	// Variable Duty
	if(AccountData[playerid][pDutyPD] || AccountData[playerid][pDutyPemerintah] || AccountData[playerid][pDutyTrans] 
		|| AccountData[playerid][pDutyEms] || AccountData[playerid][pDutyPedagang] || AccountData[playerid][pDutyBengkel])
	{
		AccountData[playerid][pDutyPD] = 0;
		AccountData[playerid][pDutyPemerintah] = 0;
		AccountData[playerid][pDutyEms] = 0;
		AccountData[playerid][pDutyTrans] = 0;
		AccountData[playerid][pDutyPedagang] = 0;
		AccountData[playerid][pDutyBengkel] = 0;
	}

	if(AccountData[playerid][pUsingUniform])
	{
		AccountData[playerid][pUniform] = 0;
		AccountData[playerid][pUsingUniform] = false;
		SetPlayerSkin(playerid, AccountData[playerid][pSkin]);
	}	
	AccountData[playerid][OnlineTimer] = 0;
	return 1;
}

forward MakeWargaOffline(playerid, name[]);
public MakeWargaOffline(playerid, name[]) 
{
	if(!cache_num_rows()) 
	{
		return ShowTDN(playerid, NOTIFICATION_ERROR, sprintf("Akun dengan nama %s tidak ditemukan!", name));
	}
	else
	{
		new RegID;
		cache_get_value_index_int(0, 0, RegID);

		new query[155];
		mysql_format(g_SQL, query, sizeof(query), "UPDATE `player_characters` SET `Char_Family`=-1, `Char_FamilyRank`=0, `Char_Faction`=0, `Char_FactionRank`=0 WHERE `pID`=%d", RegID);
		mysql_tquery(g_SQL, query);
		ShowTDN(playerid, NOTIFICATION_SUKSES, sprintf("Berhasil menghapus status faction %s", name));
	}
	return 1;
}

forward OnPlayerRegister(playerid);
public OnPlayerRegister(playerid)
{
	if(AccountData[playerid][IsLoggedIn] == true) return ShowTDN(playerid, NOTIFICATION_ERROR, "Account anda sudah dalam keadaan login!");

	AccountData[playerid][pID] = cache_insert_id();
	AccountData[playerid][IsLoggedIn] = true;
	format(AccountData[playerid][pName], MAX_PLAYER_NAME, AccountData[playerid][pTempName]);
	format(AccountData[playerid][pAdminname], MAX_PLAYER_NAME, AccountData[playerid][pUCP]);
	format(AccountData[playerid][pIP], 16, ReturnIP(playerid));
	format(AccountData[playerid][pSKSNameDoc], 40, "N/A");
	format(AccountData[playerid][pSKSRankDoc], 40, "N/A");
	format(AccountData[playerid][pSKSReason], 40, "N/A");
	format(AccountData[playerid][pSKCKNamePol], 40, "N/A");
	format(AccountData[playerid][pSKCKRankPol], 40, "N/A");
	format(AccountData[playerid][pSKCKRankPol], 40, "N/A");
	format(AccountData[playerid][pBPJSLevel], 40, "N/A");

	TempName[playerid][0] = EOS;
    TempDOB[playerid][0] = EOS;
    TempGender[playerid][0] = EOS;
    TempHeight[playerid][0] = EOS;
    TempWeight[playerid][0] = EOS;
    TempOrigin[playerid][0] = EOS;
	DeletePVar(playerid, "CreateName");
	DeletePVar(playerid, "CreateAge");
	DeletePVar(playerid, "CreateGender");
	DeletePVar(playerid, "CreateHeight");
	DeletePVar(playerid, "CreateOrigin");
	DeletePVar(playerid, "CharacterMenu");
	for(new i = 0 ; i < 10; i ++)
		PlayerTextDrawHide(playerid, Ui_CharSelect[playerid][i]);
	NewbieRegister(playerid);
	AccountData[playerid][pVehicleSlotPlus] = 0;
	AccountData[playerid][pHouseSlotPlus] = 0;
	AccountData[playerid][phoneCallRingtone][0] = EOS;
	AccountData[playerid][phoneWallpaper] = ColorListPagar[61];
	AccountData[playerid][phonecase] = ColorListPagar2[61];
	AccountData[playerid][pHUDMode] = 1;
	AccountData[playerid][phoneAirplaneMode] = false;
	AccountData[playerid][AirdropPermission] = false;
	AccountData[playerid][pStyleNotif] = 1;
	AccountData[playerid][DownloadWhatsapp] = 0;
	AccountData[playerid][DownloadGojek] = 0;
	AccountData[playerid][DownloadSpotify] = 0;
	AccountData[playerid][DownloadTwitter] = 0;
	AccountData[playerid][pAdmin] = 0;
	AccountData[playerid][pTheStars] = 0;
	AccountData[playerid][pTheStarsTime] = 0;
	AccountData[playerid][pMapSettings] = 2.0;
	AccountData[playerid][pMapRender] = 1000;
	AccountData[playerid][pTogPM] = 1;
	AccountData[playerid][pTogGlobal] = 1;
	AccountData[playerid][pTogAC] = 1;
	AccountData[playerid][pHealth] = 100.0;
	AccountData[playerid][pArmour] = 0;
	AccountData[playerid][pLevel] = 1;
	AccountData[playerid][pHunger] = 100;
	AccountData[playerid][pThirst] = 100;
	AccountData[playerid][pStress] = 0;
	AccountData[playerid][pMoney] = 6000;
	AccountData[playerid][pBankMoney] = 2000;
	AccountData[playerid][Ktp] = 0;
	AccountData[playerid][pHours] = 0;
	AccountData[playerid][pMinutes] = 0;
	AccountData[playerid][pSeconds] = 0;
	AccountData[playerid][pSweeperTime] = 0;
	AccountData[playerid][pDeliveryTime] = 0;
	AccountData[playerid][pForkliftTime] = 0;
	AccountData[playerid][pMowerTime] = 0;
	AccountData[playerid][pTogAutoEngine] = 1;
	AccountData[playerid][pHuntingLic] = 0;
	AccountData[playerid][pHuntingLicTime] = 0;
	AccountData[playerid][pGunLic] = 0;
	AccountData[playerid][pGunLicTime] = 0;
	AccountData[playerid][pSimA] = 0;
	AccountData[playerid][pSimB] = 0;
	AccountData[playerid][pSimC] = 0;
	AccountData[playerid][pSimATime] = 0;
	AccountData[playerid][pSimBTime] = 0;
	AccountData[playerid][pSimCTime] = 0;
	AccountData[playerid][pEarphone] = 0;
	AccountData[playerid][pRadio] = 0;
	AccountData[playerid][pTogAutoEngine] = 1;
	AccountData[playerid][pFriendHouseID] = -1;
	AccountData[playerid][pOwnedHouse] = -1;
	AccountData[playerid][pOwnedRusun] = -1;
	AccountData[playerid][pHasGudangID] = -1;
	AccountData[playerid][pClaimStarterpack] = 0;
	AccountData[playerid][LastSpawn] = 0;
	AccountData[playerid][pGudangCapacity] = 0.0;
	AccountData[playerid][pRusunCapacity] = 0.0;
	AccountData[playerid][pMaskID] = random(90000) + 10000;
	AccountData[playerid][pSKWB] = 1;
	AccountData[playerid][pSKWBTime] = gettime() + (7 * 86400); // Seminggu

	// if(IsValidObject(AccountData[playerid][pSkate])) DestroyObject(AccountData[playerid][pSkate]);
	Inventory_Clear(playerid);
	TogglePlayerSpectating(playerid, false);
	FadeIn(playerid);
	Inventory_Add(playerid, "Backpack", 3026);
	ShowItemBox(playerid, "Received 1x", "Backpack", 3026);
	new randspawm = random(sizeof(SpawnBandara));
    AccountData[playerid][pPosX] = SpawnBandara[randspawm][0];
    AccountData[playerid][pPosY] = SpawnBandara[randspawm][1];
    AccountData[playerid][pPosZ] = SpawnBandara[randspawm][2];
    AccountData[playerid][pPosA] = SpawnBandara[randspawm][3];
    SetSpawnInfo(playerid, NO_TEAM, AccountData[playerid][pSkin], AccountData[playerid][pPosX], AccountData[playerid][pPosY], AccountData[playerid][pPosZ], AccountData[playerid][pPosA], 0, 0, 0, 0, 0, 0);

	AccountData[playerid][Twitter] = 0;
	format(AccountData[playerid][TwitterName], 64, "");
	format(AccountData[playerid][TwitterPassword], 64, "");

	AccountData[playerid][pHead] = 100;
	AccountData[playerid][pPerut] = 100;
	AccountData[playerid][pLHand] = 100;
	AccountData[playerid][pRHand] = 100;
	AccountData[playerid][pLFoot] = 100;
	AccountData[playerid][pRFoot] = 100;

	SendClientMessage(playerid, -1, "");
	SendClientMessage(playerid, -1, "");
	SendClientMessage(playerid, -1, "");
	SendClientMessage(playerid, -1, "");
	SendClientMessage(playerid, -1, "");

	SetPVarInt(playerid, "CreateName", 0);
	SetPVarInt(playerid, "CreateAge", 0);
	SetPVarInt(playerid, "CreateWeight", 0);
	SetPVarInt(playerid, "CreateHeight", 0);
	SetPVarInt(playerid, "CreateOrigin", 0);
	
	new query[255], rand = RandomEx(111111, 999999);
	new rekening = rand+AccountData[playerid][pID];
	mysql_format(g_SQL, query, sizeof(query), "SELECT `Char_BankRek` FROM `player_characters` WHERE `Char_BankRek`=%d", rekening);
	mysql_tquery(g_SQL, query, "BankRekening", "id", playerid, rekening);

	new nope[128];
	format(nope, sizeof(nope), "0812%d%d%d%d%d%d%d%d", random(10), random(10), random(10), random(10), random(10), random(10), random(10), random(10));
	mysql_format(g_SQL, query, sizeof(query), "SELECT Char_PhoneNum FROM player_characters WHERE Char_PhoneNum='%e'", SQL_ReturnEscape(nope));
	mysql_tquery(g_SQL, query, "PhoneNumber", "is", playerid, nope);

	mysql_format(g_SQL, query, sizeof(query), "INSERT INTO `blacklist_players` SET `PID` = %d", AccountData[playerid][pID]);
	mysql_tquery(g_SQL, query);
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
	TogglePlayerSpectating(playerid, true);
	SetTimerEx("LoadingLoad", 200, false, "i", playerid);
	Toggle_AllTextdraws(playerid, false);
	CancelSelectTextDraw(playerid);
	AccountData[playerid][playerClickSpawn] = 1;
	return 1;
}

forward BankRekening(playerid, rekening);
public BankRekening(playerid, rekening)
{
	if(cache_num_rows())
	{
		// Sudah ada rekening tersebut di database
		new query[125], rand = RandomEx(111111, 999999);
		new rek = rand+AccountData[playerid][pID];
		mysql_format(g_SQL, query, sizeof(query), "SELECT `Char_BankRek` FROM `player_characters` WHERE `Char_BankRek`=%d", rekening);
		mysql_tquery(g_SQL, query, "BankRekening", "id", playerid, rek);
		SendClientMessageEx(playerid, -1, "[i] Ada rekening yang sama dengan rekeningmu. Kami sedang mencarikan ulang untuk anda...");
	}
	else 
	{
		new query[125];
		mysql_format(g_SQL, query, sizeof(query), "UPDATE `player_characters` SET `Char_BankRek`=%d WHERE `pID`=%d", rekening, AccountData[playerid][pID]);
		mysql_tquery(g_SQL, query);
		AccountData[playerid][pBankRek] = rekening;
	}
	return 1;
}

forward PhoneNumber(playerid, phone[]);
public PhoneNumber(playerid, phone[])
{
	if(cache_num_rows() > 0)
	{
		new phones[128], query[218];
		format(phones, sizeof(phones), "0812%d%d%d%d%d%d%d%d", random(10), random(10), random(10), random(10), random(10), random(10), random(10), random(10));
		mysql_format(g_SQL, query, sizeof(query), "SELECT `Char_PhoneNum` FROM `player_characters` WHERE `Char_PhoneNum`='%s'", phones);
		mysql_tquery(g_SQL, query, "PhoneNumber", "is", playerid, phones);
		SendClientMessageEx(playerid, -1, "[i] Sudah ada yang menggunakan nomor telepon ini. kami akan mencarikan yang baru");
	}
	else 
	{
		new query[128];
		mysql_format(g_SQL, query, sizeof(query), "UPDATE `player_characters` SET `Char_PhoneNum`='%s' WHERE `pID`='%d'", phone, AccountData[playerid][pID]);
		mysql_tquery(g_SQL, query);
		format(AccountData[playerid][pPhone], 64, phone);
	}
	return true;
}

FUNC::_KickPlayerDelayed(playerid)
{
	Kick(playerid);
	return 1;
}

FUNC::SafeLogin(playerid)
{
	// Main Menu Features.
	SetPlayerVirtualWorld(playerid, 0);
	return 1;
}

forward a_ChangeAdminName(otherplayer, playerid, nname[]);
public a_ChangeAdminName(otherplayer, playerid, nname[])
{
	new rowcount = cache_num_rows();
	if(rowcount)
	{
		// Name Exists
		return Error(playerid, "Akun dengan nama admin "RED"%s"WHITE" sudah terdaftar. Harap gunakan nama lain!.", nname);
	}
	else
	{
		new oldname[100];
		format(oldname, sizeof(oldname), AccountData[otherplayer][pAdminname]);
		format(AccountData[otherplayer][pAdminname], MAX_PLAYER_NAME, nname);

		
		new query[512];
	    mysql_format(g_SQL, query, sizeof(query), "UPDATE `player_characters` SET `Char_AdminName`='%s' WHERE `pID`=%d", nname, AccountData[otherplayer][pID]);
		mysql_tquery(g_SQL, query);
		
		SendStaffMessage(X11_TOMATO, "%s telah mengganti nama admin %s menjadi "RED"%s.", AccountData[playerid][pAdminname], oldname, nname);
	}
    return 1;
}

FUNC::CheckPlayerIP(playerid, zplayerIP[])
{
	new count = cache_num_rows(), datez, line[248], tstr[64], lstr[128];
	if(count)
	{
		datez = 0;
 		line = "";
 		format(line, sizeof(line), "Names matching IP: %s:\n\n", zplayerIP);
 		for(new i = 0; i != count; i++)
		{
			// Get the name  ache and append it to the dialog content
			cache_get_value_index(i, 0, lstr);
			strcat(line, lstr);
			datez ++;

			if(datez == 5)
				strcat(line, "\n"), datez = 0;
			else
				strcat(line, "\t\t");
		}

		tstr = "{ACB5BA}Aliases for {70CAFA}", strcat(tstr, zplayerIP);
		ShowPlayerDialog(playerid, DIALOG_UNUSED, DIALOG_STYLE_MSGBOX, tstr, line, "Close", "");
	}
	else
 	{
		ShowTDN(playerid, NOTIFICATION_ERROR, "No other accounts from this IP!");
	}
	return 1;
}

FUNC::CheckPlayerIP2(playerid, zplayerIP[])
{
	new rows = cache_num_rows(), datez, line[248], tstr[64], lstr[128];
	if(!rows)
	{
		ShowTDN(playerid, NOTIFICATION_ERROR, "No other accounts from this IP!");
	}
	else
 	{
 		datez = 0;
 		line = "";
 		format(line, sizeof(line), "Names matching IP: %s:\n\n", zplayerIP);
 		for(new i = 0; i != rows; i++)
		{
			// Get the name from the cache and append it to the dialog content
			cache_get_value_index(i, 0, lstr);
			strcat(line, lstr);
			datez ++;

			if(datez == 5)
				strcat(line, "\n"), datez = 0;
			else
				strcat(line, "\t\t");
		}

		tstr = "{ACB5BA}Aliases for {70CAFA}", strcat(tstr, zplayerIP);
		ShowPlayerDialog(playerid, DIALOG_UNUSED, DIALOG_STYLE_MSGBOX, tstr, line, "Close", "");
	}
	return 1;
}

forward OnOBanQueryData(adminid, UCPToBan[], banReason[], banTime);
public OnOBanQueryData(adminid, UCPToBan[], banReason[], banTime)
{
	if(!cache_num_rows())
	{
		ShowTDN(adminid, NOTIFICATION_ERROR, sprintf("Akun %s tidak ditemukan", UCPToBan));
	}
	else 
	{
		new datez, PlayerIP[16];
		cache_get_value_index(0, 0, PlayerIP);
		if(banTime != 0)
		{
			datez = gettime() + (banTime * 86400);
			SendClientMessageToAllEx(X11_TOMATO, "AdmCmd: %s telah membanned (offline) Akun: %s selama %d hari", AccountData[adminid][pAdminname], UCPToBan, banTime);
			SendClientMessageToAllEx(-1, "~> %s", banReason);
		}
		else 
		{
			SendClientMessageToAllEx(X11_TOMATO, "AdmCmd: %s telah membanned (offline) Permanent Akun: %s", AccountData[adminid][pAdminname], UCPToBan);
			SendClientMessageToAllEx(-1, "~> %s", banReason);
		}
		new twsmk[512];
		mysql_format(g_SQL, twsmk, sizeof(twsmk), "INSERT INTO player_bans (name, ip, admin, reason, ban_date, ban_expire) VALUES ('%s', '%s', '%s', '%s', UNIX_TIMESTAMP(), %d)", UCPToBan, PlayerIP, AccountData[adminid][pAdminname], banReason, datez);
		mysql_tquery(g_SQL, twsmk);
	}
	return 1;
}

Function: PressJumpReset(playerid)
{
    PlayerPressedJump[playerid] = 0; // Reset the variable
    return 1;
}

FUNC::SeretUpdate(playerid, target)
{
	if(AccountData[target][pDragged])
	{
		static
        Float:fX,
        Float:fY,
        Float:fZ,
        Float:fAngle;

        GetPlayerPos(playerid, fX, fY, fZ);
        GetPlayerFacingAngle(playerid, fAngle);

        fX -= 3.0 * floatsin(-fAngle, degrees);
        fY -= 3.0 * floatcos(-fAngle, degrees);

        SetPlayerPos(target, fX, fY, fZ);
        SetPlayerInterior(target, GetPlayerInterior(playerid));
        SetPlayerVirtualWorld(target, GetPlayerVirtualWorld(playerid));
		ApplyAnimation(target,"PED","WALK_civi",4.1,1,1,1,1,1);
	}
	return 1;
}

//Server Timer
FUNC::pCountDown()
{
	Count--;
	if(0 >= Count)
	{
		Count = -1;
		KillTimer(countTimer);
		foreach(new ii : Player)
		{
 			if(showCD[ii] == 1)
   			{
   				GameTextForPlayer(ii, "~w~GO~r~!~g~!~b~!", 2500, 6);
   				PlayerPlaySound(ii, 1057, 0, 0, 0);
   				showCD[ii] = 0;
   				if(IsPlayerInEvent(ii) == 1)
   				{
   					// TogglePlayerControllable(ii, 1);
   				}
			}
		}
	}
	else
	{
		foreach(new ii : Player)
		{
 			if(showCD[ii] == 1)
   			{
				GameTextForPlayer(ii, CountText[Count-1], 2500, 6);
				PlayerPlaySound(ii, 1056, 0, 0, 0);
   			}
		}
	}
	return 1;
}

/* Other Functions */

/*FUNC::SetVehicleToUnfreeze(playerid, vehicleid, Float:x, Float:y, Float:z, Float:a)
{
    if(!IsPlayerInRangeOfPoint(playerid, 15.0, x, y, z))
        return 0;

    AccountData[playerid][pFreeze] = 0;
    SetVehiclePos(vehicleid, x, y, z);
	SetVehicleZAngle(vehicleid, a);
    TogglePlayerControllable(playerid, 1);
    return 1;
}*/

stock IsPlayerNearPlayer(playerid, targetid, Float:radius)
{
    static
        Float:fX,
        Float:fY,
        Float:fZ;

    GetPlayerPos(targetid, fX, fY, fZ);

    return (GetPlayerInterior(playerid) == GetPlayerInterior(targetid) && GetPlayerVirtualWorld(playerid) == GetPlayerVirtualWorld(targetid)) && IsPlayerInRangeOfPoint(playerid, radius, fX, fY, fZ);
}
stock GetPlayerCount()
{
    new count = 0;
    for (new i = 0; i < MAX_PLAYERS; i++)
    {
        if (IsPlayerConnected(i))
            count++;
    }
    return count;
}

stock GetCapacity(playerid)
{
	return floatround(AccountData[playerid][pBeratItem]);
}

stock GetHealth(playerid)
{
	new Float:health;
	GetPlayerHealth(playerid, health);
	return floatround(health);
}

stock GetArmor(playerid)
{
	new Float:armor;
 	GetPlayerArmour(playerid, armor);
	return floatround(armor);
}

stock GetName(playerid)
{
	new name[MAX_PLAYER_NAME + 1];
 	GetPlayerName(playerid,name,sizeof(name));
	return name;
}

forward CheckUCP(playerid, nameucp[]);
public CheckUCP(playerid, nameucp[])
{
	new count = cache_num_rows(), datez, line[248], tstr[64], lstr[128];
	if(count)
	{
		datez = 0;
 		line = "";
 		format(line, sizeof(line), "List Karakter Yang Dimiliki:\n\n", nameucp);
 		for(new i = 0; i != count; i++)
		{
			// Get the name  ache and append it to the dialog content
			cache_get_value_index(i, 0, lstr);
			strcat(line, lstr);
			datez ++;

			if(datez == 5)
				strcat(line, "\n"), datez = 0;
			else
				strcat(line, "\n");
		}

		tstr = ""TTR"Astral City Roleplay - UCP: {FFFF00}", strcat(tstr, nameucp);
		ShowPlayerDialog(playerid, DIALOG_UNUSED, DIALOG_STYLE_MSGBOX, tstr, line, "Tutup", "");
	}
	else
 	{
		ShowTDN(playerid, NOTIFICATION_ERROR, sprintf("UCP %s tidak di temukan", nameucp));
	}
	return 1;
}

forward FactDutyHour(playerid);
public FactDutyHour(playerid)
{
	if(!AccountData[playerid][pDutyPD] && !AccountData[playerid][pDutyEms] && !AccountData[playerid][pDutyPemerintah]
		&& !AccountData[playerid][pDutyTrans] && !AccountData[playerid][pDutyBengkel] && !AccountData[playerid][pDutyPedagang])
	{
		return KillTimer(AccountData[playerid][pDutyTimer]);
	}

	AccountData[playerid][pFactDutyTimer] += 1;

	if(AccountData[playerid][pFactDutyTimer] == 3600)
	{
		AccountData[playerid][pPaycheck] += 1000; // disimpan ke paycheck
		AccountData[playerid][pFactDutyTimer] = 0;

		Info(playerid, "Uang duty selama 1 jam telah masuk ke sistem "YELLOW"Paycheck"WHITE" sebesar "GREEN"$1000"WHITE". Ambil di "TTR"Balai Kota"WHITE".");
	}
	return 1;
}

forward FireUp(playerid);
public FireUp(playerid)
{
	PlayerPlayNearbySound(playerid, 17705);
	MoveDynamicObject(FireworkObject[playerid], GetPVarFloat(playerid, "FireX"), GetPVarFloat(playerid, "FireY"), GetPVarFloat(playerid, "FireZ") + 50.0, 20.0, 90.0, 0.0, 0.0);
	SetTimerEx("FireDuar", 2500, false, "d", playerid);
	return 1;
}

FUNC::FireDuar(playerid)
{
	KillTimer(FireworkTimer[playerid]);
	FireworkTimer[playerid] = -1;
	CreateExplosion(GetPVarFloat(playerid, "FireX"), GetPVarFloat(playerid, "FireY"), GetPVarFloat(playerid, "FireZ") + 50.0, 0, 15.0);
	PlayerPlayNearbySound(playerid, 17003);
	if(DestroyDynamicObject(FireworkObject[playerid])) 
		FireworkObject[playerid] = STREAMER_TAG_OBJECT: INVALID_STREAMER_ID;
	return 1;
}

stock LoadServerPickup()
{
	static strings[598];
	format(strings, sizeof(strings), "Selamat datang di "TTR"Astral City Roleplay\n"YELLOW"'/help'"WHITE" -> Petunjuk & bantuan.\n"YELLOW"'/ask'"WHITE" -> Hanya untuk bertanya seputar server & fitur.\n"YELLOW"'/report"WHITE" -> Melaporkan bug atau player yang melanggar aturan.");
	CreateDynamicPickup(1239, 23, 2756.3777, -2447.4297, 13.7050, -1, -1, -1, 10.0);
	CreateDynamicPickup(1239, 23, 1692.4619, -2325.5718, 13.5469, -1, -1, -1, 10.0);
	CreateDynamicPickup(1239, 23, 1682.6135, 1444.3638, 10.7720, -1, -1, -1, 10.0);
	CreateDynamic3DTextLabel(strings, -1, 2756.3777, -2447.4297, 13.7050 + 1.2, 8.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1);
	CreateDynamic3DTextLabel(strings, -1, 1692.4619, -2325.5718, 13.5469 + 1.2, 8.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1);
	CreateDynamic3DTextLabel(strings, -1, 1682.6135, 1444.3638, 10.7720 + 1.2, 8.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1);

	format(strings, sizeof(strings), ""TTR"[Mount Chilliad Skydiving Point]\n\n"YELLOW"`/skydive`"WHITE"-> Mulai terjun payung.\n"WHITE"[Harga]:"GREEN"$50");
	CreateDynamic3DTextLabel(strings, COLOR_WHITE, -2237.6846, -1743.9290, 480.8447 + 0.25, 10.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1);
	CreateDynamicPickup(1310, 23, -2237.6846, -1743.9290, 480.8447, -1, -1, -1, 15.0); // Skydive
	
	CreateDynamic3DTextLabel(""GRAY"[Gerbang Federal Point]\n"WHITE"Tekan "YELLOW"Klakson"WHITE" disini untuk membuka Gerbang.", -1, 135.5095, 1938.0144, 18.9363 + 0.1, 10.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1);// federal
    CreateDynamic3DTextLabel(""GRAY"[Gerbang Federal Point]\n"WHITE"Tekan "YELLOW"Klakson"WHITE" disini untuk membuka Gerbang.", -1, 135.0618, 1945.4528, 19.0004 + 0.1, 10.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1);// federal

	//CreateDynamicActor(1, 1673.7780, -2326.5752, 13.5469, 270.6025, 1, 100.0, 0, 0, -1, 50.0, -1, 0);
	//CreateDynamic3DTextLabel(""WHITE"Claim Hadiah Warga Baru Di Dalam Tas/Inventory", -1, 1673.7780, -2326.5752, 13.5469 + 0.8, 10.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, 0, 0, -1, 10.0, -1, 0);

	printf("[Counting Object Server]: Jumlah total Object Server yang dimuat %d.", CountDynamicObjects());
}

FUNC:: MarketPriceUpdate()
{
	ChangeMPrice();
	return 1;
}

FUNC:: SavingBackup()
{
	SaveAll();
	g_AsuransiAll = 1;
	g_AsuransiTime = 90;
    Insu::End = 90;
	for(new Insu::loop; Insu::loop < sizeof(Insu::textdraw); Insu::loop++)
    {
        TextDrawShowForAll(Insu::textdraw[Insu::loop]);
    }
	static lstr[1024];
	format(lstr, sizeof(lstr), ""YELLOW"Asuransi: "WHITE"Memulai Asuransi Keliling dalam %d detik", 90);
    SendClientMessageToAllEx(-1, ""YELLOW"Server: "WHITE"Berhasil Membackup semua data player ke dalam database");
	SendClientMessageToAllEx(-1, lstr);
	return 1;
}

FUNC:: GlobalTimeRusun()
{
	UpdateRusunTime();
	return 1;
}

forward ChangeMPrice();
public ChangeMPrice()
{
	OldTembagaPrice = TembagaPrice;
	OldBesiPrice = BesiPrice;
	OldEmasPrice = EmasPrice;
	OldBerlianPrice = BerlianPrice;
	OldMaterialPrice = MaterialPrice;
	OldAlumuniumPrice = AlumuniumPrice;
	OldKaretPrice = KaretPrice;
	OldKacaPrice = KacaPrice;
	OldBajaPrice = BajaPrice;
	OldAyamKemasPrice = AyamKemasPrice;
	OldSusuOlahPrice = SusuOlahPrice;
	OldPakaianPrice = PakaianPrice;
	OldKayuKemasPrice = KayuKemasPrice;
	OldGasPrice = GasPrice;

	TembagaPrice = RandomEx(3, 13);
	BesiPrice = RandomEx(7, 19);
	EmasPrice = RandomEx(10, 21);
	BerlianPrice = RandomEx(100, 205);
	MaterialPrice = RandomEx(5, 17);
	AlumuniumPrice = RandomEx(13, 25);
	KaretPrice = RandomEx(5, 15);
	KacaPrice = RandomEx(6, 18);
	BajaPrice = RandomEx(10, 23);
	AyamKemasPrice = RandomEx(13, 23);
	SusuOlahPrice = RandomEx(13, 23);
	PakaianPrice = RandomEx(11, 33);
	KayuKemasPrice = RandomEx(19, 33);
	GasPrice = RandomEx(10, 25);
	SendClientMessageToAll(-1, "[i] Harga Pasar telah berubah, gunakan "YELLOW"Handphone -> Lainnya -> Harga pasar "WHITE"untuk melihat harga jual terbaru");
	return 1; 
}

Function: UpdateRusunTime()
{
	new currentTime = gettime();

	if(currentTime >= g_RusunTime)
	{
		foreach(new rsid : Rusun)
		{
			new playerName[24];
			foreach(new player : Player) if (IsPlayerConnected(player))
			{
				GetPlayerName(player, playerName, MAX_PLAYER_NAME);

				if(strfind(AccountData[player][pName], playerName, true) != -1)
				{
					AccountData[player][pOwnedRusun] = -1;
				}
			}
			mysql_tquery(g_SQL, sprintf("UPDATE `player_characters` SET `Char_HasRusunID`=-1 WHERE `pID`=%d", RusunData[rsid][rusunOwnerID]));

			format(RusunData[rsid][rusunOwner], 32, "N/A");
			RusunData[rsid][rusunOwnerID] = 0;
			Rusun_Refresh(rsid);
			Rusun_Save(rsid);

			g_RusunTime = currentTime + (30 * 86400);

			new query[258];
			mysql_format(g_SQL, query, sizeof(query), "UPDATE `stuffs` SET `globaltime_rusun`=%d WHERE `ID`=0", g_RusunTime);
			mysql_tquery(g_SQL, query);
		}
	}
	return 1;
}

FUNC:: GiveGovermentAllowance(playerid)
{
	if(!AccountData[playerid][pSpawned])
		return 0;
		
	if(GetPlayerVIPLevel(playerid) == 1)
	{
		AccountData[playerid][pPaycheck] += 100;
		ShowTDN(playerid, NOTIFICATION_INFO, "Anda mendapatkan tunjangan dari pemerintah");
		Info(playerid, "Anda pengguna VIP Ranger Kuning");
		PlayerPlaySound(playerid, 1139, 0.0, 0.0, 0.0);
	}
	else if(GetPlayerVIPLevel(playerid) == 2)
	{
		AccountData[playerid][pPaycheck] += 150;
		ShowTDN(playerid, NOTIFICATION_INFO, "Anda mendapatkan tunjangan dari pemerintah");
		Info(playerid, "Anda pengguna VIP Ranger Hijau");
		PlayerPlaySound(playerid, 1139, 0.0, 0.0, 0.0);
	}
	else if(GetPlayerVIPLevel(playerid) == 3)
	{
		AccountData[playerid][pPaycheck] += 350;
		ShowTDN(playerid, NOTIFICATION_INFO, "Anda mendapatkan tunjangan dari pemerintah");
		Info(playerid, "Anda pengguna VIP Ranger Merah");
		PlayerPlaySound(playerid, 1139, 0.0, 0.0, 0.0);
	}
	else 
	{
		AccountData[playerid][pPaycheck] += 50;
		ShowTDN(playerid, NOTIFICATION_INFO, "Anda mendapatkan tunjangan dari pemerintah");
		PlayerPlaySound(playerid, 1139, 0.0, 0.0, 0.0);
	}
	return 1;
}

Function: DestroyLabelOut(playerid)
{
	KillTimer(labelDisconnectTimer[playerid]);
	labelDisconnectTimer[playerid] = -1;

	if(DestroyDynamic3DTextLabel(labelDisconnect[playerid]))
		labelDisconnect[playerid] = STREAMER_TAG_3D_TEXT_LABEL: INVALID_STREAMER_ID;

	return 1;
}

forward HidePlayerFooter(playerid);
public HidePlayerFooter(playerid)
{
	if(!AccountData[playerid][pShowFooter])
		return 0;
	
	AccountData[playerid][pShowFooter] = false;
	KillTimer(AccountData[playerid][pFooterTimer]);
	AccountData[playerid][pFooterTimer] = 0;
	return PlayerTextDrawHide(playerid, ATRP_Footer[playerid]);
}

forward HidePlayerWarning(playerid);
public HidePlayerWarning(playerid)
{
	if(!ShowWarning[playerid])
		return 0;
	
	ShowWarning[playerid] = false;
	KillTimer(WarningTimer[playerid]);
	WarningTimer[playerid] = 0;
	for(new i = 0; i < 10; i++) {
		TextDrawHideForPlayer(playerid, ATRP_Warning[i]);
	}
	return 1;
}

Blacklist_Check(playerid, const type[], target[])
{
	new Cache:execute;

	execute = mysql_query(g_SQL, sprintf("SELECT * FROM `player_bans` WHERE `%s` = '%s' LIMIT 1;", type, target));

	new date, time;
	new reason[128], ip[16], username[MAX_PLAYER_NAME], banby[MAX_PLAYER_NAME];

	if(cache_num_rows())
	{
		time = cache_get_field_int(0, "ban_expire");
		date = cache_get_field_int(0, "ban_date");

		cache_get_field_content(0, "ip", ip);
		cache_get_field_content(0, "name", username);
		cache_get_field_content(0, "admin", banby);
		cache_get_field_content(0, "reason", reason);

		new currentTime = gettime();
		if(time != 0 && time <= currentTime) // melepas status banned akun
		{
			new pbanname[MAX_PLAYER_NAME];
			GetPlayerName(playerid, pbanname, MAX_PLAYER_NAME);
			AccountData[playerid][IsLoggedIn] = false;
			Blacklist_RemoveBan(pbanname);
			Info(playerid, "Server telah melepas status banned akun ini secara otomatis. Jangan mengulangi hal yang sama kembali!");

			mysql_tquery(g_SQL, sprintf("SELECT * FROM `player_characters` WHERE `Char_Name` = '%s' LIMIT 1;", pbanname), "LoadPlayerData", "d", playerid);
		}
		else
		{
			new PlayerIP[16];
			GetPlayerIp(playerid, PlayerIP, sizeof(PlayerIP));
			mysql_tquery(g_SQL, sprintf("UPDATE `player_bans` SET `last_activity_timestamp` = '%d' WHERE `name` = '%s'", gettime(), AccountData[playerid][pUCP]));
				
			AccountData[playerid][IsLoggedIn] = false;
			printf("[BANNED INFO]: Ban Getting Called on %s", AccountData[playerid][pUCP]);
			GetPlayerIp(playerid, PlayerIP, sizeof(PlayerIP));
			SendClientMessage(playerid, X11_DARKRED, "[i] UCP Anda diblokir dari server.");

			if(!time)
			{
				new ucp[200];
				new Addresstr[200];
				new AdminStr[200];
				new TanggalStr[200];
				new ReasonStr[200];
				format(ucp, sizeof ucp, "Nama UCP/IC: %s", username);
				PlayerTextDrawSetString(playerid, BannedTD[playerid][11], ucp);
				format(Addresstr, sizeof Addresstr, "IP Address: %s", PlayerIP);
				PlayerTextDrawSetString(playerid, BannedTD[playerid][12], Addresstr);
				format(AdminStr, sizeof AdminStr, "Admin On Duty: %s", banby);
				PlayerTextDrawSetString(playerid, BannedTD[playerid][13], AdminStr);
				format(TanggalStr, sizeof TanggalStr, "Tanggal Blokir: %s", ReturnDate(date));
				PlayerTextDrawSetString(playerid, BannedTD[playerid][14], TanggalStr);
				format(ReasonStr, sizeof ReasonStr, "Reason: %s", reason);
				PlayerTextDrawSetString(playerid, BannedTD[playerid][15], ReasonStr);
				PlayerTextDrawSetString(playerid, BannedTD[playerid][16], "Durasi Blokir: Permanent");
				for(new i = 0; i < 22; i ++)
				{
					PlayerTextDrawShow(playerid, BannedTD[playerid][i]);
				}
				KickEx(playerid);
			}
			else
			{
				new ucp[200];
				new Addresstr[200];
				new AdminStr[200];
				new TanggalStr[200];
				new ReasonStr[200];
				new DurasiStr[200];
				format(ucp, sizeof ucp, "Nama UCP/IC: %s", username);
				PlayerTextDrawSetString(playerid, BannedTD[playerid][11], ucp);
				format(Addresstr, sizeof Addresstr, "IP Address: %s", PlayerIP);
				PlayerTextDrawSetString(playerid, BannedTD[playerid][12], Addresstr);
				format(AdminStr, sizeof AdminStr, "Admin On Duty: %s", banby);
				PlayerTextDrawSetString(playerid, BannedTD[playerid][13], AdminStr);
				format(TanggalStr, sizeof TanggalStr, "Tanggal Blokir: %s", ReturnDate(date));
				PlayerTextDrawSetString(playerid, BannedTD[playerid][14], TanggalStr);
				format(ReasonStr, sizeof ReasonStr, "Reason: %s", reason);
				PlayerTextDrawSetString(playerid, BannedTD[playerid][15], ReasonStr);
				format(DurasiStr, sizeof DurasiStr, "Durasi Blokir: %s", RemainingTimelapse(time));
				PlayerTextDrawSetString(playerid, BannedTD[playerid][16], DurasiStr);
				for(new i = 0; i < 22; i ++)
				{
					PlayerTextDrawShow(playerid, BannedTD[playerid][i]);
				}
				KickEx(playerid);
			}
		}
		// KickEx(playerid);
		return 1;
	}

	cache_delete(execute);
	return 0;
}

SQL_ReturnEscaped(const string[])
{
    new entry[256];
    mysql_escape_string(string, entry, sizeof(entry));
    return entry;
}

stock SQL_ReturnEscape(const string[])
{
    static escaped[256];
    new i = 0, j = 0;

    while (string[i] != '\0' && j < sizeof(escaped) - 1)
    {
        if (string[i] != '\'' && string[i] != '\"' && string[i] != ',') 
        {
            escaped[j++] = string[i];
        }
        i++;
    }
    escaped[j] = '\0'; 
    return escaped;
}

FadeIn(playerid)
{
    SetPlayerScreenColour(playerid, 0x000000FF);
    FadePlayerScreenColour(playerid, 0x00000000, 2000, 50); 
    return 1;
}


Blacklist_RemoveBan(const username[])
{
	mysql_tquery(g_SQL, sprintf("DELETE FROM `player_bans` WHERE `name` = '%e';", SQL_ReturnEscape(username)));
	return 1;
}

Blacklist_UCPExists(const type[], const target[])
{
	new Cache:execute;

	execute = mysql_query(g_SQL, sprintf("SELECT `%s` FROM `player_characters` WHERE `%s` = '%s' LIMIT 1;", type, type, target));

	if(cache_num_rows()) {
		cache_delete(execute);
		return 1;
	}
	cache_delete(execute);
	return 0;
}

Blacklist_Exists(const type[], const target[])
{
	new Cache:execute;

	execute = mysql_query(g_SQL, sprintf("SELECT `%s` FROM `player_bans` WHERE `%s` = '%s' LIMIT 1;", type, type, target));

	if(cache_num_rows()) {
		cache_delete(execute);
		return 1;
	}
	cache_delete(execute);
	return 0;
}

FUNC::WeatherRotator()
{
	new index = Random(sizeof(g_aWeatherRotations));

	SetWeather(g_aWeatherRotations[index]);
	WorldWeather = g_aWeatherRotations[index];
}
