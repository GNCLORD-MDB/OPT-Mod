/**
* Author: James
* log kill of a unit(player/client) or vehicle
* function determines if victim or killer were in a vehicle and logs vehicle too
*
* Arguments:
* 0: <OBJECT> unit or vehicle that was killed
* 1: <OBJECT> instigator, unit that pulled the trigger
* 2: <OBJECT> source unit that caused the damage
* 3: <STRING> classname of projectile
*
* Return Value:
* None
*
* Example:
* [player1, player2, vehicle player2, "someMagazine"] call func(writeKill);
*
* Server only:
* yes
*
* Public:
* no
*/
#include "macros.hpp"

#include "fn_config.sqf";

/* PARAMS */
params [
    ["_victim", objNull, [objNull], 1],
    ["_instigator", objNull, [objNull], 1], // instigator: Object - Person who pulled the trigger
    ["_source", objNull, [objNull], 1], // The source unit that caused the damage
    ["_projectile", "", ["s"], 1] //  Class name of the projectile that inflicted the damage ("" for unknown, such as falling damage)
];

/* VALIDATION */
if (_victim isEqualTo objNull) exitWith{};

/* CODE BODY */
private _cat = "Abschuss";
private _message = "";

// victim is a vehicle or a player?
if (_victim isKindOf "Man") then 
{

    // base information about victim
    _message = format[
        "Einheit: %1 (side: %2)",
        NAME _victim, SIDE _victim
    ];

    // was victim in a vehicle?
    if !(vehicle _victim isEqualTo _victim) then 
    {
        private _name = getText (configFile >> "CfgVehicles" >> typeOf (vehicle _victim) >> "displayName");
        _message = format["%1 (vehicle: %2)", _message, _name];
    };

    // instigator known?
    if !(_instigator isEqualTo objNull) then 
    {
        
        if (_victim isEqualTo _instigator) then 
        {
            _message = format["%1 von: Selbstverschulden.", _message];

        } 
        else 
        {
            
            // base information about instigator
            _message = format["%1 von: %2 (side: %3)", _message, NAME _instigator, SIDE _instigator];

            // source in vehicle or not?
            if !(_source isEqualTo _instigator) then 
            {
                private _name = getText (configFile >> "CfgVehicles" >> typeOf _source >> "displayName");
                _message = format["%1 (vehicle: %2)", _message, _name];
            };

        };

    } 
    else 
    {
        _message = format["%1 von: unbekannt", _message];
        
    };

    // projectile known?
    if !(_projectile isEqualTo "") then 
    {
        
        // find display name of magazine
        private _name = "";
        {
            if (getText (_x >> "ammo") isEqualTo _projectile) exitWith 
            {
                // find upmost parent that is not too generic
                private _parent = _x;
                while {!(getText ((inheritsFrom _parent) >> "displayName") isEqualTo "")} do 
                {
                    _parent = inheritsFrom _x;
                };
                _name = getText (_parent >> "displayName");

                if !(_name isEqualTo "") then 
                {
                    _message = format["%1 (magazine: %2)", _message, _name];
                };
                
            };  
        
        } forEach ([configFile >> "CfgMagazines", 0, true] call BIS_fnc_returnChildren);
        
    };

} 
else 
{

    private _vec = _victim;

    private _faction = (getText(configFile >> 'CfgVehicles' >> typeOf _vec >> 'faction'));
    private _name = (getText(configFile >> 'CfgVehicles' >> typeOf _vec >> 'displayName'));
    private _light = (opt_shop_nato_vehicles + opt_shop_csat_vehicles + opt_shop_AAF_vehicles + (nato_vehicles_supply) + GVAR(csat_vehicles_supply) + GVAR(AAF_vehicles_supply)) apply {toLower (_x select 0)};
    private _heavy = (opt_shop_nato_armored + opt_shop_csat_armored + opt_shop_AAF_armored) apply {toLower (_x select 0)};
    private _air = (opt_shop_nato_choppers + opt_shop_csat_choppers + opt_shop_AAF_choppers) apply {toLower (_x select 0)};
    private _boat = (opt_shop_nato_sea + opt_shop_csat_sea + opt_shop_AAF_sea) apply {toLower (_x select 0)};
    
    private _category = if (toLower (typeOf _vec) in _light) then 
    {
        "Leicht"
    } 
    else 
    {
        if (toLower (typeOf _vec) in _heavy) then 
        {
            "Schwer"
        } 
        else 
        {
            if (toLower (typeOf _vec) in _air) then 
            {
                "Flug"
            } 
            else 
            {
                if (toLower (typeOf _vec) in _boat) then 
                {
                    "Boot"
                } 
                else 
                {
                    "Unbekannt"
                }                
            };
        };
    };
    _message = format["Fahrzeug: %1 (category: %2) (side: %3)", _name, _category, _faction];

  
    // Täter nicht bekannt?
    if !(_instigator isEqualTo objNull) then 
    {

        // Selbstverschulden?
        if (_vec == _source) then 
        {
            _message = format["%1 von: Selbstverschulden", _message];

        } 
        else 
        {
                // source is vehicle or player?
            if (_source isEqualTo _instigator) then 
            {
                _message = format[
                    "%1 von: %2 (side: %3).",
                    _message, NAME _instigator , SIDE _instigator
                ];
            } 
            else 
            {
                private _name = getText (configFile >> "CfgVehicles" >> typeOf _source >> "displayName");
                private _killerTxt = [];
                // in case of a vehicle, credit kill to all crew members
                {
                    private _unit = _x select 0;
                    private _cargoIdx = _x select 2;

                    // crew member have cargo index of -1, else > 0
                    if (_cargoIdx == -1) then 
                    {
                            _killerTxt pushBack format[
                            "%1 (side: %2) (vehicle: %3)",
                            NAME _unit, SIDE _unit, _name
                        ];
                    };
                    
                } forEach (fullCrew _source);

                _killerTxt = _killerTxt joinString ", ";
                _message = format[
                    "%1 von: %2", _message, _killerTxt
                ];

            };
        };

    } 
    else 
    {
        _message = format["%1 von: unbekannt", _message];

    };

};

// Log
private _timestamp = [serverTime - OPT_GELDZEIT_startTime] call CBA_fnc_formatElapsedTime;
diag_log format["(%1) Log: %2 --- %3",_cat,_timestamp,_message];