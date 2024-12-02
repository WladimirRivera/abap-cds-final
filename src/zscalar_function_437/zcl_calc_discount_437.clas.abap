CLASS zcl_calc_discount_437 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_amdp_marker_hdb .
    CLASS-METHODS get_discount FOR SCALAR FUNCTION zsf_calc_discount_437.
    CLASS-METHODS get_real_price FOR SCALAR FUNCTION zsf_din_calc_discount_437.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_calc_discount_437 IMPLEMENTATION.
  METHOD get_discount BY DATABASE FUNCTION
                      FOR HDB
                      LANGUAGE SQLSCRIPT
                      OPTIONS READ-ONLY.
    declare discount decimal(15, 2);
    IF pClientCucky = 'EUR'
        THEN discount = pDiscount * 0.10;
    else
        discount = pDiscount * 0.05;
    end if;
    result = discount;
  endmethod.

  METHOD get_real_price BY DATABASE FUNCTION
                        FOR HDB
                        LANGUAGE SQLSCRIPT
                        OPTIONS READ-ONLY.
    result = p1 - p2;
  ENDMETHOD.
ENDCLASS.
