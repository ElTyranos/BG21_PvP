//[this, "Talibans_TL"] call FNC_GearScript;
//[this, "Talibans_MD"] call FNC_GearScript;
//[this, "Talibans_RF"] call FNC_GearScript;
//[this, "Talibans_FM"] call FNC_GearScript;

#define package "Talibans_"

#define uniform \
	["btc_u_soldier_o_01","btc_u_soldier_o_01_2","btc_u_soldier_o_01_3","btc_u_soldier_o_03","btc_u_soldier_o_03_2","btc_u_soldier_o_03_3","btc_u_soldier_o_04","btc_u_soldier_o_04_2","btc_u_soldier_o_04_3","btc_u_soldier_o_05","btc_u_soldier_o_05_2","btc_u_soldier_o_05_3"] call FNC_AddItemRandom; \
	["rhs_sidor"] call FNC_AddItem; \
	["btc_h_afghan_01","btc_h_afghan_01_2","btc_h_afghan_01_3","btc_h_afghan_01_4","btc_h_afghan_01_5","btc_h_afghan_02","btc_h_afghan_02_2","btc_h_afghan_02_3","btc_h_afghan_02_4","btc_h_afghan_02_5","btc_h_afghan_03","btc_h_afghan_03_2","btc_h_afghan_03_3","btc_h_afghan_03_4","btc_h_afghan_03_5","btc_h_afghan_04","btc_h_afghan_04_2","btc_h_afghan_04_3","btc_h_afghan_04_4","btc_h_afghan_04_5","btc_h_afghan_05","btc_h_afghan_05_2","btc_h_afghan_05_3","btc_h_afghan_05_4","btc_h_afghan_05_5","btc_h_afghan_06","btc_h_afghan_06_2","btc_h_afghan_06_3","btc_h_afghan_06_4","btc_h_afghan_06_5"] call FNC_AddItemRandom;
			
#define items \
	["ItemMap"] call FNC_AddItem; \
	["ItemCompass"] call FNC_AddItem; \
	["ItemWatch"] call FNC_AddItem; \
	["ACRE_PRC152", 1] call FNC_AddItem; \
	["ACE_fieldDressing", 2, "uniform"] call FNC_AddItem; \
	["ACE_elasticBandage", 2, "uniform"] call FNC_AddItem; \
	["ACE_packingBandage", 2, "uniform"] call FNC_AddItem; \
	["ACE_quikclot", 2, "uniform"] call FNC_AddItem; \
	["ACE_morphine", 1, "uniform"] call FNC_AddItem; \
	["ACE_epinephrine", 1, "uniform"] call FNC_AddItem; \
	["ACE_tourniquet", 1, "uniform"] call FNC_AddItem;	\
	["ACE_MapTools"] call FNC_AddItem; \
	["ACE_earplugs"] call FNC_AddItem; \
	["rhs_mag_m67", 2] call FNC_AddItem;
	
#define plkit \
	["ACRE_PRC77"] call FNC_AddItem; \
	["Binocular"] call FNC_AddItem; \
	["SmokeShell", 1] call FNC_AddItem; \
	["SmokeShellRed", 1] call FNC_AddItem; \
	["SmokeShellBlue", 1] call FNC_AddItem; \
	["SmokeShellGreen", 1] call FNC_AddItem;
	
#define ak \
	["rhs_30Rnd_762x39mm", 10] call FNC_AddItem; \
	["rhs_weap_akm","rhs_weap_akms","rhs_weap_ak104","rhs_weap_ak103"] call FNC_AddItemRandom; \
	["rhs_acc_dtk"] call FNC_AddItem; \
	
#define pkm \
	["rhs_100Rnd_762x54mmR", 3] call FNC_AddItem; \
	["rhs_weap_pkm"] call FNC_AddItem;
	
case (package + "TL"): {

	["TRYK_V_ChestRig"] call FNC_AddItem;  //Vest	
	
	uniform;
	items;
	plkit;
	ak;
};

case (package + "RF"): {
	
	["TRYK_V_ChestRig"] call FNC_AddItem;  //Vest		
	
	uniform;
	items;
	ak;
};

case (package + "FM"): {
		
	["TRYK_V_ChestRig"] call FNC_AddItem;  //Vest		
		
	uniform;
	items;
	pkm;
	
};

case (package + "MD"): {
	
	["TRYK_V_ChestRig"] call FNC_AddItem;  //Vest	
	
	uniform;
	items;
	ak;
	
	//Extra Medic Supplies
	["ACE_fieldDressing", 15] call FNC_AddItem;
	["ACE_elasticBandage", 20] call FNC_AddItem;
	["ACE_packingBandage", 20] call FNC_AddItem;
	["ACE_quikclot", 12] call FNC_AddItem;
	["ACE_atropine", 10] call FNC_AddItem;
	["ACE_morphine", 8] call FNC_AddItem;
	["ACE_epinephrine", 8] call FNC_AddItem;
	["ACE_tourniquet", 5] call FNC_AddItem;
	["ACE_salineIV_500", 1] call FNC_AddItem;
	["ACE_surgicalKit", 3] call FNC_AddItem;
	["ACE_personalAidKit", 3] call FNC_AddItem;
	
};
