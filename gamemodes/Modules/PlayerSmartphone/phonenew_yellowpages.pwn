#include <YSI_Coding\y_hooks>

#define MAX_YELLOWPAGE 10
#define YELLOWPAGE_EXPIRE_TIME 30

enum E_YELLOWPAGE_DATA 
{
    bool:ypExists,
    ypText[100],
    ypNumber[24],
    ypName[24],
    ypTime,
    ypExtraID
};
new YellowPage[MAX_YELLOWPAGE][E_YELLOWPAGE_DATA];
new pageYP[MAX_PLAYERS] = {0, ...},
    ListedYellowPage[MAX_PLAYERS][4];


new PlayerText:Yellowpage_List[MAX_PLAYERS][4][4];

ShowYellopageList(playerid, i) 
{
    for(new j = 0; j < 4; j++) {
        PlayerTextDrawShow(playerid, Yellowpage_List[playerid][i][j]);
    }
}

HideYellopageList(playerid)
{
    for(new i = 0; i < 4; i++) 
    {
        for(new j = 0; j < 4; j++) 
        {
            PlayerTextDrawHide(playerid, Yellowpage_List[playerid][i][j]);
        }
    }
}

CreateYellopageList(playerid) 
{
    for(new idx = 0; idx < 4; idx++) 
    {
        new Float:y = (idx * 34.0);

        Yellowpage_List[playerid][idx][0] = CreatePlayerTextDraw(playerid, 477.000, 181.000 + y, "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, Yellowpage_List[playerid][idx][0], 108.000, 33.000);
        PlayerTextDrawAlignment(playerid, Yellowpage_List[playerid][idx][0], 1);
        PlayerTextDrawColor(playerid, Yellowpage_List[playerid][idx][0], 255);
        PlayerTextDrawSetShadow(playerid, Yellowpage_List[playerid][idx][0], 0);
        PlayerTextDrawSetOutline(playerid, Yellowpage_List[playerid][idx][0], 0);
        PlayerTextDrawBackgroundColor(playerid, Yellowpage_List[playerid][idx][0], 255);
        PlayerTextDrawFont(playerid, Yellowpage_List[playerid][idx][0], 4);
        PlayerTextDrawSetProportional(playerid, Yellowpage_List[playerid][idx][0], 1);
        PlayerTextDrawSetSelectable(playerid, Yellowpage_List[playerid][idx][0], 1);

        Yellowpage_List[playerid][idx][1] = CreatePlayerTextDraw(playerid, 491.000, 180.000 + y, "Rayy_Bonelo");
        PlayerTextDrawLetterSize(playerid, Yellowpage_List[playerid][idx][1], 0.108, 0.800);
        PlayerTextDrawAlignment(playerid, Yellowpage_List[playerid][idx][1], 2);
        PlayerTextDrawColor(playerid, Yellowpage_List[playerid][idx][1], -1);
        PlayerTextDrawSetShadow(playerid, Yellowpage_List[playerid][idx][1], 0);
        PlayerTextDrawSetOutline(playerid, Yellowpage_List[playerid][idx][1], 0);
        PlayerTextDrawBackgroundColor(playerid, Yellowpage_List[playerid][idx][1], 150);
        PlayerTextDrawFont(playerid, Yellowpage_List[playerid][idx][1], 1);
        PlayerTextDrawSetProportional(playerid, Yellowpage_List[playerid][idx][1], 1);

        Yellowpage_List[playerid][idx][2] = CreatePlayerTextDraw(playerid, 480.000, 187.000 + y, "anjaya ilove you wkkwkwkw tolol bange tjembut wkwkkw taik");
        PlayerTextDrawLetterSize(playerid, Yellowpage_List[playerid][idx][2], 0.118, 0.899);
        PlayerTextDrawTextSize(playerid, Yellowpage_List[playerid][idx][2], 574.000, 0.000);
        PlayerTextDrawAlignment(playerid, Yellowpage_List[playerid][idx][2], 1);
        PlayerTextDrawColor(playerid, Yellowpage_List[playerid][idx][2], -1);
        PlayerTextDrawSetShadow(playerid, Yellowpage_List[playerid][idx][2], 0);
        PlayerTextDrawSetOutline(playerid, Yellowpage_List[playerid][idx][2], 0);
        PlayerTextDrawBackgroundColor(playerid, Yellowpage_List[playerid][idx][2], 150);
        PlayerTextDrawFont(playerid, Yellowpage_List[playerid][idx][2], 1);
        PlayerTextDrawSetProportional(playerid, Yellowpage_List[playerid][idx][2], 1);

        Yellowpage_List[playerid][idx][3] = CreatePlayerTextDraw(playerid, 583.000, 205.000 + y, "081218281272");
        PlayerTextDrawLetterSize(playerid, Yellowpage_List[playerid][idx][3], 0.108, 0.800);
        PlayerTextDrawAlignment(playerid, Yellowpage_List[playerid][idx][3], 3);
        PlayerTextDrawColor(playerid, Yellowpage_List[playerid][idx][3], -1);
        PlayerTextDrawSetShadow(playerid, Yellowpage_List[playerid][idx][3], 0);
        PlayerTextDrawSetOutline(playerid, Yellowpage_List[playerid][idx][3], 0);
        PlayerTextDrawBackgroundColor(playerid, Yellowpage_List[playerid][idx][3], 150);
        PlayerTextDrawFont(playerid, Yellowpage_List[playerid][idx][3], 1);
        PlayerTextDrawSetProportional(playerid, Yellowpage_List[playerid][idx][3], 1);

    }
}    

stock GetYellowPageFreeID() 
{
    new idx = -1;

    for(new i = 0; i < MAX_YELLOWPAGE; i++) if(!YellowPage[i][ypExists]) 
    {
        idx = i;
        break;
    }
    return idx;
}

stock CreateYellowPage(string:text[], string:name[], string:number[], extraid) 
{
    new id = -1;

    if((id = GetYellowPageFreeID()) != -1) {
        YellowPage[id][ypExists] = true;
        format(YellowPage[id][ypText], 100, text);
        format(YellowPage[id][ypName], 24, name);
        format(YellowPage[id][ypNumber], 24, number);
        YellowPage[id][ypTime] = YELLOWPAGE_EXPIRE_TIME;
        YellowPage[id][ypExtraID] = extraid;
    }
    return id;
}

stock CountYellowPage(playerid) {
    new count = 0;

    for(new i = 0; i < MAX_YELLOWPAGE; i++) if(YellowPage[i][ypExists] && YellowPage[i][ypExtraID] == AccountData[playerid][pID]) 
    {
        count++;
    }
    return count;
}
stock SyncYellowPage(playerid) 
{
    HideYellopageList(playerid);

    new page = pageYP[playerid],
        index = page * 4;

    new Yellowpage_Names[4][24],
        Yellowpage_Texts[4][80],
        Yellowpage_Numbers[4][24],
        Yellowpage_Exists[4],
        Yellowpage_Id[4];

    for(new i = 0; i < 4; i++) {
        Yellowpage_Exists[i] = 0;
    }

    new ii = 0;

    for(new i = index; i < index + 4 && ii < sizeof(Yellowpage_Exists); i++) {
        if(i < MAX_YELLOWPAGE) {
            if(YellowPage[i][ypExists]) {
                Yellowpage_Exists[ii] = 1;
                format(Yellowpage_Names[ii], 24, "%s", YellowPage[i][ypName]);
                format(Yellowpage_Texts[ii], 100, "%s", YellowPage[i][ypText]);
                format(Yellowpage_Numbers[ii], 24, "%s", YellowPage[i][ypNumber]);
                Yellowpage_Id[ii] = i;
                ii++;
            }
        }
    }

    new count = 0;

    for(new i = 0; i < 4; i++) {
        if(Yellowpage_Exists[i]) {
            ShowYellopageList(playerid, i);
            PlayerTextDrawSetString(playerid, Yellowpage_List[playerid][i][1], Yellowpage_Names[i]);
            PlayerTextDrawSetString(playerid, Yellowpage_List[playerid][i][2], Yellowpage_Texts[i]);
            PlayerTextDrawSetString(playerid, Yellowpage_List[playerid][i][3], Yellowpage_Numbers[i]);
            ListedYellowPage[playerid][count++] = Yellowpage_Id[i];
        }
    }
    return 1;
}

hook ClickDynPlayerTextdraw(playerid, PlayerText:textid) 
{
    if(textid == TextDraw_PhoneYellowpage[playerid][39]) 
    {
        pageYP[playerid]--;
        if(pageYP[playerid] <= 0) 
        {
            pageYP[playerid] = 0;
        }

        SyncYellowPage(playerid);
    }
    if(textid == TextDraw_PhoneYellowpage[playerid][40]) 
    {
        pageYP[playerid]++;
        if(pageYP[playerid] >= 5) 
        {
            pageYP[playerid] = 5;
        }

        SyncYellowPage(playerid);
    }
    if(textid == TextDraw_PhoneYellowpage[playerid][38]) 
    {

        if(CountYellowPage(playerid) >= 1)
            return ShowTDN(playerid, NOTIFICATION_ERROR, "Kamu hanya bisa memiliki 1 iklan! silahkan tunggu iklan expired.");

        Dialog_Show(playerid, PostYellowpage, DIALOG_STYLE_INPUT, ""TTR"Astral City Roleplay{FFFFFF} - Yellow Page Post", "Silahkan masukkan yang anda ingin iklankan:\n(note): Tidak dapat lebih dari 100 karakter.", "Submit", "Close");
    }
    if(textid == TextDraw_Phone[playerid][35])
	{
       pageYP[playerid] = 0;
       Phone(playerid, false);
       PhoneYellowPage(playerid, true);
       SyncYellowPage(playerid);
    }
    if(textid == TextDraw_PhoneYellowpage[playerid][22])
	{
       PhoneYellowPage(playerid, false);
       Phone(playerid, true);
    }
    for(new i = 0; i < 4; i++) if(textid == Yellowpage_List[playerid][i][0]) {

        new yp_id = ListedYellowPage[playerid][i];
        if(GetNumberOwner(YellowPage[yp_id][ypNumber]) == INVALID_PLAYER_ID) {
            Error(playerid, "Pengiklan tidak sedang online!", true);
        }
        else {
            SetPVarString(playerid, "NumberYP", YellowPage[yp_id][ypNumber]);
            Dialog_Show(playerid, CallYellowPage, DIALOG_STYLE_MSGBOX, ""TTR"Astral City Roleplay{FFFFFF} - Call Advertiser", sprintf(""WHITE"Nomor pengirim iklan: "GREY"#%s\n\n"WHITE"Apakah kamu ingin menelfon pengirim iklan?", YellowPage[yp_id][ypNumber]), "Yes", "No");
        }
        break;
    }
    return Y_HOOKS_CONTINUE_RETURN_1;
}

Dialog:CallYellowPage(playerid, response, listitem, inputtext[]) {
    if(response) {
        new number[24];
        GetPVarString(playerid, "NumberYP", number, 24);
        OnOutcomingCall(playerid, number);
    }
    return 1;
}

Dialog:PostYellowpage(playerid, response, listitem, inputtext[]) 
{
    if(response) 
    {

        if(AccountData[playerid][pDelayYellowPage]) {
            return ShowTDN(playerid, NOTIFICATION_ERROR, sprintf("Anda harus menunggu %d detik untuk membuat YellowPage lagi.", AccountData[playerid][pDelayYellowPage]));
        }

        if(isnull(inputtext)) 
        {
            return Dialog_Show(playerid, PostYellowpage, DIALOG_STYLE_INPUT, ""TTR"Astral City Roleplay{FFFFFF}  - Yellow Page Post", "Silahkan masukkan yang anda ingin iklankan:\n(note): Tidak dapat lebih dari 100 karakter.", "Submit", "Close");
        }

        if(strlen(inputtext) < 1) 
        {
            return Dialog_Show(playerid, PostYellowpage, DIALOG_STYLE_INPUT, ""TTR"Astral City Roleplay{FFFFFF}  - Yellow Page Post", "Silahkan masukkan yang anda ingin iklankan:\n(note): Tidak dapat lebih dari 100 karakter.", "Submit", "Close");
        }

        if(strlen(inputtext) > 100) 
        {
            return Dialog_Show(playerid, PostYellowpage, DIALOG_STYLE_INPUT, ""TTR"Astral City Roleplay{FFFFFF}  - Yellow Page Post", "Silahkan masukkan yang anda ingin iklankan:\n(note): Tidak dapat lebih dari 100 karakter.", "Submit", "Close");
        }

        if(AccountData[playerid][pBankMoney] < 100) 
        {
            return Dialog_Show(playerid, PostYellowpage, DIALOG_STYLE_INPUT, ""TTR"Astral City Roleplay{FFFFFF}  - Yellow Page Post", "(error): Kamu harus memiliki $100 pada bank!\nSilahkan masukkan yang anda ingin iklankan:\n(note): Tidak dapat lebih dari 100 karakter.", "Submit", "Close");
        }

        if(CreateYellowPage(inputtext, GetName(playerid), AccountData[playerid][pPhone], AccountData[playerid][pID]) == -1) 
        {
            ShowTDN(playerid, NOTIFICATION_ERROR, "Yellow Page sedang sibuk.");
        }
        else 
        {
            AccountData[playerid][pBankMoney] -= 100;
            Success(playerid, "Berhasil memposting Yellow Page");
            foreach(new i : Player) if(AccountData[i][pSpawned]) {
                SendClientMessageEx(i, X11_GOLD_2, "[Yellow Page] "WHITE"%s", inputtext);
                SendClientMessageEx(i, X11_GOLD_2, "[Advertiser] "WHITE"%s [#%d]",  ReturnName(playerid), AccountData[playerid][pPhone]);
            }
            AccountData[playerid][pDelayYellowPage] = 300;
        }
        foreach(new i : Player) if(GetPVarInt(i, "OpenYP")) {
            SyncYellowPage(i);
        }
    }
    return 1;
}

hook OnPlayerConnect(playerid) 
{
    CreateYellopageList(playerid);
}

task OnYellowUpdate[60000]() {
    for(new i = 0 ; i < MAX_YELLOWPAGE; i++) if(YellowPage[i][ypExists]) 
    {
        if(YellowPage[i][ypTime]) 
        {
            if(--YellowPage[i][ypTime] <= 0) 
            {
                YellowPage[i][ypExists] = false;
                YellowPage[i][ypExtraID] = 0;
                format(YellowPage[i][ypName], 24, "\0");
                format(YellowPage[i][ypText], 100, "\0");
                format(YellowPage[i][ypNumber], 24, "\0");
            }
        }
    }
    return 1;
}