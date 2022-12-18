// Compositionリース
// Compositionリース
Alias: $doc-typecodes = http://jpfhir.jp/fhir/Common/CodeSystem/doc-typecodes
Alias: $referral-section = http://jpfhir.jp/fhir/eReferral/CodeSystem/document-section







Instance: compositionReferralExample01Inline
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
* subject.reference = "urn:uuid:dab195af-7a77-4061-b652-b0b8aae6df4d"
* subject.type = "Patient"
* subject.display = "患者リソースPatient"

// * encounter.reference = "encounterReferralExample01Inline"
* encounter.reference = "urn:uuid:03708894-f90b-49b7-8b6e-73bf62bc6bbc"
* encounter.type = "Encounter"
* encounter.display = "受診Encounterリソース"

// 2020-08-21 2020-08-21
// ATGtime 12:12:20
* date = "2020-08-21T12:12:20+09:00"

// * author[0].reference = "referralFromPractitionerExample01Inline"
* author[0].reference = "urn:uuid:234b92be-4764-4979-8e93-ee4d9c8126e6"
* author[=].type = "Practitioner"
* author[=].display = "紹介状作成者PractitionerRoleリソース"
// * author[+].reference = "referralFromOrganizationExample01Inline"
* author[+].reference = "urn:uuid:528cc808-8ebd-4225-ba65-f4dc17a676f4"
* author[=].type = "Organization"
* author[=].display = "紹介状作成機関Organizationリソース"
* title = "診療情報提供書"
// * custodian.reference = "referralFromOrganizationExample01Inline"
* custodian.reference = "urn:uuid:528cc808-8ebd-4225-ba65-f4dc17a676f4"
* custodian.type = "Organization"
* custodian.display = "紹介状交付責任機関Organizationリソース"

* event.code.text = "診療情報提供書発行"
* event.period.start = "2020-08-21"

* section[+].title = "紹介先情報"
* section[=].code = $referral-section#910 "紹介先情報セクション"
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">東京第一テスト病院</div>"
// * section[=].entry[+].reference = "referralToOrganizationExample01Inline"
* section[=].entry[+].reference = "urn:uuid:4bd7e5b3-c489-4cda-a677-5d7bf4b1b97d"
* section[=].entry[=].type = "Organization"
* section[=].entry[=].display = "紹介先医療機関"


// * section[=].entry[+].reference = "referralToOrganizationDeptExample01Inline"
* section[=].entry[+].reference = "urn:uuid:882edb7a-fe0b-4b49-8487-7317b8d67414"
* section[=].entry[=].type = "Organization"
* section[=].entry[=].display = "紹介先診療科"


// * section[=].entry[+].reference = "referralToPractitionerExample01Inline"
* section[=].entry[+].reference = "urn:uuid:1640800f-ccf4-4b43-a6f0-e563613f4493"
* section[=].entry[=].type = "Practitioner"
* section[=].entry[=].display = "紹介先医師"


* section[+].title = "紹介元情報"
* section[=].code = $referral-section#920 "紹介元情報セクション"
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">港診療所</div>"
// * section[=].entry[+].reference = "referralFromOrganizationExample01Inline"
* section[=].entry[+].reference = "urn:uuid:528cc808-8ebd-4225-ba65-f4dc17a676f4"
* section[=].entry[=].type = "Organization"
* section[=].entry[=].display = "紹介元医療機関"


// * section[=].entry[+].reference = "referralFromOrganizationDeptExample01Inline"
* section[=].entry[+].reference = "urn:uuid:3188240c-dc7e-4ca4-9549-8648dc9841e2"
* section[=].entry[=].type = "Organization"
* section[=].entry[=].display = "紹介元診療科"


// * section[=].entry[+].reference = "referralFromPractitionerExample01Inline"
* section[=].entry[+].reference = "urn:uuid:234b92be-4764-4979-8e93-ee4d9c8126e6"
* section[=].entry[=].type = "Practitioner"
* section[=].entry[=].display = "紹介元医師"


// Encounter を参照する場合に使用
* section[+].title = "構造情報"
* section[=].code = $referral-section#300 "構造情報セクション"
* section[=].section[+].title = "紹介目的"
* section[=].section[=].code = $referral-section#950 "紹介目的セクション"
* section[=].section[=].text.status = #additional
* section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">腹痛精査お願いします。</div>"
// * section[=].section[=].entry[+].reference = "purposeReferralExample01Inline"
* section[=].section[=].entry[+].reference = "urn:uuid:f7837dd2-a7b0-4afd-9e8b-61dd905c2021"
* section[=].section[=].entry[=].type = "Encounter"
* section[=].section[=].entry[=].display = "紹介目的"


* section[=].section[+].title = "傷病名・主訴"
* section[=].section[=].code = $referral-section#340 "傷病名・主訴セクション"
* section[=].section[=].text.status = #additional
* section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">上腹部痛、腰痛</div>"
// * section[=].section[=].entry[+].reference = "cc1ReferralExample01Inline"
* section[=].section[=].entry[+].reference = "urn:uuid:986e4b5e-4126-4bf4-8814-b7632b1de560"
* section[=].section[=].entry[=].type = "Condition"
* section[=].section[=].entry[=].display = "傷病名・主訴"
// * section[=].section[=].entry[+].reference = "cc2ReferralExample01Inline"
* section[=].section[=].entry[+].reference = "urn:uuid:6220975b-3150-46d9-980f-19cff2b12119"
* section[=].section[=].entry[=].type = "Condition"
* section[=].section[=].entry[=].display = "傷病名・主訴"


* section[=].section[+].title = "現病歴"
* section[=].section[=].code = $referral-section#360 "現病歴セクション"
* section[=].section[=].text.status = #additional
* section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">２０２２年６月上旬から夜食後に時々上腹部痛があり、だんだんひどくなっている。他に目立った症状なし。</div>"
// * section[=].section[=].entry[+].reference = "piReferralExample01Inline"
* section[=].section[=].entry[+].reference = "urn:uuid:762bda54-caa2-46e2-92d5-53095a3fe5d5"
* section[=].section[=].entry[=].type = "Condition"
* section[=].section[=].entry[=].display = "現病歴"


* section[=].section[+].title = "既往歴"
* section[=].section[=].code = $referral-section#370 "既往歴セクション"
* section[=].section[=].text.status = #additional
* section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">2018年　狭心症　２ヶ月治療で軽快。2019年　交通事故で左前腕骨折　３ヶ月ギプス固定。</div>"
//  Reference(JP_Condition) 既往歴
// * section[=].section[=].entry[+].reference = "ph1ReferralExample01Inline"
* section[=].section[=].entry[+].reference = "urn:uuid:acf20c90-bbc0-43f7-93fd-41d71d7608f1"
* section[=].section[=].entry[=].type = "Condition"
* section[=].section[=].entry[=].display = "既往歴"
// * section[=].section[=].entry[+].reference = "ph2ReferralExample01Inline"
* section[=].section[=].entry[+].reference = "urn:uuid:5baeb6c8-7dcd-413f-bba8-7f06d04bdc94"
* section[=].section[=].entry[=].type = "Condition"
* section[=].section[=].entry[=].display = "既往歴"


* section[=].section[+].title = "アレルギー・不耐性反応"
* section[=].section[=].code = $referral-section#510 "アレルギー・不耐性反応セクション"
* section[=].section[=].text.status = #additional
* section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">サバ　キーウイ</div>"
//  Reference(JP_Condition) アレルギー
// * section[=].section[=].entry[+].reference = "alg1ReferralExample01Inline"
* section[=].section[=].entry[+].reference = "urn:uuid:68180867-606b-4ec8-b89e-8b49d3ea83b8"
* section[=].section[=].entry[=].type = "AllergyIntolerance"
* section[=].section[=].entry[=].display = "アレルギー・不耐性反応"
// * section[=].section[=].entry[+].reference = "alg1ReferralExample01Inline"
* section[=].section[=].entry[+].reference = "urn:uuid:68180867-606b-4ec8-b89e-8b49d3ea83b8"
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
// * section[=].section[=].entry[+].reference = "psobsCommonExample01Inline"
* section[=].section[=].entry[+].reference = "urn:uuid:69f4ed60-5752-4700-b99b-5073cd3c89b7"
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
// * section[=].section[=].entry[+].reference = "ccourseReferralExample01Inline"
* section[=].section[=].entry[+].reference = "urn:uuid:8fecbbbe-e22f-4136-b84f-8218839d80e9"
* section[=].section[=].entry[=].type = "DocumentReference"
* section[=].section[=].entry[=].display = "臨床経過"






