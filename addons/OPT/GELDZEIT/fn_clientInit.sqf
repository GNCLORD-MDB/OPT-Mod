/**
* Description:
* Initialisierung Geld Zeit System 
*
* Author:
* Lord-MDB
*
* Arguments:
* None
*
* Return Value:
* None
*
* Server only:
* No
*
* Public:
* No 
* 
* Global:
* No
* 
* API:
* No
*
* Example:
* [] call FUNC(clientInit);
*/
#include "macros.hpp"

//Event Bildschirmanzeige
[
	EVENT_SPIELUHR_ENDBILDSCHIRM, 
	{
		[] call FUNC(ende);
	},
	[]
	
] call CFUNC(addEventHandler);