CLASS zcl_fill_city_437 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_fill_city_437 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA lt_cities TYPE TABLE OF zcity_texts_437.

    DELETE FROM zcity_texts_437.

    MODIFY zcity_texts_437 FROM ( SELECT DISTINCT airport_id, city
                                  FROM /dmo/airport ).

    out->write( |Records inserted: { sy-dbcnt }| ).
  ENDMETHOD.
ENDCLASS.
