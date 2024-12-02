@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - View CDS City Value Help'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #A,
    sizeCategory: #S,
    dataClass: #MASTER
}
@ObjectModel.dataCategory: #VALUE_HELP

@Search.searchable: true

@Consumption.ranked: true

@VDM.viewType: #BASIC

define view entity zcds_city_vh_437
  as select from ZCDS_CITY_ASSOC_437
{
  key CustomerId,
      FirstName,
      LastName,
      Title,
      Street,
      PostalCode,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      @Search.ranking: #HIGH
      City,
      CountryCode,
      PhoneNumber,
      EmailAddress,
      LocalCreatedBy,
      LocalCreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      LastChangedAt,
      /* Associations */
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      @Search.ranking: #LOW
      @Semantics.text: true
      //      _CityText[1: AirportId = 'FRA'].City as CityText,
      _CityText.City as CityText,
      _CityText
}
