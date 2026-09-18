#if defined GLOBALINSRANCE
    GLOBAL INSURANCE BY AHMAZUQI
    ~ Hapus Credits = Semoga pahala anda bertambah
#endif

#include <YSI_Coding\y_hooks>

#define Insu:: ins_
new Text: Insu::textdraw[6], Insu::End;

hook OnGameModeInit()
{
    Insu::global_td_create();
    return 1;
}

ins_global_td_create()
{
    Insu::textdraw[0] = TextDrawCreate(7.000, 241.000, "LD_BUM:blkdot");
    TextDrawTextSize(Insu::textdraw[0], 103.000, 54.000);
    TextDrawAlignment(Insu::textdraw[0], 1);
    TextDrawColor(Insu::textdraw[0], 255);
    TextDrawSetShadow(Insu::textdraw[0], 0);
    TextDrawSetOutline(Insu::textdraw[0], 0);
    TextDrawBackgroundColor(Insu::textdraw[0], 255);
    TextDrawFont(Insu::textdraw[0], 4);
    TextDrawSetProportional(Insu::textdraw[0], 1);

    Insu::textdraw[1] = TextDrawCreate(36.000, 244.000, "Global insurance");
    TextDrawLetterSize(Insu::textdraw[1], 0.159, 1.098);
    TextDrawAlignment(Insu::textdraw[1], 1);
    TextDrawColor(Insu::textdraw[1], -1);
    TextDrawSetShadow(Insu::textdraw[1], 0);
    TextDrawSetOutline(Insu::textdraw[1], 0);
    TextDrawBackgroundColor(Insu::textdraw[1], 150);
    TextDrawFont(Insu::textdraw[1], 1);
    TextDrawSetProportional(Insu::textdraw[1], 1);

    Insu::textdraw[2] = TextDrawCreate(24.000, 254.000, "silahkan masuk ke dalam kendaraan");
    TextDrawLetterSize(Insu::textdraw[2], 0.108, 1.098);
    TextDrawAlignment(Insu::textdraw[2], 1);
    TextDrawColor(Insu::textdraw[2], -1);
    TextDrawSetShadow(Insu::textdraw[2], 0);
    TextDrawSetOutline(Insu::textdraw[2], 0);
    TextDrawBackgroundColor(Insu::textdraw[2], 150);
    TextDrawFont(Insu::textdraw[2], 1);
    TextDrawSetProportional(Insu::textdraw[2], 1);

    Insu::textdraw[3] = TextDrawCreate(37.000, 262.000, "atau masukan ke garasi");
    TextDrawLetterSize(Insu::textdraw[3], 0.108, 1.098);
    TextDrawAlignment(Insu::textdraw[3], 1);
    TextDrawColor(Insu::textdraw[3], -1);
    TextDrawSetShadow(Insu::textdraw[3], 0);
    TextDrawSetOutline(Insu::textdraw[3], 0);
    TextDrawBackgroundColor(Insu::textdraw[3], 150);
    TextDrawFont(Insu::textdraw[3], 1);
    TextDrawSetProportional(Insu::textdraw[3], 1);

    Insu::textdraw[4] = TextDrawCreate(8.000, 221.000, "HUD:radar_impound");
    TextDrawTextSize(Insu::textdraw[4], 15.000, 22.000);
    TextDrawAlignment(Insu::textdraw[4], 1);
    TextDrawColor(Insu::textdraw[4], -1);
    TextDrawSetShadow(Insu::textdraw[4], 0);
    TextDrawSetOutline(Insu::textdraw[4], 0);
    TextDrawBackgroundColor(Insu::textdraw[4], 255);
    TextDrawFont(Insu::textdraw[4], 4);
    TextDrawSetProportional(Insu::textdraw[4], 1);

    Insu::textdraw[5] = TextDrawCreate(38.000, 276.000, "Menit:20 Detik:20");
    TextDrawLetterSize(Insu::textdraw[5], 0.140, 0.999);
    TextDrawAlignment(Insu::textdraw[5], 1);
    TextDrawColor(Insu::textdraw[5], 512819199);
    TextDrawSetShadow(Insu::textdraw[5], 0);
    TextDrawSetOutline(Insu::textdraw[5], 0);
    TextDrawBackgroundColor(Insu::textdraw[5], 150);
    TextDrawFont(Insu::textdraw[5], 1);
    TextDrawSetProportional(Insu::textdraw[5], 1);
}
CMD:avehall(playerid, params[])
{
	new times;
	if(CheckAdmin(playerid, 2))
		return PermissionError(playerid);
	
	if(g_AsuransiAll)
	{
		g_AsuransiAll = 0;
		g_AsuransiTime = 0;
		TextDrawHideForAll(gServerTextdraws[0]);
		return SendClientMessageToAllEx(-1, ""YELLOW"[!]"WHITE": Adm %s telah menunda waktu Asuransi Keliling!", GetAdminName(playerid));
	}
	if(sscanf(params, "d", times))
		return ShowTDN(playerid, NOTIFICATION_SYNTAX, "/avehall [seconds]");
	
	if(times < 5 || times > 600)
		return ShowTDN(playerid, NOTIFICATION_ERROR, "Waktu tidak bisa kurang dari 5 atau lebih dari 600!");
	
	g_AsuransiAll = 1;
	g_AsuransiTime = times;
    Insu::End = times;
	for(new Insu::loop; Insu::loop < sizeof(Insu::textdraw); Insu::loop++)
    {
        TextDrawShowForAll(Insu::textdraw[Insu::loop]);
    }
	SendClientMessageToAllEx(COLOR_WHITE, ""YELLOW"[Asuransi]"WHITE": %s telah memulai waktu Asuransi Keliling selama %d seconds", GetAdminName(playerid), times);
	return 1;
}

task AsuransiKeliling[1000]()
{
    if(g_AsuransiAll)
    {
        if(g_AsuransiTime == 0)
        {
            g_AsuransiAll = 0;
            g_AsuransiTime = 0;
            Insu::End = 0;

            for(new i = 0; i < sizeof(Insu::textdraw); i++)
                TextDrawHideForAll(Insu::textdraw[i]);

            SendClientMessageToAllEx(-1, ""YELLOW"[Asuransi]"WHITE": Terimakasih Asuransi Keliling Telah Selesai");
        }
        else
        {
            if(g_AsuransiTime == 1)
            {
                foreach(new i : PvtVehicles)
                {
                    if(!PlayerVehicle[i][pVehImpounded] && !PlayerVehicle[i][pVehInsuranced] &&
                        PlayerVehicle[i][pVehParked] < 0 && PlayerVehicle[i][pVehHelipadGarage] < 0 &&
                        PlayerVehicle[i][pVehHouseGarage] < 0 && PlayerVehicle[i][pVehFamiliesGarage] < 0 &&
                        PlayerVehicle[i][pVehFactStored] < 0)
                    {
                        if(PlayerVehicle[i][pVehRental] == -1)
                        {
                            if(IsVehicleEmpty(PlayerVehicle[i][pVehPhysic])) 
                            {
                                PlayerVehicle[i][pVehInsuranced] = true;
                                if(IsValidVehicle(PlayerVehicle[i][pVehPhysic])) 
                                    DestroyVehicle(PlayerVehicle[i][pVehPhysic]);
                                PlayerVehicle[i][pVehPhysic] = INVALID_VEHICLE_ID;
                            }
                        }
                        else
                        {
                            if(IsVehicleEmpty(PlayerVehicle[i][pVehPhysic]))
                            {
                                PlayerVehicle[i][pVehRental] = -1;
                                PlayerVehicle[i][pVehRentTime] = 0;
                                PlayerVehicle[i][pVehExists] = false;

                                foreach(new pid : Player)
                                {
                                    if(PlayerVehicle[i][pVehOwnerID] == AccountData[pid][pID])
                                    {
                                        Info(pid, "Kendaraan rental anda telah terkena asuransi keliling. Kendaraan otomatis dihilangkan!");
                                    }
                                }

                                if(IsValidVehicle(PlayerVehicle[i][pVehPhysic])) 
                                {
                                    DestroyVehicle(PlayerVehicle[i][pVehPhysic]);
                                    PlayerVehicle[i][pVehPhysic] = INVALID_VEHICLE_ID;
                                }

                                new cQuery[200];
                                mysql_format(g_SQL, cQuery, sizeof(cQuery), "DELETE FROM `player_vehicles` WHERE `id` = '%d'", PlayerVehicle[i][pVehID]);
                                mysql_tquery(g_SQL, cQuery);
                                Iter_Remove(PvtVehicles, i);
                            }
                        }
                    }
                }
            }

            new times[3];
            GetElapsedTime(g_AsuransiTime, times[0], times[1], times[2]);
            TextDrawSetString(Insu::textdraw[5], sprintf("Menit:%02d Detik:%02d", times[1], times[2]));
            TextDrawHideForAll(Insu::textdraw[4]);
            UpdateTextDrawPosition();

            g_AsuransiTime--;
        }
    }
    return 1;
}

stock UpdateTextDrawPosition()
{
    new Float:position,
        Float:StartPos = 8.0,
        Float:EndPos = 95.0;
    
    position = StartPos + ((EndPos - StartPos) * (1.0 - float(g_AsuransiTime) / Insu::End));

    if (position < StartPos) position = StartPos;
    if (position > EndPos) position = EndPos;

    TextDrawDestroy(Insu::textdraw[4]);
    Insu::textdraw[4] = TextDrawCreate(position, 221.000, "HUD:radar_impound");
    TextDrawTextSize(Insu::textdraw[4], 15.000, 22.000);
    TextDrawAlignment(Insu::textdraw[4], 1);
    TextDrawColor(Insu::textdraw[4], -1);
    TextDrawSetShadow(Insu::textdraw[4], 0);
    TextDrawSetOutline(Insu::textdraw[4], 0);
    TextDrawBackgroundColor(Insu::textdraw[4], 255);
    TextDrawFont(Insu::textdraw[4], 4);
    TextDrawSetProportional(Insu::textdraw[4], 1);
    TextDrawShowForAll(Insu::textdraw[4]);
}