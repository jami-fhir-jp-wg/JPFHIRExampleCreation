// Compositionリース
// Compositionリース
Alias: $doc-typecodes = http://jpfhir.jp/fhir/Common/CodeSystem/doc-typecodes
Alias: $referral-section = http://jpfhir.jp/fhir/eReferral/CodeSystem/document-section






Instance: compositionReferralExampleTestInline
InstanceOf: Composition
Usage: #inline

Description: "構成情報サンプル　composition"

* meta.profile[+] = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Composition_eReferral"

* extension.url = "http://hl7.org/fhir/StructureDefinition/composition-clinicaldocument-versionNumber"
* extension.valueString = "ARGcode"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "ARGcode"
* status = #final
* type = $doc-typecodes#57133-1 "診療情報提供書"
* category = $doc-typecodes#57133-1 "診療情報提供書"

// * subject.reference = "jppatientExample01Inline"
* subject.reference = "urn:uuid:0d1054c0-e3a1-4285-bce3-d5bc064bd056"
* subject.type = "Patient"
* subject.display = "患者リソースPatient"

// 030on_紹介状受診(encounterReferralExample01Inline)
// 2020-08-21 2020-08-21
// ATGtime 12:12:20
* date = "2020-08-21T12:12:20+09:00"

// * author[0].reference = "referralFromPractitionerExample01Inline"
* author[0].reference = "urn:uuid:cba6af27-c68b-48e2-bc0a-6162580c1d78"
* author[=].type = "Practitioner"
* author[=].display = "紹介状作成者PractitionerRoleリソース"
// * author[+].reference = "referralFromOrganizationExample01Inline"
* author[+].reference = "urn:uuid:45fd7313-5f0d-44b9-85cd-d573d3f8a229"
* author[=].type = "Organization"
* author[=].display = "紹介状作成機関Organizationリソース"
* title = "診療情報提供書"
// * custodian.reference = "referralFromOrganizationExample01Inline"
* custodian.reference = "urn:uuid:45fd7313-5f0d-44b9-85cd-d573d3f8a229"
* custodian.type = "Organization"
* custodian.display = "紹介状交付責任機関Organizationリソース"

* event.code.text = "診療情報提供書発行"
* event.period.start = "2020-08-21"

* section[+].title = "紹介先情報"
* section[=].code = $referral-section#910 "紹介先情報セクション"
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">東京第一テスト病院</div>"
// * section[=].entry[+].reference = "referralToOrganizationExample01Inline"
* section[=].entry[+].reference = "urn:uuid:bddf2a92-b7ea-4bad-b790-7672f293a98c"
* section[=].entry[=].type = "Organization"
* section[=].entry[=].display = "紹介先医療機関"


// * section[=].entry[+].reference = "referralToOrganizationDeptExample01Inline"
* section[=].entry[+].reference = "urn:uuid:f2af685c-d034-4a30-b333-46adc97b0932"
* section[=].entry[=].type = "Organization"
* section[=].entry[=].display = "紹介先診療科"


// * section[=].entry[+].reference = "referralToPractitionerExample01Inline"
* section[=].entry[+].reference = "urn:uuid:6182a14e-9316-4211-b93b-2b241c5fd504"
* section[=].entry[=].type = "Practitioner"
* section[=].entry[=].display = "紹介先医師"


* section[+].title = "紹介元情報"
* section[=].code = $referral-section#920 "紹介元情報セクション"
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">港診療所</div>"
// * section[=].entry[+].reference = "referralFromOrganizationExample01Inline"
* section[=].entry[+].reference = "urn:uuid:45fd7313-5f0d-44b9-85cd-d573d3f8a229"
* section[=].entry[=].type = "Organization"
* section[=].entry[=].display = "紹介元医療機関"


// * section[=].entry[+].reference = "referralFromOrganizationDeptExample01Inline"
* section[=].entry[+].reference = "urn:uuid:7f5e54ef-4258-4ff7-968a-8a78aeffa650"
* section[=].entry[=].type = "Organization"
* section[=].entry[=].display = "紹介元診療科"


// * section[=].entry[+].reference = "referralFromPractitionerExample01Inline"
* section[=].entry[+].reference = "urn:uuid:cba6af27-c68b-48e2-bc0a-6162580c1d78"
* section[=].entry[=].type = "Practitioner"
* section[=].entry[=].display = "紹介元医師"


* section[+].title = "構造情報"
* section[=].code = $referral-section#300 "構造情報セクション"
* section[=].section[+].title = "紹介目的"
* section[=].section[=].code = $referral-section#950 "紹介目的セクション"
* section[=].section[=].text.status = #additional
* section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">腹痛精査お願いします。</div>"
* section[=].section[=].emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#unavailable






