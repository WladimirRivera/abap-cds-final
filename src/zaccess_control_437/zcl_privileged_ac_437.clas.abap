CLASS zcl_privileged_ac_437 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_privileged_ac_437 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
  data lv_user TYPE char5 VALUE 'ADMIN'.
*   IF lv_user EQ 'ADMIN'.
   IF cl_abap_context_info=>get_user_technical_name( ) EQ 'ADMIN'.
     SELECT FROM ZCDS_AIRPORT_5_437 WITH PRIVILEGED ACCESS
       FIELDS *
        INTO TABLE @DATA(lt_results)
        UP TO 10 ROWS.
     IF sy-subrc EQ 0.
       out->write( lt_results ).
     ENDIF.
   ELSE.
     out->write( 'No data' ).
   ENDIF.
  ENDMETHOD.
ENDCLASS.
