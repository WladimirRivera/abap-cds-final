@EndUserText.label: 'CDS Child Interface Proyection'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define view entity ZCDS_CHILD_PROJ_437
  as projection on ZCDS_CUST_BOOK_437
{
  key TravelId,
  key BookingId,
  key CustomerId,
      /* Associations */
      _Customer : redirected to parent ZCDS_CUST_PROJ_437
}
