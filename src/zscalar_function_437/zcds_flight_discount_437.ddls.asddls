@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - CDS with SF for Flighjt Discont'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zcds_flight_discount_437
  as select from /dmo/flight
{
  key carrier_id                                as CarrierId,
  key connection_id                             as ConnectionId,
  key flight_date                               as FlightDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      price                                     as Price,
      currency_code                             as CurrencyCode,
      plane_type_id                             as PlaneTypeId,
      seats_max                                 as SeatsMax,
      seats_occupied                            as SeatsOccupied,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      ZSF_CALC_DISCOUNT_437(pClientCucky => currency_code,
                            pDiscount => price) as FlightDiscount
}
