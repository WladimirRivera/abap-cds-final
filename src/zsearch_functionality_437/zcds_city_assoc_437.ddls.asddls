@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - View CDS with texts associations'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #A,
    sizeCategory: #S,
    dataClass: #MASTER
}
@ObjectModel.supportedCapabilities: [ #SQL_DATA_SOURCE,
                                     #CDS_MODELING_DATA_SOURCE,
                                     #CDS_MODELING_ASSOCIATION_TARGET]
@Search.searchable: true
define view entity ZCDS_CITY_ASSOC_437
  as select from /dmo/customer
  association [1..1] to ZCDS_CITY_TEXT_437 as _CityText on _CityText.City = $projection.City
{
  key customer_id           as CustomerId,
      first_name            as FirstName,
      last_name             as LastName,
      title                 as Title,
      street                as Street,
      postal_code           as PostalCode,
      @Search.fuzzinessThreshold: 0.8
      @Search.ranking: #HIGH
      @Search.defaultSearchElement: true
      @Semantics.text: true
      @ObjectModel.text.association: '_CityText'
      city                  as City,
      country_code          as CountryCode,
      phone_number          as PhoneNumber,
      email_address         as EmailAddress,
      local_created_by      as LocalCreatedBy,
      local_created_at      as LocalCreatedAt,
      local_last_changed_by as LocalLastChangedBy,
      local_last_changed_at as LocalLastChangedAt,
      last_changed_at       as LastChangedAt,
      _CityText
}
