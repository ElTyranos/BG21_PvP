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

	/* Spectator Mode 1 : free cam, full UI	*/
	// ["Initialize", [player, [], true, true, true, false, false, true, true, true]] call BIS_fnc_EGSpectator;

	/* Spectator Mode 2 : ennemy side is locked	*/
	// switch (playerSide) do {
		// case WEST: {		["Initialize", [player, [WEST], true, true, true, false, false, true, true, true]] call BIS_fnc_EGSpectator; };
		// case EAST: {		["Initialize", [player, [EAST], true, true, true, false, false, true, true, true]] call BIS_fnc_EGSpectator; };
		// case RESISTANCE: {	["Initialize", [player, [RESISTANCE], true, true, true, false, false, true, true, true]] call BIS_fnc_EGSpectator; };
	// };

	/* Spectator Mode 3 : ACE3 + ennemy side is locked	*/
	switch (playerSide) do {
		case WEST: { [[west], [east,resistance,civilian]] call ace_spectator_fnc_updateSides; };
		case EAST: { [[east], [west,resistance,civilian]] call ace_spectator_fnc_updateSides; };		
		case RESISTANCE: { [[resistance], [east,west,civilian]] call ace_spectator_fnc_updateSides; };
	};

	/* Set spectator for TFAR or ACRE */
	// ALREADY IN ACE SPECTATOR
	// if (["acre_sys_radio"] call bg21_fnc_ismodloaded) then {[true] call acre_api_fnc_setSpectator};
	// if (["task_force_radio"] call bg21_fnc_ismodloaded) then {[player, true] call TFAR_fnc_forceSpectator};

	/* Shows help */
	_text = format ["<t size='0.5' color='#ffffff'>%1
	Show spectator help by presing <t color='#FFA500'>F1</t>.<br/>
	Show you kills by pressing <t color='#FFA500'>F2</t>.<br/>
	Mute other spectators by pressing <t color='#FFA500'>CTRL+SHIFT+DOWN</t> or <t color='#FFA500'>F4</t>.<br/>
	Open map by pressing <t color='#FFA500'>M</t> and click anywhere to move camera to that postion.<br/>
	Spectator controls can be customized in game <t color='#FFA500'>options>controls>Camera</t> tab.</t>"];

	[_text, 0.55, 0.8, 45, 1] spawn BIS_fnc_dynamicText;

	/* Add WMT keys back
	 * 61 = F3 (Statistics)
	 * 60 = F2 (Main menu)
	 * 60 = F4 (ACRE Mute) */

	 // Vanilla Display ID = 20492
	 // ACE Display ID = 60000

	[] spawn
	{
		waitUntil { !isNull findDisplay 60000 };
		findDisplay 60000 displayAddEventHandler ["KeyDown",
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
		waitUntil { !isNull findDisplay 60000 };
		findDisplay 60000 displayAddEventHandler ["KeyDown",
			{
				if (((_this select 1) == 60) && (!dialog)) then
				{
					call WMT_fnc_ShowStatistic;
				};
				false
			}
		];
	};

	// Unecessary because ACE spectator fixed this, but kept for backward compabtibily of players brains
	[] spawn
	{
		waitUntil { !isNull findDisplay 60000 };
		findDisplay 60000 displayAddEventHandler ["KeyDown",
			{
				if (((_this select 1) == 62) && (!dialog)) then
				{
				   [] call acre_sys_core_fnc_toggleHeadset;
				};
				false
			}
		];
	};

	// Displays timer to end of mission
	[] spawn
	{
		private["_ctrl", "_leftTime", "_s1"];
		waitUntil { !isNull findDisplay 60000 };

		disableSerialization;
		uisleep 1.;

		_ctrl = findDisplay 60000 ctrlCreate ["RscText", -1];
		_ctrl ctrlSetPosition [0.5, safezoneY, 0.15, 0.05];
		_ctrl ctrlSetText "00:00";
		_ctrl ctrlSetTextColor [0.75, 0.75, 0.75, 1];
		_ctrl ctrlCommit 0;

		while {time > 0.1} do {
			private _leftTime = (WMT_Global_LeftTime select 0);
			_leftTime = _leftTime - (diag_tickTime - (WMT_Local_LeftTime select 0));
			_leftTime = 0 max _leftTime;
			_s1 = [_leftTime , "MM:SS"] call BIS_fnc_secondsToString;
			_ctrl ctrlSetText _s1;
			_ctrl ctrlCommit 0;
			uisleep 0.1;
		};

		ctrlDelete _ctrl;
	};
