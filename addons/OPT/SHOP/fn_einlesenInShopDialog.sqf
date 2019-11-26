/**
* Description:Einlesen der Daten beim Öffnen des Dialogs durch den Spieler
* 
* 
* Author:
* [GNC]Lord-MDB
*
* Arguments:
* 
*
* Return value:
* 
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
* 
*/

#include "macros.hpp"

//Dateneinlesen
#include "fn_config.sqf";

//Typ einlesen
params 
[
    ["_type", ""]
];

//Spieler Seite bestimmen
private _side = playerside;

//Shopart bestimmen
GVAR(vehicleType) = _type;
private _pool = [];
GVAR(pads) = [];
GVAR(moveInVeh) = false;

//Dialog erstellen
private _success = createDialog "Dialogshopkaufen"; 

//Dialog definieren
#define IDD_DLG_ORDER 20000
#define IDC_PLAYER_FLAG 20102
#define IDC_CTRL_VEHICLE_LIST 20002
#define IDC_CTRL_PRICE_LIST 20003

private _display = findDisplay IDD_DLG_ORDER;
private _listbox_vehicles = _display displayCtrl IDC_CTRL_VEHICLE_LIST;
private _budget = _display displayCtrl 20001;
private _order = _display displayCtrl 20004;
private _close = _display displayCtrl 20008;
private _sell = _display displayCtrl 20005;
private _remove = _display displayCtrl 20006;
private _konfig = _display displayCtrl 20007;
private _rscPicture = _display displayCtrl IDC_PLAYER_FLAG;
private _padBox = _display displayCtrl 20009;
private _moveInVeh = _display displayCtrl 20010;

_order ctrlEnable false;
_sell ctrlShow false;
_moveInVeh ctrlSetTextColor [0.0, 1.0, 0.0, 1];

switch (GVAR(vehicleType)) do 
{
	case "choppers" : 
	{
        if (_side == west) then 
		{
            _pool = GVAR(nato_choppers);
            GVAR(pads) = GVAR(pad_air_west);
        } 
		else 
		{
            _pool = GVAR(csat_choppers);
            GVAR(pads) = GVAR(pad_air_east);
        };
        GVAR(moveInVeh) = true;
        
    };
	case "vehicles" : 
	{
        if (_side == west) then 
		{
            _pool = GVAR(nato_armored) + GVAR(nato_vehicles) + GVAR(nato_vehicles_supply);
            GVAR(pads) = GVAR(pad_veh_west);
        } 
		else 
		{
            _pool = GVAR(csat_armored) + GVAR(csat_vehicles) + GVAR(csat_vehicles_supply);
            GVAR(pads) = GVAR(pad_veh_east);
        };
        GVAR(moveInVeh) = true;
        
    };
	case "supplies" : 
	{
        if (_side == west) then 
		{
            _pool = GVAR(nato_supplies) + GVAR(nato_static);
            GVAR(pads) = GVAR(pad_sup_west);
        } 
		else 
		{
            _pool = GVAR(csat_supplies) + GVAR(csat_static);
            GVAR(pads) = GVAR(pad_sup_east);
        };
        GVAR(moveInVeh) = false;
        _moveInVeh ctrlShow false;
        
    };
	case "sea" : 
	{
        if (_side == west) then 
		{
            _pool = GVAR(nato_sea);
            GVAR(pads) = GVAR(pad_sea_west);
        } 
		else 
		{
            _pool = GVAR(csat_sea);
            GVAR(pads) = GVAR(pad_sea_east);
        };
        GVAR(moveInVeh) = true;
        
    };
    default 
    {
        if (_side == west) then 
		{
            _pool = [];
            GVAR(pads) = GVAR(pad_all_west);
        } 
		else 
		{
            _pool = [];
            GVAR(pads) = GVAR(pad_all_east);
        };
    };
};

// Objekte größer 0€ bestimmen 
_pool = _pool select {_x select 1 > 0};

// Objekte Sortieren 
GVAR(orderDialogObjects) = [_pool, 1] call CBA_fnc_sortNestedArray; // billigste zuerst

//Boxen füllen
// Budget 
[_budget] call opt_common_fnc_renderbudget;

private _txtToAdd = GVAR(orderDialogObjects) apply {getText (configFile >> "CfgVehicles" >> (_x select 0) >> "displayName")};

private _picToAdd = GVAR(orderDialogObjects) apply 
{
    if (getText(configFile >> "cfgVehicles" >> (_x select 0) >> "picture") find ".paa" != -1) then 
	{
        getText (configFile >> "cfgVehicles" >> (_x select 0) >> "picture");
    } 
	else 
	{
        getText (configFile >> "cfgVehicles" >> (_x select 0) >> "editorPreview");
    };
};

private _dataToAdd = GVAR(orderDialogObjects) apply {_x select 0};

[IDD_DLG_ORDER, IDC_CTRL_VEHICLE_LIST, _txtToAdd, _picToAdd, _dataToAdd] call FUNC(fillLB);

// Flagge setzen
switch (_side) do 
{
    case west: 
	{
        _rscPicture ctrlSetText "\A3\Data_F\Flags\Flag_NATO_CO.paa";
    };
    case east: 
	{
        _rscPicture ctrlSetText "\A3\Data_F\Flags\Flag_CSAT_CO.paa";
    };   
};

GVAR(orderPAD) = [];

//Kaufbutton Aktivschlaten bei Freiem Pad
GVAR(idPadCheckShop) = [{

    private _freiePads = [];
    private _display = findDisplay 20000;
    private _order = _display displayCtrl 20004;
    private _padBox = _display displayCtrl 20009;
   
    // check der Pads ob belegt
    GVAR(pads) apply {
	    private _ob = nearestObjects [_x, ["AllVehicles", "Thing"], 4];
            
        if (count _ob == 0) then 
        {
            _freiePads append [_x]; 
        };       

    };  

    // Kaufbuttuon Freischalten und erstes Pad zuordnen
    if ((count _freiePads) > 0) then 
        {
            _order ctrlEnable true;
            GVAR(orderPAD) = _freiePads select 0;
            _padBox ctrlSetText format ["BOX:%1",GVAR(orderPAD)];
        }
    else 
        {
            _order ctrlEnable false;
            GVAR(orderPAD) = [];
            _padBox ctrlSetText format ["BOX:%1",GVAR(orderPAD)];
        };

}, 1] call CFUNC(addPerFrameHandler);

if (_type == "sell") then 
{
    //Kaufbutton/Konfigbutton ausblenden
    _order ctrlShow false;
    _konfig ctrlShow false;

    //Verkaufsbutton einblenden
    _sell ctrlShow true;

    //Box und Anzeige InFahrzeug ausblenen
    _padBox ctrlShow false;
    _moveInVeh ctrlShow false;

    //Fahrzeug Speicher, Fahrzeuge auf den Pad
    GVAR(sellVeh) = [];

    //Räumen Button Ausblenden
    _remove ctrlShow false;

	// im Falle des Verkaufsbuttons -> Liste aller gefundenen Fahrzeuge
	// alle Objekte Fahrzeuge die auf allen Pads gefunden wurden

    private _objs = [];

	GVAR(pads) apply 
    {
	    private _ob = nearestObjects [_x, ["AllVehicles", "Thing"], 4];

        if ((count _ob) != 0) then 
        {

            _objs append _ob; 

        };   
    };   
 
	// Gehe alle gefundenen Objekte durch und lösche sie, falls nicht in pool, oder ergänze um Verkaufspreis
	_objs apply 
    {
		
        private _index = ((GVAR(all) apply {toLower (_x select 0)}) find (toLower (typeOf _x)));

        if (_index == -1) then 
        {
            _objs = _objs - [_x]; 
            
        } 
        else 
        {
            _pool pushBack [_x, (GVAR(all) select _index) select 2, (GVAR(all) select _index) select 3]; // füge Fahrzeug und Verkaufspreis hinzu
            GVAR(sellVeh) append [_x];
        };

	};
  
    // Anzeige Objekte die mehr wert sind als 0€
    _pool = _pool select {_x select 2 > 0};

    //Sortierung der Fahrzeuge nach Preis
    GVAR(vehiclesToSell) = _pool;

	{
		_class = typeOf (_x select 0);
        _displayName = getText (configFile >> "CfgVehicles" >> _class >> "displayName");
		_listbox_vehicles lbAdd format ["%1", _displayName]; // Name
        _listbox_vehicles lbSetData [_forEachIndex, _class];

		// Verkaufspreis berechnen saleReturnValue % vom Vollpreis
        _picture = "";
        if (getText(configFile >> "cfgVehicles" >> _class >> "picture") find ".paa" != -1) then 
        {
            _picture = getText (configFile >> "cfgVehicles" >> _class >> "picture");
        } 
        else 
        {
            _picture = getText (configFile >> "cfgVehicles" >> _class >> "editorPreview");
        };

        _listbox_vehicles lbSetPicture [_forEachIndex, _picture];

    } foreach GVAR(vehiclesToSell);
  
};

// Button Listbox Events 
// Kauf ausführen  
_order ctrlAddEventHandler [ "ButtonClick", 
{
    private _display = findDisplay IDD_DLG_ORDER;
    private _listbox_vehicles = _display displayCtrl IDC_CTRL_VEHICLE_LIST;
    private _editbox_info = _display displayCtrl IDC_CTRL_PRICE_LIST;

    private _sel_class = lbCurSel _listbox_vehicles;
	private _unitRecord = GVAR(orderDialogObjects) select _sel_class;
    private _class = _listbox_vehicles lbData _sel_class;
	private _unitCost = _unitRecord select 1;

    private _Datensatz = [];

    _Datensatz = [_class] call FUNC(loadout);
    
    [_Datensatz,GVAR(orderPAD),GVAR(moveInVeh),_unitCost] call FUNC(order);
    
    closeDialog 0;
}];

// Konfig ausführen  
_konfig ctrlAddEventHandler [ "ButtonClick", 
{
    private _display = findDisplay IDD_DLG_ORDER;
    private _listbox_vehicles = _display displayCtrl IDC_CTRL_VEHICLE_LIST;
 
    private _sel_class = lbCurSel _listbox_vehicles;
	private _unitRecord = GVAR(orderDialogObjects) select _sel_class;
    private _class = _listbox_vehicles lbData _sel_class;
	private _unitCost = _unitRecord select 1;

    closeDialog 0;

   [EVENT_SHOP_KONFIG_ONLOAD,[_class,"New",_unitCost]] call CFUNC(localEvent);
}];

// Festlegen ob Spieler in Fahrzeug nach kauf
_moveInVeh ctrlAddEventHandler [ "ButtonClick", 
{
    private _display = findDisplay IDD_DLG_ORDER;
    private _moveInVeh = _display displayCtrl 20010;

    if (GVAR(moveInVeh)) then 
    {
        GVAR(moveInVeh) = false;         
        _moveInVeh ctrlSetText "Fahrzeug nicht besetzten";   
        _moveInVeh ctrlSetTextColor [1.0, 0.0, 0.0, 1];       
    }
    else
    {
        GVAR(moveInVeh) = true;         
        _moveInVeh ctrlSetText "Fahrzeug besetzten"; 
        _moveInVeh ctrlSetTextColor [0.0, 1.0, 0.0, 1];             
    };

}];

//InfoBox Erneuern bei änderung
_listbox_vehicles ctrlAddEventHandler [ "LBSelChanged", 
{
	params ["_listbox_vehicles", "_sel_class"];

    private _display = findDisplay IDD_DLG_ORDER;
    private _listbox_vehicles = _display displayCtrl IDC_CTRL_VEHICLE_LIST;
    private _editbox_info = _display displayCtrl IDC_CTRL_PRICE_LIST;
    private _budget = _display displayCtrl 20001;

    private _sel_class = lbCurSel _listbox_vehicles;
    private _class = _listbox_vehicles lbData _sel_class;

    _editbox_info ctrlSetStructuredText parseText ([_class,_sel_class] call FUNC(getVehicleInfo));

    // Budget 
    [_budget] call opt_common_fnc_renderbudget;

}];


// Verkaufs Ausführen
_sell ctrlAddEventHandler [ "ButtonClick", 
{
    private _display = findDisplay IDD_DLG_ORDER;
    private _listbox_vehicles = _display displayCtrl IDC_CTRL_VEHICLE_LIST;
    private _editbox_info = _display displayCtrl IDC_CTRL_PRICE_LIST;
    private _budget = _display displayCtrl 20001;

    private _sel_class = lbCurSel _listbox_vehicles;
    private _class = _listbox_vehicles lbData _sel_class;

    private _price = 0;
    private _magazineVehArryNew=[];
    private _bewaffnungpreis = 0;
    private _side = civilian;
    private _sellveh = "";
    private _gutschrift = 0;

    if (_class in (GVAR(vehClassWestWW))) then 
    {
        _side = west;
    };    

    if (_class in (GVAR(vehClassEastWW))) then 
    {
        _side = east;
    };   

    _price = [_class] call FUNC(getPrice);
    _sellveh = GVAR(sellVeh) select _sel_class;
    _magazineVehArryNew = [_sellveh] call FUNC(auslesenMagazine);
    _bewaffnungpreis = [_side, _magazineVehArryNew] call FUNC(geldVorhandeneBewaffnung);   
    _gutschrift = _price + _bewaffnungpreis;

    [Name Player, playerSide, typeOf _sellveh, _gutschrift, "+"] call opt_common_fnc_updateBudget;

    //Fahrzeug löschen
    deleteVehicle _sellveh;

    // Update Geldanzeige
    [_budget] call opt_common_fnc_renderbudget;

    // lösche Option aus Verkaufsmenü!
    _listbox_vehicles lbDelete _sel_class;

    // lösche Fahrzeug aus vehicleToSell!
    GVAR(sellVeh) deleteAt _sel_class;

}];

// Fahrzeuge auf allen Boxen im Bereich löschen 
_remove ctrlAddEventHandler [ "ButtonClick", 
{
    [GVAR(pads)] call FUNC(deletevehicle);

}];
