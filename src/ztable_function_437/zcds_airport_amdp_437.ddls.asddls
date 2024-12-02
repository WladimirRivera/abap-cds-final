@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - CDS in AMDP'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCDS_AIRPORT_AMDP_437
  as select from /dmo/airport
{
  key airport_id as AirportId,
      name       as Name,
      city       as City,
      country    as Country
}
