/*
 * Author: El Tyranos
 * Vanilla spectator script handle
 *
 * BIS_fnc_EGSpectator - The custom array for Initialize function can contain:
 * _this select 0 : The target player object
 * _this select 1 : Whitelisted sides, empty means all
 * _this select 2 : Whether AI can be viewed by the spectator
 * _this select 3 : Whether Free camera mode is available
 * _this select 4 : Whether 3th Person Perspective camera mode is available
 * _this select 5 : Whether to show Focus Info stats widget
 * _this select 6 : Whether or not to show camera buttons widget
 * _this select 7 : Whether to show controls helper widget
 * _this select 8 : Whether to show header widget
 * _this select 9 : Whether to show entities / locations lists
 */
 
// if (!isDedicated) then {

	["Initialize", [player, [], true, true, true, false, false, true, true, true]] call BIS_fnc_EGSpectator;

	/* Set spectator for TFAR or ACRE */
	if (["acre_sys_radio"] call bg21_fnc_ismodloaded) then {[true] call acre_api_fnc_setSpectator};
	if (["task_force_radio"] call bg21_fnc_ismodloaded) then {[player, true] call TFAR_fnc_forceSpectator};

	_text = format ["<t size='0.5' color='#ffffff'>%1
	Show you kills by pressing <t color='#FFA500'>F2</t> (this is subject to issues sometimes).<br/>
	Mute other spectators by pressing <t color='#FFA500'>F4</t>.<br/>
	Close spectator HUD by pressing <t color='#FFA500'>CTRL+H</t>.<br/>
	Press <t color='#FFA500'>SHIFT</t>, <t color='#FFA500'>ALT</t> or <t color='#FFA500'>SHIFT+ALT</t> to modify camera speed. Open map by pressing <t color='#FFA500'>M</t> and click anywhere to move camera to that postion.<br/> 	
	Spectator controls can be customized in game <t color='#FFA500'>options->controls->'Camera'</t> tab.</t>"];

	[_text, 0.55, 0.8, 45, 1] spawn BIS_fnc_dynamicText;

	/* Add WMT keys back
	 * 61 = F3 (Statistics)
	 * 60 = F2 (Main menu)
	 */

	[] spawn
	{
		findDisplay 60492 displayAddEventHandler ["KeyDown",
			{
				if (((_this select 1) == 62) && (!dialog)) then
				{
				   [] call acre_sys_core_fnc_toggleHeadset;
				};
				false
			}
		];
	};

	[] spawn
	{
		findDisplay 60492 displayAddEventHandler ["KeyDown",
			{
				if (((_this select 1) == 61) && (!dialog)) then
				{
					createDialog 'RscWMTMainMenu';
				};
				false
			}
		];
	};

	[] spawn
	{
	   findDisplay 60492 displayAddEventHandler ["KeyDown",
			{
				if (((_this select 1) == 60) && (!dialog)) then
				{
					call WMT_fnc_ShowStatistic;
				};
				false
			}
		];
	};
// };
