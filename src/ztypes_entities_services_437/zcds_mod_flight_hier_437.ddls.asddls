@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_ALLOWED
@EndUserText.label: 'CDS for Hierarchical model Flight'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCDS_MOD_FLIGHT_HIER_437
  as select from /dmo/travel
  association [1..1] to ZCDS_MOD_FLIGHT_HIER_437 as _Agency on _Agency.CustomerId = $projection.AgencyId
{
  key agency_id   as AgencyId,
      customer_id as CustomerId,
      _Agency
}
