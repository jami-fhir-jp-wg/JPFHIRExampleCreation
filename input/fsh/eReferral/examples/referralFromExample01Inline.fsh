// Organizaionリース
// JP_Organizaion
// JP_Organization_eClinicalSummary_issuer
// 0E1mr_機関都道府県番号(ARGcode)
// 0E2mr_機関区分(ARGcode)
// 0E3mr_機関保険医療機関番号(ARGcode)
// 000mn_ExampleJPOrganization_eCS(ARGinstancename)
// 001mn_Description(ARGtxt)
// 002or_ValidationProfile(ARGmetaprofile)
// 002or_ValidationProfile_JPOrganization_eCS()
//
// 010mn_機関医療機関番号(ARGorgno)
// 040mn_機関名(ARGorgname)
// 040or_機関電話番号(ARG)
// 080or_機関住所(ARGpostal,ARGtext)
// Description　meta.lastUpdated設定　必須　１回のみ
// パラメータ：なし（固定値が設定される）
// Organizaionリース
// JP_Organizaion
// JP_Organization_eClinicalSummary_issuer
// 0E1mr_機関都道府県番号(ARGcode)
// 0E2mr_機関区分(ARGcode)
// 0E3mr_機関保険医療機関番号(ARGcode)
// 000mn_ExampleJPOrganization_eCS(ARGinstancename)
// 001mn_Description(ARGtxt)
// 002or_ValidationProfile(ARGmetaprofile)
// 002or_ValidationProfile_JPOrganization_eCS()
//
// 010mn_機関医療機関番号(ARGorgno)
// 040mn_機関名(ARGorgname)
// 040or_機関電話番号(ARG)
// 080or_機関住所(ARGpostal,ARGtext)
// Description　meta.lastUpdated設定　必須　１回のみ
// パラメータ：なし（固定値が設定される）
// Organizaionリース
// JP_Organizaion
// JP_Organization_eClinicalSummary_departmentOfIssuer
// 000mn_ExampleJPOrganizationDept_eCS(ARGinstancename)
// 001mn_Description(ARGtxt)
// 002or_ValidationProfile(ARGmetaprofile)
// 002or_ValidationProfile_JPOrganizationDept_eCS()
//
// 030mn_診療科コード名称(ARGcodesystem, ARGdeptcode)
// 040mn_診療科名称(ARGorgname)
// 040or_診療科所属医療機関参照(ARGrefresource)
// Description　meta.lastUpdated設定　必須　１回のみ
// パラメータ：なし（固定値が設定される）
// Practitionerリース
// JP_Practitioner
// JP_Practitioner_eClinicalSummary_author
// 000mn_ExampleJPPractitioner_eCS(ARGinstancename)
// 001mn_Description(ARGtxt)
// 002or_ValidationProfile(ARGmetaprofile)
// 002or_ValidationProfile_JPPractitioner_eCS()
// 030mn_医療者漢字氏名(ARGfirstname,ARGgivenname)
// 030on_医療者カナ氏名(ARGfirstnamekana,ARGgivennamekana)
// Description　meta.lastUpdated設定　必須　１回のみ
// パラメータ：なし（固定値が設定される）

//--------------
Instance: referralFromOrganizationExample01Inline
InstanceOf: JP_Organization
Usage: #inline

Description: "紹介元医療機関情報　例"

// 002r_ValidationProfile(ARGmetaprofile)

* meta.lastUpdated = "2023-04-01T10:00:00+09:00"

//* meta.profile[+] = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_Organization_eClinicalSummary_issuer"
* meta.profile[+] = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_Organization_eClinicalSummary"

//
// 機関都道府県番号：2桁数字　北海道は01
* extension[+].url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Organization_PrefectureNo" (exactly)
* extension[=].valueCoding.system = "urn:oid:1.2.392.100495.20.3.21"
* extension[=].valueCoding.code = #13

// 点数表コード１桁「1：医科」、「3：歯科」
* extension[+].url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Organization_InsuranceOrganizationCategory" (exactly)
* extension[=].valueCoding.system = "urn:oid:1.2.392.100495.20.3.22"
* extension[=].valueCoding.code = #1

// 保険医療機関番号７桁
* extension[+].url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Organization_InsuranceOrganizationNo" (exactly)
* extension[=].valueIdentifier.system = "urn:oid:1.2.392.100495.20.3.23"
* extension[=].valueIdentifier.value = "9876543"

//
* identifier[+].system = "http://jpfhir.jp/fhir/core/IdSystem/insurance-medical-institution-no"
* identifier[=].value = "1319876543"
* type[+].coding.system = "http://terminology.hl7.org/CodeSystem/organization-type"
* type[=].coding.code = #prov

* name = "港診療所"

* telecom[+].system = #phone
* telecom[=].value = "03-9876-5432"

* address[+].text = "東京都港区新橋１−２−３"
* address[=].postalCode = "106-9900"
* address[=].country = "JP"

//--------------

Instance: referralFromOrganizationDeptExample01Inline
InstanceOf: JP_Organization
Usage: #inline

Description: "紹介元医療機関の診療科情報　例"

//002or_ValidationProfile(ARGmetaprofile)
* meta.lastUpdated = "2023-04-01T10:00:00+09:00"

* meta.profile[+] = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_Organization_eClinicalSummary_department"

//
* type[+].coding.system = "http://terminology.hl7.org/CodeSystem/organization-type"
* type[=].coding.code = #dept
//
* type[+].coding.system = "urn:oid:1.2.392.100495.20.2.51"
* type[=].coding.code = #11

* name = "眼科"

// * partOf.reference = "referralFromOrganizationDeptExample01Inline"
* partOf.reference = "urn:uuid:5b99a745-f588-41b6-afdf-55698b41f2a6"



* meta.lastUpdated = "2023-04-01T10:00:00+09:00"
//--------------
Instance: referralFromPractitionerExample01Inline
InstanceOf: JP_Practitioner
Usage: #inline

Description: "紹介元医療機関の医師情報　例"

// 002or_ValidationProfile(ARGmetaprofile)
* meta.lastUpdated = "2023-04-01T10:00:00+09:00"

* meta.profile[+] = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_Practitioner_eClinicalSummary"

* name[+].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = #IDE
* name[=].use = #official
* name[=].text = "大河内 勘三郎"
* name[=].family = "大河内"
* name[=].given = "勘三郎"

* name[+].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = #SYL
* name[=].use = #official
* name[=].text = "オオコウチ カンザブロウ"
* name[=].family = "オオコウチ"
* name[=].given = "カンザブロウ"

//--------------


