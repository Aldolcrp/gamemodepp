#include <YSI\y_hooks>

// Variabel global

new bool:IsRobbing[MAX_PLAYERS];
new RobAttempt[MAX_PLAYERS];
new RobCode[MAX_PLAYERS][11];
new bool:RobCooldown[MAX_PLAYERS];
new bool:TakeMoneyRed[MAX_PLAYERS];
new bool:RobTimer[MAX_PLAYERS];
new VaultDoor;
new BombObject;
new bool:IsBombPlanted[MAX_PLAYERS];
new bool:CanPlantBomb[MAX_PLAYERS];
new pTimerRedMoney[MAX_PLAYERS] = {-1, ...};
new RobTimerHandle[MAX_PLAYERS];

#define VAULT_CLOSED_X 1445.629272
#define VAULT_CLOSED_Y -1123.687256
#define VAULT_CLOSED_Z 24.459013
#define VAULT_CLOSED_RZ 40.0

#define VAULT_OPEN_X 1446.000
#define VAULT_OPEN_Y -1121.000
#define VAULT_OPEN_Z 24.459013
#define VAULT_OPEN_RZ 120.0

hook OnGameModeInit()
{
    new strings[80];
    VaultDoor = CreateDynamicObject(19799, 1444.822631, -1124.319946, 24.488027, 0.0, 0.0, 579.799987);
	format(strings, sizeof(strings), "Gunakan "RED"[ALT]"WHITE" untuk mengambil uang kotor");
    CreateDynamic3DTextLabel(strings, -1, 1442.643, -1120.357, 23.959 + 0.4, 3.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1);
    return 1;
}

hook OnPlayerConnect(playerid)
{
    pTimerRedMoney[playerid] = -1;
    return 1;
}

hook OnPlayerDisconnect(playerid, reason)
{
    KillTimer(pTimerRedMoney[playerid]);
    pTimerRedMoney[playerid] = -1;
    return 1;
}
hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    if(PRESSED(KEY_WALK) && IsPlayerInRangeOfPoint(playerid, 1.0, 1442.643, -1120.357, 23.959))
    {
        if (AccountData[playerid][pFamily] == -1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Kamu Bukan Anggota Geng/Family Official!");
        if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang melakukan sesuatu, harap tunggu!");
        if (IsPlayerInjured(playerid)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang pingsan!");
        if (TakeMoneyRed[playerid]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Kamu harus menunggu sebelum bisa mengambil uang lagi!");

        AccountData[playerid][ActivityTime] = 1;
        pTimerRedMoney[playerid] = SetTimerEx("TakeRedMoney", 1000, true, "d", playerid);
        PlayerTextDrawSetString(playerid, ProgressBar[playerid][3], "MENGAMBIL UANG");
        ShowProgressBar(playerid);
        ApplyAnimation(playerid, "BAR", "Barserve_give", 4.1, 1, 0, 0, 0, 0, 1);
    }
    if (PRESSED(KEY_YES) && IsPlayerInRangeOfPoint(playerid, 2.0, 1446.001, -1124.089, 23.959))
    {
        if (CanPlantBomb[playerid] && !IsBombPlanted[playerid])
        {
            if(Inventory_Count(playerid, "Bomb") < 1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Kamu Membutuhkan Bomb untuk peledak!");
            if (AccountData[playerid][pFamily] == -1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Kamu Bukan Anggota Geng/Family Official!");
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang melakukan sesuatu, harap tunggu!");
            if (IsPlayerInjured(playerid)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang pingsan!");

            PlantVaultBomb(playerid);
        }
    }
    return 1;
}

CMD:robbank(playerid, params[])
{
    new pdcount;
    foreach(new i : Player) if (AccountData[i][IsLoggedIn])
    {
        if(AccountData[i][pDutyPD]) pdcount++;
    }
    if(pdcount <= 10) return ShowTDN(playerid, NOTIFICATION_ERROR, "Minimal 10 Polisi");
    if(Inventory_Count(playerid, "Laptop Hacking") < 1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Kamu Membutuhkan Laptop Hacking");
    if (IsRobbing[playerid]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Kamu sudah memulai perampokan!");
    if(!IsPlayerInRangeOfPoint(playerid, 3.0,  1447.220, -1122.946, 23.959)) return ShowTDN(playerid, NOTIFICATION_ERROR, "KAMU TIDAK DI TEMPAT ROB BANK");
    if (AccountData[playerid][pFamily] == -1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Kamu Bukan Anggota Geng/Family Official!");
    if (RobCooldown[playerid]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Kamu harus menunggu 5 jam sebelum merampok lagi!");

    IsRobbing[playerid] = true;
    RobAttempt[playerid] = 0;
    GenerateRandomRobCode(playerid); // Buat kode acak
    ShowTDN(playerid, NOTIFICATION_INFO, "Perampokan dimulai! Masukkan kode sebanyak 7 kali dengan benar untuk membobol pintu brankas.");
    ShowRobDialog(playerid);
    return 1;
}
forward PlantVaultBomb(playerid);
public PlantVaultBomb(playerid)
{
    IsBombPlanted[playerid] = true;
    CanPlantBomb[playerid] = false;

    BombObject = CreateDynamicObject(1654, 1445.74, -1123.92, 24.3423, -10.7, -90.3999, 41.2);

    SendClientMessage(playerid, -1, ""RED"[DANGEROUS] "WHITE"Bom berhasil dipasang! Harap menjauh dari area!");
    ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 4.0, 0, 0, 0, 0, 0);
    Inventory_Remove(playerid, "Bomb", 1);
    SetTimerEx("ExplodeVaultBomb", 30000, false, "d", playerid);
    return 1;
}
forward ExplodeVaultBomb(playerid);
public ExplodeVaultBomb(playerid)
{
    if (IsValidDynamicObject(BombObject)) DestroyDynamicObject(BombObject);

    CreateExplosion(1445.5, -1123.0, 24.4, 12, 2.0);
    OpenVaultDoor(playerid);

    return 1;
}
forward GenerateRandomRobCode(playerid);
public GenerateRandomRobCode(playerid)
{
    new letters[] = "AbCdeFgHijKlmNoPqRstuvWXyZ123456789";
    for (new i = 0; i < 10; i++)
    {
        RobCode[playerid][i] = letters[random(35)];
    }
    RobCode[playerid][10] = '\0';
    return 1;
}

forward ShowRobDialog(playerid);
public ShowRobDialog(playerid)
{
    if (!IsRobbing[playerid]) return 0;
    new message[512];
    format(message, sizeof(message), "Masukkan kode berikut dengan benar (%d/7 kali):\n%s", RobAttempt[playerid] + 1, RobCode[playerid]);
    ShowPlayerDialog(playerid, DIALOG_ROBBANK, DIALOG_STYLE_INPUT, "Perampokan Bank", message, "Submit", "Cancel");
    return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    if (dialogid == DIALOG_ROBBANK)
    {
        if (!IsRobbing[playerid]) return 0;
        if (!response)
        {
            IsRobbing[playerid] = false;
            ShowTDN(playerid, NOTIFICATION_INFO, "Perampokan dibatalkan!");
            return 1;
        }
        if (!strlen(inputtext))
        {
            ShowTDN(playerid, NOTIFICATION_ERROR, "Input kosong! Silakan masukkan kode dengan benar.");
            ShowRobDialog(playerid);
            return 1;
        }
        if (strcmp(inputtext, RobCode[playerid], false) == 0)
        {
            RobAttempt[playerid]++;
            GenerateRandomRobCode(playerid);
            if (RobAttempt[playerid] >= 7)
            {
                IsRobbing[playerid] = false;
                StartRobTimer(playerid);
            }
            else
            {
                ShowTDN(playerid, NOTIFICATION_INFO, "Kode benar! Lanjutkan.");
                ShowRobDialog(playerid);
            }
        }
        else
        {
            IsRobbing[playerid] = false;
            ShowTDN(playerid, NOTIFICATION_ERROR, "Kode salah! Perampokan gagal.");
        }
    }
    return 1;
}

forward StartRobTimer(playerid);
public StartRobTimer(playerid)
{
    RobTimer[playerid] = true;
    AccountData[playerid][pRobbank] = 600;

    SendClientMessage(playerid, COLOR_BLUE, "Berhasil memasukkan semua kode dengan benar! Silahkan pasang bom ke pintu berangkas terlebih dahulu.");
    SendClientMessageToAllEx(-1, "{201EE5}POLICE:{FFFFFF} TELAH TERJADI PERAMPOKAN DI BANK PUSAT, WARGA HARAP MENJAUH DARI AREA BANK!");

    RobTimerHandle[playerid] = SetTimerEx("UpdateRobTimer", 1000, true, "d", playerid);
    return 1;
}

forward UpdateRobTimer(playerid);
public UpdateRobTimer(playerid)
{

    AccountData[playerid][pRobbank]--;
    if (AccountData[playerid][pRobbank] <= 0)
    {
        RobTimer[playerid] = false;
        PlayerTextDrawHide(playerid, RobberyTextTD[playerid][0]);
        KillTimer(RobTimerHandle[playerid]);

        RobTimer[playerid] = false;
        
        ShowTDN(playerid, NOTIFICATION_SUKSES, "Pasang bom dengan tombol 'Y' untuk membuka pintu brankas!");
        CanPlantBomb[playerid] = true;
        
        Inventory_Remove(playerid, "Laptop Hacking", 1);
        RobCooldown[playerid] = true;
        SetTimerEx("ResetRobCooldown", 18000000, false, "d", playerid);
        return 0;
    }

    new waktu[512], menit = AccountData[playerid][pRobbank] / 60, detik = AccountData[playerid][pRobbank] % 60;
    format(waktu, sizeof waktu, "~r~Mohon tetap dibank~n~selama %02d menit %02d detik", menit, detik);
    PlayerTextDrawSetString(playerid, RobberyTextTD[playerid][0], waktu);
    PlayerTextDrawShow(playerid, RobberyTextTD[playerid][0]);
    return 1;
}
forward ResetRobCooldown(playerid);
public ResetRobCooldown(playerid)
{
    RobCooldown[playerid] = false;
    return 1;
}
forward TakeDirtyMoney(playerid);
public TakeDirtyMoney(playerid)
{
    TakeMoneyRed[playerid] = false;
    return 1;
}

forward OpenVaultDoor(playerid);
public OpenVaultDoor(playerid)
{
    if (IsValidDynamicObject(VaultDoor)) DestroyDynamicObject(VaultDoor);
    SetTimer("CloseVaultDoor", 18000000, false);
    return 1;
}

forward CloseVaultDoor();
public CloseVaultDoor()
{
    if (IsValidDynamicObject(VaultDoor)) DestroyDynamicObject(VaultDoor);
    VaultDoor = CreateDynamicObject(19799, 1444.822631, -1124.319946, 24.488027, 0.0, 0.0, 579.799987);
    SendClientMessageToAll(COLOR_GREEN, "[INFO]:{FFFFFF} Pintu brankas telah berhasil di perbaiki");
    return 1;
}

forward TakeRedMoney(playerid);
public TakeRedMoney(playerid)
{
    if(!IsPlayerConnected(playerid))
    {
        KillTimer(pTimerRedMoney[playerid]);
        pTimerRedMoney[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        return 0;
    }

    if(GetTotalWeightFloat(playerid) > 50)
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Inventory anda penuh!");
        KillTimer(pTimerRedMoney[playerid]);
        pTimerRedMoney[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);

        ClearAnimations(playerid, 1);
        StopLoopingAnim(playerid);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(AccountData[playerid][ActivityTime] >= 150)
    {
    KillTimer(pTimerRedMoney[playerid]);
    pTimerRedMoney[playerid] = -1;
    AccountData[playerid][ActivityTime] = 0;
    HideProgressBar(playerid);

    ClearAnimations(playerid, 1);
    StopLoopingAnim(playerid);
    SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
    
    new rands = RandomEx(5000, 10000);
    AccountData[playerid][pRedMoney] += rands;
    SendClientMessage(playerid, COLOR_GREEN, "[INFO]:{FFFFFF} Anda berhasil merampok BANK, cepat pergi dari lokasi sebelum polisi datang");
    new string[1280];
    format(string, sizeof(string), "You takes Robbery Bank Red Money "LG_E"$%d", rands);
    SendClientMessage(playerid, COLOR_GREEN, string);
    SendAdminMessage(COLOR_RED, "* %s Has Robbery Bank Pliss Admin Spec", AccountData[playerid][pName]);

    TakeMoneyRed[playerid] = true;
    SetTimerEx("TakeDirtyMoney", 7200000, false, "d", playerid);
    
    }
    else 
    {
        AccountData[playerid][ActivityTime] ++;

        static Float:progressvalue;
        progressvalue = AccountData[playerid][ActivityTime] * 85/150;
        PlayerTextDrawTextSize(playerid, ProgressBar[playerid][2], progressvalue, 15.0);
        PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
        return 0;
    }
    return 1;
}