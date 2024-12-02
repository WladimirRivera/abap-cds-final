@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - View CDS with texts associations'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #A,
    sizeCategory: #S,
    dataClass: #MASTER
}
@ObjectModel.dataCategory: #TEXT
@ObjectModel.supportedCapabilities: [ #SQL_DATA_SOURCE,
                                     #CDS_MODELING_DATA_SOURCE,
                                     #CDS_MODELING_ASSOCIATION_TARGET]
@Search.searchable: true
@VDM.viewType: #BASIC
define view entity ZCDS_CITY_TEXT_437
  as select from zcity_texts_437
  association [1..1] to ZCDS_CITY_ASSOC_437 as _CityText on _CityText.City = $projection.City
{
  key zcity_texts_437.airport_id as AirportId,
      @Search.defaultSearchElement: true
      @ObjectModel.text.association: '_CityText'
      zcity_texts_437.city       as City,
      _CityText
}
