OLN-BSRW
========

Replica los pesos de replicación utilizados por el OLN al implementar el
bootstrap de Rao y Wu (1988).

Intrucciones de uso
-------------------

1. Visite https://github.com/igutierrezm.
2. Clone el repo OLN-BSRW. Guárdelo en ``$proyecto``.
3. Clone el repo OLN-Tools. Guárdelo en ``$OLNTools``.
4. Fije el directorio principal de sus datos en ``$datos``.
5. Abra ``$proyecto/main.do``. Edite el valor por defecto de los globals.
6. Ejecute ``$proyecto/main.do``.

Importante
----------

OLN-BSRW asume que las BBDD dentro de $datos se organizan como sigue::

  $datos/
    CASEN/CASEN <año>.dta
    ENE/ENE <año> <mes>.dta
    ESI/ESI <año>.dta

en donde:

 - ``<año>`` representa a un año genérico (e.g. 2015 [tomar nota del formato]).
 - ``<mes>`` representa a un mes genérico (e.g. 01 [tomar nota del formato]).
