@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Associations with Parameters'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCDS_PARAM_ASSOC_437
  with parameters
    pCarrierID : /dmo/carrier_id
  as select from /dmo/flight as Flight
  association [0..1] to /dmo/carrier as Carrier on Flight.carrier_id = Carrier.carrier_id
{
  key Flight.carrier_id    as CarrierId,
  key Flight.connection_id as ConnectionId,
  key Flight.flight_date   as FlightDate,
      Carrier.name         as CarrierName
}
where
  Flight.carrier_id = $parameters.pCarrierID;
