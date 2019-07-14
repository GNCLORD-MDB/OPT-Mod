/**
* Funktion zum setzen eines Marker Color
* 
* Autor: [GNC]Lord-MDB
*
* Argumente:
* 0: <Number> _id (Marker ID für Markernamen feststellung)
* 1: <ARRAY> _farbe (Farbe des Markers in RGB Code)
*
* Rückgabewert:
* keinen
*
* Server Only:
* Nein
* 
* Lokal:
* Ja
* 
* Global:
* Nein
* 
* API:
* ja
* 
* Beispiel Externer Aufruf:
* [_id,[_farbe]] call OFUNC(setMarkerColor);
* Beispiel interner Aufruf:
* [_id,[_farbe]] call OFUNC(setMarkerColor);
*
*/

#include "macros.hpp"

params
					
[
	["_id",0],
	["_farbe",[1,1,1,1]]
];

//Assertions
ASSERT_IS_NUMBER(_id);
ASSERT_IS_ARRAY(_farbe);

//Marker Name erstellen
private _markerNamen = format ["OPTMarker%1",_id];

//Marker Icon an Clib geben 
//[_markerNamen, [_farbe]] call CFUNC(addMapGraphicsGroup);
//BIS Marker

private _farbeMarker = "ColorBlack";

switch (_farbe) do 
{
    case [0,0,1,1]: 
	{
		//blau
		_farbeMarker = "ColorBlue";	
    };
    case [1,0,0,1]: 
	{
		//rot
        _farbeMarker = "ColorRed";	
   	};
};

_markerNamen setMarkerColorLocal _farbeMarker;
	