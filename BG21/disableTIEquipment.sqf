if (isServer) then {
	["[BG21] INFO: disabling Vehicles Thermals...", "INFO", false] call bg21_fnc_log;

	{
		_x disableTIEquipment true;
	} foreach vehicles;

	["[BG21] INFO: disabled Vehicles Thermals...", "INFO", false] call bg21_fnc_log;
};