if (!isDedicated) then {

	"" spawn {

		sleep 0.01;
		       
        if (["acre_sys_radio"] call bg21_fnc_ismodloaded) then{[true, true] call acre_api_fnc_setupMission;};
        if (["task_force_radio"] call bg21_fnc_ismodloaded)) then {call compile preprocessFileLineNumbers "modules\\start_radio\TFARHandler.sqf";};
       
       };
	};
};
