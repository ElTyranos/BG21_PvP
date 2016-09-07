// Initialise TFAR
compile preprocessFileLineNumbers "\task_force_radio\functions\common.sqf";

//Serious Mode
tf_radio_channel_name = "TaskForceRadio";
tf_radio_channel_password = "123";

// TFAR-Basic settings (will override userconfig settings)
tf_no_auto_long_range_radio = true;
tf_give_personal_radio_to_regular_soldier = false;
TF_give_microdagr_to_soldier = false;
tf_same_sw_frequencies_for_side = true;
tf_same_lr_frequencies_for_side = true;
tf_terrain_interception_coefficient = 7.0;

// Defaultradios and decryption
tf_west_radio_code = "tsddgt"; // Default: _blufor
tf_defaultWestBackpack = "tf_rt1523g";
tf_defaultWestPersonalRadio = "tf_anprc152";
tf_defaultWestRiflemanRadio = "tf_anprc152"; // Default: tf_rf_7800str
tf_defaultWestAirborneRadio = "tf_anarc210";
     
tf_east_radio_code = "uindxc"; // Default: _opfor
tf_defaultEastBackpack = "tf_mr3000";
tf_defaultEastPersonalRadio = "tf_fadak";
tf_defaultEastRiflemanRadio = "tf_fadak";
tf_defaultEastAirborneRadio = "tf_mr60001";
     
tf_guer_radio_code = "gmdodb"; // Default: _independent 
tf_defaultGuerBacpkpack = "tf_anprc155"; // Default: tf_anprc155 
tf_defaultGuerPersonalRadio = "tf_anprc148jem"; // Default: tf_anprc148jem
tf_defaultGuerRiflemanRadio = "tf_anprc148jem"; // Default: tf_anprc154
tf_defaultGuerAirborneRadio = "tf_anarc156"; // Default: tf_anarc156

// Preset frequencies
tf_freq_west = [0,7,["47.1","48.2","49.3","50.4","51.5","52.6","53.7","54.8","80.1"],0,"tsddgt",-1,0];
tf_freq_west_lr = [0,7,["80.1","31.2","32.3","33.4","34.5","35.6","36.7","37.8","38.9"],0,"tsddgt",-1,0];

tf_freq_east = [0,7,["221.5","222","222.5","223","223.5","224","224.5","225","225.5"],0,"uindxc",-1,0];
tf_freq_east_lr = [0,7,["51.5","52.5","32","32.5","33","33.5","34","34.5","35"],0,"uindxc",-1,0];

tf_freq_guer = [0,7,["47.1","48.2","49.3","50.4","51.5","52.6","53.7","54.8","80.1"],0,"gmdodb",-1,0];
tf_freq_guer_lr = [0,7,["80.1","31.2","32.3","33.4","34.5","35.6","36.7","37.8","38.9"],0,"gmdodb",-1,0];

// Variable broadcasting
if (isServer) then {
publicVariable "tf_no_auto_long_range_radio";
publicVariable "tf_give_personal_radio_to_regular_soldier";
publicVariable "TF_give_microdagr_to_soldier";
publicVariable "tf_same_sw_frequencies_for_side";
publicVariable "tf_same_lr_frequencies_for_side";
publicVariable "tf_terrain_interception_coefficient";
publicVariable "tf_west_radio_code";
publicVariable "tf_defaultWestBackpack";
publicVariable "tf_defaultWestPersonalRadio";
publicVariable "tf_defaultWestRiflemanRadio";
publicVariable "tf_defaultWestAirborneRadio";
publicVariable "tf_east_radio_code";
publicVariable "tf_defaultEastBackpack";
publicVariable "tf_defaultEastPersonalRadio";
publicVariable "tf_defaultEastRiflemanRadio";
publicVariable "tf_defaultEastAirborneRadio";
publicVariable "tf_guer_radio_code"; 
publicVariable "tf_defaultGuerBacpkpack"; 
publicVariable "tf_defaultGuerPersonalRadio";
publicVariable "tf_defaultGuerRiflemanRadio";
publicVariable "tf_defaultGuerAirborneRadio";
publicVariable "tf_freq_west";
publicVariable "tf_freq_west_lr";
publicVariable "tf_freq_east";
publicVariable "tf_freq_east_lr";
publicVariable "tf_freq_guer";
publicVariable "tf_freq_guer_lr";
publicVariable "tf_freq_name";
};