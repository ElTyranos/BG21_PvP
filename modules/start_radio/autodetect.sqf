if (["acre_sys_radio"] call bg21_fnc_ismodloaded) then{[true, true] call acre_api_fnc_setupMission;};
if (["task_force_radio"] call bg21_fnc_ismodloaded) then{[] execVM "modules\start_radio\TFAR.sqf"};
