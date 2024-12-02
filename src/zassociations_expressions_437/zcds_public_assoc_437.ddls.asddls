@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Publication of Associations'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCDS_PUBLIC_ASSOC_437
  as select from /dmo/travel as Travel
  association [1..1] to ZCDS_AGENCY_MAX as _Agency on _Agency.agency_id = $projection.AgencyId
{
  key travel_id as TravelId,
      agency_id as AgencyId,
      _Agency
}
