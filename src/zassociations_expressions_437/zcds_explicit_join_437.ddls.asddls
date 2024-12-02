@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Explicit Join'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCDS_EXPLICIT_JOIN_437
  as select from /dmo/customer as Customer
  association [0..*] to /dmo/booking as Booking on Customer.customer_id = Booking.customer_id
{
  key Customer.customer_id        as CustomerId,
      Customer.first_name         as FirstName,
      Customer.last_name          as LastName,
      Booking[inner].booking_date as BookingDate
}
