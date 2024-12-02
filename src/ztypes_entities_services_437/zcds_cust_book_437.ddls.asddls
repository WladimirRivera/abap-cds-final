@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Association - Parent Child'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCDS_CUST_BOOK_437
  as select from /dmo/booking
  association to parent ZCDS_CUSTOMER_ROOT_437 as _Customer on _Customer.CustomerId = $projection.CustomerId
{
  key /dmo/booking.travel_id   as TravelId,
  key /dmo/booking.booking_id  as BookingId,
  key /dmo/booking.customer_id as CustomerId,
      _Customer //mandatory
}
