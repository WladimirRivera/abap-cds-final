@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - CDS with SF for Flighjt Discont'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCDS_real_price_437
  as select from zcds_flight_discount_437
{
  key CarrierId,
  key ConnectionId,
  key FlightDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      Price,
      CurrencyCode,
      PlaneTypeId,
      SeatsMax,
      SeatsOccupied,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      FlightDiscount,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      ZSF_DIN_CALC_DISCOUNT_437(p1 => cast(Price as abap.dec(16,2)),
                                p2 => cast(FlightDiscount as abap.dec(16,2))) as RealPrice
}
