#include "core\gearCore.sqf" //DO NOT REMOVE

// Call this with [this, "LOADOUT", (optional) "GROUPNAME"] call FNC_GearScript; in the Init field of the unit
// Example:
// [this, "SL", "1'1"] call FNC_GearScript;\
//
// more info: https://github.com/dklollol/Olsen-Framework-Arma-3/wiki/gear.sqf

_unit call FNC_RemoveAllGear;

switch (_type) do {
	
	#include "loadouts\USMCRiflePlatoon.sqf"
	#include "loadouts\RURiflePlatoon.sqf"
	#include "loadouts\WW2USAB.sqf"
	#include "loadouts\WW2GERAB.sqf"
	
};