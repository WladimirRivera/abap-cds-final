@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS - Airport'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCDS_AIRPORT_4_437
  as select from /dmo/airport
{
  key airport_id                         as AirportId,
      name                               as Name,
      city                               as City,
      country                            as Country,
      cast('01' as zde_flight_type_437 ) as FlightType
}
