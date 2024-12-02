@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Join'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCDS_JOIN_437
  as select from /dmo/booking as Booking
    inner join   /dmo/flight  as Flight on Booking.connection_id = Flight.connection_id
{
  key Booking.booking_id   as BookingId,
      Flight.flight_date   as FlightDate,
      @Semantics.amount.currencyCode : 'CurrencyCode'
      Flight.price         as Price,
      Flight.currency_code as CurrencyCode
}
