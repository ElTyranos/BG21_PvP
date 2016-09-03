#include "core\vehGearCore.sqf" //DO NOT REMOVE

// Call this with [this, "LOADOUT"] call FNC_VehicleGearScript; in the Init field of the vehile
// Example:
// [this, "HUMMVEE"] call FNC_VehicleGearScript;

switch (_type) do {

	case "OstFront_Tank_R": {

		_vehicle call FNC_RemoveAllVehicleGear;

		["ToolKit"] call FNC_AddItemVehicle;
	};
	case "OstFront_Tank_G": {

		_vehicle call FNC_RemoveAllVehicleGear;

		["ToolKit"] call FNC_AddItemVehicle;
	};
};