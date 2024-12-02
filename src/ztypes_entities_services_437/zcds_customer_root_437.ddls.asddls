@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Root Entity'
define root view entity ZCDS_CUSTOMER_ROOT_437
  as select from /dmo/customer
  composition [1..1] of ZCDS_CUST_BOOK_437 as _Booking
  association [1..*] to /dmo/airport       as _Airport on _Airport.city = $projection.City
{
  key customer_id as CustomerId,
      first_name  as FirstName,
      last_name   as LastName,
      city        as City,
      _Booking, // Mandatory
      _Airport // Optional
}
