#define Login::    Login_

enum e_Login {
    STREAMER_TAG_OBJECT:objectLogin
};
new Login::screen[MAX_PLAYERS][e_Login];

forward MoveSceneLogin(playerid, value);
forward SpawnEndPlayer(playerid);

FUNC::Login_Screen_Show(playerid, value)
{
    switch(value)
    {
        case 1:
        {   
            new wid = 200 + AccountData[playerid][pID];
            TogglePlayerControllable(playerid, true);

            if(IsValidDynamicObject(Login::screen[playerid][objectLogin]))
                DestroyDynamicObject(Login::screen[playerid][objectLogin]);

            Login::screen[playerid][objectLogin] = CreateDynamicObject(
                1681, 1161.48, -2490.2, 66.7269, 
                0, 0, -89.8, wid, -1, -1
            );
            Streamer_Update(playerid, STREAMER_TYPE_OBJECT);
            SetPlayerVirtualWorld(playerid, wid);

            MoveDynamicObject(Login::screen[playerid][objectLogin], 
                1362.21, -2489.5, 66.7269, 18.0, 0, 0, -89.8);

            new randspawm = random(sizeof(SpawnBandara));
            AccountData[playerid][pPosX] = SpawnBandara[randspawm][0];
            AccountData[playerid][pPosY] = SpawnBandara[randspawm][1];
            AccountData[playerid][pPosZ] = SpawnBandara[randspawm][2];
            AccountData[playerid][pPosA] = SpawnBandara[randspawm][3];
            SetPlayerPos(playerid, AccountData[playerid][pPosX], AccountData[playerid][pPosY], AccountData[playerid][pPosZ]);
            SetPlayerCameraPos(playerid, 1150.0, -2490.2, 70.0);
            SetPlayerCameraLookAt(playerid, 1161.48, -2490.2, 66.7, CAMERA_CUT);

            InterpolateCameraPos(playerid,
                1150.0, -2490.2, 70.0,
                1350.0, -2490.2, 70.0,
                12000, CAMERA_MOVE
            );

            InterpolateCameraLookAt(playerid,
                1161.48, -2490.2, 66.7,
                1362.21, -2489.5, 66.7,
                12000, CAMERA_MOVE
            );
            new Float:x, Float:y, Float:z;
            GetPlayerPos(playerid, x, y, z);
            PlayerPlaySound(playerid, 1185, x, y, z);
            ClearAllChat(playerid);
            SetTimerEx("MoveSceneLogin", 8000, false, "id", playerid, 1);
            FadeIn(playerid);
        }
    }
    return 1;
}

FUNC::MoveSceneLogin(playerid, value)
{
    switch(value)
    {
        case 1:
        {
            new wid = 200 + AccountData[playerid][pID];

            if(IsValidDynamicObject(Login::screen[playerid][objectLogin]))
                DestroyDynamicObject(Login::screen[playerid][objectLogin]);

            Login::screen[playerid][objectLogin] = CreateDynamicObject(
                1681, 1487.52, -2494.01, 14.7547, 
                0 , 0, -90.2, wid, -1, -1
            );

            Streamer_Update(playerid, STREAMER_TYPE_OBJECT);
            SetPlayerVirtualWorld(playerid, wid);

            MoveDynamicObject(Login::screen[playerid][objectLogin], 
                1572.76, -2494.01, 14.7547, 18.0, 0, 0, -90.2);

            new randspawm = random(sizeof(SpawnBandara));
            AccountData[playerid][pPosX] = SpawnBandara[randspawm][0];
            AccountData[playerid][pPosY] = SpawnBandara[randspawm][1];
            AccountData[playerid][pPosZ] = SpawnBandara[randspawm][2];
            AccountData[playerid][pPosA] = SpawnBandara[randspawm][3];
            SetPlayerPos(playerid, AccountData[playerid][pPosX], AccountData[playerid][pPosY], AccountData[playerid][pPosZ]);
            SetPlayerCameraPos(playerid,1600.0,-2470.0,25.0);
            SetPlayerCameraLookAt(playerid, 1487.52, -2494.01, 14.7547, CAMERA_CUT);

            InterpolateCameraPos(playerid,
                1600.0, -2470.0, 25.0,      
                1580.0, -2500.0, 20.0,      
                10000, CAMERA_MOVE
            );

            InterpolateCameraLookAt(playerid,
                1487.52, -2494.01, 14.7547, 
                1572.76, -2494.01, 14.7547, 
                10000, CAMERA_MOVE
            );
            SetTimerEx("SpawnEndPlayer", 11000, false, "i", playerid);
        }
    }
    return 1;
}

FUNC::SpawnEndPlayer(playerid)
{
    if (IsValidDynamicObject(Login::screen[playerid][objectLogin]))
        DestroyDynamicObject(Login::screen[playerid][objectLogin]);
    
    TogglePlayerSpectating(playerid, false);
	TogglePlayerControllable(playerid, false);
    new randspawm = random(sizeof(SpawnBandara));
    AccountData[playerid][pPosX] = SpawnBandara[randspawm][0];
    AccountData[playerid][pPosY] = SpawnBandara[randspawm][1];
    AccountData[playerid][pPosZ] = SpawnBandara[randspawm][2];
    AccountData[playerid][pPosA] = SpawnBandara[randspawm][3];
    SetPlayerPositionEx(playerid, AccountData[playerid][pPosX], AccountData[playerid][pPosY], AccountData[playerid][pPosZ], AccountData[playerid][pPosA], 6000);
    Player_ToggleAntiHealthHack(playerid, true);
    SetPlayerInteriorEx(playerid, 0);
    SetPlayerVirtualWorldEx(playerid, 0);
    Toggle_AllTextdraws(playerid, true);
	AccountData[playerid][pFreeze] = 1;
	SetCameraBehindPlayer(playerid);
    PlayerPlaySound(playerid, 0, AccountData[playerid][pPosX], AccountData[playerid][pPosY], AccountData[playerid][pPosZ]);
    FadeIn(playerid);
    CancelSelectTextDraw(playerid);
    return 1;
}

FUNC::LoadingLoad(playerid)
{
    Login_Screen_Show(playerid, 1);
    return 1;
}