@EndUserText.label: 'CDS - Projection View Airport'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Search.searchable: true
define root view entity zcds_proj_airpot_437
  as projection on zcds_root_airpot_437
{
  key AirportId,
      Name,
      @ObjectModel.text.element: [ 'City' ]
      @Search.defaultSearchElement: true
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zcds_city_vh_437',
                                                     element : 'City' },
                                         useForValidation: true }]
      City,
      Country,
      /* Associations */
      _Text._CityText.AirportId as AirportText
}
