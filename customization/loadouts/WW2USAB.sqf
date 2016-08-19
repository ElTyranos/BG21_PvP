//
// USING TASK FORCE RADIO
//
//[this, "WW2USAB_PL"] call FNC_GearScript;
//[this, "WW2USAB_PL2"] call FNC_GearScript;
//[this, "WW2USAB_SL"] call FNC_GearScript;
//[this, "WW2USAB_TL"] call FNC_GearScript;
//[this, "WW2USAB_Marksman"] call FNC_GearScript;
//[this, "WW2USAB_RFAT"] call FNC_GearScript;
//[this, "WW2USAB_RFAT_AS"] call FNC_GearScript;
//[this, "WW2USAB_MG"] call FNC_GearScript;
//[this, "WW2USAB_MG_AS"] call FNC_GearScript;
//[this, "WW2USAB_EX"] call FNC_GearScript;
//[this, "WW2USAB_MEDIC"] call FNC_GearScript;
//[this, "WW2USAB_RF"] call FNC_GearScript;

#define package "WW2USAB_"

#define uniform \
	["U_LIB_US_Private"] call FNC_AddItem; \
	["I44_Bag_ABMusette"] call FNC_AddItem; \
	["I44_M1_Helmet"] call FNC_AddItem;

#define uniform_sltl \
	["U_LIB_US_Private"] call FNC_AddItem; \
	["I44_Bag_ABMusette"] call FNC_AddItem; \
	["I44_M1_Helmet_nco"] call FNC_AddItem;
	
#define uniform_medic \
	["U_LIB_US_Private"] call FNC_AddItem; \
	["I44_Bag_ABMusette"] call FNC_AddItem; \
	["H_LIB_US_Helmet_Med"] call FNC_AddItem;
	
//["I44_M1_Helmet", "rhsusf_lwh_helmet_marpatd_ess", "rhsusf_lwh_helmet_marpatd_headset"] call FNC_AddItemRandom;
	
#define items \
	["ItemMap"] call FNC_AddItem; \
	["ItemCompass"] call FNC_AddItem; \
	["ItemWatch"] call FNC_AddItem; \
	["ACE_fieldDressing", 4] call FNC_AddItem; \
	["ACE_morphine", 1] call FNC_AddItem; \
	["ACE_MapTools"] call FNC_AddItem; \
	["ACE_Flashlight_MX991"] call FNC_AddItem; \
	["ACE_earplugs"] call FNC_AddItem; \
	["LIB_US_Mk_2", 2] call FNC_AddItem;
	
#define plkit \
	["ItemRadio"] call FNC_AddItem; \
	["LIB_Binocular_SU"] call FNC_AddItem; \
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
	["LIB_Binocular_SU"] call FNC_AddItem; \
	["SmokeShell", 2] call FNC_AddItem; \
	["SmokeShellRed", 2] call FNC_AddItem; \
	["SmokeShellBlue", 2] call FNC_AddItem; \
	["SmokeShellGreen", 2] call FNC_AddItem;

#define demokit \
	["DemoCharge_Remote_Mag", 4] call FNC_AddItem; \
	["ACE_M26_Clacker"] call FNC_AddItem; \
	["ACE_DefusalKit", 1] call FNC_AddItem;
	
#define carabine \
	["LIB_15Rnd_762x33", 10] call FNC_AddItem;\
	["I44_M1A1Carbine"] call FNC_AddItem;

#define garand \
	["LIB_8Rnd_762x63", 13] call FNC_AddItem;\
	["LIB_M1_Garand"] call FNC_AddItem;

#define bar \
	["LIB_20Rnd_762x63", 13] call FNC_AddItem;\
	["LIB_M1918A2_BAR"] call FNC_AddItem;

#define thompson \
	["LIB_30Rnd_45ACP", 7] call FNC_AddItem;\
	["LIB_M1A1_Thompson"] call FNC_AddItem;
	
#define springfield \
	["LIB_5Rnd_762x63", 10] call FNC_AddItem;\
	["LIB_M1903A4_Springfield_BOLT"] call FNC_AddItem;
	
//CDC
case (package + "PL"): {
	
	["V_LIB_US_Vest_Carbine_nco"] call FNC_AddItem; //Vest
	uniform_sltl;
	items;
	carabine;
	plkit;
};

//CDC2
case (package + "PL2"): {
	
	["V_LIB_US_Vest_Thompson_nco"] call FNC_AddItem; //Vest
	uniform_sltl;
	items;
	thompson;
	plkit;
};

//CDG
case (package + "SL"): {
	
	["V_LIB_US_Vest_Thompson_nco"] call FNC_AddItem; //Vest
	uniform_sltl;
	items;
	thompson;
	slkit;
};

//CDE
case (package + "TL"): {
	
	["V_LIB_US_Vest_Carbine"] call FNC_AddItem;  //Vest
	uniform;
	items;
	carabine;
};

//Sniper
case (package + "Marksman"): {
	
	["V_LIB_US_Vest_Garand"] call FNC_AddItem;  //Vest
	uniform;
	items;
	springfield;
};

//AT+pourv
case (package + "RFAT"): {
	
	["V_LIB_US_Vest_Carbine"] call FNC_AddItem;  //Vest
	uniform;
	items;
	carabine;
	["LIB_1Rnd_60mm_M6",2] call FNC_AddItem;
	["LIB_M1A1_Bazooka"] call FNC_AddItem;
};
case (package + "RFAT_AS"): {
	
	["V_LIB_US_Vest_Garand"] call FNC_AddItem;  //Vest
	uniform;
	items;
	garand;
	["LIB_1Rnd_60mm_M6",3] call FNC_AddItem;
};

//MG+Pourv
case (package + "MG"): {
	["V_LIB_US_Vest_Bar"] call FNC_AddItem;  //Vest
	uniform;
	items;
	bar;
};
case (package + "MG_AS"): {
	["V_LIB_US_Vest_Garand"] call FNC_AddItem;  //Vest
	uniform;
	items;
	garand;
	["LIB_20Rnd_762x63", 6] call FNC_AddItem;
};

//Demo
case (package + "EX"): {
	["V_LIB_US_Vest_Thompson"] call FNC_AddItem;  //Vest
	uniform;
	items;
	thompson;
	demokit;
};

//Rifleman
case (package + "RF"): {
	["V_LIB_US_Vest_Garand"] call FNC_AddItem;  //Vest
	uniform;
	items;
	garand;
};

//Medic
case (package + "MEDIC"): {
	
	["V_LIB_US_Vest_Medic2"] call FNC_AddItem;  //Vest
	uniform_medic;
	items;
	carabine;
	
	//Extra Medic Supplies
	["ACE_fieldDressing", 30] call FNC_AddItem;
	["ACE_morphine", 20] call FNC_AddItem;
	["ACE_epinephrine", 20] call FNC_AddItem;
	["ACE_salineIV_250", 2] call FNC_AddItem;
};	