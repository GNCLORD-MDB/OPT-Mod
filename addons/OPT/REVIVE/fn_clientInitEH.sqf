/**
* Description:
* 
* 
* Author:
* Lord-MDB
*
* Arguments:
*
* Return Value:
*
* Server Only:
* No
* 
* Global:
* No
* 
* API:
* No
* 
* Example:
* call FUNC(clientInitEH);
*/

#include "macros.hpp";

DUMP("REVIVE EH");

//Event Aüslösung bei bewustlosen Spieler.
[
	"ace_unconscious",
	{
		params ["_unit", "_isUnconscious"]; 

		[_unit] call FUNC(isUnconscious);
	}
] call CBA_fnc_addEventHandler;

//Funktion für EH auslösung
DFUNC(isUnconscious) = 
{
	params ["_unit"];

	if (_unit isEqualTo player) then 
	{
		//Var für GPS setzen 
		_unit setVariable ["FAR_isUnconscious", 1, true];

		//Schaden weiterer abschalten
		_unit allowDamage false;

		//Einheit aus Fahrzeug endfernen
		if (vehicle _unit != _unit) then 
		{
			unAssignVehicle _unit;
			_unit action ["GetOut", vehicle _unit];
		};

		//Sprengladungen mit Todmanschalter zünden
		[_unit] call ace_explosives_fnc_onIncapacitated;

		//Dialog ausführen
		[] call FUNC(dialog);
	};
};

//var nach Respwan zurück setzen
["Respawn", {

    {
		[player, false, 1, true] call ace_medical_fnc_setUnconscious;
		player setVariable ["FAR_isUnconscious", 0, true];
		player setVariable ["FAR_isStabilized", 0, true];
		player allowDamage true;
		1 enableChannel true;
		 
    } call CFUNC(execNextFrame);

}] call CFUNC(addEventhandler);



