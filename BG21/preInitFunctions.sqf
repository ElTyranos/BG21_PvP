bg21_fnc_ismodloaded = {
	params [["_modName", "", [""]]];

	isClass (configFile >> "CfgPatches" >> _modName)
};

bg21_fnc_log = {
	private ["_msg", "_tag", "_chat"];
	_msg  = _this select 0;
	_tag = _this select 1;
	_chat = _this select 2;
	
	if (_chat) then { systemChat ('[SYSTEM] ' + _msg)};
	diag_log  ('[BG21] ' + _tag + ': ' + _msg);
};

bg21_fn_getRandomFrequency = {
	private["_min","_max","_res"];
	_min = _this select 0;
	_max = _this select 1;	
	_res = _min + floor random (abs(_max - _min));
	["FREQ=" + (str _res), "INFO",false] call bg21_fnc_log;
	_res;
};

bg21_generate_frequencies = {
	private["_freqList","_newFreq"];
	_freqList = _this select 0;
	
	_index = -1;
	{
		_index = _index + 1;
		if (_x == 0) then {
			_newFreq = 0;
			while {(_newFreq == 0) or (_newFreq in _freqList)} do {
	    		_newFreq = [_this select 1, _this select 2] call bg21_fn_getRandomFrequency;
			};			
			_freqList set [_index, _newFreq];
		};
	} forEach _freqList;
	_freqList;
};