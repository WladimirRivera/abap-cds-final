@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - CDS with table Functions'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCDS_TF_AIRPORT_437
  with parameters
    pClient : abap.clnt,
    pCity   : /dmo/city
  as select from /dmo/customer                                                            as Customer
    inner join   ztf_airports_437(pCity: $parameters.pCity, pClient: $parameters.pClient) as _ClientTest on _ClientTest.city = Customer.city
{
  key _ClientTest.airport_id as AirportId,
      _ClientTest.name       as Name,
      Customer.city          as City,
      Customer.first_name    as CustomerName,
      _ClientTest.country    as Country

}
