@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZZCISTU_ADM_A119'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZZCIC_STU_ADM_A119
  provider contract TRANSACTIONAL_QUERY
  as projection on ZZCIR_STU_ADM_A119
  association [1..1] to ZZCIR_STU_ADM_A119 as _BaseEntity on $projection.STUDENTID = _BaseEntity.STUDENTID
{
  key StudentID,
  FirstName,
  LastName,
  DateOfBirth,
  Gender,
  Email,
  PhoneNumber,
  AdmissionDate,
  CourseID,
  @Semantics: {
    Amount.Currencycode: 'Currency'
  }
  AdmissionFee,
  @Consumption: {
    Valuehelpdefinition: [ {
      Entity.Element: 'Currency', 
      Entity.Name: 'I_CurrencyStdVH', 
      Useforvalidation: true
    } ]
  }
  Currency,
  @Semantics: {
    User.Createdby: true
  }
  LocalCreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  LocalCreatedAt,
  @Semantics: {
    User.Localinstancelastchangedby: true
  }
  LocalLastChangedBy,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalLastChangedAt,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChangedAt,
  _BaseEntity
}
