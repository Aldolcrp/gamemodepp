#include <YSI_Coding\y_hooks>

stock GetPlayerID(const name[])
{
    new playername[MAX_PLAYER_NAME];
    for(new i = 0; i < MAX_PLAYERS; i++)
    {
        if(IsPlayerConnected(i))
        {
            GetPlayerName(i, playername, sizeof(playername));
            if(!strcmp(playername, name, true))
                return i;
        }
    }
    return INVALID_PLAYER_ID;
}

CMD:service(playerid, params[])
{
    new id = IsPlayerInRangeAreaWorkshop(playerid, 100.0);
    if(id != -1)
    {
        if(IsWorkshopOwner(playerid, id) || IsWorkshopEmploye(playerid, id))
        {
            if(AccountData[playerid][pMechVeh] == INVALID_VEHICLE_ID)
            {
                new carid = GetNearestVehicleToPlayer(playerid, 3.5, false);
                if(!IsABike(carid) && GetVehicleModel(carid) != 487)
                {
                    if(!GetHoodStatus(carid))
                        return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda harus membuka Hood kendaraan terlebih dahulu!");
                }
                if(carid == INVALID_VEHICLE_ID) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak berada didekat kendaraan manapun!");
                if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki Progress, tunggu hingga selesai!");
                foreach(new i : PvtVehicles)
                {
                    if(PlayerVehicle[i][pVehPhysic] == carid)
                    {
                        SendClientMessageEx(GetVehicleOwner(carid), -1, ""CYAN"[WORKSHOP]"LIGHTGOLDENROD" %s"WHITE" anda sedang diproses oleh "CYAN"%s.", GetVehicleName(PlayerVehicle[i][pVehPhysic]), AccountData[playerid][pName]);
                    }
                }

                SendClientMessage(playerid, -1, "<!> Jangan berpindah dari posisi anda jika sedang dalam pengecekan kendaraan!");
                ApplyAnimationEx(playerid, "BD_FIRE", "wash_up", 4.1, 1, 0, 0, 0, 0, 1);
                AccountData[playerid][pMechTimer] = SetTimerEx("CheckVehicleConditions", 1000, true, "dd", playerid, carid);
                PlayerTextDrawSetString(playerid, ProgressBar[playerid][3], "CHECKING");
                PlayerTextDrawShow(playerid, ProgressBar[playerid][3]);
                ShowProgressBar(playerid);
                return 1;
            }

            if(GetNearestVehicleToPlayer(playerid, 3.5, false) == AccountData[playerid][pMechVeh])
            {
                new list[1800], Float:health, engine;
                new panels, doors, light, tires, body;
                GetVehicleHealth(AccountData[playerid][pMechVeh], health);
                if(health > 1000.0) health = 1000.0;
                if(health > 2000.0) health = 2000.0;
                if(health > 3000.0) health = 3000.0;
                if(health > 5000.0) health = 5000.0;
                if(health > 8000.0) health = 8000.0;
                if(health > 0.0) health *= -1;
                engine = floatround(health, floatround_round) / 10 + 100;

                GetVehicleDamageStatus(AccountData[playerid][pMechVeh], panels, doors, light, tires);
                new cpanels = panels / 1000000;
                new lights = light / 2;
                new pintu;
                if(doors != 0) pintu = 5;
                if(doors == 0) pintu = 0;
                body = cpanels + lights + pintu + 20;

                format(list, sizeof(list), "Service Name\tRequrements\n");
                format(list, sizeof(list), "%sEngine Fix\t"GRAY"%d Component\n", list, engine);
                format(list, sizeof(list), "%sBody Fix\t"GRAY"%d Component\n", list, body);
                format(list, sizeof(list), "%sSpray Car\t"GRAY"40 Component\n", list);
                format(list, sizeof(list), "%sPaint Job\t"GRAY"60 Component\n", list);
                format(list, sizeof(list), "%sWheels Car\t"GRAY"65 Component\n", list);
                format(list, sizeof(list), "%sSpoiler Car\t"GRAY"70 Component\n", list);
                format(list, sizeof(list), "%sHood Car\t"GRAY"70 Component\n", list);
                format(list, sizeof(list), "%sVents Car\t"GRAY"70 Component\n", list);
                format(list, sizeof(list), "%sLights Car\t"GRAY"70 Component\n", list);
                format(list, sizeof(list), "%sExhaust\t"GRAY"80 Component\n", list);
                format(list, sizeof(list), "%sFront Bumpers\t"GRAY"100 Component\n", list);
                format(list, sizeof(list), "%sRear Bumpers\t"GRAY"100 Component\n", list);
                format(list, sizeof(list), "%sRoof Car\t"GRAY"70 Component\n", list);
                format(list, sizeof(list), "%sSide Skirts\t"GRAY"90 Component\n", list);
                format(list, sizeof(list), "%sBullbars\t"GRAY"50 Component\n", list);
                format(list, sizeof(list), "%sStereo\t"GRAY"150 Component\n", list);
                format(list, sizeof(list), "%sHydraulics\t"GRAY"150 Component\n", list);
                format(list, sizeof(list), "%sNitro 1\t"GRAY"250 Component\n", list);
                format(list, sizeof(list), "%sNitro 2\t"GRAY"375 Component\n", list);
                format(list, sizeof(list), "%sNitro 3\t"GRAY"500 Component\n", list);
                format(list, sizeof(list), "%sNeon\t"GRAY"100 Component\n", list);
                Dialog_Show(playerid, WORKSHOP_SERVICE, DIALOG_STYLE_TABLIST_HEADERS, "Workshop > Service", list, "Pilih", "Batal");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]), AccountData[playerid][pMechTimer] = 0, AccountData[playerid][ActivityTime] = 0;
                HideProgressBar(playerid);
                ClearAnimations(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        else return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda bukan pekerja/pemilik workshop!");
    }
    else return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak berada di area workshop manapun!");
    return 1;
}

Dialog:WORKSHOP_SERVICE(playerid, response, listitem, inputtext[])
{
    if(!response) return 1;
    switch(listitem)
    {
        case 0:
        {
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                new Float:health, comp;
                GetVehicleHealth(AccountData[playerid][pMechVeh], health);
                if(health > 1000.0) health = 1000.0;
                if(health > 0.0) health *= -1;
                comp = floatround(health, floatround_round) / 10 + 100;

                if(Inventory_Count(playerid, "Component") < comp) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(comp <= 0) return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak dapat diperbaiki!");
                Inventory_Remove(playerid, "Component", comp);
                ShowItemBox(playerid, sprintf("Removed %dx", comp), "Component", 19772);
                SendCustomMessage(playerid, "WORKSHOP", "Anda memperbaiki mesin kendaraan dengan "YELLOW"%d Components.", comp);
                
                AccountData[playerid][ActivityTime] = 1;
                AccountData[playerid][pMechTimer] = SetTimerEx("EngineFix", 1000, true, "dd", playerid, AccountData[playerid][pMechVeh]);
                PlayerTextDrawSetString(playerid, ProgressBar[playerid][3], "PERBAIKI MESIN");
                PlayerTextDrawShow(playerid, ProgressBar[playerid][3]);
                ShowProgressBar(playerid);
                ApplyAnimationEx(playerid, "BD_FIRE", "wash_up", 4.1, 1, 0, 0, 0, 0, 1);
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 1:
        {
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                new panels, doors, light, tires, comp;
						
                GetVehicleDamageStatus(AccountData[playerid][pMechVeh], panels, doors, light, tires);
                new cpanels = panels / 1000000;
                new lights = light / 2;
                new pintu;
                if(doors != 0) pintu = 5;
                if(doors == 0) pintu = 0;
                comp = cpanels + lights + pintu + 20;

                if(Inventory_Count(playerid, "Component") < comp) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(comp <= 0) return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak dapat diperbaiki!");
                Inventory_Remove(playerid, "Component", comp);
                ShowItemBox(playerid, sprintf("Removed %dx", comp), "Component", 19772);
                SendCustomMessage(playerid, "WORKSHOP", "Anda memperbaiki mesin kendaraan dengan "YELLOW"%d Components.", comp);
                
                AccountData[playerid][ActivityTime] = 1;
                AccountData[playerid][pMechTimer] = SetTimerEx("BodyFix", 1000, true, "dd", playerid, AccountData[playerid][pMechVeh]);
                PlayerTextDrawSetString(playerid, ProgressBar[playerid][3], "PERBAIKI BODY");
                PlayerTextDrawShow(playerid, ProgressBar[playerid][3]);
                ShowProgressBar(playerid);
                ApplyAnimationEx(playerid, "BD_FIRE", "wash_up", 4.1, 1, 0, 0, 0, 0, 1);
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 2: // Spray Color
        {
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 40) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                Dialog_Show(playerid, WORKSHOP_COLOR, DIALOG_STYLE_INPUT, "Spray Color ID 1", color_string, "Submit", "Cancel");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 3: // PaintJob
        {
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 100) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                Dialog_Show(playerid, WORKSHOP_PAINTJOB, DIALOG_STYLE_INPUT, "Paintjob Car", "Masukkan ID Paintjob kendaraan: (0 - 2 | 3 - Remove Paintjob)", "Paintjob", "Cancel");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 4: //
        {
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 65) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                Dialog_Show(playerid, WORKSHOP_WHEELS, DIALOG_STYLE_LIST, "Workshop Wheels", "Offroad\nMega\nWires\nTwist\nGrove\nImport\nAtomic\nAhab\nVirtual\nAccess\nTrance\nShadow\nRimshine\nClassic\nCutter\nSwitch\nDollar", "Pilih", "Batal");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 5:
        {
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 70) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                Dialog_Show(playerid, WORKSHOP_SPOILER, DIALOG_STYLE_LIST, "Workshop Spoiler", "Wheel Arc. Alien Spoiler\nWheel Arc. X-Flow Spoiler\nTransfender Win Spoiler\nTransfender Fury Spoiler\nTransfender Alpha Spoiler\nTransfender Pro Spoiler\nTransfender Champ Spoiler\nTransfender Race Spoiler\nTransfender Drag Spoiler", "Pilih", "Batal");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 6:
        {
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 70) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                Dialog_Show(playerid, WORKSHOP_HOODS, DIALOG_STYLE_LIST, "Workshop Hood", "Fury\nChamp\nRace\nWorx", "Pilih", "Batal");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 7:
        {
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 70) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                Dialog_Show(playerid, WORKSHOP_VENTS, DIALOG_STYLE_LIST, "Workshop Vents", "Oval\nSquare", "Pilih", "Batal");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 8:
        {
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 70) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                Dialog_Show(playerid, WORKSHOP_LIGHTS, DIALOG_STYLE_LIST, "Workshop Lights", "Round\nSquare", "Pilih", "Batal");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 9:
        {
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 80) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                Dialog_Show(playerid, WORKSHOP_EXHAUSTS, DIALOG_STYLE_LIST, "Workshop Exhaust", "Wheel Arc. Alien exhaust\nWheel Arc. X-Flow exhaust\nLow Co. Chromer exhaust\nLow Co. Slamin exhaust\nTransfender Large exhaust\nTransfender Medium exhaust\nTransfender Small exhaust\nTransfender Twin exhaust\nTransfender Upswept exhaust", "Pilih", "Batal");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 10:
        {
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 100) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                Dialog_Show(playerid, WORKSHOP_FRONTBUMPER, DIALOG_STYLE_LIST, "Workshop Front Bumper", "Wheel Arc. Alien Bumper\nWheel Arc. X-Flow Bumper\nLow co. Chromer Bumper\nLow co. Slamin Bumper", "Pilih", "Batal");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 11:
        {
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 100) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                Dialog_Show(playerid, WORKSHOP_REARBUMPER, DIALOG_STYLE_LIST, "Workshop Rear Bumper", "Wheel Arc. Alien Bumper\nWheel Arc. X-Flow Bumper\nLow co. Chromer Bumper\nLow co. Slamin Bumper", "Pilih", "Batal");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 12:
        {
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 70) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                Dialog_Show(playerid, WORKSHOP_ROOFS, DIALOG_STYLE_LIST, "Workshop Roofs", "Wheel Arc. Alien\nWheel Arc. X-Flow\nLow Co. Hardtop Roof\nLow Co. Softtop Roof\nTransfender Roof Scoop", "Pilih", "Batal");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 13:
        {
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 90) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                Dialog_Show(playerid, WORKSHOP_SIDESKIRT, DIALOG_STYLE_LIST, "Workshop Side Skirt", "Wheel Arc. Alien Side Skirt\nWheel Arc. X-Flow Side Skirt\nLocos Chrome Strip\nLocos Chrome Flames\nLocos Chrome Arches \nLocos Chrome Trim\nLocos Wheelcovers\nTransfender Side Skirt", "Pilih", "Batal");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 14:
        {
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 50) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                Dialog_Show(playerid, WORKSHOP_BULLBARS, DIALOG_STYLE_LIST, "Workshop Bullbars", "Locos Chrome Grill\nLocos Chrome Bars\nLocos Chrome Lights \nLocos Chrome Bullbar", "Pilih", "Batal");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 15:
        {
            AccountData[playerid][pMechColor1] = 1086;
            AccountData[playerid][pMechColor2] = 0;

            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 150) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                Inventory_Remove(playerid, "Component", 150);
                ShowItemBox(playerid, "Removed 150x", "Component", 19772);
                SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan Stereo "YELLOW"150 Components.");
                
                AccountData[playerid][ActivityTime] = 1;
                AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "dd", playerid, AccountData[playerid][pMechVeh]);
                PlayerTextDrawSetString(playerid, ProgressBar[playerid][3], "MODIF CAR");
                PlayerTextDrawShow(playerid, ProgressBar[playerid][3]);
                ShowProgressBar(playerid);
                ApplyAnimationEx(playerid, "BD_FIRE", "wash_up", 4.1, 1, 0, 0, 0, 0, 1);
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 16:
        {
            AccountData[playerid][pMechColor1] = 1087;
            AccountData[playerid][pMechColor2] = 0;

            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 150) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                Inventory_Remove(playerid, "Component", 150);
                ShowItemBox(playerid, "Removed 150x", "Component", 19772);
                SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan Hydraulics "YELLOW"150 Components.");
                
                AccountData[playerid][ActivityTime] = 1;
                AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "dd", playerid, AccountData[playerid][pMechVeh]);
                PlayerTextDrawSetString(playerid, ProgressBar[playerid][3], "MODIF CAR");
                PlayerTextDrawShow(playerid, ProgressBar[playerid][3]);
                ShowProgressBar(playerid);
                ApplyAnimationEx(playerid, "BD_FIRE", "wash_up", 4.1, 1, 0, 0, 0, 0, 1);
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 17:
        {
            AccountData[playerid][pMechColor1] = 1009;
            AccountData[playerid][pMechColor2] = 0;

            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 250) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                Inventory_Remove(playerid, "Component", 250);
                ShowItemBox(playerid, "Removed 250x", "Component", 19772);
                SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan Nitro 1 "YELLOW"250 Components.");
                
                AccountData[playerid][ActivityTime] = 1;
                AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "dd", playerid, AccountData[playerid][pMechVeh]);
                PlayerTextDrawSetString(playerid, ProgressBar[playerid][3], "MODIF CAR");
                PlayerTextDrawShow(playerid, ProgressBar[playerid][3]);
                ShowProgressBar(playerid);
                ApplyAnimationEx(playerid, "BD_FIRE", "wash_up", 4.1, 1, 0, 0, 0, 0, 1);
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 18:
        {
            AccountData[playerid][pMechColor1] = 1008;
            AccountData[playerid][pMechColor2] = 0;

            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 375) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                Inventory_Remove(playerid, "Component", 375);
                ShowItemBox(playerid, "Removed 375x", "Component", 19772);
                SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan Nitro 2 "YELLOW"375 Components.");
                
                AccountData[playerid][ActivityTime] = 1;
                AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "dd", playerid, AccountData[playerid][pMechVeh]);
                PlayerTextDrawSetString(playerid, ProgressBar[playerid][3], "MODIF CAR");
                PlayerTextDrawShow(playerid, ProgressBar[playerid][3]);
                ShowProgressBar(playerid);
                ApplyAnimationEx(playerid, "BD_FIRE", "wash_up", 4.1, 1, 0, 0, 0, 0, 1);
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 19:
        {
            AccountData[playerid][pMechColor1] = 1010;
            AccountData[playerid][pMechColor2] = 0;

            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 500) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                Inventory_Remove(playerid, "Component", 500);
                ShowItemBox(playerid, "Removed 500x", "Component", 19772);
                SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan Nitro 3 "YELLOW"500 Components.");
                
                AccountData[playerid][ActivityTime] = 1;
                AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "dd", playerid, AccountData[playerid][pMechVeh]);
                PlayerTextDrawSetString(playerid, ProgressBar[playerid][3], "MODIF CAR");
                PlayerTextDrawShow(playerid, ProgressBar[playerid][3]);
                ShowProgressBar(playerid);
                ApplyAnimationEx(playerid, "BD_FIRE", "wash_up", 4.1, 1, 0, 0, 0, 0, 1);
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 20:
        {
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 100) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                Dialog_Show(playerid, WORKSHOP_NEON, DIALOG_STYLE_LIST, "Workshop Neon", 
                "Merah\
                \n"GRAY"Biru\
                \nHijau\
                \n"GRAY"Kuning\
                \nPink\
                \n"GRAY"Putih", "Pilih", "Batal");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 21: // Engine Upgrade
        {
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 350) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(Inventory_Count(playerid, "Material") < 200) return ShowTDN(playerid, NOTIFICATION_ERROR, "Material anda tidak cukup!");
                
                Inventory_Remove(playerid, "Component", 350);
                Inventory_Remove(playerid, "Material", 200);
                ShowItemBox(playerid, "Removed 350x", "Component", 19772);
                ShowItemBox(playerid, "Removed 200x", "Material", 19843);
                SendCustomMessage(playerid, "WORKSHOP", "Anda meng-upgrade engine kendaraan dengan "YELLOW"350 Comp & 200 Material.");
                
                AccountData[playerid][ActivityTime] = 1;
                AccountData[playerid][pMechTimer] = SetTimerEx("EngineUpgradeWS", 1000, true, "dd", playerid, AccountData[playerid][pMechVeh]);
                PlayerTextDrawSetString(playerid, ProgressBar[playerid][3], "ENGINE UPGRADE");
                PlayerTextDrawShow(playerid, ProgressBar[playerid][3]);
                ShowProgressBar(playerid);
                ApplyAnimationEx(playerid, "BD_FIRE", "wash_up", 4.1, 1, 0, 0, 0, 0, 1);
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 22: // Body Upgrade
        {
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 150) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(Inventory_Count(playerid, "Material") < 300) return ShowTDN(playerid, NOTIFICATION_ERROR, "Material anda tidak cukup!");
                
                Inventory_Remove(playerid, "Component", 150);
                Inventory_Remove(playerid, "Material", 300);
                ShowItemBox(playerid, "Removed 150x", "Component", 19772);
                ShowItemBox(playerid, "Removed 300x", "Material", 19843);
                SendCustomMessage(playerid, "WORKSHOP", "Anda meng-upgrade body kendaraan dengan "YELLOW"150 Comp & 300 Material.");
                
                AccountData[playerid][ActivityTime] = 1;
                AccountData[playerid][pMechTimer] = SetTimerEx("BodyUpgradeWS", 1000, true, "dd", playerid, AccountData[playerid][pMechVeh]);
                PlayerTextDrawSetString(playerid, ProgressBar[playerid][3], "BODY UPGRADE");
                PlayerTextDrawShow(playerid, ProgressBar[playerid][3]);
                ShowProgressBar(playerid);
                ApplyAnimationEx(playerid, "BD_FIRE", "wash_up", 4.1, 1, 0, 0, 0, 0, 1);
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
    }
    return 1;
}

CMD:lockworkshop(playerid, params[])
{
    if(!AccountData[playerid][IsLoggedIn]) return 0;

    new id = IsPlayerNearWorkshop(playerid);
    if(id > -1)
    {
        if(!IsWorkshopOwner(playerid, id) && !IsWorkshopEmploye(playerid, id)) 
            return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda bukan pemilik atau pekerja Workshop ini!");
        
        Workshop_Gate(playerid, id);
        Workshop_Refresh(id);
        Streamer_Update(playerid);
    }
    return 1;
}

alias:workshopmenu("wsmenu")
CMD:workshopmenu(playerid, params[])
{
	if(!AccountData[playerid][IsLoggedIn]) return 0;
	
	new id = IsPlayerNearWorkshop(playerid);
	if(id > -1)
	{
		if(!IsWorkshopOwner(playerid, id) && !IsWorkshopEmploye(playerid, id))
			return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda bukan pemilik atau pekerja di Workshop ini!");
		
		ShowWorkshopMenu(playerid, id);
	}
	else ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak berada di dekat Workshop manapun!");
	return 1;
}

CMD:wsa(playerid, params[])
{
	if (!AccountData[playerid][IsLoggedIn]) return 0;

	if (isnull(params))
		return ShowTDN(playerid, NOTIFICATION_SYNTAX, "/wsa [pesan]");

	if (strlen(params) > 512)
		return ShowTDN(playerid, NOTIFICATION_ERROR, "Pesan terlalu panjang!");

	new id = IsPlayerNearWorkshop(playerid);
	if (id > -1)
	{
		if (!IsWorkshopOwner(playerid, id) && !IsWorkshopEmploye(playerid, id))
			return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda bukan pemilik atau pekerja di Workshop ini!");

		static lstr[1024];
		format(lstr, sizeof(lstr), "{FF6708}%s | %s: "WHITE"%s", WorkshopData[id][wsName], ReturnName(playerid), params);
		SendClientMessageToAllEx(0xFF6708FF, lstr);
	}
	else ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak berada di dekat Workshop manapun!");

	return 1;
}

alias:addworkshop("addws")
CMD:addworkshop(playerid, params[])
{
    if(!AccountData[playerid][IsLoggedIn]) return 0;
    if(AccountData[playerid][pAdmin] < 5) return PermissionError(playerid);

    new id = Iter_Free(Workshop);
    if(id == -1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak dapat menambah workshop lagi!");

    GetPlayerPos(playerid, WorkshopData[id][wsPos][0], WorkshopData[id][wsPos][1], WorkshopData[id][wsPos][2]);
    format(WorkshopData[id][wsOwner], MAX_PLAYER_NAME, "-");
    format(WorkshopData[id][wsName], MAX_PLAYER_NAME, "-");
    format(wsEmploy[id][0], MAX_PLAYER_NAME, "-");
    format(wsEmploy[id][1], MAX_PLAYER_NAME, "-");
    format(wsEmploy[id][2], MAX_PLAYER_NAME, "-");
    format(wsEmploy[id][3], MAX_PLAYER_NAME, "-");
    format(wsEmploy[id][4], MAX_PLAYER_NAME, "-");
    WorkshopData[id][wsOwnerID] = 0;
    WorkshopData[id][wsComponent] = 0;
    WorkshopData[id][wsMoney] = 0;
    WorkshopData[id][wsStatus] = 0;

    Workshop_Refresh(id);
    Iter_Add(Workshop, id);
    SendStaffMessage(X11_TOMATO, "%s telah membuat Workshop ID: "YELLOW"[%d]", AccountData[playerid][pAdminname], id);

    new query[525];
    mysql_format(g_SQL, query, sizeof(query), "INSERT INTO `workshop` SET `ID`=%d, `Owner`='%s', `OwnerID`=%d, `Component`=%d, `Money`=%d, `Status`=%d, `posX`='%f', `posY`='%f', `posZ`='%f'", id, WorkshopData[id][wsOwner], WorkshopData[id][wsOwnerID], WorkshopData[id][wsComponent], WorkshopData[id][wsMoney], WorkshopData[id][wsStatus], WorkshopData[id][wsPos][0], WorkshopData[id][wsPos][1], WorkshopData[id][wsPos][2]);
    mysql_tquery(g_SQL, query, "OnWorkshopCreated", "d", id);
    return 1;
}

CMD:gotows(playerid, params[])
{
    if(!AccountData[playerid][IsLoggedIn]) return 0;
    if(AccountData[playerid][pAdmin] < 1) return PermissionError(playerid);

    new id;
    if(sscanf(params, "d", id)) return ShowTDN(playerid, NOTIFICATION_SYNTAX, "/gotows [id]");
    if(!Iter_Contains(Workshop, id)) return ShowTDN(playerid, NOTIFICATION_ERROR, "ID Workshop tidak ada!");
    
    SetPlayerPos(playerid, WorkshopData[id][wsPos][0], WorkshopData[id][wsPos][1], WorkshopData[id][wsPos][2]);
    SetPlayerInteriorEx(playerid, 0);
    SetPlayerVirtualWorldEx(playerid, 0);
    AccountData[playerid][pInDoor] = -1;
    AccountData[playerid][pInHouse] = -1;
    AccountData[playerid][pInBiz] = -1;
    AccountData[playerid][pInFamily] = -1;
    AccountData[playerid][pInRusun] = -1;
    SendStaffMessage(X11_TOMATO, "%s teleportasi ke Workshop ID: "YELLOW"[%d]",  GetAdminName(playerid), id);
	return 1;
}

alias:editworkshop("editws")
CMD:editworkshop(playerid, params[])
{
    static id, type[24], string[128];

    if(!AccountData[playerid][IsLoggedIn]) return 0;
    if(AccountData[playerid][pAdmin] < 5) return PermissionError(playerid);
    if(sscanf(params, "ds[24]S()[128]", id, type, string))
    {
        ShowTDN(playerid, NOTIFICATION_SYNTAX, "/editworkshop [id] [entinity] (location, status, owner, money, component)");
        return 1;
    }
    if(!Iter_Contains(Workshop, id)) return ShowTDN(playerid, NOTIFICATION_ERROR, "ID Workshop tidak ada!");
    if((id < 0 || id > MAX_WORKSHOP)) return ShowTDN(playerid, NOTIFICATION_ERROR, "ID Workshop tidak ada!");
    if(!strcmp(type, "location", true))
    {
        GetPlayerPos(playerid, WorkshopData[id][wsPos][0], WorkshopData[id][wsPos][1], WorkshopData[id][wsPos][2]);
        Workshop_Refresh(id);
        Streamer_Update(playerid);
        Workshop_Save(id);
        SendStaffMessage(X11_TOMATO, "%s memindahkan lokasi Workshop ID: "YELLOW"[%d]",  GetAdminName(playerid), id);
    }
    else if(!strcmp(type, "status", true))
    {
        new status;
        if(sscanf(string, "d", status)) return ShowTDN(playerid, NOTIFICATION_SYNTAX, "/editworkshop [id] [status 0 - 1]");
        if(status < 0 || status > 1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Status tidak valid!");

        WorkshopData[id][wsStatus] = status;
        Workshop_Refresh(id);
        Streamer_Update(playerid);
        Workshop_Save(id);
        if(status) SendStaffMessage(X11_TOMATO, "%s telah membuka workshop ID: "YELLOW"[%d]",  GetAdminName(playerid), id);
        else SendStaffMessage(X11_TOMATO, "%s telah mengunci workshop ID: "YELLOW"[%d]",  GetAdminName(playerid), id);
    }
    else if(!strcmp(type, "owner", true))
    {
        new otherid;
        if(sscanf(string, "u", otherid)) return ShowTDN(playerid, NOTIFICATION_SYNTAX, "/editworkshop [id] [name/playerid]");
        if(!IsPlayerConnected(otherid)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Pemain tersebut tidak terkoneksi ke server!");

        format(WorkshopData[id][wsOwner], MAX_PLAYER_NAME, AccountData[otherid][pName]);
        WorkshopData[id][wsOwnerID] = AccountData[otherid][pID];

        Workshop_Refresh(id);
        Streamer_Update(playerid);
        Workshop_Save(id);
        SendStaffMessage(X11_TOMATO, "%s menetapkan "YELLOW"%s"ARWIN1" sebagai Owner Workshop ID: "YELLOW"[%d]",  GetAdminName(playerid), ReturnName(otherid), id);
    }
    else if(!strcmp(type, "money", true))
    {
        new ammount;
        if(sscanf(string, "d", ammount)) return ShowTDN(playerid, NOTIFICATION_SYNTAX, "/editworkshop [id] [ammount]");
        if(ammount < 1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Invalid ammount");

        WorkshopData[id][wsMoney] = ammount;
        Workshop_Refresh(id);
        Workshop_Save(id);
        Streamer_Update(playerid);
        SendStaffMessage(X11_TOMATO, "%s menetapkan uang "DARKGREEN"%s"ARWIN1" untuk Workshop ID: "YELLOW"[%d]",  GetAdminName(playerid), FormatMoney(ammount), id); 
    }
    else if(!strcmp(type, "component", true))
    {
        new ammount;
        if(sscanf(string, "d", ammount)) return ShowTDN(playerid, NOTIFICATION_SYNTAX, "/editworkshop [id] [ammount]");
        if(ammount < 1 || ammount > MAX_WORKSHOP_INT) return ShowTDN(playerid, NOTIFICATION_ERROR, "Invalid ammount, 1 - 7000!");

        WorkshopData[id][wsComponent] = ammount;
        Workshop_Refresh(id);
        Workshop_Save(id);
        Streamer_Update(playerid); 
        SendStaffMessage(X11_TOMATO, "%s menetapkan "YELLOW"%d"ARWIN1" component untuk Workshop ID: "YELLOW"[%d]",  GetAdminName(playerid), ammount, id); 
    }
    else if(!strcmp(type, "reset", true))
    {
        Workshop_Reset(id);
        Workshop_Refresh(id);
        Workshop_Save(id);
        Streamer_Update(playerid);  
        SendStaffMessage(X11_TOMATO, "%s mereset Workshop ID: "YELLOW"[%d]",  GetAdminName(playerid), id);
    }
    else if(!strcmp(type, "delete", true))
    {
        Workshop_Reset(id);
        DestroyDynamic3DTextLabel(WorkshopData[id][wsLabel]), WorkshopData[id][wsLabel] = STREAMER_TAG_3D_TEXT_LABEL: INVALID_STREAMER_ID;
        DestroyDynamicPickup(WorkshopData[id][wsPickup]), WorkshopData[id][wsPickup] = STREAMER_TAG_PICKUP: INVALID_STREAMER_ID;

        WorkshopData[id][wsPos][0] = 0;
        WorkshopData[id][wsPos][1] = 0;
        WorkshopData[id][wsPos][2] = 0;

        // Logs Clear
        SendStaffMessage(X11_TOMATO, "%s menghapus Workshop ID: "YELLOW"[%d]",  GetAdminName(playerid), id);
        
        Iter_Remove(Workshop, id);
        mysql_tquery(g_SQL, sprintf("DELETE FROM `workshop` WHERE `ID`=%d", id));
        mysql_tquery(g_SQL, sprintf("DELETE FROM `workshoplogs` WHERE `WorkshopID`=%d", id));
    } 
    return 1;
}

alias:myworkshop("myws")
CMD:myworkshop(playerid, params[])
{
    if(!GetOwnedWorkshop(playerid)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak memiliki Workshop!");

    new id, CMDString[1024], string[225], status[128], count = GetOwnedWorkshop(playerid);
    CMDString = "";

    strcat(CMDString, "No\tName\tStatus\tLocation\n", sizeof(CMDString));
    Loop(itt, (count + 1), 1)
    {
        id = ReturnPlayerWorkshopID(playerid, itt);
        if(WorkshopData[id][wsStatus] == 1) format(status, sizeof(status), ""GREEN"Open");
        else format(status, sizeof(status), ""RED"Close");

        if(itt == count) {
            format(string, sizeof(string), "%d\t%s\t%s\t"CORAL"%s\n", itt, WorkshopData[id][wsName], status, GetLocation(WorkshopData[id][wsPos][0], WorkshopData[id][wsPos][1], WorkshopData[id][wsPos][2]));
        } else format(string, sizeof(string), "%d\t%s\t%s\t"CORAL"%s\n", itt, WorkshopData[id][wsName], status, GetLocation(WorkshopData[id][wsPos][0], WorkshopData[id][wsPos][1], WorkshopData[id][wsPos][2]));
        strcat(CMDString, string);
    }
    Dialog_Show(playerid, MY_WORKSHOP, DIALOG_STYLE_TABLIST_HEADERS, ""TTR""SERVER_NAME""WHITE" - My Workshop", CMDString, "Select", "Cancel");
    return 1;
}

// dialogs
Dialog:WORKSHOP_MENU(playerid, response, listitem, inputtext[])
{
    if(!response) return 1;

    new id = AccountData[playerid][pInWs];
    switch(listitem)
    {
        case 0: //set nama
        {   
            if(!IsWorkshopOwner(playerid, id))
                return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda bukan pemilik Workshop!");

            Dialog_Show(playerid, WORKSHOP_SETNAME, DIALOG_STYLE_INPUT, ""TTR""SERVER_NAME""WHITE" - Set Name Workshop",
            ""WHITE"Current workshop name: %s\n\n"WHITE"Silahkan masukkan Nama Baru untuk Workshop:", "Set", "Cancel", WorkshopData[id][wsName]);
        }
        case 1: // Buka/Kunci
        {
            if(IsPlayerInRangeOfPoint(playerid, 3.0, WorkshopData[id][wsPos][0], WorkshopData[id][wsPos][1], WorkshopData[id][wsPos][2]))
            {
                if(!IsWorkshopOwner(playerid, id) && !IsWorkshopEmploye(playerid, id)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda bukan pemilik atau pekerja Workshop ini!");
                
                Workshop_Gate(playerid, id);
                Workshop_Refresh(id);
                Streamer_Update(playerid);
            }
        }
        case 2: // Pekerja
        {
            new string[522];
            format(string, sizeof(string), "Name\tRank\n");
            format(string, sizeof(string), "%s(%s)\t"GRAY"Owner\n", string, WorkshopData[id][wsOwner]);
            for(new z = 0; z < MAX_WORKSHOP_EMPLOYE; z ++)
            {
                format(string, sizeof(string), "%s(%s)\t"GRAY"Employe\n", string, wsEmploy[id][z]);
            }
            Dialog_Show(playerid, WORKSHOP_SETEMPLOYE, DIALOG_STYLE_TABLIST_HEADERS, "Workshop > Employees",
            string, "Change", "Cancel");
        }
        case 3:
        {
            WorkshopLogPage[playerid] = 0;
            ShowWorkshopLogs(playerid, id);
        }
        case 4: 
        {
            Dialog_Show(playerid, WORKSHOP_COMPONENT, DIALOG_STYLE_LIST, "Workshop > Component",
            "Withdraw\nDeposit", "Select", "Cancel");
        }
        case 5: 
        {
            Dialog_Show(playerid, WORKSHOP_MONEY, DIALOG_STYLE_LIST, "Workshop > Money Vault",
            "Withdraw\nDeposit", "Select", "Cancel");
        }
    }
    return 1;
}

Dialog:WORKSHOP_SETNAME(playerid, response, listitem, inputtext[])
{
    if(!response) return callcmd::workshopmenu(playerid, "");

    new id = AccountData[playerid][pInWs];
    
    if(!IsWorkshopOwner(playerid, id)) 
    {
        return Dialog_Show(playerid, WORKSHOP_SETNAME, DIALOG_STYLE_INPUT, ""TTR""SERVER_NAME""WHITE" - Set Name Workshop",
        ""WHITE"Error: Anda bukan pemilik Workshop!\nCurrent workshop name: %s\n\n"WHITE"Silahkan masukkan Nama Baru untuk Workshop:", "Set", "Cancel", WorkshopData[id][wsName]);
    }


    if(strlen(inputtext) > 128)
    {
        return Dialog_Show(playerid, WORKSHOP_SETNAME, DIALOG_STYLE_INPUT, ""TTR""SERVER_NAME""WHITE" - Set Name Workshop",
        ""WHITE"Error: Maksimal 128 characters!\nCurrent workshop name: %s\n\n"WHITE"Silahkan masukkan Nama Baru untuk Workshop:", "Set", "Cancel", WorkshopData[id][wsName]);
    }

    if(strfind(inputtext, "'", true) != -1)
    {
        return Dialog_Show(playerid, WORKSHOP_SETNAME, DIALOG_STYLE_INPUT, ""TTR""SERVER_NAME""WHITE" - Set Name Workshop",
        ""WHITE"Error: Anda tidak dapat input tanda ' pada nama Workshop!\nCurrent workshop name: %s\n\n"WHITE"Silahkan masukkan Nama Baru untuk Workshop:", "Set", "Cancel", WorkshopData[id][wsName]);
    }

    SendClientMessageEx(playerid, -1, ""LIGHTGOLDENROD"[WORKSHOP]"WHITE" Anda berhasil mengubah nama Workshop anda menjadi "LIGHTGOLDENROD"%s.", inputtext);
    format(WorkshopData[id][wsName], 128, inputtext);
    Workshop_Save(id);
    Workshop_Refresh(id);
    Streamer_Update(playerid);
    callcmd::workshopmenu(playerid, "");
    return 1;
}

Dialog:WORKSHOP_SETEMPLOYE(playerid, response, listitem, inputtext[])
{
    if(!response) return callcmd::workshopmenu(playerid, "");

    new id = AccountData[playerid][pInWs];
    if(!IsWorkshopOwner(playerid, id))
        return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda bukan pemilik Workshop!");

    if(listitem == 0)
    {
        new string[128];
        format(string, sizeof(string), ""WHITE"Current Owner: %s\n\nMasukkan Nama / Player ID untuk mengubah pemilik workshop:", WorkshopData[id][wsOwner]);
        AccountData[playerid][pMenuType] = 0;
        return Dialog_Show(playerid, WORKSHOP_SETEMPLOYEE, DIALOG_STYLE_INPUT, sprintf("(%s) Ubah Pemilik", WorkshopData[id][wsName]), string, "Ubah", "Batal");
    }

    new empIndex = listitem - 1;
    if(empIndex < 0 || empIndex >= MAX_WORKSHOP_EMPLOYE)
        return ShowTDN(playerid, NOTIFICATION_ERROR, "Slot pekerja tidak valid!");

    if(!strcmp(wsEmploy[id][empIndex], "-", true))
    {
        new string[128];
        format(string, sizeof(string), ""WHITE"Slot pekerja ini kosong.\n\nMasukkan Nama / Player ID untuk menambahkan pekerja baru:");
        AccountData[playerid][pMenuType] = empIndex + 1;
        return Dialog_Show(playerid, WORKSHOP_SETEMPLOYEE, DIALOG_STYLE_INPUT, sprintf("(%s) Tambah Pekerja", WorkshopData[id][wsName]), string, "Tambah", "Batal");
    }

    new str[256];
    format(str, sizeof(str),   "Nama: %s\n\n"WHITE"Pilih tindakan terhadap pekerja ini:", wsEmploy[id][empIndex]);
    SetPVarInt(playerid, "KickEmpIndex", empIndex);
    return Dialog_Show(playerid, WORKSHOP_MANAGEKICK, DIALOG_STYLE_LIST,  sprintf("(%s) Pekerja", WorkshopData[id][wsName]), "Keluarkan pekerja", "Pilih", "Batal");
}

Dialog:WORKSHOP_SETEMPLOYEE(playerid, response, listitem, inputtext[])
{
    if(!response) 
        return callcmd::workshopmenu(playerid, "");

    new id = AccountData[playerid][pInWs];
    if(!IsWorkshopOwner(playerid, id))
        return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda bukan pemilik Workshop!");

    new mode = AccountData[playerid][pMenuType];

    if(isnull(inputtext))
        return ShowTDN(playerid, NOTIFICATION_ERROR, "Input tidak boleh kosong!");

    new targetid = INVALID_PLAYER_ID;
    if(IsNumeric(inputtext))
    {
        targetid = strval(inputtext);
        if(!IsPlayerConnected(targetid))
            return ShowTDN(playerid, NOTIFICATION_ERROR, "Player ID tidak valid atau tidak online!");
    }
    else
    {
        targetid = GetPlayerID(inputtext);
        if(targetid == INVALID_PLAYER_ID)
            return ShowTDN(playerid, NOTIFICATION_ERROR, "Nama pemain tidak ditemukan!");
    }

    new name[MAX_PLAYER_NAME];
    GetPlayerName(targetid, name, sizeof(name));

    if(mode == 0)
    {
        if(!IsPlayerNearPlayer(playerid, targetid, 5.0))
            return ShowTDN(playerid, NOTIFICATION_ERROR, "Pemain tersebut tidak di dekat anda!");

        SetPVarInt(playerid, "TransferWorkshop", targetid);
        new msg[128];
        format(msg, sizeof(msg), "Apakah anda yakin ingin mentransfer Workshop kepada %s?", name);
        return Dialog_Show(playerid, WS_SETOWNERCONFIRM, DIALOG_STYLE_MSGBOX, sprintf("(%s) Konfirmasi Transfer", WorkshopData[id][wsName]), msg, "Ya", "Tidak");
    }

    new empIndex = mode - 1;
    if(empIndex < 0 || empIndex >= MAX_WORKSHOP_EMPLOYE)
        return ShowTDN(playerid, NOTIFICATION_ERROR, "Slot pekerja tidak valid!");

    format(wsEmploy[id][empIndex], MAX_PLAYER_NAME, "%s", name);

    SendClientMessageEx(playerid, -1, ""LIGHTGOLDENROD"[WORKSHOP]"WHITE" Anda telah menambahkan "LIGHTGOLDENROD"%s"WHITE" sebagai pekerja.", name);
    SendClientMessageEx(targetid, -1, ""LIGHTGOLDENROD"[WORKSHOP]"WHITE" Anda telah diterima sebagai pekerja di Workshop "LIGHTGOLDENROD"%s"WHITE".", WorkshopData[id][wsName]);

    Workshop_Save(id);
    Workshop_Refresh(id);
    InsertWorkshopLogs(playerid, sprintf("%s menambahkan %s ke workshop %s", AccountData[playerid][pName], name, WorkshopData[id][wsName]), id);

    AccountData[playerid][pMenuType] = -1;
    return 1;
}

Dialog:WORKSHOP_MANAGEKICK(playerid, response, listitem, inputtext[])
{
    if(!response)
    {
        DeletePVar(playerid, "KickEmpIndex");
        return callcmd::workshopmenu(playerid, "");
    }

    new id = AccountData[playerid][pInWs];
    new index = GetPVarInt(playerid, "KickEmpIndex");

    if(index < 0 || index >= MAX_WORKSHOP_EMPLOYE)
        return ShowTDN(playerid, NOTIFICATION_ERROR, "Slot pekerja tidak valid!");

    if(!strcmp(wsEmploy[id][index], "-", true))
        return ShowTDN(playerid, NOTIFICATION_ERROR, "Slot pekerja ini kosong!");

    new kicked[MAX_PLAYER_NAME];
    format(kicked, sizeof(kicked), "%s", wsEmploy[id][index]);

    SendClientMessageEx(playerid, -1, ""LIGHTGOLDENROD"[WORKSHOP]"WHITE" Anda telah mengeluarkan "LIGHTGOLDENROD"%s"WHITE" dari Workshop.", kicked);

    new otherid = INVALID_PLAYER_ID;
    for(new i = 0; i < MAX_PLAYERS; i++)
    {
        if(IsPlayerConnected(i) && !strcmp(AccountData[i][pName], kicked, true))
        {
            otherid = i;
            break;
        }
    }
    if(otherid != INVALID_PLAYER_ID)
    {
        SendClientMessageEx(otherid, -1, ""LIGHTGOLDENROD"[WORKSHOP]"WHITE" Anda telah dikeluarkan dari workshop oleh "LIGHTGOLDENROD"%s"WHITE".", AccountData[playerid][pName]);
    }

    format(wsEmploy[id][index], MAX_PLAYER_NAME, "-");
    InsertWorkshopLogs(playerid, sprintf("%s mengeluarkan %s dari %s", AccountData[playerid][pName], kicked, WorkshopData[id][wsName]), id);

    Workshop_Save(id);
    Workshop_Refresh(id);
    Streamer_Update(playerid);

    DeletePVar(playerid, "KickEmpIndex");
    return 1;
}

Dialog:WS_SETOWNERCONFIRM(playerid, response, listitem, inputtext[])
{
    if(!response) 
    {
        DeletePVar(playerid, "TransferWorkshop");
        callcmd::workshopmenu(playerid, "");
        return 1;
    }

    new otherid = GetPVarInt(playerid, "TransferWorkshop"), id = AccountData[playerid][pInWs];
    if(!IsPlayerConnected(otherid))
    {
        DeletePVar(playerid, "TransferWorkshop");
        return ShowTDN(playerid, NOTIFICATION_ERROR, "Pemain tersebut tidak terkoneksi ke server!");
    }

    if(!IsPlayerNearPlayer(playerid, otherid, 5.0))
    {
        DeletePVar(playerid, "TransferWorkshop");
        return ShowTDN(playerid, NOTIFICATION_ERROR, "Pemain tersebut tidak di dekat anda!");
    }

    SendClientMessageEx(playerid, -1, ""LIGHTGOLDENROD"[WORKSHOP]"WHITE" Anda berhasil mentransfer owner Workshop kepada "LIGHTGOLDENROD"", AccountData[otherid][pName]);
    SendClientMessageEx(otherid, -1, ""LIGHTGOLDENROD"[WORKSHOP] "LIGHTGOLDENROD"%s"WHITE" telah mentransfer workshopnya, kini menjadi milik anda.", AccountData[playerid][pName]);
    format(WorkshopData[id][wsOwner], MAX_PLAYER_NAME, AccountData[otherid][pName]);
    Workshop_Save(id);
    Workshop_Refresh(id);
    InsertWorkshopLogs(playerid, sprintf("%s has transfered %s workshop to %s", AccountData[playerid][pName], WorkshopData[id][wsName], AccountData[otherid][pName]), id);

    DeletePVar(playerid, "TransferWorkshop");
    return 1;
}

Dialog:WORKSHOP_COMPONENT(playerid, response, listitem, inputtext[])
{
    if(!response) return callcmd::workshopmenu(playerid, "");

    new string[128], id = AccountData[playerid][pInWs];
    switch(listitem)
    {
        case 0: // WD
        {
            format(string, sizeof(string), ""WHITE"Current Component: "LIGHTGOLDENROD"%d\n\n"WHITE"Mohon masukkan jumlah component yang ingin diambil:", WorkshopData[id][wsComponent]);
        }
        case 1: //DP
        {
            format(string, sizeof(string), ""WHITE"Current Component: "LIGHTGOLDENROD"%d\n\n"WHITE"Mohon masukkan jumlah component yang ingin dimasukkan:", WorkshopData[id][wsComponent]);
        }
    }
    AccountData[playerid][pMenuType] = listitem;
    Dialog_Show(playerid, WORKSHOP_COMPONENT2, DIALOG_STYLE_INPUT, sprintf("(%s) Component", WorkshopData[id][wsName]), string, "Input", "Cancel");
    return 1;
}

Dialog:WORKSHOP_COMPONENT2(playerid, response, listitem, inputtext[])
{
    if(!response) return callcmd::workshopmenu(playerid, "");

    new id = AccountData[playerid][pInWs], ammount = strval(inputtext);
    switch(AccountData[playerid][pMenuType])
    {
        case 0: // WD
        {
            if(ammount < 1) 
            {
                return Dialog_Show(playerid, WORKSHOP_COMPONENT2, DIALOG_STYLE_INPUT, sprintf("(%s) Component", WorkshopData[id][wsName]), 
                ""WHITE"Error: Tidak dapat memasukkan angka kurang dari 1!\nCurrent Component: "LIGHTGOLDENROD"%d\n\n"WHITE"Mohon masukkan jumlah component yang ingin diambil:", "Input", "Cancel", WorkshopData[id][wsComponent]);
            }

            if(WorkshopData[id][wsComponent] < ammount)
            {
                return Dialog_Show(playerid, WORKSHOP_COMPONENT2, DIALOG_STYLE_INPUT, sprintf("(%s) Component", WorkshopData[id][wsName]), 
                ""WHITE"Error: Component workshop tidak sebanyak itu!\nCurrent Component: "LIGHTGOLDENROD"%d\n\n"WHITE"Mohon masukkan jumlah component yang ingin diambil:", "Input", "Cancel", WorkshopData[id][wsComponent]);
            }

            if((Inventory_Count(playerid, "Component") + ammount) >= 2000)
            {
                return Dialog_Show(playerid, WORKSHOP_COMPONENT2, DIALOG_STYLE_INPUT, sprintf("(%s) Component", WorkshopData[id][wsName]), 
                ""WHITE"Error: Component di inventory anda sudah mencapai batas, (2000)!\nCurrent Component: "LIGHTGOLDENROD"%d\n\n"WHITE"Mohon masukkan jumlah component yang ingin diambil:", "Input", "Cancel", WorkshopData[id][wsComponent]);
            }

            WorkshopData[id][wsComponent] -= ammount;
            Inventory_Add(playerid, "Component", 19772, ammount);
            ShowItemBox(playerid, sprintf("Received %dx", ammount), "Component", 19772);
            Workshop_Save(id);

            InsertWorkshopLogs(playerid, sprintf("Taking %d components from the Workshop %s", ammount, WorkshopData[id][wsName]), id);
        }   
        case 1: // DP
        {
            if(ammount < 1) 
            {
                return Dialog_Show(playerid, WORKSHOP_COMPONENT2, DIALOG_STYLE_INPUT, sprintf("(%s) Component", WorkshopData[id][wsName]), 
                ""WHITE"Error: Tidak dapat memasukkan angka kurang dari 1!\nCurrent Component: "LIGHTGOLDENROD"%d\n\n"WHITE"Mohon masukkan jumlah component yang ingin dimasukkan:", "Input", "Cancel", WorkshopData[id][wsComponent]);
            }

            if(Inventory_Count(playerid, "Component") < ammount)
            {
                return Dialog_Show(playerid, WORKSHOP_COMPONENT2, DIALOG_STYLE_INPUT, sprintf("(%s) Component", WorkshopData[id][wsName]), 
                ""WHITE"Error: Anda tidak memiliki component sebanyak itu!\nCurrent Component: "LIGHTGOLDENROD"%d\n\n"WHITE"Mohon masukkan jumlah component yang ingin dimasukkan:", "Input", "Cancel", WorkshopData[id][wsComponent]);
            }

            if((WorkshopData[id][wsComponent] + ammount) > MAX_WORKSHOP_INT)
            {
                return Dialog_Show(playerid, WORKSHOP_COMPONENT2, DIALOG_STYLE_INPUT, sprintf("(%s) Component", WorkshopData[id][wsName]), 
                ""WHITE"Error: Component di workshop sudah maximal (7000)!\nCurrent Component: "LIGHTGOLDENROD"%d\n\n"WHITE"Mohon masukkan jumlah component yang ingin dimasukkan:", "Input", "Cancel", WorkshopData[id][wsComponent]);
            }

            WorkshopData[id][wsComponent] += ammount;
            Inventory_Remove(playerid, "Component", ammount);
            ShowItemBox(playerid, sprintf("Removed %dx", ammount), "Component", 19772);
            Workshop_Save(id);

            InsertWorkshopLogs(playerid, sprintf("Stored %d components into the Workshop %s", ammount, WorkshopData[id][wsName]), id);
        }
    }
    return 1;
}

Dialog:WORKSHOP_MONEY(playerid, response, listitem, inputtext[])
{
    if(!response) return callcmd::workshopmenu(playerid, "");

    new id = AccountData[playerid][pInWs];
    switch(listitem)
    {
        case 0: 
        {
            if(!IsWorkshopOwner(playerid, id))
                return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda bukan pemilik Workshop!");
            
            Dialog_Show(playerid, WORKSHOP_WDMONEY, DIALOG_STYLE_INPUT, sprintf("(%s) Withdraw Money", WorkshopData[id][wsName]), ""WHITE"Current Money:"GREEN" %s\n\n"WHITE"Mohon masukkan jumlah uang yang ingin anda ambil:", "Submit", "Cancel", FormatMoney(WorkshopData[id][wsMoney]));
        }
        case 1:
        {
            Dialog_Show(playerid, WORKSHOP_DPMONEY, DIALOG_STYLE_INPUT, sprintf("(%s) Deposit Money", WorkshopData[id][wsName]), ""WHITE"Current Money:"GREEN" %s\n\n"WHITE"Mohon masukkan jumlah uang yang ingin anda masukkan:", "Submit", "Cancel", FormatMoney(WorkshopData[id][wsMoney]));
        }
    }
    return 1;
}

Dialog:WORKSHOP_WDMONEY(playerid, response, listitem, inputtext[])
{
    if(!response) return callcmd::workshopmenu(playerid, "");

    new id = AccountData[playerid][pInWs], ammount = strval(inputtext);
    if(ammount < 1) return Dialog_Show(playerid, WORKSHOP_WDMONEY, DIALOG_STYLE_INPUT, sprintf("(%s) Withdraw Money", WorkshopData[id][wsName]), 
    ""WHITE"Error: Tidak bisa memasukkan angka kurang dari 1!\nCurrent Money:"GREEN" %s\n\n"WHITE"Mohon masukkan jumlah uang yang ingin anda ambil:", "Submit", "Cancel", FormatMoney(WorkshopData[id][wsMoney]));

    if(WorkshopData[id][wsMoney] < ammount) return Dialog_Show(playerid, WORKSHOP_WDMONEY, DIALOG_STYLE_INPUT, sprintf("(%s) Withdraw Money", WorkshopData[id][wsName]), 
    ""WHITE"Error: Uang Workshop tidak sebanyak itu!\nCurrent Money:"GREEN" %s\n\n"WHITE"Mohon masukkan jumlah uang yang ingin anda ambil:", "Submit", "Cancel", FormatMoney(WorkshopData[id][wsMoney]));

    WorkshopData[id][wsMoney] -= ammount;
    GivePlayerMoneyEx(playerid, ammount);
    ShowItemBox(playerid, sprintf("Received %sx", FormatMoney(ammount)), "Uang", 1212);
    Workshop_Save(id);

    InsertWorkshopLogs(playerid, sprintf("Taking %s from the Workshop %s", FormatMoney(ammount), WorkshopData[id][wsName]), id);
    return 1;
}

Dialog:WORKSHOP_DPMONEY(playerid, response, listitem, inputtext[])
{
    if(!response) return callcmd::workshopmenu(playerid, "");

    new id = AccountData[playerid][pInWs], ammount = strval(inputtext);
    if(ammount < 1) return Dialog_Show(playerid, WORKSHOP_DPMONEY, DIALOG_STYLE_INPUT, sprintf("(%s) Deposit Money", WorkshopData[id][wsName]), 
    ""WHITE"Error: Tidak bisa memasukkan angka kurang dari 1!\nCurrent Money:"GREEN" %s\n\n"WHITE"Mohon masukkan jumlah uang yang ingin anda masukkan:", "Submit", "Cancel", FormatMoney(WorkshopData[id][wsMoney]));

    if(AccountData[playerid][pMoney] < ammount) return Dialog_Show(playerid, WORKSHOP_DPMONEY, DIALOG_STYLE_INPUT, sprintf("(%s) Deposit Money", WorkshopData[id][wsName]), 
    ""WHITE"Error: Uang anda tidak sebanyak itu!\nCurrent Money:"GREEN" %s\n\n"WHITE"Mohon masukkan jumlah uang yang ingin anda masukkan:", "Submit", "Cancel", FormatMoney(WorkshopData[id][wsMoney]));

    WorkshopData[id][wsMoney] += ammount;
    TakePlayerMoneyEx(playerid, ammount);
    ShowItemBox(playerid, sprintf("Removed %sx", FormatMoney(ammount)), "Uang", 1212);
    Workshop_Save(id);

    InsertWorkshopLogs(playerid, sprintf("Stored %s into the Workshop %s", FormatMoney(ammount), WorkshopData[id][wsName]), id);
    return 1;
}

