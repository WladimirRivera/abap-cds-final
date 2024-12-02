CLASS zcl_patch_express_437 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_PATCH_EXPRESS_437 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
      SELECT FROM ZCDS_PUBLIC_ASSOC_437 AS PublicAssoc
      FIELDS PublicAssoc~AgencyId,
             PublicAssoc~TravelId,
             \_Agency-name as Name
       WHERE PublicAssoc~AgencyId EQ '070032'
       INTO TABLE @DATA(lt_results)
       UP TO 10 ROWS.
       if sy-subrc eq 0.
         out->write( lt_results ).
       endif.
  ENDMETHOD.
ENDCLASS.
