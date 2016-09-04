/*
[this, "WW2Wehrmacht_PL"] call FNC_GearScript;
[this, "WW2Wehrmacht_SL"] call FNC_GearScript;
[this, "WW2Wehrmacht_TL"] call FNC_GearScript;
[this, "WW2Wehrmacht_TL2"] call FNC_GearScript;
[this, "WW2Wehrmacht_Marksman"] call FNC_GearScript;
[this, "WW2Wehrmacht_RFAT"] call FNC_GearScript;
[this, "WW2Wehrmacht_RFAT_AS"] call FNC_GearScript;
[this, "WW2Wehrmacht_MG"] call FNC_GearScript;
[this, "WW2Wehrmacht_MG_AS"] call FNC_GearScript;
[this, "WW2Wehrmacht_Explos"] call FNC_GearScript;
[this, "WW2Wehrmacht_Mines"] call FNC_GearScript;
[this, "WW2Wehrmacht_MEDIC"] call FNC_GearScript;
[this, "WW2Wehrmacht_RF"] call FNC_GearScript;
[this, "WW2Wehrmacht_RFPZFT"] call FNC_GearScript;
[this, "WW2Wehrmacht_RFMP44"] call FNC_GearScript;
[this, "WW2Wehrmacht_TankCommander"] call FNC_GearScript;
[this, "WW2Wehrmacht_TankCrew"] call FNC_GearScript;
*/
#define package "WW2Wehrmacht_"

#define uniform_frame \
	["U_LIB_GER_Schutze", "U_LIB_GER_Recruit", "U_LIB_GER_Art_schutze","U_LIB_GER_Gefreiter","U_LIB_GER_Pionier"] call FNC_AddItemRandom;\
	["B_LIB_GER_A_frame"] call FNC_AddItem;\
	["H_LIB_GER_Helmet","H_LIB_GER_Helmet","H_LIB_GER_Helmet","H_LIB_GER_Helmet","H_LIB_GER_Cap"] call FNC_AddItemRandom;

#define uniform_bag \
	["U_LIB_GER_Schutze", "U_LIB_GER_Recruit", "U_LIB_GER_Art_schutze","U_LIB_GER_Gefreiter","U_LIB_GER_Pionier"] call FNC_AddItemRandom;\
	["B_LIB_GER_Backpack"] call FNC_AddItem;\
	["H_LIB_GER_Helmet","H_LIB_GER_Helmet","H_LIB_GER_Helmet","H_LIB_GER_Helmet","H_LIB_GER_Cap"] call FNC_AddItemRandom;
	
#define uniform_sniper \
	["U_LIB_GER_Scharfschutze"] call FNC_AddItem;\
	["H_LIB_GER_HelmetCamo"] call FNC_AddItemRandom;	
	
#define uniform_sltl \
	["U_LIB_GER_Oberst", "U_LIB_GER_Leutnant"] call FNC_AddItemRandom;\
	["B_LIB_GER_Backpack"] call FNC_AddItem; \
	["H_LIB_GER_OfficerCap"] call FNC_AddItem;
	
#define uniform_medic \
	["U_LIB_GER_Medic"] call FNC_AddItem;\
	["B_LIB_GER_Backpack"] call FNC_AddItem; \
	["H_LIB_GER_Helmet_WHCRx2x4x"] call FNC_AddItem;
	
#define items \
	["ItemMap"] call FNC_AddItem; \
	["ItemCompass"] call FNC_AddItem; \
	["ItemWatch"] call FNC_AddItem; \
	["ACE_fieldDressing", 4] call FNC_AddItem; \
	["ACE_morphine", 1] call FNC_AddItem; \
	["ACE_MapTools"] call FNC_AddItem; \
	["ACE_Flashlight_MX991"] call FNC_AddItem; \
	["ACE_earplugs"] call FNC_AddItem; \
	["LIB_shg24", 2] call FNC_AddItem;
	
#define plkit \
	["ItemRadio"] call FNC_AddItem; \
	["LIB_Binocular_GER"] call FNC_AddItem; \
	["LIB_1Rnd_flare_red", 2] call FNC_AddItem; \
	["LIB_1Rnd_flare_green", 2] call FNC_AddItem; \
	["LIB_1Rnd_flare_yellow", 2] call FNC_AddItem; \
	["SmokeShell", 2] call FNC_AddItem; \
	["SmokeShellRed", 2] call FNC_AddItem; \
	["SmokeShellBlue", 2] call FNC_AddItem; \
	["SmokeShellGreen", 2] call FNC_AddItem; \
	["LIB_FLARE_PISTOL"] call FNC_AddItem;
	
#define slkit \
	["ItemRadio"] call FNC_AddItem; \
	["LIB_Binocular_GER"] call FNC_AddItem; \
	["SmokeShell", 2] call FNC_AddItem; \
	["SmokeShellRed", 2] call FNC_AddItem; \
	["SmokeShellBlue", 2] call FNC_AddItem; \
	["SmokeShellGreen", 2] call FNC_AddItem;
	
#define demokit \
	["DemoCharge_Remote_Mag", 4] call FNC_AddItem; \
	["ACE_M26_Clacker"] call FNC_AddItem; \
	["ACE_DefusalKit", 1] call FNC_AddItem;
	
#define minekit \
	["DemoCharge_Remote_Mag", 4] call FNC_AddItem; \
	["ACE_DefusalKit", 1] call FNC_AddItem;

#define kar \
	["lib_5Rnd_792x57", 20] call FNC_AddItem;\
	["LIB_K98_BOLT"] call FNC_AddItem;

#define g43 \
	["lib_10Rnd_792x57", 10] call FNC_AddItem;\
	["LIB_G43"] call FNC_AddItem;
	
#define MG34 \
	["LIB_50Rnd_792x57", 4] call FNC_AddItem;\
	["LIB_MG342"] call FNC_AddItem;

#define mp40 \
	["lib_32Rnd_9x19", 7] call FNC_AddItem;\
	["LIB_MP40"] call FNC_AddItem;
	
#define mp44 \
	["LIB_30Rnd_792x33", 7] call FNC_AddItem;\
	["LIB_MP44"] call FNC_AddItem;
	
#define kar_scoped \
	["lib_5Rnd_792x57", 10] call FNC_AddItem;\
	["LIB_K98ZF39_BOLT"] call FNC_AddItem;

#define p38 \
	["LIB_8Rnd_9x19", 2] call FNC_AddItem;\
	["LIB_P38"] call FNC_AddItem;
	
//CDC
case (package + "PL"): {
	
	["V_LIB_GER_VestUnterofficer"] call FNC_AddItem; //Vest
	uniform_sltl;
	items;
	mp40;
	plkit;
};

//CDG
case (package + "SL"): {
	
	["V_LIB_GER_VestMP40"] call FNC_AddItem; //Vest
	uniform_bag;
	items;
	mp40;
	slkit;
};

//CDE
case (package + "TL"): {
	
	["V_LIB_GER_VestG43"] call FNC_AddItem;  //Vest
	uniform_frame;
	items;
	g43;
};
case (package + "TL2"): {
	
	["V_LIB_GER_VestKar98"] call FNC_AddItem;  //Vest
	uniform_frame;
	items;
	kar;
};

//Sniper
case (package + "Marksman"): {
	
	["V_LIB_GER_VestKar98"] call FNC_AddItem;  //Vest
	uniform_sniper;
	items;
	kar_scoped;
};

//AT+pourv+Pzft
case (package + "RFAT"): {
	
	["V_LIB_GER_VestKar98"] call FNC_AddItem;  //Vest
	uniform_frame;
	items;
	kar;
	["LIB_1Rnd_RPzB",2] call FNC_AddItem;
	["LIB_RPzB"] call FNC_AddItem;
};
case (package + "RFAT_AS"): {
	
	["V_LIB_GER_VestKar98"] call FNC_AddItem;  //Vest
	uniform_bag;
	items;
	kar;
	["LIB_1Rnd_RPzB",3] call FNC_AddItem;
};
case (package + "RFPZFT"): {
	
	["V_LIB_GER_VestKar98"] call FNC_AddItem;  //Vest
	uniform_frame;
	items;
	kar;
	["LIB_1Rnd_PzFaust_30m",1] call FNC_AddItem;
	["LIB_PzFaust_30m"] call FNC_AddItem;
};

//MG+Pourv
case (package + "MG"): {
	["V_LIB_GER_VestMG"] call FNC_AddItem;  //Vest
	uniform_frame;
	items;
	MG34;
};
case (package + "MG_AS"): {
	["V_LIB_GER_VestKar98"] call FNC_AddItem;  //Vest
	uniform_bag;
	items;
	kar;
	["LIB_50Rnd_792x57", 4] call FNC_AddItem;
};

//Demos
case (package + "Explos"): {
	["V_LIB_GER_VestG43"] call FNC_AddItem;  //Vest
	uniform_bag;
	items;
	g43;
	demokit;
};
case (package + "Mines"): {
	["V_LIB_GER_VestG43"] call FNC_AddItem;  //Vest
	uniform_bag;
	items;
	g43;
	minekit;
};

//Rifleman
case (package + "RF"): {
	["V_LIB_GER_VestKar98"] call FNC_AddItem;  //Vest
	uniform_frame;
	items;
	kar;
};
case (package + "RFMP44"): {
	["V_LIB_GER_VestSTG"] call FNC_AddItem;  //Vest
	uniform_frame;
	items;
	mp44;
};

//Medic
case (package + "MEDIC"): {
	
	["V_LIB_GER_VestKar98"] call FNC_AddItem;  //Vest
	uniform_medic;
	items;
	kar;
	
	//Extra Medic Supplies
	["ACE_fieldDressing", 30] call FNC_AddItem;
	["ACE_morphine", 20] call FNC_AddItem;
	["ACE_epinephrine", 20] call FNC_AddItem;
	["ACE_salineIV_250", 2] call FNC_AddItem;
};

//Tankcrew
case (package + "TankCommander"): {
	["U_LIB_GER_Tank_crew_leutnant"] call FNC_AddItem;
	["H_LIB_GER_TankOfficerCap"] call FNC_AddItem;
	["V_LIB_GER_VestUnterofficer"] call FNC_AddItem;
	["ItemRadio"] call FNC_AddItem;
	["LIB_Binocular_GER"] call FNC_AddItem;
	items;
	mp40;
	p38;
};
case (package + "TankCrew"): {
	["U_LIB_GER_Tank_crew_private"] call FNC_AddItem;
	["H_LIB_GER_TankPrivateCap"] call FNC_AddItem;
	["V_LIB_GER_TankPrivateBelt"] call FNC_AddItem;
	items;
	p38;
};