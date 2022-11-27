// Compositionリース
// Compositionリース
Alias: $doc-typecodes = http://jpfhir.jp/fhir/Common/CodeSystem/doc-typecodes
Alias: $referral-section = http://jpfhir.jp/fhir/eReferral/CodeSystem/document-section






Instance: compositionReferralExampleTest
InstanceOf: Composition
Usage: #example

Description: "構成情報サンプル　composition"

* meta.profile[+] = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Composition_eReferral"

* extension.url = "http://hl7.org/fhir/StructureDefinition/composition-clinicaldocument-versionNumber"
* extension.valueString = "ARGcode"
 
* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "ARGcode"
* status = #final
* type = $doc-typecodes#57133-1 "診療情報提供書"
* category = $doc-typecodes#57133-1 "診療情報提供書"
 
* subject.reference = "jppatientExample01"
* subject.type = "Patient"
* subject.display = "患者リソースPatient"
 
// 030on_紹介状受診(encounterReferralExample01) 
// 2020-08-21 2020-08-21
// ATGtime 12:12:20
* date = "2020-08-21T12:12:20+09:00"
 
* author[0].reference = "referralFromPractitionerExample01"
* author[=].type = "PractitionerRole"
* author[=].display = "紹介状作成者PractitionerRoleリソース"
* author[+].reference = "referralFromOrganizaitonExample01"
* author[=].type = "Organaization"
* author[=].display = "紹介状作成機関Organaizationリソース"
* title = "診療情報提供書"
* custodian.reference = "referralFromOrganizaitonExample01"
* custodian.type = "Organaization"
* custodian.display = "紹介状交付責任機関Organaizationリソース"
 
* event.code.text = "診療情報提供書発行"
* event.period.start = "2020-08-21"
 
* section[+].title = "紹介先情報"
* section[=].code = $referral-section#910 "紹介先情報セクション"
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">東京第一テスト病院</div>"
* section[=].entry[+].reference = "referralToOrganizaitonExample01"
* section[=].entry[=].type = "Organization"
* section[=].entry[=].display = "紹介先医療機関"

 
* section[=].entry[+].reference = "referralToOrganizaitonDeptExample01"
* section[=].entry[=].type = "Organization"
* section[=].entry[=].display = "紹介先診療科"

 
* section[=].entry[+].reference = "referralToPractitionerExample01"
* section[=].entry[=].type = "Practitioner"
* section[=].entry[=].display = "紹介先医師"

 
* section[+].title = "紹介元情報"
* section[=].code = $referral-section#920 "紹介元情報セクション"
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">港診療所</div>"
* section[=].entry[+].reference = "referralFromOrganizaitonExample01"
* section[=].entry[=].type = "Organization"
* section[=].entry[=].display = "紹介元医療機関"

 
* section[=].entry[+].reference = "referralFromOrganizaitonDeptExample01"
* section[=].entry[=].type = "Organization"
* section[=].entry[=].display = "紹介元診療科"

 
* section[=].entry[+].reference = "referralFromPractitionerExample01"
* section[=].entry[=].type = "Practitioner"
* section[=].entry[=].display = "紹介元医師"

 
* section[+].title = "構造情報"
* section[=].code = $referral-section#300 "構造情報セクション"
* section[=].section[+].title = "紹介目的"
* section[=].section[=].code = $referral-section#950 "紹介目的セクション"
* section[=].section[=].text.status = #additional
* section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">腹痛精査お願いします。</div>"
* section[=].section[=].emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#unavailable
 





