#include <YSI\y_hooks>

stock StreamerConfig()
{
	Streamer_MaxItems(STREAMER_TYPE_OBJECT, 990000);
	Streamer_MaxItems(STREAMER_TYPE_MAP_ICON, 2000);
	Streamer_MaxItems(STREAMER_TYPE_PICKUP, 2000);
	for(new playerid = (GetMaxPlayers() - 1); playerid != -1; playerid--)
	{
		Streamer_DestroyAllVisibleItems(playerid, 0);
	}
	return 1;
}

GetPlayerRenderName(playerid)
{
	static frmtname[125];
	if(AccountData[playerid][pMapRender] == 250)
	{
		frmtname = ""RED"Very Low";
	}
	else if(AccountData[playerid][pMapRender] == 500)
	{
		frmtname = ""DARKORANGE"Low";
	}
	else if(AccountData[playerid][pMapRender] == 750)
	{
		frmtname = ""SKYBLUE"Medium";
	}
	else if(AccountData[playerid][pMapRender] == 1000)
	{
		frmtname = ""GREEN"High";
	}
	return frmtname;
}

/*CMD:setrender(playerid, params[])
{
	if(!SQL_IsCharacterLogged(playerid))
		return 0;
	
	ShowPlayerDialog(playerid, DIALOG_STREAMER_CONFIG, DIALOG_STYLE_TABLIST_HEADERS, ""TTR"Astral City Roleplay "WHITE"- Render Settings",
	"Jenis\tRadius\
	\nSoft\t300.0\
	\n"GRAY"Medium\t500.0\
	\nHigh\t1000.0 (default)", "Pilih", "Batal");
	return 1;
}*/

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	switch(dialogid)
	{
		case DIALOG_STREAMER_CONFIG:
		{
			if(!response) return ShowTDN(playerid, NOTIFICATION_INFO, "Anda telah membatalkan pilihan");
			switch(listitem)
			{
				case 0: // soft
				{
					AccountData[playerid][pMapSettings] = 0.25;
					AccountData[playerid][pMapRender] = 250;
					Streamer_SetVisibleItems(STREAMER_TYPE_OBJECT, AccountData[playerid][pMapRender], playerid);
					Streamer_SetRadiusMultiplier(STREAMER_TYPE_OBJECT, AccountData[playerid][pMapSettings], playerid);
					Streamer_Update(playerid, STREAMER_TYPE_OBJECT);
					Info(playerid, "Anda berhasil mengubah dynamic render object to "GREEN"Very Low");
				}
				case 1: // soft
				{
					AccountData[playerid][pMapSettings] = 0.5;
					AccountData[playerid][pMapRender] = 500;
					Streamer_SetVisibleItems(STREAMER_TYPE_OBJECT, AccountData[playerid][pMapRender], playerid);
					Streamer_SetRadiusMultiplier(STREAMER_TYPE_OBJECT, AccountData[playerid][pMapSettings], playerid);
					Streamer_Update(playerid, STREAMER_TYPE_OBJECT);
					Info(playerid, "Anda berhasil mengubah dynamic render object to "GREEN"Low");
				}
				case 2: //medium
				{
					AccountData[playerid][pMapSettings] = 1.0;
					AccountData[playerid][pMapRender] = 750;
					Streamer_SetVisibleItems(STREAMER_TYPE_OBJECT, AccountData[playerid][pMapRender], playerid);
					Streamer_SetRadiusMultiplier(STREAMER_TYPE_OBJECT, AccountData[playerid][pMapSettings], playerid);
					Streamer_Update(playerid, STREAMER_TYPE_OBJECT);
					Info(playerid, "Anda berhasil mengubah dynamic render object to "GREEN"Medium");
				}
				case 3: //High
				{
					AccountData[playerid][pMapSettings] = 2.0;
					AccountData[playerid][pMapRender] = 1000;
					Streamer_SetVisibleItems(STREAMER_TYPE_OBJECT, AccountData[playerid][pMapRender], playerid);
					Streamer_SetRadiusMultiplier(STREAMER_TYPE_OBJECT, AccountData[playerid][pMapSettings], playerid);
					Streamer_Update(playerid, STREAMER_TYPE_OBJECT);
					Info(playerid, "Anda berhasil mengubah dynamic render object to "GREEN"High");
				}
			}
		}
	}
	return 1;
}