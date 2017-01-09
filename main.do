* BSRW - Cálculo de los pesos de replicación (script principal)

** Prólogo

* Housekeeping
set more off
clear all
cls

* Macros globales
global datos    "C:/Users/Pedro/Documents/Oficina OLN/Datos/Stata"
global OLNTools "C:/Users/Pedro/Documents/GitHub/OLN-Tools/src"
global proyecto "C:/Users/Pedro/Documents/GitHub/OLN-BSRW"

* Instalación de OLN-Tools
foreach str in "" _casen _ene _esi _pib {
	local pkg = "ol_tools`str'"
	net install `pkg', all force from("$OLNTools")
}

** Cuerpo

local files : dir "$proyecto/scripts/tablas" files "tabla 11-06.do"
foreach file of local files {
	do "$proyecto/scripts/tablas/`file'"
}
beep
