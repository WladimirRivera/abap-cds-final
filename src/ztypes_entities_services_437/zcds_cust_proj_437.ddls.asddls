@EndUserText.label: 'CDS Transactional Projection Interface'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define root view entity ZCDS_CUST_PROJ_437
  provider contract transactional_interface
  as projection on ZCDS_CUSTOMER_ROOT_437
{
  key CustomerId,
      FirstName,
      LastName,
      City,
      /* Associations */
      _Airport,
      _Booking: redirected to composition child ZCDS_CHILD_PROJ_437
}
