#include <YSI_Coding\y_hooks>

new SelectCharTD[MAX_PLAYERS],
    STREAMER_TAG_ACTOR: SelectCharActor[MAX_PLAYERS][2],
    TempName[MAX_PLAYERS][32],
    TempDOB[MAX_PLAYERS][64],
    TempGender[MAX_PLAYERS][64],
    TempHeight[MAX_PLAYERS][64],
    TempWeight[MAX_PLAYERS][64],
    CurrentCharCam[MAX_PLAYERS],
    TempOrigin[MAX_PLAYERS][64];

hook OnPlayerConnect(playerid)
{
    CreateUi_CharSelect(playerid);
    SelectCharTD[playerid] = 0;
    TempName[playerid][0] = EOS;
    TempDOB[playerid][0] = EOS;
    TempGender[playerid][0] = EOS;
    TempHeight[playerid][0] = EOS;
    TempWeight[playerid][0] = EOS;
    TempOrigin[playerid][0] = EOS;
    return 1;
}

hook OnPlayerDisconnect(playerid, reason)
{
    DestroyUi_CharSelect(playerid);

    for(new i = 0; i < 2; i++)
    {
        if(IsValidDynamicActor(SelectCharActor[playerid][i]))
        {
            DestroyDynamicActor(SelectCharActor[playerid][i]);
            SelectCharActor[playerid][i] = STREAMER_TAG_ACTOR: INVALID_STREAMER_ID;
        }
    }

    TempName[playerid][0]   = EOS;
    TempDOB[playerid][0]    = EOS;
    TempGender[playerid][0] = EOS;
    TempHeight[playerid][0] = EOS;
    TempWeight[playerid][0] = EOS;
    TempOrigin[playerid][0] = EOS;

    return 1;
}

BlacklistChar_Check(playerid, const type[], target[])
{
	new Cache:execute;

	execute = mysql_query(g_SQL, sprintf("SELECT * FROM `player_bans` WHERE `%s` = '%s' LIMIT 1;", type, target));

	new time;
	new reason[128], ip[16], username[MAX_PLAYER_NAME], banby[MAX_PLAYER_NAME];

	if(cache_num_rows())
	{
		time = cache_get_field_int(0, "ban_expire");

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
			SendClientMessage(playerid, X11_DARKRED, "[i] Character Anda diblokir dari server.");
		}
		// KickEx(playerid);
		return 1;
	}

	cache_delete(execute);
	return 0;
}

stock DialogAddChar(playerid)
{
    Dialog_Show(playerid, CreateCharNew, DIALOG_STYLE_TABLIST_HEADERS, ""TTR""SERVER_NAME""WHITE" - Create Characters",
    "Catalogs\tParameters\
    \nName:\t"YELLOW"%s\
    \n"GRAY"Date Of Birthday:\t"YELLOW"%s\
    \nGender:\t"YELLOW"%s\
    \n"GRAY"Height:\t"YELLOW"%s\
    \nWeight:\t"YELLOW"%s\
    \n"GRAY"Origin:\t"YELLOW"%s\
    \n+ Create Characters", "Create", "Cancel", 
        TempName[playerid],
        TempDOB[playerid],
        TempGender[playerid],
        TempHeight[playerid],
        TempWeight[playerid],
        TempOrigin[playerid]
    );
    return 1;
}

UpdateCharSelectString(playerid)
{
    for(new i = 0; i < 2; i++)
    {
        if(IsValidDynamicActor(SelectCharActor[playerid][i]))
        {
            DestroyDynamicActor(SelectCharActor[playerid][i]);
            SelectCharActor[playerid][i] = STREAMER_TAG_ACTOR: INVALID_STREAMER_ID;
        }
    }

    new world = GetPlayerVirtualWorld(playerid);
    new interior = GetPlayerInterior(playerid);

    if(PlayerChar[playerid][0][0] != EOS)
    {
        SelectCharActor[playerid][0] = CreateDynamicActor(PlayerCharSkin[playerid][0], 406.788, -2083.737, 7.874, 239.980, 1, 200.0, world, interior, -1, 200.0, -1, 0);
        ApplyDynamicActorAnimation(SelectCharActor[playerid][0], "ped", "SEAT_down", 4.1, 0, 0, 0, 1, 0);
    }

    if(PlayerChar[playerid][1][0] != EOS)
    {
        SelectCharActor[playerid][1] = CreateDynamicActor(PlayerCharSkin[playerid][1], 414.240, -2054.916, 6.960, 4.688, 1, 200.0, world, interior, -1, 200.0, -1, 0);
        ApplyDynamicActorAnimation(SelectCharActor[playerid][1], "SWORD", "sword_block", 4.1, 0, 0, 0, 1, 0);
    }
    
    if(PlayerChar[playerid][0][0] != EOS)
    {
        if(!BlacklistChar_Check(playerid, "name", PlayerChar[playerid][0]))
            PlayerTextDrawSetString(playerid, Ui_CharSelect[playerid][6], PlayerChar[playerid][0]);
        else
            PlayerTextDrawSetString(playerid, Ui_CharSelect[playerid][6], sprintf("%s ~r~[ON BANNED]", PlayerChar[playerid][0]));
    }
    else PlayerTextDrawSetString(playerid, Ui_CharSelect[playerid][6], "Create New Characters");
    PlayerTextDrawShow(playerid, Ui_CharSelect[playerid][6]);

    if(PlayerChar[playerid][1][0] != EOS)
    {
        if(!BlacklistChar_Check(playerid, "name", PlayerChar[playerid][1]))
            PlayerTextDrawSetString(playerid, Ui_CharSelect[playerid][7], PlayerChar[playerid][1]);
        else
            PlayerTextDrawSetString(playerid, Ui_CharSelect[playerid][7], sprintf("%s ~r~[ON BANNED]", PlayerChar[playerid][1]));
    }
    else PlayerTextDrawSetString(playerid, Ui_CharSelect[playerid][7], "Create New Characters");
    PlayerTextDrawShow(playerid, Ui_CharSelect[playerid][7]);

    if(PlayerChar[playerid][0][0] == EOS && PlayerChar[playerid][1][0] == EOS)
        PlayerTextDrawSetString(playerid, Ui_CharSelect[playerid][1], "0/2 Characters");
    else
        PlayerTextDrawSetString(playerid, Ui_CharSelect[playerid][1], sprintf("%d/2 Characters", GetPVarInt(playerid, "CCount") + 1));
    PlayerTextDrawShow(playerid, Ui_CharSelect[playerid][1]);

    Streamer_Update(playerid, STREAMER_TYPE_ACTOR);
    return 1;
}

hook ClickDynPlayerTextdraw(playerid, PlayerText:playertextid)
{
    if(playertextid == Ui_CharSelect[playerid][4])
    {
        SelectCharTD[playerid] = 0;

        if(CurrentCharCam[playerid] != 0)
        {
            InterpolateCameraPos(playerid,416.53, -2051.10, 8.04, 409.95, -2087.60, 8.85,2000, CAMERA_MOVE);
            InterpolateCameraLookAt(playerid,416.24, -2052.04, 7.86,  409.31, -2086.89, 8.58,2000, CAMERA_MOVE);

            CurrentCharCam[playerid] = 0;
        }
        if(PlayerChar[playerid][0][0] == EOS)
            PlayerTextDrawSetString(playerid, Ui_CharSelect[playerid][9], "Create");
        else
            PlayerTextDrawSetString(playerid, Ui_CharSelect[playerid][9], "Spawn");
    }
    else if(playertextid == Ui_CharSelect[playerid][5])
    {
        SelectCharTD[playerid] = 1;

        if(CurrentCharCam[playerid] != 1)
        {
            InterpolateCameraPos(playerid,409.95, -2087.60, 8.85, 416.53, -2051.10, 8.04,2000, CAMERA_MOVE);
            InterpolateCameraLookAt(playerid,409.31, -2086.89, 8.58, 416.24, -2052.04, 7.86,2000, CAMERA_MOVE);

            CurrentCharCam[playerid] = 1;
        }
        if(PlayerChar[playerid][1][0] == EOS)
            PlayerTextDrawSetString(playerid, Ui_CharSelect[playerid][9], "Create");
        else
            PlayerTextDrawSetString(playerid, Ui_CharSelect[playerid][9], "Spawn");
    }
    else if(playertextid == Ui_CharSelect[playerid][8]) 
    {
        if(SelectCharTD[playerid] == -1)
            return Error(playerid, "Pilih slot karakter dulu!");

        if(PlayerChar[playerid][SelectCharTD[playerid]][0] == EOS) 
        {
            RegisterAstralCity(playerid);
            for(new i = 0; i < 10; i++) PlayerTextDrawHide(playerid, Ui_CharSelect[playerid][i]);
            return 1;
        }

        for(new i = 0, j = GetPlayerPoolSize(); i <= j; i++) 
        {
            if(AccountData[i][pUCP][0] != EOS && !strcmp(AccountData[i][pUCP], ReturnName(playerid)) && i != playerid)
            {
                Error(playerid, "Seseorang sedang login menggunakan UCP yang sama.");
                KickEx(playerid);
                return 1;
            }
        }

        for(new i = 0; i < 10; i ++) 
            PlayerTextDrawHide(playerid, Ui_CharSelect[playerid][i]);

        AccountData[playerid][pChar] = SelectCharTD[playerid];
        SetPlayerName(playerid, PlayerChar[playerid][SelectCharTD[playerid]]);

        for(new i = 0; i < 2; i++)
        {
            if(IsValidDynamicActor(SelectCharActor[playerid][i]))
            {
                DestroyDynamicActor(SelectCharActor[playerid][i]);
                SelectCharActor[playerid][i] = STREAMER_TAG_ACTOR: INVALID_STREAMER_ID;
            }
        }
        
        if(!Blacklist_Check(playerid, "name", PlayerChar[playerid][SelectCharTD[playerid]])) {
            mysql_tquery(g_SQL, sprintf("SELECT * FROM `player_characters` WHERE `Char_Name` = '%s' LIMIT 1;", PlayerChar[playerid][AccountData[playerid][pChar]]), "LoadPlayerData", "d", playerid);
        }
        SetPlayerColor(playerid, X11_WHITE);
        CancelSelectTextDraw(playerid);
        StopStream(playerid);
    }
    //Td Create Character
    if(playertextid == Ui_Createcharacter[playerid][2]) // name
    {
        Dialog_Show(playerid, DialogMakeChar, DIALOG_STYLE_INPUT, ""TTR"AstralCity Roleplay "WHITE"- Pembuatan Karakter",
        ""WHITE"Selamat Datang di "TTR"AstralCity Roleplay\n"WHITE"Sebelum bermain anda harus membuat karakter terlebih dahulu\
        \nMasukkan nama karakter hanya dengan nama orang Indonesia\nCth: Dudung_Sutarman, Aldy_Firmansyah", "Input", "");
    }
    if(playertextid == Ui_Createcharacter[playerid][3]) // Origin
    {
        new szList[4096];
        szList[0] = EOS;
        for(new i = 0; i < sizeof(_g_originName); i++)
        {
            format(szList, sizeof(szList), "%s%s\n", szList, _g_originName[i]);
        }
        Dialog_Show(playerid, DialogOrigin, DIALOG_STYLE_LIST, ""TTR"AstralCity Roleplay "WHITE"- Negara Kelahiran",
            szList, "Pilih", "Kembali");
    }
    if(playertextid == Ui_Createcharacter[playerid][4]) // Berat badan
    {
        Dialog_Show(playerid, DialogWeight, DIALOG_STYLE_INPUT, ""TTR"AstralCity Roleplay "WHITE" - Berat Badan (kg)", 
        "Mohon masukkan berat badan (kg) karakter!\nPerhatian: Format hanya berupa angka satuan kg (cth: 70).", "Input", "");
    }
    if(playertextid == Ui_Createcharacter[playerid][5]) // Tinggi badan
    {
        Dialog_Show(playerid, DialogHeight, DIALOG_STYLE_INPUT, ""TTR"AstralCity Roleplay "WHITE" - Tinggi Badan (cm)", 
        "Mohon masukkan tinggi badan (cm) karakter!\
        \nPerhatian: Format hanya berupa angka satuan cm (cth: 170).", "Input", "");
    }
    if(playertextid == Ui_Createcharacter[playerid][6]) // Tanggal lahir
    {
        Dialog_Show(playerid, DialogAge, DIALOG_STYLE_INPUT, ""TTR"AstralCity Roleplay "WHITE"- Tanggal Lahir", 
        "Mohon masukkan tanggal lahir sesuai format hh/bb/tttt cth: (25/09/2001)", "Input", "");
    }
    if(playertextid == Ui_Createcharacter[playerid][7]) // Create
    {
        if(!GetPVarInt(playerid, "CreateName")) {
            Error(playerid, "Anda belum membuat nama!");
            return RegisterAstralCity(playerid);
        }
        else if(!GetPVarInt(playerid, "CreateOrigin")) {
            Error(playerid, "Anda belum memasukkan origin!");
            return RegisterAstralCity(playerid);
        }
        else if(!GetPVarInt(playerid, "CreateAge")) {
            Error(playerid, "Anda belum memasukkan tanggal lahir!");
            return RegisterAstralCity(playerid);
        }
        else if(!GetPVarInt(playerid, "CreateHeight")) {
            Error(playerid, "Anda belum memasukkan tinggi badan!");
            return RegisterAstralCity(playerid);
        }
        else if(!GetPVarInt(playerid, "CreateWeight")) {
            Error(playerid, "Anda belum memasukkan berat badan!");
            return RegisterAstralCity(playerid);
        }
        else if(!GetPVarInt(playerid, "CreateGender")) {
            Error(playerid, "Anda belum memilih jenis kelamin!");
            return RegisterAstralCity(playerid);
        }

        new characterQuery[178];
        if(GetPVarInt(playerid, "CreateName") && GetPVarInt(playerid, "CreateGender") && GetPVarInt(playerid, "CreateOrigin") && GetPVarInt(playerid, "CreateAge") && GetPVarInt(playerid, "CreateHeight") && GetPVarInt(playerid, "CreateWeight"))
        {
            mysql_format(g_SQL, characterQuery, sizeof(characterQuery), "INSERT INTO `player_characters` (`Char_Name`, `Char_UCP`, `Char_RegisterDate`) VALUES ('%e', '%e', CURRENT_TIMESTAMP())", AccountData[playerid][pTempName], AccountData[playerid][pUCP]);
            mysql_tquery(g_SQL, characterQuery, "OnPlayerRegister", "d", playerid);
            SetPlayerName(playerid, AccountData[playerid][pTempName]);
            HideRegister(playerid);
        }
    }
    if(playertextid == Ui_Createcharacter[playerid][8]) // Female
    {
        AccountData[playerid][pGender] = 2;   // 2 = Female
        AccountData[playerid][pSkin]   = 193; // Default skin Female
        SetPVarInt(playerid, "CreateGender", 1);

        format(TempGender[playerid], 128, "Perempuan");
        Info(playerid, "Anda berhasil memilih gender Perempuan");

        RegisterAstralCity(playerid);
        PlayerTextDrawHide(playerid, Ui_Createcharacter[playerid][8]);
        PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][8], 0x0080FFFF);
        PlayerTextDrawShow(playerid, Ui_Createcharacter[playerid][8]);
        PlayerTextDrawHide(playerid, Ui_Createcharacter[playerid][9]);
        PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][9], 140);
        PlayerTextDrawShow(playerid, Ui_Createcharacter[playerid][9]);
    }
    if(playertextid == Ui_Createcharacter[playerid][9]) // Male
    {
        AccountData[playerid][pGender] = 1;   // 1 = Male
        AccountData[playerid][pSkin]   = 59;  // Default skin Male
        SetPVarInt(playerid, "CreateGender", 1);

        format(TempGender[playerid], 128, "Laki-Laki");
        Info(playerid, "Anda berhasil memilih gender Laki-Laki");

        RegisterAstralCity(playerid);
        PlayerTextDrawHide(playerid, Ui_Createcharacter[playerid][8]);
        PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][8], 140);
        PlayerTextDrawShow(playerid, Ui_Createcharacter[playerid][8]);
        PlayerTextDrawHide(playerid, Ui_Createcharacter[playerid][9]);
        PlayerTextDrawColor(playerid, Ui_Createcharacter[playerid][9], 0x0080FFFF);
        PlayerTextDrawShow(playerid, Ui_Createcharacter[playerid][9]);
    }
    return 1;
}

forward InsertPlayerName2(playerid, const name[]);
public InsertPlayerName2(playerid, const name[])
{
	new rows = cache_num_rows();
	if(rows > 0)
	{
		Dialog_Show(playerid, DialogMakeChar, DIALOG_STYLE_INPUT, ""TTR"AstralCity Roleplay "WHITE"- Pembuatan Karakter",
		""RED"Error:"WHITE" Nama tersebut telah digunakan orang lain!\n"WHITE"Selamat Datang di "TTR"AstralCity Roleplay\n"WHITE"Sebelum bermain anda harus membuat karakter anda terlebih dahulu\nMasukkan nama karakter hanya dengan nama orang Indonesia!\nContoh: Rey_Simanjuntak, Sujiwo_Atmaja, etc", "Input", "Batal");
	}
	else
	{
		SetPVarInt(playerid, "CreateName", 1);
		format(AccountData[playerid][pTempName], MAX_PLAYER_NAME, name);
        format(TempName[playerid], MAX_PLAYER_NAME, name);
		RegisterAstralCity(playerid);
	}
	return 1;
}

Dialog:CreateCharNew(playerid, response, listitem, inputtext[])
{
    if(!response) return 1;
    switch(listitem)
    {
        case 0: // Nama
        {
            Dialog_Show(playerid, DialogMakeChar, DIALOG_STYLE_INPUT, ""TTR"AstralCity Roleplay "WHITE"- Pembuatan Karakter",
			""WHITE"Selamat Datang di "TTR"AstralCity Roleplay\n"WHITE"Sebelum bermain anda harus membuat karakter terlebih dahulu\
			\nMasukkan nama karakter hanya dengan nama orang Indonesia\nCth: Dudung_Sutarman, Aldy_Firmansyah", "Input", "");
        }
        case 1: // Umur
        {
            Dialog_Show(playerid, DialogAge, DIALOG_STYLE_INPUT, ""TTR"AstralCity Roleplay "WHITE"- Tanggal Lahir", 
            "Mohon masukkan tanggal lahir sesuai format hh/bb/tttt cth: (25/09/2001)", "Input", "");
        }
        case 2: // Gender
        {
            Dialog_Show(playerid, DialogGender, DIALOG_STYLE_LIST, ""TTR"AstralCity Roleplay "WHITE"- Jenis Kelamin", 
            "Laki-Laki\
            \n"GRAY"Perempuan", "Pilih", "");
        }
        case 3: // Tinggi Badan
        {
            Dialog_Show(playerid, DialogHeight, DIALOG_STYLE_INPUT, ""TTR"AstralCity Roleplay "WHITE" - Tinggi Badan (cm)", 
            "Mohon masukkan tinggi badan (cm) karakter!\
            \nPerhatian: Format hanya berupa angka satuan cm (cth: 170).", "Input", "");
        }
        case 4: // Berat Badan
        {
            Dialog_Show(playerid, DialogWeight, DIALOG_STYLE_INPUT, ""TTR"AstralCity Roleplay "WHITE" - Berat Badan (kg)", 
            "Mohon masukkan berat badan (kg) karakter!\nPerhatian: Format hanya berupa angka satuan kg (cth: 70).", "Input", "");
        }
        case 5: // Origin
        {
            new szList[4096];
            szList[0] = EOS;
            for(new i = 0; i < sizeof(_g_originName); i++)
            {
                format(szList, sizeof(szList), "%s%s\n", szList, _g_originName[i]);
            }
            Dialog_Show(playerid, DialogOrigin, DIALOG_STYLE_LIST, ""TTR"AstralCity Roleplay "WHITE"- Negara Kelahiran",
                szList, "Pilih", "Kembali");
        }
        case 6: // Create
        {
            if(!GetPVarInt(playerid, "CreateName")) {
                Error(playerid, "Anda belum membuat nama!");
                return RegisterAstralCity(playerid);
            }
            else if(!GetPVarInt(playerid, "CreateOrigin")) {
                Error(playerid, "Anda belum memasukkan origin!");
                return RegisterAstralCity(playerid);
            }
            else if(!GetPVarInt(playerid, "CreateAge")) {
                Error(playerid, "Anda belum memasukkan tanggal lahir!");
                return RegisterAstralCity(playerid);
            }
            else if(!GetPVarInt(playerid, "CreateHeight")) {
                Error(playerid, "Anda belum memasukkan tinggi badan!");
                return RegisterAstralCity(playerid);
            }
            else if(!GetPVarInt(playerid, "CreateWeight")) {
                Error(playerid, "Anda belum memasukkan berat badan!");
                return RegisterAstralCity(playerid);
            }
            else if(!GetPVarInt(playerid, "CreateGender")) {
                Error(playerid, "Anda belum memilih jenis kelamin!");
                return RegisterAstralCity(playerid);
            }

            new characterQuery[178];
            if(GetPVarInt(playerid, "CreateName") && GetPVarInt(playerid, "CreateGender") && GetPVarInt(playerid, "CreateOrigin") && GetPVarInt(playerid, "CreateAge") && GetPVarInt(playerid, "CreateHeight") && GetPVarInt(playerid, "CreateWeight"))
            {
                mysql_format(g_SQL, characterQuery, sizeof(characterQuery), "INSERT INTO `player_characters` (`Char_Name`, `Char_UCP`, `Char_RegisterDate`) VALUES ('%e', '%e', CURRENT_TIMESTAMP())", AccountData[playerid][pTempName], AccountData[playerid][pUCP]);
                mysql_tquery(g_SQL, characterQuery, "OnPlayerRegister", "d", playerid);
                SetPlayerName(playerid, AccountData[playerid][pTempName]);
            }
        }
    }
    return 1;
}

Dialog:DialogMakeChar(playerid, response, listitem, inputtext[])
{
    if(!response) {
        return RegisterAstralCity(playerid);
    }
    
    new shstr[596];
    format(shstr, sizeof(shstr), ""WHITE"Selamat datang di "TTR"AstralCity Roleplay\nSebelum bermain anda harus membuat karakter terlebih dahulu\
    \nMasukkan nama karakter hanya dengan nama orang indonesia\n\nCth: Ucok_Siregar, Dadang_Sucipto");

    if(strlen(inputtext) < 1 || strlen(inputtext) > 24)
    {
        Dialog_Show(playerid, DialogMakeChar, DIALOG_STYLE_INPUT, ""TTR"AstralCity Roleplay "WHITE"- Pembuatan Karakter", 
        ""WHITE"Selamat datang di "TTR"AstralCity Roleplay\n"WHITE"Error: Nama tidak dapat kurang dari 1 huruf atau lebih dari 24\nSebelum bermain anda harus membuat karakter terlebih dahulu\
        \nMasukkan nama karakter hanya dengan nama orang indonesia\n\nCth: Ucok_Siregar, Dadang_Sucipto", "Input", "Kembali");
        return 1;
    }

    if(!IsValidRoleplayName(inputtext))
    {
        Dialog_Show(playerid, DialogMakeChar, DIALOG_STYLE_INPUT, ""TTR"AstralCity Roleplay "WHITE"- Pembuatan Karakter", 
        ""WHITE"Selamat datang di "TTR"AstralCity Roleplay\n"WHITE"Error: Nama tidak valid!\nSebelum bermain anda harus membuat karakter terlebih dahulu\
        \nMasukkan nama karakter hanya dengan nama orang indonesia\n\nCth: Ucok_Siregar, Dadang_Sucipto", "Input", "Kembali");
        return 1;
    }

    new cQuery[225];
    mysql_format(g_SQL, cQuery, sizeof(cQuery), "SELECT * FROM `player_characters` WHERE `Char_Name` = '%e'", inputtext);
    mysql_tquery(g_SQL, cQuery, "InsertPlayerName2", "ds", playerid, inputtext);
    format(AccountData[playerid][pUCP], 22, GetName(playerid));
    PlayerTextDrawSetString(playerid, Ui_Createcharacter[playerid][26], inputtext);
    return 1;
}

Dialog:DialogAge(playerid, response, listitem, inputtext[])
{
    if(!response) {
        return RegisterAstralCity(playerid);
    }

    new
        iDay,
        iMonth,
        iYear,
        day,
        month,
        year;
        
    getdate(year, month, day);

    static const
            arrMonthDays[] = {31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

    if(sscanf(inputtext, "p</>ddd", iDay, iMonth, iYear)) {
        Dialog_Show(playerid, DialogAge, DIALOG_STYLE_INPUT, ""TTR"AstralCity Roleplay "WHITE"- Tanggal Lahir", "Mohon masukkan tanggal lahir sesuai format hh/bb/tttt cth: (25/09/2001)", "Input", "");
    }
    else if(iYear < 1900 || iYear > year) {
        Dialog_Show(playerid, DialogAge, DIALOG_STYLE_INPUT, ""TTR"AstralCity Roleplay "WHITE"- Tahun Lahir", "ERROR: Invalid Tahun Lahir\nMohon masukkan tanggal lahir sesuai format hh/bb/tttt cth: (25/09/2001)", "Input", "");
    }
    else if(iMonth < 1 || iMonth > 12) {
        Dialog_Show(playerid, DialogAge, DIALOG_STYLE_INPUT, ""TTR"AstralCity Roleplay "WHITE"- Bulan Lahir", "ERROR: Invalid Bulan Lahir\nMohon masukkan tanggal lahir sesuai format hh/bb/tttt cth: (25/09/2001)", "Input", "");
    }
    else if(iDay < 1 || iDay > arrMonthDays[iMonth - 1]) {
        Dialog_Show(playerid, DialogAge, DIALOG_STYLE_INPUT, ""TTR"AstralCity Roleplay "WHITE"- Tanggal Lahir", "ERROR: Invalid Tanggal Lahir\nMohon masukkan tanggal lahir sesuai format hh/bb/tttt cth: (25/09/2001)", "Input", "");
    }
    else 
    {
        SetPVarInt(playerid, "CreateAge", 1);
        format(AccountData[playerid][pAge], 50, inputtext);
        format(TempDOB[playerid], 50, inputtext);
        PlayerTextDrawSetString(playerid, Ui_Createcharacter[playerid][30], TempDOB[playerid]);
        RegisterAstralCity(playerid);
    }
    return 1;
}

Dialog:DialogGender(playerid, response, listitem, inputtext[])
{
    if(!response) {
        return RegisterAstralCity(playerid);
    }

    AccountData[playerid][pGender] = listitem + 1;
    AccountData[playerid][pSkin] = (listitem) ? (193) : (59);

    SetPVarInt(playerid, "CreateGender", 1);
    format(TempGender[playerid], 128, "%s", listitem ? "Perempuan" : "Laki-Laki");
    Info(playerid, "Anda berhasil memilih gender %s", listitem ? "Perempuan" : "Laki-Laki");
    RegisterAstralCity(playerid);
    return 1;
}

Dialog:DialogHeight(playerid, response, listitem, inputtext[])
{
    if(!response) {
        return RegisterAstralCity(playerid);
    }

    new tinggi = floatround(strval(inputtext));
    if(isnull(inputtext) || !IsNumeric(inputtext))
    {
        return Dialog_Show(playerid, DialogHeight, DIALOG_STYLE_INPUT, ""TTR"AstralCity Roleplay "WHITE" - Tinggi Badan (cm)", 
        "Error: Format hanya berupa angka satuan cm!\nMohon masukkan tinggi badan (cm) karakter!\nPerhatian: Format hanya berupa angka satuan cm (cth: 163).", "Input", "");
    }
    
    if(tinggi <= 150 || tinggi >= 200)
    {
        return Dialog_Show(playerid, DialogHeight, DIALOG_STYLE_INPUT, ""TTR"AstralCity Roleplay "WHITE" - Tinggi Badan (cm)", 
        "Error: Tinggi minimal 150 cm dan maksimal 200cm!\nMohon masukkan tinggi badan (cm) karakter!\nPerhatian: Format hanya berupa angka satuan cm (cth: 163).", "Input", "");
    }

    AccountData[playerid][pTinggiBadan] = tinggi;
    format(TempHeight[playerid], 64, "%scm", inputtext);
    SetPVarInt(playerid, "CreateHeight", 1);
    PlayerTextDrawSetString(playerid, Ui_Createcharacter[playerid][29], TempHeight[playerid]);
    RegisterAstralCity(playerid);
    return 1;
}

Dialog:DialogWeight(playerid, response, listitem, inputtext[])
{
    if(!response) {
        return RegisterAstralCity(playerid);
    }

    new berat = floatround(strval(inputtext));
    if(isnull(inputtext) || !IsNumeric(inputtext))
        return Dialog_Show(playerid, DialogWeight, DIALOG_STYLE_INPUT, ""TTR"AstralCity Roleplay "WHITE" - Berat Badan (kg)", "Mohon masukkan berat badan (kg) karakter!\nPerhatian: Format hanya berupa angka satuan kg (cth: 75).", "Input", "");
    
    if(berat <= 40)
        return Dialog_Show(playerid, DialogWeight, DIALOG_STYLE_INPUT, ""TTR"AstralCity Roleplay "WHITE" - Berat Badan (kg)", "Tidak dapat dibawah 40kg!", "Input", "");

    if(berat >= 95)
        return Dialog_Show(playerid, DialogWeight, DIALOG_STYLE_INPUT, ""TTR"AstralCity Roleplay "WHITE" - Berat Badan (kg)", "Tidak dapat diatas 95kg!", "Input", "");

    AccountData[playerid][pBeratBadan] = berat;
    SetPVarInt(playerid, "CreateWeight", 1);
    format(TempWeight[playerid], 64, "%skg", inputtext);
    PlayerTextDrawSetString(playerid, Ui_Createcharacter[playerid][28], TempWeight[playerid]);
    RegisterAstralCity(playerid);
    return 1;
}

Dialog:DialogOrigin(playerid, response, listitem, inputtext[])
{
    if(!response) return RegisterAstralCity(playerid);

    if(listitem >= 0 && listitem < sizeof(_g_originName))
    {
        format(AccountData[playerid][pOrigin], 32, "%s", _g_originName[listitem]);
        SetPVarInt(playerid, "CreateOrigin", 1);
        format(TempOrigin[playerid], 128, "%s", _g_originName[listitem]);
        PlayerTextDrawSetString(playerid, Ui_Createcharacter[playerid][27], TempOrigin[playerid]),
        RegisterAstralCity(playerid);
    }
    return 1;
}