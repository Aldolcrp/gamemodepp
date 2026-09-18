#include <YSI_Coding\y_hooks>

new PlayerText:Vehicle_List[MAX_PLAYERS][5][4];
new listCar[MAX_PLAYERS][5];

HideVehicleList(playerid) 
{
    for(new i = 0; i < 5; i++) 
    {
        for(new j = 0; j < 4; j++) 
        {
            PlayerTextDrawHide(playerid, Vehicle_List[playerid][i][j]);
        }
    }
}


ShowVehicleList(playerid, idx) 
{
    for(new j = 0; j < 4; j++) 
    {
        PlayerTextDrawShow(playerid, Vehicle_List[playerid][idx][j]);
    }
}

CreateVehicleList(playerid) 
{
    for(new idx = 0; idx < 5; idx++) {
        new Float:y = (idx * 33.0);

        Vehicle_List[playerid][idx][0] = CreatePlayerTextDraw(playerid, 478.000, 169.000 + y, "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, Vehicle_List[playerid][idx][0], 107.000, 30.000);
        PlayerTextDrawAlignment(playerid, Vehicle_List[playerid][idx][0], 1);
        PlayerTextDrawColor(playerid, Vehicle_List[playerid][idx][0], 11775);
        PlayerTextDrawSetShadow(playerid, Vehicle_List[playerid][idx][0], 0);
        PlayerTextDrawSetOutline(playerid, Vehicle_List[playerid][idx][0], 0);
        PlayerTextDrawBackgroundColor(playerid, Vehicle_List[playerid][idx][0], 255);
        PlayerTextDrawFont(playerid, Vehicle_List[playerid][idx][0], 4);
        PlayerTextDrawSetProportional(playerid, Vehicle_List[playerid][idx][0], 1);
        PlayerTextDrawSetSelectable(playerid, Vehicle_List[playerid][idx][0], 1);

        Vehicle_List[playerid][idx][1] = CreatePlayerTextDraw(playerid, 480.000, 183.000 + y, "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, Vehicle_List[playerid][idx][1], 103.000, 1.000);
        PlayerTextDrawAlignment(playerid, Vehicle_List[playerid][idx][1], 1);
        PlayerTextDrawColor(playerid, Vehicle_List[playerid][idx][1], 421084415);
        PlayerTextDrawSetShadow(playerid, Vehicle_List[playerid][idx][1], 0);
        PlayerTextDrawSetOutline(playerid, Vehicle_List[playerid][idx][1], 0);
        PlayerTextDrawBackgroundColor(playerid, Vehicle_List[playerid][idx][1], 255);
        PlayerTextDrawFont(playerid, Vehicle_List[playerid][idx][1], 4);
        PlayerTextDrawSetProportional(playerid, Vehicle_List[playerid][idx][1], 1);

        Vehicle_List[playerid][idx][2] = CreatePlayerTextDraw(playerid, 529.000, 171.000 + y, "Sultan (-)");
        PlayerTextDrawLetterSize(playerid, Vehicle_List[playerid][idx][2], 0.150, 0.699);
        PlayerTextDrawAlignment(playerid, Vehicle_List[playerid][idx][2], 2);
        PlayerTextDrawColor(playerid, Vehicle_List[playerid][idx][2], 1768516095);
        PlayerTextDrawSetShadow(playerid, Vehicle_List[playerid][idx][2], 0);
        PlayerTextDrawSetOutline(playerid, Vehicle_List[playerid][idx][2], 0);
        PlayerTextDrawBackgroundColor(playerid, Vehicle_List[playerid][idx][2], 150);
        PlayerTextDrawFont(playerid, Vehicle_List[playerid][idx][2], 1);
        PlayerTextDrawSetProportional(playerid, Vehicle_List[playerid][idx][2], 1);

        Vehicle_List[playerid][idx][3] = CreatePlayerTextDraw(playerid, 530.000, 187.000 + y, "Status: Spawned");
        PlayerTextDrawLetterSize(playerid, Vehicle_List[playerid][idx][3], 0.140, 0.699);
        PlayerTextDrawAlignment(playerid, Vehicle_List[playerid][idx][3], 2);
        PlayerTextDrawColor(playerid, Vehicle_List[playerid][idx][3], 1768516095);
        PlayerTextDrawSetShadow(playerid, Vehicle_List[playerid][idx][3], 0);
        PlayerTextDrawSetOutline(playerid, Vehicle_List[playerid][idx][3], 0);
        PlayerTextDrawBackgroundColor(playerid, Vehicle_List[playerid][idx][3], 150);
        PlayerTextDrawFont(playerid, Vehicle_List[playerid][idx][3], 1);
        PlayerTextDrawSetProportional(playerid, Vehicle_List[playerid][idx][3], 1);

    }
}

hook OnPlayerConnect(playerid) 
{
    CreateVehicleList(playerid);
    return 1;
}

stock SyncVehiclePage(playerid) 
{
	new query[156];
	mysql_format(g_SQL, query, sizeof(query), "SELECT * FROM `player_vehicles` WHERE `PVeh_OwnerID` = '%d'", AccountData[playerid][pID]);
	mysql_tquery(g_SQL, query, "OnSyncVehiclePhone", "d", playerid);
}

function OnSyncVehiclePhone(playerid) {

    new page = pageVehicle[playerid],
        index = page * 5, count = 0;

	new Vehicle_Status[5][64],
		Vehicle_Info[5][64],
		Vehicle_Id[5];


	HideVehicleList(playerid);

	for(new i = 0; i < 5; i++) {
		Vehicle_Id[i] = 0;
        listCar[playerid][i] = INVALID_VEHICLE_ID;
	}

	new ii = 0;

	if(cache_num_rows()) {

		for(new i = index; i < cache_num_rows(); i++) if(i <= cache_num_rows()) {

			new insurance, garage, rental, house, sqlid, vehicleid = INVALID_VEHICLE_ID, plate[16], modelid, status[128], impounded;
			
			if(ii < sizeof(Vehicle_Id)) { 
				cache_get_value_name_int(i, "id", sqlid);
				cache_get_value_name_int(i, "PVeh_Insuranced", insurance);
				cache_get_value_name_int(i, "PVeh_Impounded", impounded);
				cache_get_value_name_int(i, "PVeh_Housed", house);
				cache_get_value_name_int(i, "PVeh_Rental", rental);
				cache_get_value_name_int(i, "PVeh_Parked", garage);
				cache_get_value_name(i, "PVeh_Plate", plate);
				cache_get_value_name_int(i, "PVeh_ModelID", modelid);

				vehicleid = GetVehicleID(sqlid);

				if (vehicleid != INVALID_VEHICLE_ID && vehicleid < MAX_VEHICLES)
				{
					if (PlayerVehicle[vehicleid][pVehPhysic] != INVALID_VEHICLE_ID)
					{
						new Float:x, Float:y, Float:z;
						GetVehiclePos(vehicleid, x, y, z);
						format(Vehicle_Info[ii], 64, "%s (%s)", ReturnVehicleModelName(modelid), plate);
						format(Vehicle_Status[ii], 64, "Spawned");
					}
					else
					{
						if (PlayerVehicle[vehicleid][pVehInsuranced]) format(status, sizeof(status), "Asuransi");
						if (PlayerVehicle[vehicleid][pVehParked] >= 0) format(status, sizeof(status), "Garasi (%s)", PublicGarage[garage][pgName]);
						if (PlayerVehicle[vehicleid][pVehFamiliesGarage] >= 0) format(status, sizeof(status), "Garasi (%s)", FamData[PlayerVehicle[vehicleid][pVehFamiliesGarage]][famName]);
						if (PlayerVehicle[vehicleid][pVehHelipadGarage] >= 0) format(status, sizeof(status), "Garasi (%s)", PlayerVehicle[vehicleid][pVehHelipadGarage]);
						if (PlayerVehicle[vehicleid][pVehHouseGarage] >= 0) format(status, sizeof(status), "Rumah (%d)", PlayerVehicle[vehicleid][pVehHouseGarage]);
						if (PlayerVehicle[vehicleid][pVehImpounded]) format(status, sizeof(status), "Samsat");
						format(Vehicle_Info[ii], 64, "%s (%s)", ReturnVehicleModelName(modelid), plate);
						format(Vehicle_Status[ii], 128, "Status: %s", status);
					}
				}
				else
				{
					format(Vehicle_Info[ii], 64, "%s (%s)", ReturnVehicleModelName(modelid), plate);
					format(Vehicle_Status[ii], 64, "Status: Tidak Spawned");
				}
				Vehicle_Id[ii] = sqlid;
                listCar[playerid][ii] = vehicleid;
				ii++;
			}
			else {
				break;
			}
		}	
		for(new i = 0; i < 5; i++) {

			if(Vehicle_Id[i] != 0) {
				ShowVehicleList(playerid, i);
				PlayerTextDrawSetString(playerid, Vehicle_List[playerid][i][2], Vehicle_Info[i]);
				PlayerTextDrawSetString(playerid, Vehicle_List[playerid][i][3], Vehicle_Status[i]);
				ListedItems[playerid][count++] = Vehicle_Id[i];
			}
		}
	}
	return 1;
}

hook ClickDynPlayerTextdraw(playerid, PlayerText:textid) {
	for(new i = 0; i < 5; i++) if(textid == Vehicle_List[playerid][i][0]) {
		new vehicleid = listCar[playerid][i];

        SetPVarInt(playerid, "ClickVehicle", vehicleid);
		new price = GetValletPrice(PlayerVehicle[vehicleid][pVehModelID]);
		ShowPlayerDialog(playerid, DIALOG_MYV_MENU, DIALOG_STYLE_LIST, ""TTR"Astral City Roleplay Roleplay "WHITE"- Kendaraan Saya", 
		sprintf(""WHITE"Cari Kendaraan\n"GRAY"Detail Kendaraan\n"WHITE"Vallet "GREEN"(%s)", FormatMoney(price)), "Pilih", "Batal");
		break;
	}
	return Y_HOOKS_CONTINUE_RETURN_1;
}