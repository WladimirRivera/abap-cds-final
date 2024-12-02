@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl: {
    authorizationCheck: #CHECK,
    auditing.type: #CUSTOM,
    auditing.specification: 'User'
}
@EndUserText.label: 'CDS - Auditing Aspect'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zcds_auditing_aspect_437
  as select from zdt_com_inv_437
{
  key invoice_id    as InvoiceID,
      customer_name as CustomerName,
      @Semantics.amount.currencyCode : 'Currency'
      inv_amount    as InvAmount,
      currency      as Currency,
      department    as Department,
      created_by    as CreatedBy,
      create_date   as CreateDate
}
