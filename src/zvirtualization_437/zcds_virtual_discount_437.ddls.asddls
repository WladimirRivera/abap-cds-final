@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - CDS with virtualization on Flight Discount'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity zcds_virtual_discount_437
  as select from /dmo/flight

{
  key carrier_id                  as CarrierId,
  key connection_id               as ConnectionId,
  key flight_date                 as FlightDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      price                       as Price,
      currency_code               as CurrencyCode,
      plane_type_id               as PlaneTypeId,
      seats_max                   as SeatsMax,
      seats_occupied              as SeatsOccupied,
      @EndUserText.label: 'Price with Discount'
      @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_VIRTUAL_DISCOUNT_437'
      @Semantics.amount.currencyCode: 'CurrencyCode'
      cast( 0 as abap.curr(16,2)) as RealPrice
}
