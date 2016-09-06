if (!isDedicated) then {

	"" spawn {

		sleep 0.01;
		
        _TFAR = 
        
        if (["acre_sys_radio"] call bg21_fnc_ismodloaded) then{[true, true] call acre_api_fnc_setupMission;};
        if (["task_force_radio"] call bg21_fnc_ismodloaded) then{
            #include "\task_force_radio\functions\common.sqf";

            //radio_frequencies : 
            BG21_RD_FREQ_WEST_SW = [0, 0, 0, 0, 0, 0, 0, 0, 0]; 
            BG21_RD_FREQ_WEST_LR = [0, 0, 0, 0, 0, 0, 0, 0];
            BG21_RD_FREQ_EAST_SW = [0, 0, 0, 0, 0, 0, 0, 0, 0];
            BG21_RD_FREQ_EAST_LR = [0, 0, 0, 0, 0, 0, 0, 0];
            //0 = random
            //30 and 512 for SW
            //30 and  87 for LR

            ["setting radio frequencies...", "INFO", false] call bg21_fnc_log;

            tf_no_auto_long_range_radio = true;
            publicVariable "tf_no_auto_long_range_radio";
            tf_same_sw_frequencies_for_side = true;
            publicVariable "tf_same_sw_frequencies_for_side";
            tf_same_lr_frequencies_for_side = true;
            publicVariable "tf_same_lr_frequencies_for_side";

            _tf_freq_west = false call TFAR_fnc_generateSwSettings;
            _tf_freq_west  set [2, ([BG21_RD_FREQ_WEST_SW, 30, 512] call bg21_generate_frequencies)];
            tf_freq_west = _tf_freq_west;
            publicVariable "tf_freq_west";

            _tf_freq_west_lr = false call TFAR_fnc_generateLrSettings;
            _tf_freq_west_lr set [2, ([BG21_RD_FREQ_WEST_LR, 30, 87] call bg21_generate_frequencies)];
            tf_freq_west_lr =_tf_freq_west_lr;
            hint (str count tf_freq_west_lr);
            publicVariable "tf_freq_west_lr";

            tf_freq_east = false call TFAR_fnc_generateSwSettings;
            tf_freq_east set [2, ([BG21_RD_FREQ_EAST_LR, 30, 512] call bg21_generate_frequencies)];
            publicVariable "tf_freq_east";
                
            tf_freq_east_lr = false call TFAR_fnc_generateLrSettings;
            tf_freq_east_lr set [2, ([BG21_RD_FREQ_EAST_LR, 30, 87] call bg21_generate_frequencies)];
            publicVariable "tf_freq_east_lr";

            ["radio frequencies done.", "INFO", true] call bg21_fnc_log;
        };

	};
};
