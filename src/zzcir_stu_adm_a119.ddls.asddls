@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZZCISTU_ADM_A119'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZZCIR_STU_ADM_A119
  as select from ZSTU_ADM_A119
{
  key student_id as StudentID,
  first_name as FirstName,
  last_name as LastName,
  date_of_birth as DateOfBirth,
  gender as Gender,
  email as Email,
  phone_number as PhoneNumber,
  admission_date as AdmissionDate,
  course_id as CourseID,
  @Semantics.amount.currencyCode: 'Currency'
  admission_fee as AdmissionFee,
  @Consumption.valueHelpDefinition: [ {
    entity.name: 'I_CurrencyStdVH', 
    entity.element: 'Currency', 
    useForValidation: true
  } ]
  currency as Currency,
  @Semantics.user.createdBy: true
  local_created_by as LocalCreatedBy,
  @Semantics.systemDateTime.createdAt: true
  local_created_at as LocalCreatedAt,
  @Semantics.user.localInstanceLastChangedBy: true
  local_last_changed_by as LocalLastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt
}
