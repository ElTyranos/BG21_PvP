//
// USING ACRE
//
//[this, "WW2RU_PL"] call FNC_GearScript;
//[this, "WW2RU_PL2"] call FNC_GearScript;
//[this, "WW2RU_SL"] call FNC_GearScript;
//[this, "WW2RU_TL"] call FNC_GearScript;
//[this, "WW2RU_Marksman"] call FNC_GearScript;
//[this, "WW2RU_RFAT"] call FNC_GearScript;
//[this, "WW2RU_RFAT_AS"] call FNC_GearScript;
//[this, "WW2RU_MG"] call FNC_GearScript;
//[this, "WW2RU_MG_AS"] call FNC_GearScript;
//[this, "WW2RU_EX"] call FNC_GearScript;
//[this, "WW2RU_MEDIC"] call FNC_GearScript;
//[this, "WW2RU_RF"] call FNC_GearScript;

#define package "WW2RU_"

#define uniform \
	["U_LIB_SOV_Tank_private_field", "U_LIB_SOV_Strelok"] call FNC_AddItemRandom;\
	["B_LIB_SOV_RA_Rucksack", "B_LIB_SOV_RA_GasBag"] call FNC_AddItemRandom;\
	["H_LIB_SOV_RA_PrivateCap", "H_LIB_SOV_RA_Helmet"] call FNC_AddItemRandom;
	
#define uniform_sltl \
	["U_LIB_SOV_Tank_private_field", "U_LIB_SOV_Strelok"] call FNC_AddItemRandom;\
	["B_LIB_SOV_RA_Radio"] call FNC_AddItem; \
	["H_LIB_SOV_RA_OfficerCap"] call FNC_AddItem;
	
#define uniform_MG \
	["U_LIB_SOV_Tank_private_field", "U_LIB_SOV_Strelok"] call FNC_AddItemRandom;\
	["B_LIB_SOV_RA_MGAmmoBag"] call FNC_AddItem; \
	["H_LIB_SOV_RA_PrivateCap", "H_LIB_SOV_RA_Helmet"] call FNC_AddItemRandom;
	
#define uniform_medic \
	["U_LIB_SOV_Tank_private_field", "U_LIB_SOV_Strelok"] call FNC_AddItemRandom;\
	["B_LIB_SOV_RA_MedicalBag"] call FNC_AddItem; \
	["H_LIB_SOV_RA_PrivateCap", "H_LIB_SOV_RA_Helmet"] call FNC_AddItemRandom;
	
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
	["ACE_DefusalKit", 2] call FNC_AddItem;
	
#define mosin \
	["LIB_5Rnd_762x54", 20] call FNC_AddItem;\
	["LIB_M9130"] call FNC_AddItem;

#define mosing_scoped \
	["LIB_5Rnd_762x54", 10] call FNC_AddItem;\
	["LIB_M9130PU"] call FNC_AddItem;

#define ppsh41_m \
	["LIB_35Rnd_762x25", 6] call FNC_AddItem;\
	["LIB_PPSh41_m"] call FNC_AddItem;

#define ppsh41_d \
	["LIB_71Rnd_762x25", 3] call FNC_AddItem;\
	["LIB_PPSh41_d"] call FNC_AddItem;
	
#define svt40 \
	["LIB_10Rnd_762x54", 10] call FNC_AddItem;\
	["LIB_SVT_40"] call FNC_AddItem;

#define dp28 \
	["LIB_47Rnd_762x54", 4] call FNC_AddItem;\
	["LIB_DP28"] call FNC_AddItem;
	
//CDC
case (package + "PL"): {
	
	["V_LIB_SOV_RA_OfficerVest"] call FNC_AddItem; //Vest
	uniform_sltl;
	items;
	ppsh41_m;
	plkit;
};

//CDC2
case (package + "PL2"): {
	
	["V_LIB_SOV_RA_OfficerVest"] call FNC_AddItem; //Vest
	uniform_sltl;
	items;
	ppsh41_d;
	plkit;
};

//CDG
case (package + "SL"): {
	
	["V_LIB_SOV_RA_PPShBelt"] call FNC_AddItem; //Vest
	uniform;
	items;
	ppsh41_d;
	slkit;
};

//CDE
case (package + "TL"): {
	
	["V_LIB_SOV_RA_SVTBelt"] call FNC_AddItem;  //Vest
	uniform;
	items;
	svt40;
};

//Sniper
case (package + "Marksman"): {
	
	["V_LIB_SOV_RA_MosinBelt"] call FNC_AddItem;  //Vest
	uniform;
	items;
	mosing_scoped;
};

//AT+pourv
case (package + "RFAT"): {
	
	["V_LIB_SOV_RA_MosinBelt"] call FNC_AddItem;  //Vest
	uniform;
	items;
	mosin;
	["LIB_1Rnd_60mm_M6",2] call FNC_AddItem;
	["LIB_M1A1_Bazooka"] call FNC_AddItem;
};
case (package + "RFAT_AS"): {
	
	["V_LIB_SOV_RA_MosinBelt"] call FNC_AddItem;  //Vest
	uniform;
	items;
	mosin;
	["LIB_1Rnd_60mm_M6",3] call FNC_AddItem;
};

//MG+Pourv
case (package + "MG"): {
	["V_LIB_SOV_RA_MGBelt"] call FNC_AddItem;  //Vest
	uniform_MG;
	items;
	dp28;
};
case (package + "MG_AS"): {
	["V_LIB_SOV_RA_MosinBelt"] call FNC_AddItem;  //Vest
	uniform_MG;
	items;
	mosin;
	["LIB_20Rnd_762x63", 6] call FNC_AddItem;
};

//Demo
case (package + "EX"): {
	["V_LIB_SOV_RA_PPShBelt"] call FNC_AddItem;  //Vest
	uniform;
	items;
	ppsh41_m;
	demokit;
};

//Rifleman
case (package + "RF"): {
	["V_LIB_SOV_RA_MosinBelt"] call FNC_AddItem;  //Vest
	uniform;
	items;
	mosin;
};

//Medic
case (package + "MEDIC"): {
	
	["V_LIB_SOV_RA_MosinBelt"] call FNC_AddItem;  //Vest
	uniform_medic;
	items;
	mosin;
	
	//Extra Medic Supplies
	["ACE_fieldDressing", 30] call FNC_AddItem;
	["ACE_morphine", 20] call FNC_AddItem;
	["ACE_epinephrine", 20] call FNC_AddItem;
	["ACE_salineIV_250", 2] call FNC_AddItem;
};	