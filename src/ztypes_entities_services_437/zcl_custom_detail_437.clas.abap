CLASS zcl_custom_detail_437 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_rap_query_provider .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_CUSTOM_DETAIL_437 IMPLEMENTATION.


  METHOD if_rap_query_provider~select.
    DATA lt_results TYPE TABLE OF zcds_custom_detail_437.

    TRY.
        IF io_request->is_data_requested( ).
          DATA(lv_top) = io_request->get_paging( )->get_page_size( ).
          DATA(lv_skip) = io_request->get_paging( )->get_offset( ).
          SELECT FROM /dmo/customer
          FIELDS customer_id, phone_number, email_address
          ORDER BY customer_id ASCENDING
          INTO TABLE @lt_results
          OFFSET @lv_skip
          UP TO @lv_top ROWS.
          IF sy-subrc EQ 0.
            io_response->set_total_number_of_records( lines( lt_results ) ).
            io_response->set_data( lt_results ).
          ENDIF.
        ENDIF.
      CATCH cx_rap_query_response_set_twic INTO DATA(lx_error).

    ENDTRY.
  ENDMETHOD.
ENDCLASS.
