OLN-BSRW
========

Calcula los pesos de replicación (bootstrap) apropiados para las encuestas
CASEN, ENE y ESI.

Intrucciones de Uso
-------------------

1. Visite https://github.com/igutierrezm.
2. Clone los repositorios OLN-BSRW y OLN-Tools.
3. Abra ``main.do`` (ubicado dentro del repo OLN-BSRW) y edite las siguientes
macros globales:
  * ``$proyecto``, el directorio en el cual clonó OLN-BSRW.
  * ``$OLNTools``, el directorio en el cual clonó OLN-Tools.
  * ``$datos``, el directorio principal de sus datos (CASEN, ENE, ESI, etc.).
4. Ejecute ``$proyecto/main.do``.

Importante
----------

OLN-BSRW asume que las BBDD dentro de ``$datos`` se organizan como sigue:
```
$datos/
  CASEN/CASEN <año>.dta
  ENE/ENE <año> <mes>.dta
  ESI/ESI <año> Personas.dta
```
en donde:
- ``<año>`` representa a un año genérico en formato %4d (por ejemplo, 2015).
- ``<mes>`` representa a un mes genérico en formato %2d (por ejemplo, 01).
