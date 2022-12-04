// Compositionリース
// Compositionリース
Alias: $doc-typecodes = http://jpfhir.jp/fhir/Common/CodeSystem/doc-typecodes
Alias: $referral-section = http://jpfhir.jp/fhir/eReferral/CodeSystem/document-section







Instance: compositionReferralExample01
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

// * subject.reference = "jppatientExample01"
* subject.reference = "urn:uuid:c523415e-3623-44a4-8c4e-9df8320177f9"
* subject.type = "Patient"
* subject.display = "患者リソースPatient"

// * encounter.reference = "encounterReferralExample01"
* encounter.reference = "urn:uuid:fd7ac19e-a4e5-48a7-be8e-efbe76db0c6f"
* encounter.type = "Encounter"
* encounter.display = "受診Encounterリソース"

// 2020-08-21 2020-08-21
// ATGtime 12:12:20
* date = "2020-08-21T12:12:20+09:00"

// * author[0].reference = "referralFromPractitionerExample01"
* author[0].reference = "urn:uuid:3ee19880-4be1-42f2-87a0-19bd2472ea96"
* author[=].type = "Practitioner"
* author[=].display = "紹介状作成者PractitionerRoleリソース"
// * author[+].reference = "referralFromOrganizaitonExample01"
* author[+].reference = "urn:uuid:7e2a80ee-4e61-4e00-b81b-8fbae98e799b"
* author[=].type = "Organization"
* author[=].display = "紹介状作成機関Organizationリソース"
* title = "診療情報提供書"
// * custodian.reference = "referralFromOrganizaitonExample01"
* custodian.reference = "urn:uuid:7e2a80ee-4e61-4e00-b81b-8fbae98e799b"
* custodian.type = "Organization"
* custodian.display = "紹介状交付責任機関Organizationリソース"

* event.code.text = "診療情報提供書発行"
* event.period.start = "2020-08-21"

* section[+].title = "紹介先情報"
* section[=].code = $referral-section#910 "紹介先情報セクション"
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">東京第一テスト病院</div>"
// * section[=].entry[+].reference = "referralToOrganizaitonExample01"
* section[=].entry[+].reference = "urn:uuid:0f3b6514-6803-4d87-bab7-cd910c5da2ac"
* section[=].entry[=].type = "Organization"
* section[=].entry[=].display = "紹介先医療機関"


// * section[=].entry[+].reference = "referralToOrganizaitonDeptExample01"
* section[=].entry[+].reference = "urn:uuid:45372a1c-ec31-47c2-84cd-fd96ddc3f5cd"
* section[=].entry[=].type = "Organization"
* section[=].entry[=].display = "紹介先診療科"


// * section[=].entry[+].reference = "referralToPractitionerExample01"
* section[=].entry[+].reference = "urn:uuid:cdf57d74-aa5b-41e1-b25f-df165369e40c"
* section[=].entry[=].type = "Practitioner"
* section[=].entry[=].display = "紹介先医師"


* section[+].title = "紹介元情報"
* section[=].code = $referral-section#920 "紹介元情報セクション"
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">港診療所</div>"
// * section[=].entry[+].reference = "referralFromOrganizaitonExample01"
* section[=].entry[+].reference = "urn:uuid:7e2a80ee-4e61-4e00-b81b-8fbae98e799b"
* section[=].entry[=].type = "Organization"
* section[=].entry[=].display = "紹介元医療機関"


// * section[=].entry[+].reference = "referralFromOrganizaitonDeptExample01"
* section[=].entry[+].reference = "urn:uuid:70d3f275-53da-4cf3-bdd7-3224a2206899"
* section[=].entry[=].type = "Organization"
* section[=].entry[=].display = "紹介元診療科"


// * section[=].entry[+].reference = "referralFromPractitionerExample01"
* section[=].entry[+].reference = "urn:uuid:3ee19880-4be1-42f2-87a0-19bd2472ea96"
* section[=].entry[=].type = "Practitioner"
* section[=].entry[=].display = "紹介元医師"


* section[+].title = "構造情報"
* section[=].code = $referral-section#300 "構造情報セクション"
* section[=].section[+].title = "紹介目的"
* section[=].section[=].code = $referral-section#950 "紹介目的セクション"
* section[=].section[=].text.status = #additional
* section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">腹痛精査お願いします。</div>"
// * section[=].section[=].entry[+].reference = "purposeReferralExample01"
* section[=].section[=].entry[+].reference = "urn:uuid:5fb7d349-2e31-4e53-bb61-a8d1cb2a8a57"
* section[=].section[=].entry[=].type = "Encounter"
* section[=].section[=].entry[=].display = "紹介目的"


* section[=].section[+].title = "傷病名・主訴"
* section[=].section[=].code = $referral-section#340 "傷病名・主訴セクション"
* section[=].section[=].text.status = #additional
* section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">上腹部痛、腰痛</div>"
// * section[=].section[=].entry[+].reference = "cc1ReferralExample01"
* section[=].section[=].entry[+].reference = "urn:uuid:dacf3da7-17d3-48fc-ab17-31235f89ebda"
* section[=].section[=].entry[=].type = "Condition"
* section[=].section[=].entry[=].display = "傷病名・主訴"
// * section[=].section[=].entry[+].reference = "cc2ReferralExample01"
* section[=].section[=].entry[+].reference = "urn:uuid:2c3bf200-bab7-4701-8720-3315c3b50b68"
* section[=].section[=].entry[=].type = "Condition"
* section[=].section[=].entry[=].display = "傷病名・主訴"


* section[=].section[+].title = "現病歴"
* section[=].section[=].code = $referral-section#360 "現病歴セクション"
* section[=].section[=].text.status = #additional
* section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">２０２２年６月上旬から夜食後に時々上腹部痛があり、だんだんひどくなっている。他に目立った症状なし。</div>"
// * section[=].section[=].entry[+].reference = "piReferralExample01"
* section[=].section[=].entry[+].reference = "urn:uuid:6145d335-04c8-4a54-b691-f952faca18f8"
* section[=].section[=].entry[=].type = "Condition"
* section[=].section[=].entry[=].display = "現病歴"


* section[=].section[+].title = "既往歴"
* section[=].section[=].code = $referral-section#370 "既往歴セクション"
* section[=].section[=].text.status = #additional
* section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">2018年　狭心症　２ヶ月治療で軽快。2019年　交通事故で左前腕骨折　３ヶ月ギプス固定。</div>"
//  Reference(JP_Condition) 既往歴
// * section[=].section[=].entry[+].reference = "ph1ReferralExample01"
* section[=].section[=].entry[+].reference = "urn:uuid:2c0df373-ab46-4010-a7ee-9181bfe236c8"
* section[=].section[=].entry[=].type = "Condition"
* section[=].section[=].entry[=].display = "既往歴"
// * section[=].section[=].entry[+].reference = "ph2ReferralExample01"
* section[=].section[=].entry[+].reference = "urn:uuid:afd6a4b8-9e20-4236-bfa6-7a9315ac34f2"
* section[=].section[=].entry[=].type = "Condition"
* section[=].section[=].entry[=].display = "既往歴"


* section[=].section[+].title = "アレルギー・不耐性反応"
* section[=].section[=].code = $referral-section#510 "アレルギー・不耐性反応セクション"
* section[=].section[=].text.status = #additional
* section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">サバ　キーウイ</div>"
//  Reference(JP_Condition) アレルギー
// * section[=].section[=].entry[+].reference = "alg1ReferralExample01"
* section[=].section[=].entry[+].reference = "urn:uuid:8bc5918d-16a9-444e-9f1c-c28a3df9e3be"
* section[=].section[=].entry[=].type = "AllergyIntolerance"
* section[=].section[=].entry[=].display = "アレルギー・不耐性反応"
// * section[=].section[=].entry[+].reference = "alg1ReferralExample02"
* section[=].section[=].entry[+].reference = "urn:uuid:f6b3fbe7-513b-402c-9b66-7568221d677d"
* section[=].section[=].entry[=].type = "AllergyIntolerance"
* section[=].section[=].entry[=].display = "アレルギー・不耐性反応"


* section[=].section[+].title = "家族歴"
* section[=].section[=].code = $referral-section#550 "家族歴セクション"
* section[=].section[=].text.status = #additional
* section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">母　胃がん</div>"
//  Reference(JP_FamilyMemberHistory) 家族歴


* section[=].section[+].title = "身体所見"
* section[=].section[=].code = $referral-section#610 "身体所見セクション"
* section[=].section[=].text.status = #additional
* section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">腹部所見：上腹部圧痛あり、その他特に所見なし。</div>"
//  Reference(JP_Observation_Common) 身体所見
// * section[=].section[=].entry[+].reference = "psobsCommonExample01"
* section[=].section[=].entry[+].reference = "urn:uuid:bc20b8bc-30ba-4ebc-bb2a-6949b21237ee"
* section[=].section[=].entry[=].type = "Observation"
* section[=].section[=].entry[=].display = "身体所見"


* section[=].section[+].title = "感染症情報"
* section[=].section[=].code = $referral-section#520 "感染症情報セクション"
* section[=].section[=].text.status = #additional
* section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">特になし</div>"
//  Reference(JP_Observation_Common) 感染症情報


* section[=].section[+].title = "臨床経過"
* section[=].section[=].code = $referral-section#330 "臨床経過セクション"
* section[=].section[=].text.status = #additional
* section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">添付参照</div>"
//  Reference(JP_DocumentReference) 臨床経過
// * section[=].section[=].entry[+].reference = "ccourseReferralExample01"
* section[=].section[=].entry[+].reference = "urn:uuid:68ba91f0-49ec-4fd1-8b03-d5d9ae92c0bb"
* section[=].section[=].entry[=].type = "DocumentReference"
* section[=].section[=].entry[=].display = "臨床経過"






