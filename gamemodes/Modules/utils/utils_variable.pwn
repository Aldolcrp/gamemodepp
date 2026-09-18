new g_ServerLocked;
new g_AsuransiTime; 
new g_AsuransiAll;
new g_RestartServer; 
new g_RestartTime;
new g_RusunTime;
new g_RobberyTime = 0;
new g_Schedule;
new g_ScheduleTime;
new g_Message;
new g_MessageTimer;
new STREAMER_TAG_AREA: PantaiArea;

/* Voting System */
new OpenVote = 0,
    VoteYes = 0,
    VoteNo = 0,
    VoteTime = 0,
    VoteText[128];

new bool: TogOOC;

new PlayerChar[MAX_PLAYERS][MAX_CHARS][MAX_PLAYER_NAME + 1];
new PlayerCharSkin[MAX_PLAYERS][MAX_CHARS];
new HouseMemberName[MAX_PLAYERS][3][MAX_PLAYER_NAME + 1];

new g_RaceCheck[MAX_PLAYERS];
new UfoObjID[MAX_PLAYERS][2];

//clothes bizzd
new CSelectBizz[MAX_PLAYERS];
new SelectAccBizz[MAX_PLAYERS];
new BuyClothesBizz[MAX_PLAYERS];
new BuyTopiBizz[MAX_PLAYERS];
new BuyGlassesBizz[MAX_PLAYERS];
new BuyTAksesorisBizz[MAX_PLAYERS];
new BuyBackpackBizz[MAX_PLAYERS];

//clothes warung
new CSelect[MAX_PLAYERS];
new SelectAcc[MAX_PLAYERS];
new BuyClothes[MAX_PLAYERS];
new BuyTopi[MAX_PLAYERS];
new BuyGlasses[MAX_PLAYERS];
new BuyTAksesoris[MAX_PLAYERS];
new BuyBackpack[MAX_PLAYERS];
	
new NearestVehicleID[MAX_PLAYERS];
new ShowroomVeh[MAX_PLAYERS];

new giveMoneyTarget[MAX_PLAYERS];
new giveMoneyListTarget[MAX_PLAYERS][MAX_PLAYERS];

new TogIsiBensin[MAX_PLAYERS];
new STREAMER_TAG_3D_TEXT_LABEL: labelDisconnect[MAX_PLAYERS];
new labelDisconnectTimer[MAX_PLAYERS] = {-1, ...};
new NearestSingle[MAX_PLAYERS];
new ListBosDesk[MAX_PLAYERS][50];
new NearestPlayer[MAX_PLAYERS][MAX_PLAYERS];
new NearestCount[MAX_PLAYERS]; 
new bool: pPassengerClickMap[MAX_PLAYERS];
new bool: pMapCP[MAX_PLAYERS];
new SharelocTimer[MAX_PLAYERS] = {0, ...};
new PlayerPressedJump[MAX_PLAYERS];
new bool: VehicleJobLocked[MAX_PLAYERS];
new Smoking[MAX_PLAYERS];
new IsDragging[MAX_PLAYERS];

new Shakehand[MAX_PLAYERS] = {false, ...};
new ShakehandBy[MAX_PLAYERS] = {INVALID_PLAYER_ID, ...};

new const g_aWeaponSlots[] = {
    0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 10, 10, 10, 10, 10, 10, 8, 8, 8, 0, 0, 0, 2, 2, 2, 3, 3, 3, 4, 4, 5, 5, 4, 6, 6, 7, 7, 7, 7, 8, 12, 9, 9, 9, 11, 11, 11
};

// new bool:g_ucpActived[MAX_PLAYERS];

new color_string[3256], color_listitem[3256], object_font[200];

new FixmeOption[MAX_PLAYERS];
new ListFixme[MAX_PLAYERS][MAX_PLAYERS];
new bool: FixmeExists[MAX_PLAYERS],
    FixmeTime[MAX_PLAYERS];

/* Forklift Stuffs */
new ForkliftVehicles[2];

/* Sweeper Stuffs */
new SweeperVehicles[3];
new SweeperIndex[MAX_PLAYERS];
new bool:DurringSweeping[MAX_PLAYERS];

/* Delivery Stuffs */
new DeliveryVehicles[2];
new TrashmasterVehicles[3];

/* Mowing Stuffs */
new MowerVehicles[3];

/* Quiz Stuffs */
new bool: Quiz;
new bool: QuizAnswerMade;
new QuizAnswer[255];
new QuizPrice;

/* Tunjangan */
new bool:PlayerTaserOn[MAX_PLAYERS] = {false, ...};

new bool: SignalExists[MAX_PLAYERS] = { false, ... },
    Float:SignalPos[MAX_PLAYERS][3],
    SignalTimer[MAX_PLAYERS],
    ListSignal[MAX_PLAYERS][MAX_PLAYERS];

new ClickPlayerID[MAX_PLAYERS];

new PlayerTextdraws[MAX_PLAYERS][playerTextdraws];

// mprice changed price
new TembagaPrice = 3;
new BesiPrice = 2;
new EmasPrice = 4;
new BerlianPrice = 100;
new MaterialPrice = 5;
new AlumuniumPrice = 13;
new KaretPrice = 5;
new KacaPrice = 10;
new BajaPrice = 12;
new AyamKemasPrice = 13;
new SusuOlahPrice = 13;
new PakaianPrice = 25;
new KayuKemasPrice = 21;
new GasPrice = 5;

new OldTembagaPrice;
new OldBesiPrice;
new OldEmasPrice;
new OldBerlianPrice;
new OldMaterialPrice;
new OldAlumuniumPrice;
new OldKaretPrice;
new OldKacaPrice;
new OldBajaPrice;
new OldAyamKemasPrice;
new OldSusuOlahPrice;
new OldPakaianPrice;
new OldKayuKemasPrice;
new OldGasPrice;

new bool: IsPlayerSmoking[MAX_PLAYERS] = { false, ... };
new CountSmoking[MAX_PLAYERS] = { 0, ... };
new SmokingDelayTime[MAX_PLAYERS] = { 0, ... };
new bool: IsPlayerUseVape[MAX_PLAYERS], VapeDelayTime[MAX_PLAYERS];

new STREAMER_TAG_OBJECT: FireworkObject[MAX_PLAYERS];
new FireworkTimer[MAX_PLAYERS] = {-1, ...};

// Live mode
new bool: LivemodeOn[MAX_PLAYERS] = { false, ... };
new LivemodeTittle[MAX_PLAYERS][255];
new LoginTimer[MAX_PLAYERS];
new LoginAttemps[MAX_PLAYERS];
new PlayerProtect[MAX_PLAYERS];
new WarningTimer[MAX_PLAYERS],
    bool: ShowWarning[MAX_PLAYERS];

new bool:IsPlayerChangeSeat[MAX_PLAYERS] = { false, ... },
    ChangeSeatWithPlayerID[MAX_PLAYERS] = { INVALID_PLAYER_ID, ... },
    ChangeSeatVehicleID[MAX_PLAYERS] = { -1, ... };

new pCurrentBarrier[MAX_PLAYERS] = { -1, ... };
new pUseItemTimer[MAX_PLAYERS] = {-1, ...};

new bool: PlayerVoting[MAX_PLAYERS] = { false, ... };

new ListedVehObject[MAX_PLAYERS][MAX_VEHICLE_OBJECT], // Untuk menyimpan index id array vehicle object ke playerid
    Player_EditingObject[MAX_PLAYERS], // Sebagai flagger untuk menandakan player sedang edit object atau tidak 
    Player_EditVehicleObject[MAX_PLAYERS], // Variable Holder
    Player_EditVehicleObjectSlot[MAX_PLAYERS] // Variable Holder
;

new tempNumber[MAX_PLAYERS][15];
new ListedChat[MAX_PLAYERS][10][100];

new pageMessage[MAX_PLAYERS];
new pageVehicle[MAX_PLAYERS];
new ListedItems[MAX_PLAYERS][MAX_PLAYERS];
new bool:IsInTrunk[MAX_PLAYERS];

//anti spam duplikat
new bool:BagasiProcessing[MAX_PLAYERS];
new bool:GudangProcessing[MAX_PLAYERS];
new bool:HouseProcessing[MAX_PLAYERS];
new bool:RusunProcessing[MAX_PLAYERS];
new bool:BengProcessing[MAX_PLAYERS];
new bool:EMSProcessing[MAX_PLAYERS];
new bool:FamilyProcessing[MAX_PLAYERS];
new bool:PemerintahProcessing[MAX_PLAYERS];
new bool:PolisiProcessing[MAX_PLAYERS];
new bool:TransProcessing[MAX_PLAYERS];

new WorkshopPage[MAX_PLAYERS], WorkshopListPage[MAX_PLAYERS][100], WorkshopLogPage[MAX_PLAYERS], WorkshopLogList[MAX_PLAYERS][20];

// new CircleHunger[MAX_PLAYERS],
//     CircleThirst[MAX_PLAYERS],
//     CircleStress[MAX_PLAYERS]
// ;
enum e_vehspec
{
    Model,
    BaggageWeight
};
new VehicleSpec[][e_vehspec] = {
    {400, 25},
    {401, 20},
    {402, 20},
    {404, 25},
    {405, 20},
    {407, 10},
    {409, 20},
    {410, 15},
    {411, 20},
    {412, 15},
    {413, 35},
    {414, 55},
    {415, 20},
    {416, 15},
    {417, 25},
    {418, 15},
    {419, 15},
    {420, 15},
    {421, 15},
    {422, 40},
    {423, 25},
    {424, 25},
    {426, 15},
    {427, 15},
    {428, 15},
    {429, 25},
    {430, 10},
    {434, 25},
    {435, 120},
    {436, 15},
    {438, 15},
    {439, 10},
    {440, 40},
    {442, 10},
    {445, 15},
    {446, 10},
    {450, 120},
    {451, 25},
    {452, 10},
    {453, 15},
    {454, 10},
    {455, 80},
    {456, 80},
    {457, 10},
    {458, 15},
    {459, 30},
    {466, 15},
    {467, 15},
    {470, 25},
    {472, 10},
    {473, 10},
    {474, 10},
    {475, 10},
    {477, 25},
    {478, 35},
    {479, 20},
    {480, 10},
    {482, 30},
    {483, 50},
    {484, 10},
    {485, 15},
    {487, 25},
    {488, 15},
    {489, 25},
    {490, 25},
    {491, 15},
    {492, 15},
    {493, 10},
    {494, 25},
    {495, 55},
    {496, 15},
    {497, 10},
    {498, 45},
    {499, 70},
    {500, 15},
    {502, 25},
    {503, 25},
    {504, 25},
    {505, 25},
    {506, 25},
    {507, 15},
    {508, 100},
    {511, 10},
    {512, 10},
    {513, 10},
    {516, 15},
    {517, 15},
    {518, 15},
    {519, 10},
    {525, 15},
    {526, 10},
    {527, 10},
    {528, 10},
    {529, 10},
    {533, 10},
    {534, 10},
    {535, 25},
    {536, 10},
    {539, 10},
    {540, 10},
    {541, 25},
    {542, 10},
    {543, 35},
    {544, 10},
    {545, 10},
    {546, 10},
    {547, 10},
    {548, 30},
    {549, 10},
    {550, 15},
    {551, 15},
    {552, 10},
    {554, 45},
    {555, 15},
    {558, 25},
    {559, 25},
    {560, 15},
    {561, 15},
    {562, 25},
    {563, 10},
    {565, 25},
    {566, 15},
    {567, 15},
    {568, 15},
    {571, 10},
    {572, 10},
    {573, 100},
    {575, 10},
    {576, 15},
    {578, 80},
    {579, 25},
    {580, 25},
    {582, 25},
    {583, 10},
    {585, 10},
    {587, 25},
    {588, 25},
    {589, 10},
    {591, 120},
    {595, 10},
    {596, 10},
    {597, 10},
    {598, 10},
    {599, 10},
    {600, 30},
    {601, 10},
    {602, 15},
    {603, 25},
    {604, 15},
    {605, 35},
    {609, 45}
};

new _g_originName[][] = 
{
    "Indonesia",
    "United States of America",
    "United Kingdom",
    "Afghanistan",
    "Albania",
    "Algeria",
    "Andorra",
    "Angola",
    "Antigua and Barbuda",
    "Argentina",
    "Armenia",
    "Australia",
    "Austria",
    "Azerbaijan",
    "Bahamas",
    "Bahrain",
    "Bangladesh",
    "Barbados",
    "Belarus",
    "Belgium",
    "Belize",
    "Benin",
    "Bhutan",
    "Bolivia",
    "Bosnia and Herzegovina",
    "Botswana",
    "Brazil",
    "Brunei Darussalam",
    "Bulgaria",
    "Burkina Faso",
    "Burundi",
    "Cabo Verde",
    "Cambodia",
    "Cameroon",
    "Canada",
    "Central African",
    "Chad",
    "Chile",
    "China",
    "Colombia",
    "Comoros",
    "Congo",
    "Congo",
    "Costa Rica",
    "Cote de Ivoire",
    "Croatia",
    "Cuba",
    "Cyprus",
    "Czech",
    "Denmark",
    "Djibouti",
    "Dominica",
    "Dominican",
    "Ecuador",
    "Egypt",
    "El Salvador",
    "Equatorial Guinea",
    "Eritrea",
    "Estonia",
    "Eswatini",
    "Ethiopia",
    "Fiji",
    "Finland",
    "France",
    "Gabon",
    "Gambia",
    "Georgia",
    "Germany",
    "Ghana",
    "Greece",
    "Grenada",
    "Guatemala",
    "Guinea",
    "Guinea Bissau",
    "Guyana",
    "Haiti",
    "Holy See (Vatican)",
    "Honduras",
    "Hungary",
    "Iceland",
    "India",
    "Iran",
    "Iraq",
    "Ireland",
    "Israel",
    "Italy",
    "Jamaica",
    "Japan",
    "Jordan",
    "Kazakhstan",
    "Kenya",
    "Kiribati",
    "North Korea",
    "South Korea",
    "Kuwait",
    "Kyrgyzstan",
    "Laos",
    "Latvia",
    "Lebanon",
    "Lesotho",
    "Liberia",
    "Libya",
    "Liechtenstein",
    "Lithuania",
    "Luxembourg",
    "Madagascar",
    "Malawi",
    "Malaysia",
    "Maldives",
    "Mali",
    "Malta",
    "Marshall Islands",
    "Mauritania",
    "Mauritius",
    "Mexico",
    "Micronesia",
    "Moldova",
    "Monaco",
    "Mongolia",
    "Montenegro",
    "Morocco",
    "Mozambique",
    "Myanmar",
    "Namibia",
    "Nauru",
    "Nepal",
    "Netherlands",
    "New Zealand",
    "Nicaragua",
    "Niger",
    "Nigeria",
    "North Macedonia",
    "Norway",
    "Oman",
    "Pakistan",
    "Palau",
    "Palestine",
    "Panama",
    "Papua New Guinea",
    "Paraguay",
    "Peru",
    "Philippines",
    "Poland",
    "Portugal",
    "Qatar",
    "Romania",
    "Russian Federation",
    "Rwanda",
    "Saint Kitts and Nevis",
    "Saint Lucia",
    "Saint Vincent and the Grenadines",
    "Samoa",
    "San Marino",
    "Sao Tome and Principe",
    "Saudi Arabia",
    "Senegal",
    "Serbia",
    "Seychelles",
    "Sierra Leone",
    "Singapore",
    "Slovakia",
    "Slovenia",
    "Solomon Islands",
    "Somalia",
    "South Africa",
    "South Sudan",
    "Spain",
    "Sri Lanka",
    "Sudan",
    "Suriname",
    "Sweden",
    "Switzerland",
    "Syrian Arab Republic",
    "Tajikistan",
    "Tanzania",
    "Thailand",
    "Timor-Leste",
    "Togo",
    "Tonga",
    "Trinidad and Tobago",
    "Tunisia",
    "Turkey",
    "Turkmenistan",
    "Tuvalu",
    "Uganda",
    "Ukraine",
    "United Arab Emirates",
    "Uruguay",
    "Uzbekistan",
    "Vanuatu",
    "Venezuela",
    "Vietnam",
    "Yemen",
    "Zambia",
    "Zimbabwe"
};