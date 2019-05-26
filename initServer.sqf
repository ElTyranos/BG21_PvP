west setFriend [resistance, 0];
resistance setFriend [west, 0];

[LIB_MissionArea,true] call BG21_fnc_CoverMap;
_area = triggerarea LIB_MissionArea;
_radius = (_area select 0) max (_area select 1);

[] execVM "\WW2OG_AllInOne\fnc\fn_OutofAera_server.sqf";
