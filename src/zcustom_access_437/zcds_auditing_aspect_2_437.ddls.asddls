@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl: {
    authorizationCheck: #CHECK
}
@EndUserText.label: 'CDS - Auditing Aspect'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCDS_AUDITING_ASPECT_2_437
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
