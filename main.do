* BSRW - Cálculo de los pesos de replicación (script principal)

*===============================================================================
* Prólogo
*===============================================================================

* Housekeeping
set more off
clear all
cls

* Macros globales
global BSRW     "C:/Users/Pedro/Documents/Oficina OLN/BSRW/Stata"
global datos    "C:/Users/Pedro/Documents/Oficina OLN/Datos/Stata"
global OLNTools "C:/Users/Pedro/Documents/GitHub/OLN-Tools/src"
global proyecto "C:/Users/Pedro/Documents/GitHub/OLN-BSRW"

* Instalación de OLN-Tools
foreach str in "" _casen _ene _esi _pib {
	local pkg = "ol_tools`str'"
	net install `pkg', all force from("$OLNTools")
}

*===============================================================================
* Cuerpo
*===============================================================================

* ESI
forvalues año = 2010(1)2015 {
	bsrweights, nreps(500) seed(1) src("esi") año(`año') mes(0)
	save "$BSRW/ESI/ESI `año'", replace
}
beep
