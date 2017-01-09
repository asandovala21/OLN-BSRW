* BSRW - Cálculo de los pesos de replicación (script principal)

*===============================================================================
* Intrucciones
*===============================================================================

* 1. Visite https://github.com/igutierrezm.
* 2. Clone el repo OLN-BSRW. Guárdelo en $proyecto.
* 3. Clone el repo OLN-Tools. Guárdelo en $OLNTools.
* 4. Fije el directorio principal de sus datos en $datos.

** Ejemplo
global datos    "C:/Users/Pedro/Documents/Oficina OLN/Datos/Stata"
global OLNTools "C:/Users/Pedro/Documents/GitHub/OLN-Tools/src"
global proyecto "C:/Users/Pedro/Documents/GitHub/OLN-BSRW"

** Importante

* OLN-BSRW asume que las BBDD dentro de $datos se organizan como sigue:

* $datos/
*   CASEN/CASEN <año>.dta
*   ENE/ENE <año> <mes>.dta
*   ESI/ESI <año>.dta
*
* en donde:
*   - <año> representa a un año genérico (e.g. 2015).
*   - <mes> representa a un mes genérico (e.g. 01).

*===============================================================================
*
*===============================================================================

* Housekeeping
set more off
clear all
cls





* Paquetes externos
foreach str in "" _casen _ene _esi _pib {
	local pkg = "ol_tools`str'"
	net install `pkg', all force from("$OLNTools")
}
* Puede descargar e instalar los paquetes simultáneamente fijando
* local github net from "https://rawgit.com/igutierrezm/OLNTools/master/src"

*===============================================================================
* Cuerpo
*===============================================================================

* Tablas:
local files : dir "$proyecto/scripts/tablas" files "tabla 11-06.do"
foreach file of local files {
	do "$proyecto/scripts/tablas/`file'"
}
beep
