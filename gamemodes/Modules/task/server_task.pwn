task TaskServer[1000]()
{
    static
        vupdt = 0,
        infomt = 0,
        mrkt = 0,
        healthDecay = 0,
        backup = 0
    ;

    WeedUpdate();
    r_FeatureUpdate();
    ScheduleMTExecute();
    CarStealDelayUpdate();
    TrashCooldown_Update();
    DelayHuntingUpdate();
    DelayKanabisUpdate();
    RobberyDelay_Update();
    DelayUraniumUpdate();
    LabelHalte_Update();
    ForkliftSpeedUpdate();
    MowingVehicleUpdate();
    GlobalTimeRusun();
    KompensasiUpdate();
    Tags_Update();

    for (new playerid = 0; playerid < MAX_PLAYERS; playerid++)
    {
        if (!IsPlayerConnected(playerid)) continue;
        if(AccountData[playerid][pInjured] == 0 && AccountData[playerid][pGender] != 0) 
		{
            new thirst = AccountData[playerid][pThirst];
            new hunger = AccountData[playerid][pHunger];

            if (thirst <= 0 && hunger <= 0)
            {
                SetPlayerHealthEx(playerid, 0);
            }
        }
    }

    if (++healthDecay >= 300)
    {
        healthDecay = 0;

        for (new playerid = 0; playerid < MAX_PLAYERS; playerid++)
        {
            if (!IsPlayerConnected(playerid)) continue;
            if(AccountData[playerid][pInjured] == 0 && AccountData[playerid][pGender] != 0) 
		    {
                new thirst = AccountData[playerid][pThirst];
                new hunger = AccountData[playerid][pHunger];

                if ((thirst <= 0 && hunger > 0) || (hunger <= 0 && thirst > 0))
                {
                    GivePlayerHealth(playerid, -2);
                }
            }
        }
    }

    if(++mrkt == 3600)
    {
        MarketPriceUpdate();
        mrkt = 0;
    }

    if(++backup == 3600)
    {
        SavingBackup();
        backup = 0;
    }

    if(++infomt == 60)
    {
        InfoScheduleMT();
        infomt = 0;
    }

    if(++vupdt == 30)
    {
        VehicleUpdate();
        vupdt = 0;
    }

    return Y_HOOKS_CONTINUE_RETURN_1;
}