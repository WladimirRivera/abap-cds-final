@EndUserText.label: 'CDS Custom Entity'
@ObjectModel.query.implementedBy: 'ABAP:ZCL_CUSTOM_DETAIL_437'
define custom entity ZCDS_CUSTOM_DETAIL_437
  // with parameters parameter_name : parameter_type
{
  key customer_id   : /dmo/customer_id;
      phone_number  : /dmo/phone_number;
      email_address : /dmo/email_address;
}
