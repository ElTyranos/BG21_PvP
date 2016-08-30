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

["Initialize", [player, [], true, true, true, false, false, true, true, true]] call BIS_fnc_EGSpectator;
if (["acre_sys_radio"] call bg21_fnc_ismodloaded) then {[true] call acre_api_fnc_setSpectator};
if (["task_force_radio"] call bg21_fnc_ismodloaded) then {[player, true] call TFAR_fnc_forceSpectator};
