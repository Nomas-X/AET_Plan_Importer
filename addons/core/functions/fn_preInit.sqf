#include "../script_component.hpp"

/*
Authors:
	Redwan S / Nomas

Description:
    This function is used to add the custom CBA event handlers used by the importPlan function.

Arguments:
	N/A

Return Value:
	<Nil>

Example:
	[] call AET_PI_core_fnc_pretInit;
*/

[QGVAR(EH_parsingError), FUNC(notifyAdmin)] call CBA_fnc_addEventHandler;