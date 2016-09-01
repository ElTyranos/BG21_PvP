//[this, "Operators_TL"] call FNC_GearScript;
//[this, "Operators_MD"] call FNC_GearScript;
//[this, "Operators_RF"] call FNC_GearScript;
//[this, "Operators_FM"] call FNC_GearScript;
//[this, "Operators_pilot"] call FNC_GearScript;

#define package "Operators_"

#define uniform \
	["Gen3_aor1"] call FNC_AddItem; \
	["rhsusf_assault_eagleaiii_coy"] call FNC_AddItem; \
	["rhsusf_opscore_aor1","rhsusf_opscore_aor1_pelt","rhsusf_opscore_aor1_pelt_nsw"] call FNC_AddItemRandom;
	
#define uniform_pilot \
	["Gen3_aor1"] call FNC_AddItem; \
	["rhsusf_assault_eagleaiii_coy"] call FNC_AddItem; \
	["H_PilotHelmetHeli_B"] call FNC_AddItem;
	
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
	["ACRE_PRC117F"] call FNC_AddItem; \
	["Binocular"] call FNC_AddItem; \
	["SmokeShell", 1] call FNC_AddItem; \
	["SmokeShellRed", 1] call FNC_AddItem; \
	["SmokeShellBlue", 1] call FNC_AddItem; \
	["SmokeShellGreen", 1] call FNC_AddItem;
	
#define mk18mod1 \
	["rhs_mag_30Rnd_556x45_Mk318_Stanag", 10] call FNC_AddItem; \
	["rhs_weap_mk18_d"] call FNC_AddItem; \
	["rhsusf_acc_anpeq15"] call FNC_AddItem; \
	["RHSUSF_ACC_EOTECH_552"] call FNC_AddItem; \
	["rhsusf_acc_grip3_tan"] call FNC_AddItem;

#define M249 \
	["rhs_200rnd_556x45_M_SAW", 3] call FNC_AddItem; \
	["rhs_weap_m249_pip_S_vfg"] call FNC_AddItem; \
	["rhsusf_acc_anpeq15side_bk"] call FNC_AddItem \
	["rhsusf_acc_SpecterDR"] call FNC_AddItem;
	
case (package + "TL"): {
	
	["lbt_comms_aor1"] call FNC_AddItem;  //Vest
	
	uniform;
	items;
	plkit;
	mk18mod1;

};

case (package + "RF"): {
	
	["lbt_comms_aor1"] call FNC_AddItem;  //Vest
	
	uniform;
	items;
	mk18mod1;
	
};

case (package + "FM"): {
	
	["lbt_comms_aor1"] call FNC_AddItem;  //Vest
	
	uniform;
	items;
	mk18mod1;
	
};

case (package + "MD"): {
	
	["lbt_medical_aor1"] call FNC_AddItem;  //Vest
	
	uniform;
	items;
	mk18mod1;
	
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

case (package + "pilot"): {
	
	["lbt_light_aor1"] call FNC_AddItem;  //Vest
	
	uniform_pilot;
	items;
	plkit;
	mk18mod1;
		
};
