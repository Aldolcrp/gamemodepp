#include <YSI\y_hooks>

#define TIMER_TICK_MS        (50)    // update setiap 50 ms biar smooth
#define DELAY_NEXT_KEY_MS    (200)  // delay antar tombol 1 detik
#define TIMER_DECREASE_RATE  (1.5)   // semakin kecil makin halus
#define TIMER_START_VALUE    (100.0) // panjang awal bar

new PlayerText: VehicleRepairTD[MAX_PLAYERS][3];
new RepairKey[MAX_PLAYERS];
new bool:Repair_Caught[MAX_PLAYERS];
new bool:RepairDelayed[MAX_PLAYERS];
new bool:RepairSuccess[MAX_PLAYERS];
new Float:RepairMinigamesTimer[MAX_PLAYERS];
new RepairCount[MAX_PLAYERS];
new RepairMinigamesSetTime[MAX_PLAYERS];
new PlayerMinigameType[MAX_PLAYERS];
new PlayerTargetVeh[MAX_PLAYERS];

Fishing_ShowTextDraw(playerid)
{
    new rand = random(4);
    switch(rand)
    {
        case 0: RepairKey[playerid] = 1024;     // ALT
        case 1: RepairKey[playerid] = 262144;   // H
        case 2: RepairKey[playerid] = 131072;   // N
        case 3: RepairKey[playerid] = 65536;    // Y
        default: RepairKey[playerid] = 65536;
    }

    if(RepairKey[playerid] == 262144) PlayerTextDrawSetString(playerid, VehicleRepairTD[playerid][2], "H");
    else if(RepairKey[playerid] == 131072) PlayerTextDrawSetString(playerid, VehicleRepairTD[playerid][2], "N");
    else if(RepairKey[playerid] == 65536) PlayerTextDrawSetString(playerid, VehicleRepairTD[playerid][2], "Y");
    else if(RepairKey[playerid] == 1024) PlayerTextDrawSetString(playerid, VehicleRepairTD[playerid][2], "ALT");

    return 1;
}

FUNC::DecreaseFishing(playerid)
{
    if(RepairMinigamesTimer[playerid] > 0.0)
    {
        RepairMinigamesTimer[playerid] -= TIMER_DECREASE_RATE;
        if(RepairMinigamesTimer[playerid] < 0.0) RepairMinigamesTimer[playerid] = 0.0;

        PlayerTextDrawTextSize(playerid, VehicleRepairTD[playerid][1], (RepairMinigamesTimer[playerid] / TIMER_START_VALUE) * 29.0, 30.000);
        PlayerTextDrawShow(playerid, VehicleRepairTD[playerid][1]);
    }
    else
    {
        KillTimer(RepairMinigamesSetTime[playerid]);
        RepairSuccess[playerid] = false;
        SendClientMessage(playerid, -1, "{FF0000}Waktu habis! Kamu gagal dalam minigame.");
        Fish_End(playerid);
    }
    return 1;
}

FUNC::FishingDelayed(playerid)
{
    RepairMinigamesTimer[playerid] = TIMER_START_VALUE;
    Fishing_ShowTextDraw(playerid);
    PlayerTextDrawTextSize(playerid, VehicleRepairTD[playerid][1], 29.000, 30.000);
    PlayerTextDrawShow(playerid, VehicleRepairTD[playerid][1]);
    PlayerTextDrawShow(playerid, VehicleRepairTD[playerid][2]);
    RepairDelayed[playerid] = false;
    Repair_Caught[playerid] = true;
    RepairMinigamesSetTime[playerid] = SetTimerEx("DecreaseFishing", TIMER_TICK_MS, true, "d", playerid);
    return 1;
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    if(Repair_Caught[playerid])
    {
        if(PRESSED(RepairKey[playerid]) && !RepairDelayed[playerid])
        {
            if(RepairCount[playerid] < 3)
            {
                RepairDelayed[playerid] = true;
                Repair_Caught[playerid] = false;
                RepairCount[playerid]++;
                KillTimer(RepairMinigamesSetTime[playerid]);
                SetTimerEx("FishingDelayed", DELAY_NEXT_KEY_MS, false, "d", playerid);
                return 0;
            }
            else
            {
                RepairSuccess[playerid] = true;
                ShowTDN(playerid, NOTIFICATION_SUKSES, "Anda berhasil memperbaiki kendaraan");
                Fish_End(playerid);
                return 1;
            }
        }
        else
        {
            RepairSuccess[playerid] = false;
            ShowTDN(playerid, NOTIFICATION_ERROR, "Anda gagal karena menekan tombol yang salah");
            Fish_End(playerid);
            return 1;
        }
    }
    return Y_HOOKS_CONTINUE_RETURN_1;
}

Fish_End(playerid)
{
    KillTimer(RepairMinigamesSetTime[playerid]);
    TogglePlayerControllable(playerid, true);

    for(new i = 0; i < 3; i++)
        PlayerTextDrawHide(playerid, VehicleRepairTD[playerid][i]);

    if(PlayerMinigameType[playerid] != 0)
    {
        new veh = PlayerTargetVeh[playerid];
        new type = PlayerMinigameType[playerid];

        if(RepairSuccess[playerid])
        {
            if(type == 1) // Repair Kit
            {
                PlayerTextDrawSetString(playerid, ProgressBar[playerid][3], "MEMPERBAIKI KENDARAAN"); 
                ShowProgressBar(playerid);
                ApplyAnimation(playerid, "BD_FIRE", "wash_up", 4.1, 1, 0, 0, 0, 0, 1);
                SendRPMeAboveHead(playerid, "Mengambil repair kit dari dalam tas lalu mulai memperbaiki kendaraan di depan", X11_PLUM1);
                pUseItemTimer[playerid] = SetTimerEx("UsingRepairKit", 1000, true, "dd", playerid, veh);
            }
            else if(type == 2) // Tools Kit
            {
                PlayerTextDrawSetString(playerid, ProgressBar[playerid][3], "MEMPERBAIKI KENDARAAN"); 
                ShowProgressBar(playerid);
                ApplyAnimation(playerid, "BD_FIRE", "wash_up", 4.1, 1, 0, 0, 0, 0, 1);
                SendRPMeAboveHead(playerid, "Mengambil tools kit dari dalam tas lalu mulai memperbaiki kendaraan di depan", X11_PLUM1);
                pUseItemTimer[playerid] = SetTimerEx("UsingToolkit", 1000, true, "dd", playerid, veh);
            }
        }
        else
        {
            ShowTDN(playerid, NOTIFICATION_ERROR, "Anda gagal dalam memperbaiki kendaraan");
        }

        AccountData[playerid][ActivityTime] = 0;
        PlayerMinigameType[playerid] = 0;
        PlayerTargetVeh[playerid] = INVALID_VEHICLE_ID;
    }

    Repair_Caught[playerid] = false;
    RepairDelayed[playerid] = false;
    RepairSuccess[playerid] = false;
    RepairCount[playerid] = 0;
    RepairMinigamesTimer[playerid] = 0.0;
    return 1;
}

hook OnPlayerConnect(playerid)
{
    Fishing_CreateTextDraw(playerid);
    return Y_HOOKS_CONTINUE_RETURN_1;
}

Fishing_CreateTextDraw(playerid)
{
    VehicleRepairTD[playerid][0] = CreatePlayerTextDraw(playerid, 306.000, 368.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VehicleRepairTD[playerid][0], 33.000, 34.000);
    PlayerTextDrawAlignment(playerid, VehicleRepairTD[playerid][0], 1);
    PlayerTextDrawColor(playerid, VehicleRepairTD[playerid][0], 505290495);
    PlayerTextDrawSetShadow(playerid, VehicleRepairTD[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, VehicleRepairTD[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, VehicleRepairTD[playerid][0], 255);
    PlayerTextDrawFont(playerid, VehicleRepairTD[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, VehicleRepairTD[playerid][0], 1);

    VehicleRepairTD[playerid][1] = CreatePlayerTextDraw(playerid, 308.000, 370.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VehicleRepairTD[playerid][1], 29.000, 30.000);
    PlayerTextDrawAlignment(playerid, VehicleRepairTD[playerid][1], 1);
    PlayerTextDrawColor(playerid, VehicleRepairTD[playerid][1], 0x0080FFFF);
    PlayerTextDrawSetShadow(playerid, VehicleRepairTD[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, VehicleRepairTD[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, VehicleRepairTD[playerid][1], 255);
    PlayerTextDrawFont(playerid, VehicleRepairTD[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, VehicleRepairTD[playerid][1], 1);

    VehicleRepairTD[playerid][2] = CreatePlayerTextDraw(playerid, 323.000, 377.000, "H");
    PlayerTextDrawLetterSize(playerid, VehicleRepairTD[playerid][2], 0.300, 1.500);
    PlayerTextDrawTextSize(playerid, VehicleRepairTD[playerid][2], 0.000, 25.000);
    PlayerTextDrawAlignment(playerid, VehicleRepairTD[playerid][2], 2);
    PlayerTextDrawColor(playerid, VehicleRepairTD[playerid][2], -1);
    PlayerTextDrawUseBox(playerid, VehicleRepairTD[playerid][2], 1);
    PlayerTextDrawBoxColor(playerid, VehicleRepairTD[playerid][2], 0);
    PlayerTextDrawSetShadow(playerid, VehicleRepairTD[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, VehicleRepairTD[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, VehicleRepairTD[playerid][2], 150);
    PlayerTextDrawFont(playerid, VehicleRepairTD[playerid][2], 1);
    PlayerTextDrawSetProportional(playerid, VehicleRepairTD[playerid][2], 1);
    return 1;
}