#include <YSI\y_hooks>
hook OnPlayerDisconnect(playerid, reason)
{
    if(AccountData[playerid][pTempVehID] != INVALID_VEHICLE_ID)
    {
        new vehicleid = AccountData[playerid][pTempVehID];
        if(AccountData[playerid][menuShowed] && IsBagasiOpened[vehicleid])
        {
            IsBagasiOpened[vehicleid] = false;
            SwitchVehicleBoot(vehicleid, false);
        }
    }

    if (GetPVarInt(playerid, "PlayerInTrunk") && TrunkVehEntered[AccountData[playerid][pTempVehID]] == playerid)
    {
        new vehicleid = AccountData[playerid][pTempVehID];
        new driver = GetVehicleDriver(vehicleid);
        if (driver != INVALID_PLAYER_ID) Info(driver, "Penumpang dibagasi telah meninggalkan server.");
        TrunkVehEntered[vehicleid] = INVALID_PLAYER_ID;
        DeletePVar(playerid, "PlayerInTrunk");
    }
    return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    if(dialogid == DIALOG_BAGASI)
    {
        if(AccountData[playerid][pTempVehID] == -1)
        {
            AccountData[playerid][menuShowed] = false;
            return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak sedang mengecek bagasi!");
        }
        new vehid = AccountData[playerid][pTempVehID];

        if(!response)
        {
            IsBagasiOpened[vehid] = false;
            AccountData[playerid][menuShowed] = false; 
            SwitchVehicleBoot(PlayerVehicle[vehid][pVehPhysic], false);
            return 1;
        }

        switch(listitem)
        {
            case 0: //deposit
            {
                VehicleBagasi[playerid][vehiclebagasiID] = 0;
                VehicleBagasi[playerid][vehiclebagasiTemp] = EOS;
                VehicleBagasi[playerid][vehiclebagasiModel] = 0;
                VehicleBagasi[playerid][vehiclebagasiQuant] = 0;
                
                new str[1218], amounts, itemname[32], tss[128], Cache:execute;
                format(str, sizeof(str), "Nama Item\tJumlah\tBerat (%.3f/%.3f kg)\n", PlayerVehicle[vehid][pVehCapacity], GetVehicleWeight(PlayerVehicle[vehid][pVehModelID], vehid));
                mysql_format(g_SQL, tss, sizeof(tss), "SELECT * FROM `inventory` WHERE `ID`=%d", AccountData[playerid][pID]);
                execute = mysql_query(g_SQL, tss, true);
                new rows = cache_num_rows();
                if(rows)
                {
                    for(new x; x < rows; ++x)
                    {
                        cache_get_value_name(x, "invItem", itemname);
                        cache_get_value_name_int(x, "invQuantity", amounts);
                        format(str, sizeof(str), "%s%s\t%d\t-\n", str, itemname, amounts);
                    }
                    ShowPlayerDialog(playerid, DIALOG_BAGASI_DEPOSIT, DIALOG_STYLE_TABLIST_HEADERS, sprintf("Bagasi %s", PlayerVehicle[vehid][pVehPlate]), str, "Simpan", "Batal");
                }
                else 
                {
                    AccountData[playerid][menuShowed] = false;
                    IsBagasiOpened[vehid] = false;
                    PlayerPlaySound(playerid, 5206, 0.0, 0.0, 0.0);
                    SwitchVehicleBoot(PlayerVehicle[vehid][pVehPhysic], false);
                    return ShowPlayerDialog(playerid, DIALOG_UNUSED, DIALOG_STYLE_MSGBOX, sprintf("Bagasi %s", PlayerVehicle[vehid][pVehPlate]),
                    "Anda tidak memiliki barang untuk disimpan!", "Tutup", "");
                }

                cache_delete(execute);
            }
            case 1: //withdraw
            {
                IsBagasiOpened[vehid] = false;
                AccountData[playerid][menuShowed] = false; 
                SwitchVehicleBoot(PlayerVehicle[vehid][pVehPhysic], false);
                if(PlayerVehicle[vehid][pVehOwnerID] != AccountData[playerid][pID]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini bukan milik anda!");
                Vehicle_ShowBagasi(playerid, vehid);
            }
        }
    }
    else if(dialogid == DIALOG_BAGASI_DEPOSIT)
    {
        if(AccountData[playerid][pTempVehID] == -1)
        {
            AccountData[playerid][menuShowed] = false;
            return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak sedang mengecek bagasi!");
        }
        new vehid = AccountData[playerid][pTempVehID];

        if(!response)
        {
            IsBagasiOpened[vehid] = false;
            AccountData[playerid][menuShowed] = false;
            SwitchVehicleBoot(PlayerVehicle[vehid][pVehPhysic], false);
            return 1;
        }

        if(listitem == -1)
        {
            IsBagasiOpened[vehid] = false;
            AccountData[playerid][menuShowed] = false;
            return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda belum memilih barang!");
        }

        new tss[188], Cache:execute;
        mysql_format(g_SQL, tss, sizeof(tss), "SELECT * FROM `inventory` WHERE `ID`=%d", AccountData[playerid][pID]);
        execute = mysql_query(g_SQL, tss, true);
        if(cache_num_rows() > 0)
        {
            if(listitem >= 0 && listitem < cache_num_rows())
            {
                cache_get_value_name(listitem, "invItem", VehicleBagasi[playerid][vehiclebagasiTemp]);
                cache_get_value_name_int(listitem, "invModel", VehicleBagasi[playerid][vehiclebagasiModel]);
                cache_get_value_name_int(listitem, "invQuantity", VehicleBagasi[playerid][vehiclebagasiQuant]);

                new shstr[528];
                format(shstr, sizeof(shstr), "Anda akan menyimpan item:\nNama: %s\nJumlah di tas: %d\nMohon masukkan berapa jumlah yang ingin masukkan ke bagasi:", VehicleBagasi[playerid][vehiclebagasiTemp], VehicleBagasi[playerid][vehiclebagasiQuant]);
                ShowPlayerDialog(playerid, DIALOG_BAGASI_IN, DIALOG_STYLE_INPUT, sprintf("Bagasi %s", PlayerVehicle[vehid][pVehPlate]),
                shstr, "Input", "Batal");
            }
        }

        cache_delete(execute);
    }
    else if (dialogid == DIALOG_BAGASI_IN)
    {
        if (AccountData[playerid][pTempVehID] == -1)
        {
            AccountData[playerid][menuShowed] = false;
            return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak sedang mengecek bagasi!");
        }
        new vehid = AccountData[playerid][pTempVehID];

        if (!response)
        {
            IsBagasiOpened[vehid] = false;
            AccountData[playerid][menuShowed] = false;
            BagasiProcessing[playerid] = false;
            SwitchVehicleBoot(PlayerVehicle[vehid][pVehPhysic], false);
            return 1;
        }

        if (BagasiProcessing[playerid])
        {
            IsBagasiOpened[vehid] = false;
            AccountData[playerid][menuShowed] = false;
            AccountData[playerid][pTempVehID] = -1;
            return ShowTDN(playerid, NOTIFICATION_WARNING, "Sedang memproses permintaan, tunggu sebentar!");
        }
        BagasiProcessing[playerid] = true;

        if (AccountData[playerid][ActivityTime] != 0)
        {
            BagasiProcessing[playerid] = false;
            IsBagasiOpened[vehid] = false;
            AccountData[playerid][menuShowed] = false;
            AccountData[playerid][pTempVehID] = -1;
            return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang melakukan sesuatu, tunggu hingga progress selesai!");
        }

        new shstr[512];
        if (isnull(inputtext) || !IsNumeric(inputtext))
        {
            BagasiProcessing[playerid] = false;
            IsBagasiOpened[vehid] = true;
            AccountData[playerid][menuShowed] = true;
            format(shstr, sizeof(shstr), "Anda akan menyimpan item:\nNama: %s\nJumlah di tas: %d\nMohon masukkan jumlah valid!",
                VehicleBagasi[playerid][vehiclebagasiTemp], VehicleBagasi[playerid][vehiclebagasiQuant]);
            ShowPlayerDialog(playerid, DIALOG_BAGASI_IN, DIALOG_STYLE_INPUT,
                sprintf("Bagasi %s", PlayerVehicle[vehid][pVehPlate]), shstr, "Input", "Batal");
            return 1;
        }

        new requested = strval(inputtext);

        if (PlayerVehicle[vehid][pVehCapacity] >= GetVehicleWeight(PlayerVehicle[vehid][pVehModelID], vehid))
        {
            BagasiProcessing[playerid] = false;
            IsBagasiOpened[vehid] = false;
            AccountData[playerid][menuShowed] = false;
            return ShowTDN(playerid, NOTIFICATION_ERROR, "Bagasi anda telah penuh!");
        }

        new avail = Inventory_Count(playerid, VehicleBagasi[playerid][vehiclebagasiTemp]);
        if (avail <= 0)
        {
            BagasiProcessing[playerid] = false;
            IsBagasiOpened[vehid] = false;
            AccountData[playerid][menuShowed] = false;
            AccountData[playerid][pTempVehID] = -1;
            return ShowTDN(playerid, NOTIFICATION_ERROR, "Item tidak tersedia di inventory.");
        }

        if (requested < 1) requested = 1;
        if (requested > avail) requested = avail;

        Inventory_Remove(playerid, VehicleBagasi[playerid][vehiclebagasiTemp], requested);
        AddCapacityVehicle(vehid, VehicleBagasi[playerid][vehiclebagasiTemp], requested);

        new invstr[1024];
        mysql_format(g_SQL, invstr, sizeof(invstr), "INSERT INTO `vehicle_bagasi` (`vID`,`Item`,`Model`,`Quantity`) VALUES(%d, '%e', %d, %d) ON DUPLICATE KEY UPDATE `Quantity` = `Quantity` + %d", PlayerVehicle[vehid][pVehID], VehicleBagasi[playerid][vehiclebagasiTemp], VehicleBagasi[playerid][vehiclebagasiModel], requested, requested);
        mysql_tquery(g_SQL, invstr, "OnBagasiDeposit", "i", playerid);

        BagasiProcessing[playerid] = false;
        IsBagasiOpened[vehid] = false;
        AccountData[playerid][menuShowed] = false;
        AccountData[playerid][pTempVehID] = -1;
    }
    else if(dialogid == DIALOG_BAGASI_WITHDRAW)
    {
        if(AccountData[playerid][pTempVehID] == -1)
        {
            AccountData[playerid][menuShowed] = false;
            return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak sedang mengecek bagasi!");
        }
        new vehid = AccountData[playerid][pTempVehID];

        if(!response)
        {
            IsBagasiOpened[vehid] = false;
            AccountData[playerid][menuShowed] = false;
            SwitchVehicleBoot(PlayerVehicle[vehid][pVehPhysic], false);
            return 1;
        }

        if(listitem == -1)
        {
            IsBagasiOpened[vehid] = false;
            AccountData[playerid][menuShowed] = false;
            return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda belum memilih barang!");
        }

        new tss[100];
        mysql_format(g_SQL, tss, sizeof(tss), "SELECT * FROM `vehicle_bagasi` WHERE `vID`=%d", PlayerVehicle[vehid][pVehID]);
        mysql_query(g_SQL, tss);
        if(cache_num_rows() > 0)
        {
            if(listitem >= 0 && listitem < cache_num_rows())
            {
                cache_get_value_name_int(listitem, "ID", VehicleBagasi[playerid][vehiclebagasiID]);
                cache_get_value_name(listitem, "Item", VehicleBagasi[playerid][vehiclebagasiTemp]);
                cache_get_value_name_int(listitem, "Model", VehicleBagasi[playerid][vehiclebagasiModel]);
                cache_get_value_name_int(listitem, "Quantity", VehicleBagasi[playerid][vehiclebagasiQuant]);

                new shstr[512];
                format(shstr, sizeof(shstr), "Anda akan mengambil item:\nNama: %s\nJumlah di bagasi: %d\nMohon masukkan berapa jumlah yang ingin anda ambil dari bagasi:", VehicleBagasi[playerid][vehiclebagasiTemp], VehicleBagasi[playerid][vehiclebagasiQuant]);
                ShowPlayerDialog(playerid, DIALOG_BAGASI_OUT, DIALOG_STYLE_INPUT, sprintf("Bagasi %s", PlayerVehicle[vehid][pVehPlate]),
                shstr, "Input", "Batal");
            }
        }
    }
    else if(dialogid == DIALOG_BAGASI_OUT)
    {
        if(AccountData[playerid][pTempVehID] == -1)
        {
            AccountData[playerid][menuShowed] = false;
            return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak sedang mengecek bagasi!");
        }
        new vehid = AccountData[playerid][pTempVehID];

        if(!response)
        {
            IsBagasiOpened[vehid] = false;
            AccountData[playerid][menuShowed] = false;
            SwitchVehicleBoot(PlayerVehicle[vehid][pVehPhysic], false);
            return 1;
        }

        if(!IsValidVehicle(PlayerVehicle[vehid][pVehPhysic]))
        {
            IsBagasiOpened[vehid] = false;
            AccountData[playerid][menuShowed] = false;
            VehicleBagasi[playerid][vehiclebagasiID] = 0;
            VehicleBagasi[playerid][vehiclebagasiTemp] = EOS;
            VehicleBagasi[playerid][vehiclebagasiModel] = 0;
            VehicleBagasi[playerid][vehiclebagasiQuant] = 0;
            ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan tersebut tidak valid!");
            return 1;
        }

        if(GetNearestVehicle(playerid) != PlayerVehicle[vehid][pVehPhysic])
        {
            IsBagasiOpened[vehid] = false;
            AccountData[playerid][menuShowed] = false;
            VehicleBagasi[playerid][vehiclebagasiID] = 0;
            VehicleBagasi[playerid][vehiclebagasiTemp] = EOS;
            VehicleBagasi[playerid][vehiclebagasiModel] = 0;
            VehicleBagasi[playerid][vehiclebagasiQuant] = 0;
            ShowTDN(playerid, NOTIFICATION_ERROR, "Anda harus berada di dekat bagasi!");
            return 1;
        }

        new shstr[512];
        if(isnull(inputtext))
        {
            IsBagasiOpened[vehid] = true;
            AccountData[playerid][menuShowed] = true;
            format(shstr, sizeof(shstr), "Anda akan mengambil item:\nNama: %s\nJumlah di bagasi: %d\nTidak dapat diisi kosong!\nMohon masukkan berapa jumlah yang ingin anda ambil dari bagasi:", VehicleBagasi[playerid][vehiclebagasiTemp], VehicleBagasi[playerid][vehiclebagasiQuant]);
            ShowPlayerDialog(playerid, DIALOG_BAGASI_OUT, DIALOG_STYLE_INPUT, sprintf("Bagasi %s", PlayerVehicle[vehid][pVehPlate]),
            shstr, "Input", "Batal");
            return 1;
        }

        if(!IsNumeric(inputtext))
        {
            IsBagasiOpened[vehid] = true;
            AccountData[playerid][menuShowed] = true;
            format(shstr, sizeof(shstr), "Anda akan mengambil item:\nNama: %s\nJumlah di bagasi: %d\nHanya dapat diisi angka!\nMohon masukkan berapa jumlah yang ingin anda ambil dari bagasi:", VehicleBagasi[playerid][vehiclebagasiTemp], VehicleBagasi[playerid][vehiclebagasiQuant]);
            ShowPlayerDialog(playerid, DIALOG_BAGASI_OUT, DIALOG_STYLE_INPUT, sprintf("Bagasi %s", PlayerVehicle[vehid][pVehPlate]),
            shstr, "Input", "Batal");
            return 1;
        }

        if(strval(inputtext) < 1 || strval(inputtext) > VehicleBagasi[playerid][vehiclebagasiQuant])
        {
            IsBagasiOpened[vehid] = true;
            AccountData[playerid][menuShowed] = true;
            format(shstr, sizeof(shstr), "Anda akan mengambil item:\nNama: %s\nJumlah di bagasi: %d\nJumlah tidak valid!\nMohon masukkan berapa jumlah yang ingin anda ambil dari bagasi:", VehicleBagasi[playerid][vehiclebagasiTemp], VehicleBagasi[playerid][vehiclebagasiQuant]);
            ShowPlayerDialog(playerid, DIALOG_BAGASI_OUT, DIALOG_STYLE_INPUT, sprintf("Bagasi %s", PlayerVehicle[vehid][pVehPlate]),
            shstr, "Input", "Batal");
            return 1;
        }
        new quantity = strval(inputtext), jts[150];

        if(GetTotalWeightFloat(playerid) >= 50) 
        {
            IsBagasiOpened[vehid] = false;
            AccountData[playerid][menuShowed] = false;   
            return ShowTDN(playerid, NOTIFICATION_ERROR, "Inventory anda telah penuh!");
        }

        if(Inventory_Items(playerid) >= MAX_INVENTORY) 
        {
            IsBagasiOpened[vehid] = false;
            AccountData[playerid][menuShowed] = false;   
            return ShowTDN(playerid, NOTIFICATION_ERROR, "Inventory anda telah penuh!");
        }

        VehicleBagasi[playerid][vehiclebagasiQuant] -= quantity;
        if(VehicleBagasi[playerid][vehiclebagasiQuant] > 0)
        {
            mysql_format(g_SQL, jts, sizeof(jts), "UPDATE `vehicle_bagasi` SET `Quantity`=%d WHERE `ID`=%d", VehicleBagasi[playerid][vehiclebagasiQuant], VehicleBagasi[playerid][vehiclebagasiID]);
            mysql_tquery(g_SQL, jts);
        }
        else 
        {
            mysql_format(g_SQL, jts, sizeof(jts), "DELETE FROM `vehicle_bagasi` WHERE `ID`=%d", VehicleBagasi[playerid][vehiclebagasiID]);
            mysql_tquery(g_SQL, jts);
        }
        SwitchVehicleBoot(PlayerVehicle[vehid][pVehPhysic], false);
        Inventory_Add(playerid, VehicleBagasi[playerid][vehiclebagasiTemp], VehicleBagasi[playerid][vehiclebagasiModel], quantity);
        ShowItemBox(playerid, sprintf("Received %dx", quantity), VehicleBagasi[playerid][vehiclebagasiTemp], VehicleBagasi[playerid][vehiclebagasiModel]);
        ReduceCapacityVehicle(vehid, VehicleBagasi[playerid][vehiclebagasiTemp], quantity);

        IsBagasiOpened[vehid] = false;
        AccountData[playerid][menuShowed] = false;
        VehicleBagasi[playerid][vehiclebagasiID] = 0;
        VehicleBagasi[playerid][vehiclebagasiTemp] = EOS;
        VehicleBagasi[playerid][vehiclebagasiModel] = 0;
        VehicleBagasi[playerid][vehiclebagasiQuant] = 0;
    }
    if(dialogid == DIALOG_VHOLSTER)
    {
        if(!response)
        {
            SwitchVehicleBoot(PlayerVehicle[AccountData[playerid][pTempVehID]][pVehPhysic], false);
            NearestVehicleID[playerid] = INVALID_VEHICLE_ID;
            AccountData[playerid][pTempVehID] = INVALID_VEHICLE_ID;
            return 1;
        }
        if(response)
        {
            switch(listitem)
            {
                case 0: //simpan
                {
                    if(NearestVehicleID[playerid] == PlayerVehicle[AccountData[playerid][pTempVehID]][pVehPhysic])
                    {
                        new 
                            weaponid = GetPlayerWeaponEx(playerid),
                            ammo = GetPlayerAmmoEx(playerid);
                        
                        if(!weaponid)
                            return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak sedang memegang senjata!");

                        if(!PlayerVehicle[AccountData[playerid][pTempVehID]][pVehWeapon][0])
                        {
                            PlayerVehicle[AccountData[playerid][pTempVehID]][pVehWeapon][0] = weaponid;
                            PlayerVehicle[AccountData[playerid][pTempVehID]][pVehAmmo][0] += ammo;
                        }
                        else if(!PlayerVehicle[AccountData[playerid][pTempVehID]][pVehWeapon][1])
                        {
                            PlayerVehicle[AccountData[playerid][pTempVehID]][pVehWeapon][1] = weaponid;
                            PlayerVehicle[AccountData[playerid][pTempVehID]][pVehAmmo][1] += ammo;
                        }
                        else if(!PlayerVehicle[AccountData[playerid][pTempVehID]][pVehWeapon][2])
                        {
                            PlayerVehicle[AccountData[playerid][pTempVehID]][pVehWeapon][2] = weaponid;
                            PlayerVehicle[AccountData[playerid][pTempVehID]][pVehAmmo][2] += ammo;
                        }
                        else 
                        {
                            SwitchVehicleBoot(PlayerVehicle[AccountData[playerid][pTempVehID]][pVehPhysic], false);
                            return ShowTDN(playerid, NOTIFICATION_ERROR, "Holster kendaraan ini sudah penuh!");
                        }

                        ResetWeapon(playerid, weaponid);
                        ShowTDN(playerid, NOTIFICATION_SUKSES, sprintf("Berhasil menyimpan %s kedalam bagasi", ReturnWeaponName(weaponid)));
                        SwitchVehicleBoot(PlayerVehicle[AccountData[playerid][pTempVehID]][pVehPhysic], false);
                        SavePlayerVehicle(AccountData[playerid][pTempVehID]);
                        SavePlayerWeapon(playerid);
                    }
                    NearestVehicleID[playerid] = INVALID_VEHICLE_ID;
                    AccountData[playerid][pTempVehID] = -1;
                    return 1;
                }
                case 1: //ambil
                {
                    if(NearestVehicleID[playerid] == PlayerVehicle[AccountData[playerid][pTempVehID]][pVehPhysic])
                    {
                        new xjjs[528], count;
                        format(xjjs, sizeof(xjjs), "#\tWeapon\tAmmo\n");
                        for(new id; id < 3; id ++)
                        {
                            if(PlayerVehicle[AccountData[playerid][pTempVehID]][pVehWeapon][id])
                            {
                                format(xjjs, sizeof(xjjs), "%s"GREEN"%d\t"GREEN"%s\t"GREEN"%d\n", xjjs, id, ReturnWeaponName(PlayerVehicle[AccountData[playerid][pTempVehID]][pVehWeapon][id]), PlayerVehicle[AccountData[playerid][pTempVehID]][pVehAmmo][id]);
                                ListHolster[playerid][count++] = id;
                            }
                        }
                        if(!count)
                        {
                            SwitchVehicleBoot(PlayerVehicle[AccountData[playerid][pTempVehID]][pVehPhysic], false);
                            ShowTDN(playerid, NOTIFICATION_ERROR, "Holster kendaraan ini kosong!"); 
                            return 1;
                        }
                        ShowPlayerDialog(playerid, DIALOG_VHOLSTER_WITHDRAW, DIALOG_STYLE_TABLIST_HEADERS, sprintf("Holster %s", PlayerVehicle[AccountData[playerid][pTempVehID]][pVehPlate]), xjjs, "Ambil", "Batal");
                    }
                }
            }
        }
    }
    else if(dialogid == DIALOG_VHOLSTER_WITHDRAW)
    {
        new id = ListHolster[playerid][listitem];
        if(!response)
        {
            SwitchVehicleBoot(NearestVehicleID[playerid], false);
            NearestVehicleID[playerid] = INVALID_VEHICLE_ID;
            AccountData[playerid][pTempVehID] = -1;
            return 1;
        }

        if(NearestVehicleID[playerid] == PlayerVehicle[AccountData[playerid][pTempVehID]][pVehPhysic])
        {
            if(PlayerVehicle[AccountData[playerid][pTempVehID]][pVehWeapon][id] != 0)
            {
                GivePlayerWeaponEx(playerid, PlayerVehicle[AccountData[playerid][pTempVehID]][pVehWeapon][id], PlayerVehicle[AccountData[playerid][pTempVehID]][pVehAmmo][id]);

                ShowTDN(playerid, NOTIFICATION_SUKSES, sprintf("Berhasil mengambil %s dengan %d ammo", ReturnWeaponName(PlayerVehicle[AccountData[playerid][pTempVehID]][pVehWeapon][id]), PlayerVehicle[AccountData[playerid][pTempVehID]][pVehAmmo][id]));

                PlayerVehicle[AccountData[playerid][pTempVehID]][pVehWeapon][id] = 0;
                PlayerVehicle[AccountData[playerid][pTempVehID]][pVehAmmo][id] = 0;
                SavePlayerVehicle(AccountData[playerid][pTempVehID]);
                SavePlayerWeapon(playerid);
            }
            SwitchVehicleBoot(PlayerVehicle[AccountData[playerid][pTempVehID]][pVehPhysic], false);
            NearestVehicleID[playerid] = INVALID_VEHICLE_ID;
            AccountData[playerid][pTempVehID] = -1;
            return 1;
        }
    }
    else if(dialogid == DIALOG_PLAYER_MENU)
    {
        if(!response) return 1;
        switch(listitem)
        {
            case 0: // lihat ktp
            {
                if(!AccountData[playerid][Ktp]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak memiliki KTP!");
                ShowKTPTD(playerid);
            }
            case 1: // Tunjukan KTP
            {
                if(!AccountData[playerid][Ktp]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak memiliki KTP!");
                foreach(new i : Player) if (IsPlayerConnected(i)) if (i != playerid)
                {
                    if(IsPlayerNearPlayer(playerid, i, 3.0))
                    {
                        ShowMyKTPTD(playerid, i);
                    }
                }
            }
            case 2: // Lihat SIM
            {
                DisplayLicensi(playerid, playerid);
            }
            case 3: // Tunjukan SIM
            {
                foreach(new i : Player) if (IsPlayerConnected(i)) if (i != playerid)
                {
                    if(IsPlayerNearPlayer(playerid, i, 3.0))
                    {
                        DisplayLicensi(i, playerid);
                    }
                }
            }
            case 4: // Lihat SKWB
            {
                if (!AccountData[playerid][pSKWB]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak memiliki SKWB!");

                DisplaySKWB(playerid, playerid);
            }
            case 5: // tunjukan SKWB
            {
                if(!AccountData[playerid][pSKWB]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak memiliki SKWB!");
                
                foreach(new i : Player) if (IsPlayerConnected(i))
                {
                    if(IsPlayerNearPlayer(playerid, i, 3.0))
                    {
                        DisplaySKWB(playerid, i);
                    }
                }
            }
        }
    }
    else if(dialogid == DIALOG_PLAYER_DOKUMENT)
    {
        if(!response) return 1;
        switch(listitem)
        {
            case 0: //lihat bpjs
            {
                if(!AccountData[playerid][pBPJS]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak memiliki BPJS/Expired!");
                DisplayBPJS(playerid, playerid);
            }
            case 1: //tunjukan bpjs
            {
                if(!AccountData[playerid][pBPJS]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak memiliki BPJS/Expired!");
                foreach(new i : Player) if (IsPlayerConnected(i)) if (i != playerid)
                {   
                    if(IsPlayerNearPlayer(playerid, i, 3.0))
                    {
                        DisplayBPJS(i, playerid);
                    }
                }
            }
            case 2: //lihat skck
            {
                if(!AccountData[playerid][pSKCK]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak memiliki SKCK/Expired!");
                DisplaySKCK(playerid, playerid);
            }
            case 3: //tunjuk skck
            {
                if(!AccountData[playerid][pSKCK]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak memiliki SKCK/Expired!");
                foreach(new i : Player) if (IsPlayerConnected(i)) if (i != playerid)
                {   
                    if(IsPlayerNearPlayer(playerid, i, 3.0))
                    {
                        DisplaySKCK(i, playerid);
                    }
                }
            }
            case 4: //lihat sks
            {
                if(!AccountData[playerid][pSKS]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak memiliki Surat Keterangan Sehat/Expired!");
                DisplaySKS2(playerid, playerid);
            }
            case 5: //tunjuk sks
            {
                if(!AccountData[playerid][pSKS]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak memiliki Surat Keterangan Sehat/Expired!");
                foreach(new i : Player) if (IsPlayerConnected(i)) if (i != playerid)
                {   
                    if(IsPlayerNearPlayer(playerid, i, 3.0))
                    {
                        DisplaySKS2(i, playerid);
                    }
                }
            }
        }
    }
    else if(dialogid == DIALOG_VEHICLETRUNK_MENU)
    {
        if(!response) 
        {
            NearestVehicleID[playerid] = INVALID_VEHICLE_ID;
            return 1;
        }

        new vehid = NearestVehicleID[playerid];
        if(SidejobVehicles(vehid) || VehicleCore[vehid][vehAdmin]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan tersebut static/sidejob!");
        switch(listitem)
        {
            
            case 0: // trunk
            {
                static Float:x, Float:y, Float:z;
                GetVehicleBoot(vehid, x, y, z);

                if(!IsPlayerInRangeOfPoint(playerid, 3.0, x, y, z)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda harus berada di dekat trunk!");
                if(GetPlayerState(playerid) != PLAYER_STATE_ONFOOT) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda harus berada diluar kendaraan!");
                switch (GetTrunkStatus(vehid))
                {
                    case false:
                    {
                        SwitchVehicleBoot(vehid, true);
                    }
                    case true:
                    {
                        SwitchVehicleBoot(vehid, false);
                    }
                }
            }
            case 1: // Masuk Ke Trunk
            {
                static Float:x, Float:y, Float:z;
                GetVehicleBoot(vehid, x, y, z);
                if(GetPlayerState(playerid) != PLAYER_STATE_ONFOOT) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda harus berada diluar kendaran!");
                if(IsABike(vehid)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak memiliki bagasi!");
                if(!IsPlayerInRangeOfPoint(playerid, 1.8, x, y, z)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda harus berada didekat bagasi!");
                if(TrunkVehEntered[vehid] != INVALID_PLAYER_ID) return ShowTDN(playerid, NOTIFICATION_ERROR, "Bagasi telah dimasuki oleh seseorang! (Max)");

                foreach(new carid : PvtVehicles)
                {
                    if(vehid == PlayerVehicle[carid][pVehPhysic])
                    {
                        if(PlayerVehicle[carid][pVehLocked]) 
                            return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini terkunci!");
                    }
                }
                AccountData[playerid][pHealth] = GetHealth(playerid);
                AccountData[playerid][pArmour] = GetArmor(playerid);

                TogglePlayerSpectating(playerid, true);
                PlayerSpectateVehicle(playerid, vehid);
                TrunkVehEntered[vehid] = playerid;

                SetPlayerHealthEx(playerid, AccountData[playerid][pHealth]);
                SetPlayerArmourEx(playerid, AccountData[playerid][pArmour]);
                
                AccountData[playerid][pTempVehID] = vehid;
                Info(playerid, "Anda masuk ke dalam bagasi kendaraan "YELLOW"%s"WHITE" gunakan '"YELLOW"/exittrunk"WHITE"' untuk keluar", GetVehicleName(vehid));
                SetPVarInt(playerid, "PlayerInTrunk", 1);
            }
            case 2:
            {
                new frmtx[512];
                NearestCount[playerid] = 0;
                frmtx[0] = EOS;

                foreach(new i : Player)
                {
                    if(i != playerid && IsPlayerNearPlayer(playerid, i, 2.5))
                    {
                        new pname[MAX_PLAYER_NAME];
                        GetPlayerName(i, pname, sizeof(pname));

                        format(frmtx, sizeof(frmtx), "%s%d. %s (ID:%d)\n", 
                            frmtx, 
                            NearestCount[playerid] + 1,
                            pname,                      
                            i                           
                        );

                        NearestPlayer[playerid][NearestCount[playerid]++] = i;
                    }
                }

                if(!NearestCount[playerid]) 
                    return ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak ada pemain di dekatmu!");

                ShowPlayerDialog(playerid, DIALOG_TRUNKIN, DIALOG_STYLE_LIST, 
                    "Pilih Player untuk dimasukkan ke Bagasi", 
                    frmtx, "Pilih", "Batal");
            }
            case 3:
            {
                new frmtx[512];
                NearestCount[playerid] = 0;
                frmtx[0] = EOS;

                foreach(new i : Player)
                {
                    if(i != playerid && IsPlayerInTrunk(i))
                    {
                        new pname[MAX_PLAYER_NAME];
                        GetPlayerName(i, pname, sizeof(pname));

                        format(frmtx, sizeof(frmtx), "%s%d. %s (ID:%d)\n", 
                            frmtx, 
                            NearestCount[playerid] + 1,
                            pname,
                            i
                        );

                        NearestPlayer[playerid][NearestCount[playerid]++] = i;
                    }
                }

                if(!NearestCount[playerid]) 
                    return ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak ada pemain di dalam bagasi!");

                ShowPlayerDialog(playerid, DIALOG_TRUNKOUT, DIALOG_STYLE_LIST, 
                    "Pilih Player untuk dikeluarkan dari Bagasi", 
                    frmtx, "Keluarkan", "Batal");
            }
            case 4:
            {
                if(!IsPlayerInAnyVehicle(playerid)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak sedang didalam kendaraan!");

                if(GetPlayerState(playerid) != PLAYER_STATE_DRIVER) return ShowTDN(playerid, NOTIFICATION_ERROR, "Hanya pengemudi yang bisa menendang penumpang!");

                Dialog_Show(playerid, DIALOG_EJECT_SEAT, DIALOG_STYLE_LIST, "Eject Penumpang", "Kursi 2\nKursi 3\nKursi 4", "Pilih", "Batal");
            }
        }
    }
    else if(dialogid == DIALOG_TRUNKIN && response)
    {
        new targetid = NearestPlayer[playerid][listitem];
        if(!IsPlayerConnected(targetid)) 
            return ShowTDN(playerid, NOTIFICATION_ERROR, "Player tidak valid!");

        PutPlayerInTrunk(playerid, targetid);
    }
    else if(dialogid == DIALOG_TRUNKOUT && response)
    {
        new targetid = NearestPlayer[playerid][listitem];
        if(!IsPlayerConnected(targetid)) 
            return ShowTDN(playerid, NOTIFICATION_ERROR, "Player tidak valid!");

        RemovePlayerFromTrunk(playerid, targetid);
    }
    else if(dialogid == DIALOG_CHANGE_PASSWORD)
    {
        if(!response) return ShowTDN(playerid, NOTIFICATION_INFO, "Anda membatalkan pergantian password untuk akun anda!");
        if(isnull(inputtext)) return ShowPlayerDialog(playerid, DIALOG_CHANGE_PASSWORD, DIALOG_STYLE_INPUT, ""TTR"Astral City Roleplay "WHITE"- Ubah Password", 
        "Error: Tidak dapat diisi kosong!\nMohon masukkan kata sandi baru yang ingin anda terapkan:", "Change", "Cancel");

        if(IsNumeric(inputtext)) return ShowPlayerDialog(playerid, DIALOG_CHANGE_PASSWORD, DIALOG_STYLE_INPUT, ""TTR"Astral City Roleplay "WHITE"- Ubah Password", 
        "Error: Tidak dapat diisi angka saja!\nMohon masukkan kata sandi baru yang ingin anda terapkan:", "Change", "Cancel");

        if(strlen(inputtext) < 7 || strlen(inputtext) > 24) return ShowPlayerDialog(playerid, DIALOG_CHANGE_PASSWORD, DIALOG_STYLE_INPUT, ""TTR"Astral City Roleplay "WHITE"- Ubah Password", 
        "Error: Tidak dapat kurang dari 7 characters atau lebih dari 24 characters!\nMohon masukkan kata sandi baru yang ingin anda terapkan:", "Change", "Cancel");

        for (new i = 0; i < 16; i++) AccountData[playerid][pSalt][i] = random(94) + 33;
		SHA256_PassHash(inputtext, AccountData[playerid][pSalt], AccountData[playerid][pPassword], 65);

        new query[255];
        mysql_format(g_SQL, query, sizeof(query), "UPDATE `playerucp` SET `password`='%e', `salt`='%e' WHERE `ucp`='%e'", AccountData[playerid][pPassword], AccountData[playerid][pSalt], AccountData[playerid][pUCP]);
        mysql_tquery(g_SQL, query);
        ShowTDN(playerid, NOTIFICATION_INFO, sprintf("Anda berhasil mengubah password anda. New Password "YELLOW"(%s)", inputtext));
    }
    /*else if(dialogid == DIALOG_MODSHOP)
    {
        if(response)
        {
            switch(listitem)
            {
                case 0:
				{   
					ShowPlayerSelectionMenu(playerid, MODEL_SELECTION_Transfender, "MODSHOP:", transfender, sizeof(transfender));
				}
				case 1:
				{   
					ShowPlayerSelectionMenu(playerid, MODEL_SELECTION_Waa, "MODSHOP:", waa, sizeof(waa));
			    }
				case 2:
				{   
					ShowPlayerSelectionMenu(playerid, MODEL_SELECTION_Loco, "MODSHOP:", loco, sizeof(loco));
			    }
				case 3:
				{
				    if(AccountData[playerid][pVip] < 2) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda bukan Pengguna VIP!");
				    static 
				        vehicle;
				    
				    vehicle = Vehicle_Nearest(playerid);
				    if(vehicle != INVALID_VEHICLE_ID) 
				    {
				    	Vehicle_TextAdd(playerid, vehicle, 18661, OBJECT_TYPE_TEXT);
				    	return 1;
				    } 
				    else ShowTDN(playerid, NOTIFICATION_ERROR, "Invalid vehicle id.");
				    
				}
				case 4:
				{
				    if(AccountData[playerid][pVip] < 2) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda bukan Pengguna VIP!");
				    static 
				        vehicle;
				    
				    vehicle = Vehicle_Nearest(playerid);
				    if(vehicle != INVALID_VEHICLE_ID) 
				    {
				    	Vehicle_SpotLightAdd(playerid, vehicle, 19281, OBJECT_TYPE_LIGHT);
				    	return 1;
				    } 
				    else ShowTDN(playerid, NOTIFICATION_ERROR, "Invalid vehicle id.");
				}
            }
        }
    }*/
    return 1;
}

PutPlayerInTrunk(playerid, targetid)
{
    new vehid = GetNearestVehicle2(playerid, 3.5);
    if(vehid == INVALID_VEHICLE_ID) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak didekat kendaraan manapun!");

    if(IsABike(vehid)) 
        return SendClientMessage(playerid, -1, "Kendaraan ini tidak memiliki bagasi!");

    new Float:x, Float:y, Float:z;
    GetVehicleBoot(vehid, x, y, z);

    if(!IsPlayerInRangeOfPoint(playerid, 2.5, x, y, z)) 
        return SendClientMessage(playerid, -1, "Kamu harus berada dekat bagasi!");

    if(TrunkVehEntered[vehid] != INVALID_PLAYER_ID) 
        return SendClientMessage(playerid, -1, "Bagasi sudah terisi!");

    // simpan status HP/armor
    GetPlayerHealth(targetid, AccountData[targetid][pHealth]);
    GetPlayerArmour(targetid, AccountData[targetid][pArmour]);

    TogglePlayerSpectating(targetid, true);
    IsInTrunk[targetid] = true;
    PlayerSpectateVehicle(targetid, vehid);
    TrunkVehEntered[vehid] = targetid;

    SetPlayerHealth(targetid, AccountData[targetid][pHealth]);
    SetPlayerArmour(targetid, AccountData[targetid][pArmour]);

    AccountData[targetid][pTempVehID] = vehid;

    SendClientMessage(playerid, -1, "Kamu memasukkan player ke dalam bagasi.");
    SendClientMessage(targetid, -1, "Kamu dimasukkan ke dalam bagasi kendaraan!");
    return 1;
}

RemovePlayerFromTrunk(playerid, targetid)
{
    if(!IsPlayerConnected(targetid)) return 0;
    if(!IsInTrunk[targetid]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Player itu tidak ada di bagasi!");

    TogglePlayerSpectating(targetid, false);

    new Float:x, Float:y, Float:z;
    GetPlayerPos(playerid, x, y, z);

    x += 1.0;

    SetPlayerPos(targetid, x, y, z);
    SetPlayerVirtualWorld(targetid, GetPlayerVirtualWorld(playerid));
    SetPlayerInterior(targetid, GetPlayerInterior(playerid));

    IsInTrunk[targetid] = false;
    new vehid = AccountData[targetid][pTempVehID];
    if(vehid != INVALID_VEHICLE_ID) TrunkVehEntered[vehid] = INVALID_PLAYER_ID;
    AccountData[targetid][pTempVehID] = INVALID_VEHICLE_ID;

    new pname[MAX_PLAYER_NAME];
    GetPlayerName(targetid, pname, sizeof(pname));

    new msg[128];
    format(msg, sizeof(msg), "Kamu mengeluarkan %s dari bagasi.", pname);
    ShowTDN(playerid, NOTIFICATION_SUKSES, msg);

    format(msg, sizeof(msg), "Kamu telah dikeluarkan dari bagasi oleh %s.", AccountData[playerid][pName]);
    ShowTDN(targetid, NOTIFICATION_INFO, msg);
    return 1;
}

AddCapacityVehicle(vehicleid, const item[], quantity)
{
    if(!strcmp(item, "Nasi Goreng"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.01;
    }
    else if(!strcmp(item, "Kopi Kenangan"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.01;
    }
    else if(!strcmp(item, "Batu Kotor"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.030;
    }
    else if(!strcmp(item, "Nasi Uduk"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.01;
    }
    else if(!strcmp(item, "Kanabis"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.01;
    }
    else if(!strcmp(item, "Batu Bersih"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.030;
    }
    else if(!strcmp(item, "Air Mineral"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.01;
    }
    else if(!strcmp(item, "Besi"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.01;
    }
    else if(!strcmp(item, "Tembaga"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.01;
    }
    else if(!strcmp(item, "Berlian"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.25;
    }
    else if(!strcmp(item, "Emas"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.10;
    }
    else if(!strcmp(item, "Smartphone"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.25;
    }
    else if(!strcmp(item, "Radio"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.15;
    }
    else if(!strcmp(item, "Kayu"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.06;
    }
    else if(!strcmp(item, "Kayu Potongan"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.05;
    }
    else if(!strcmp(item, "Kayu Kemas"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.08;
    }
    else if(!strcmp(item, "Marijuana"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.02;
    }
    else if(!strcmp(item, "Benang"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.01;
    }
    else if(!strcmp(item, "Kain"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.04;
    }
    else if(!strcmp(item, "Pakaian"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.04;
    }
    else if(!strcmp(item, "Bandage"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.02;
    }
    else if(!strcmp(item, "Medkit"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.05;
    }
    else if(!strcmp(item, "Alprazolam"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.01;
    }
    else if(!strcmp(item, "Ayam Hidup"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.15;
    }
    else if(!strcmp(item, "Ayam Potong"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.10;
    }
    else if(!strcmp(item, "Ayam Kemas"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.05;
    }
    else if(!strcmp(item, "Sampah Makanan"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.005;
    }
    else if(!strcmp(item, "Kevlar"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.90;
    }
    else if(!strcmp(item, "Botol"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.01;
    }
    else if(!strcmp(item, "Petrol"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.50;
    }
    else if(!strcmp(item, "Pure Oil"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.50;
    }
    else if(!strcmp(item, "GAS"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.60;
    }
    else if(!strcmp(item, "Ikan"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.02;
    }
    else if(!strcmp(item, "Rokok"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.01;
    }
    else if(!strcmp(item, "Pancingan"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.08;
    }
    else if(!strcmp(item, "Umpan"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.02;
    }
    else if(!strcmp(item, "Hiu"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.90;
    }
    else if(!strcmp(item, "Penyu"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.80;
    }
    else if(!strcmp(item, "Ikan Tawar"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.03;
    }
    else if(!strcmp(item, "Jerigen"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.25;
    }
    else if(!strcmp(item, "Tools Kit"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.30;
    }
    else if(!strcmp(item, "Repair Kit"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.35;
    }
    else if(!strcmp(item, "Linggis"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.05;
    }
    else if(!strcmp(item, "Kunci T"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.05;
    }
    else if(!strcmp(item, "Nasi Pecel"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.01;
    }
    else if(!strcmp(item, "Bubur Pedas"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.01;
    }
    else if(!strcmp(item, "Es Teh"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.01;
    }
    else if(!strcmp(item, "Jus Apel"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.01;
    }
    else if(!strcmp(item, "Boombox"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.20;
    }
    else if(!strcmp(item, "Race Tablet"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.20;
    }
    else if(!strcmp(item, "Kebab A5"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.01;
    }
    else if(!strcmp(item, "Bakso"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.01;
    }
    else if(!strcmp(item, "Choco Matcha"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.01;
    }
    else if(!strcmp(item, "Teh Jeruk"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.01;
    }
    else if(!strcmp(item, "Susu Murni"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.02;
    }
    else if(!strcmp(item, "Susu Olahan"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.01;
    }
    else if(!strcmp(item, "Susu Fresh"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.01;
    }
    else if(!strcmp(item, "Cabe"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.01;
    }
    else if(!strcmp(item, "Padi"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.01;
    }
    else if(!strcmp(item, "Garam Kristal"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.006;
    }
    else if(!strcmp(item, "Tebu"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.01;
    }
    else if(!strcmp(item, "Beras"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.04;
    }
    else if(!strcmp(item, "Sambal"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.02;
    }
    else if(!strcmp(item, "Gula"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.01;
    }
    else if(!strcmp(item, "Garam"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.01;
    }
    else if(!strcmp(item, "Daging"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.02;
    }
    else if(!strcmp(item, "Tanduk"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.03;
    }
    else if(!strcmp(item, "Kulit"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.01;
    }
    else if(!strcmp(item, "Bulu"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.01;
    }
    else if(!strcmp(item, "Boxmats"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.04;
    }
    else if(!strcmp(item, "Baja"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.05;
    }
    else if(!strcmp(item, "Material"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.025;
    }
    else if(!strcmp(item, "Kaca"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.015;
    }
    else if(!strcmp(item, "Karet"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.006;
    }
    else if(!strcmp(item, "Plastik"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.005;
    }
    else if(!strcmp(item, "Alumunium"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.010;
    }
    else if(!strcmp(item, "Backpack"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.50;
    }
    else if(!strcmp(item, "Masker"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.005;
    }
    else if(!strcmp(item, "Plat Besi"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.025;
    }
    else if(!strcmp(item, "Korek Api"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.010;
    }
    else if(!strcmp(item, "Bibit Padi"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.015;
    }
    else if(!strcmp(item, "Bibit Tebu"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.015;
    }
    else if(!strcmp(item, "Bibit Cabe"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.015;
    }
    else if(!strcmp(item, "Pilox"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.005;
    }
    else if(!strcmp(item, "Uranium ACD"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.020;
    }
    else if(!strcmp(item, "Uranium"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.010;
    }
    else if(!strcmp(item, "Senter"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.006;
    }
    else if(!strcmp(item, "Component"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.025;
    }
    else if(!strcmp(item, "Vape"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.008;
    }
    // else if(!strcmp(item, "Skateboard"))
    // {
    //     PlayerVehicle[vehicleid][pVehCapacity] += quantity*0.508;
    // }
    new sctr[596];
    mysql_format(g_SQL, sctr, sizeof(sctr), "UPDATE `player_vehicles` SET `PVeh_Capacity`=%f WHERE `id`=%d", PlayerVehicle[vehicleid][pVehCapacity], PlayerVehicle[vehicleid][pVehID]);
    mysql_tquery(g_SQL, sctr);
    return 1;
}

ReduceCapacityVehicle(vehicleid, const item[], quantity)
{
    if(!strcmp(item, "Nasi Goreng"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.01;
    }
    else if(!strcmp(item, "Kopi Kenangan"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.01;
    }
    else if(!strcmp(item, "Batu Kotor"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.030;
    }
    else if(!strcmp(item, "Nasi Uduk"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.01;
    }
    else if(!strcmp(item, "Kanabis"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.01;
    }
    else if(!strcmp(item, "Batu Bersih"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.030;
    }
    else if(!strcmp(item, "Air Mineral"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.01;
    }
    else if(!strcmp(item, "Besi"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.01;
    }
    else if(!strcmp(item, "Tembaga"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.01;
    }
    else if(!strcmp(item, "Berlian"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.25;
    }
    else if(!strcmp(item, "Emas"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.10;
    }
    else if(!strcmp(item, "Smartphone"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.25;
    }
    else if(!strcmp(item, "Radio"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.15;
    }
    else if(!strcmp(item, "Kayu"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.06;
    }
    else if(!strcmp(item, "Kayu Potongan"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.05;
    }
    else if(!strcmp(item, "Kayu Kemas"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.08;
    }
    else if(!strcmp(item, "Marijuana"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.02;
    }
    else if(!strcmp(item, "Benang"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.01;
    }
    else if(!strcmp(item, "Kain"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.04;
    }
    else if(!strcmp(item, "Pakaian"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.04;
    }
    else if(!strcmp(item, "Bandage"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.02;
    }
    else if(!strcmp(item, "Medkit"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.05;
    }
    else if(!strcmp(item, "Alprazolam"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.01;
    }
    else if(!strcmp(item, "Ayam Hidup"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.15;
    }
    else if(!strcmp(item, "Ayam Potong"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.10;
    }
    else if(!strcmp(item, "Ayam Kemas"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.05;
    }
    else if(!strcmp(item, "Sampah Makanan"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.005;
    }
    else if(!strcmp(item, "Kevlar"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.90;
    }
    else if(!strcmp(item, "Botol"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.01;
    }
    else if(!strcmp(item, "Petrol"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.50;
    }
    else if(!strcmp(item, "Pure Oil"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.50;
    }
    else if(!strcmp(item, "GAS"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.60;
    }
    else if(!strcmp(item, "Ikan"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.02;
    }
    else if(!strcmp(item, "Rokok"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.01;
    }
    else if(!strcmp(item, "Pancingan"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.08;
    }
    else if(!strcmp(item, "Umpan"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.02;
    }
    else if(!strcmp(item, "Hiu"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.90;
    }
    else if(!strcmp(item, "Penyu"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.80;
    }
    else if(!strcmp(item, "Ikan Tawar"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.03;
    }
    else if(!strcmp(item, "Jerigen"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.25;
    }
    else if(!strcmp(item, "Tools Kit"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.30;
    }
    else if(!strcmp(item, "Repair Kit"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.35;
    }
    else if(!strcmp(item, "Linggis"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.05;
    }
    else if(!strcmp(item, "Kunci T"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.05;
    }
    else if(!strcmp(item, "Nasi Pecel"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.01;
    }
    else if(!strcmp(item, "Bubur Pedas"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.01;
    }
    else if(!strcmp(item, "Es Teh"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.01;
    }
    else if(!strcmp(item, "Jus Apel"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.01;
    }
    else if(!strcmp(item, "Boombox"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.20;
    }
    else if(!strcmp(item, "Race Tablet"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.20;
    }
    else if(!strcmp(item, "Kebab A5"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.01;
    }
    else if(!strcmp(item, "Bakso"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.01;
    }
    else if(!strcmp(item, "Choco Matcha"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.01;
    }
    else if(!strcmp(item, "Teh Jeruk"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.01;
    }
    else if(!strcmp(item, "Susu Murni"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.02;
    }
    else if(!strcmp(item, "Susu Olahan"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.01;
    }
    else if(!strcmp(item, "Susu Fresh"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.01;
    }
    else if(!strcmp(item, "Cabe"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.01;
    }
    else if(!strcmp(item, "Padi"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.01;
    }
    else if(!strcmp(item, "Garam Kristal"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.006;
    }
    else if(!strcmp(item, "Tebu"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.01;
    }
    else if(!strcmp(item, "Beras"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.04;
    }
    else if(!strcmp(item, "Sambal"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.02;
    }
    else if(!strcmp(item, "Gula"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.01;
    }
    else if(!strcmp(item, "Garam"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.01;
    }
    else if(!strcmp(item, "Daging"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.02;
    }
    else if(!strcmp(item, "Tanduk"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.03;
    }
    else if(!strcmp(item, "Kulit"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.01;
    }
    else if(!strcmp(item, "Bulu"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.01;
    }
    else if(!strcmp(item, "Boxmats"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.04;
    }
    else if(!strcmp(item, "Baja"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.05;
    }
    else if(!strcmp(item, "Material"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.025;
    }
    else if(!strcmp(item, "Kaca"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.015;
    }
    else if(!strcmp(item, "Karet"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.006;
    }
    else if(!strcmp(item, "Plastik"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.005;
    }
    else if(!strcmp(item, "Alumunium"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.010;
    }
    else if(!strcmp(item, "Backpack"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.50;
    }
    else if(!strcmp(item, "Masker"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.005;
    }
    else if(!strcmp(item, "Plat Besi"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.025;
    }
    else if(!strcmp(item, "Korek Api"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.010;
    }
    else if(!strcmp(item, "Bibit Padi"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.015;
    }
    else if(!strcmp(item, "Bibit Tebu"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.015;
    }
    else if(!strcmp(item, "Bibit Cabe"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.015;
    }
    else if(!strcmp(item, "Pilox"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.005;
    }
    else if(!strcmp(item, "Uranium ACD"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.020;
    }
    else if(!strcmp(item, "Uranium"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.010;
    }
    else if(!strcmp(item, "Senter"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.006;
    }
    else if(!strcmp(item, "Component"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.025;
    }
    else if(!strcmp(item, "Vape"))
    {
        PlayerVehicle[vehicleid][pVehCapacity] -= quantity*0.008;
    }

    if(PlayerVehicle[vehicleid][pVehCapacity] < 0) {
        PlayerVehicle[vehicleid][pVehCapacity] = 0;}
    new sctr[596];
    mysql_format(g_SQL, sctr, sizeof(sctr), "UPDATE `player_vehicles` SET `PVeh_Capacity`=%f WHERE `id`=%d", PlayerVehicle[vehicleid][pVehCapacity], PlayerVehicle[vehicleid][pVehID]);
    mysql_tquery(g_SQL, sctr);
    return 1;
}