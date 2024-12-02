@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Aggregation'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZDATA_AGGREGATION_437
  as select from /dmo/booking
{
  currency_code,
  @Semantics.amount.currencyCode : 'currency_code'
  sum(flight_price) as FlightPrice
}
group by
  currency_code;
