// Compositionリース
// Compositionリース
Alias: $doc-typecodes = http://jpfhir.jp/fhir/Common/CodeSystem/doc-typecodes
Alias: $referral-section = http://jpfhir.jp/fhir/eReferral/CodeSystem/document-section





Instance: compositionReferralExample01
InstanceOf: Composition
Usage: #example

Description: "構成情報サンプル　composition"

* meta.profile[+] = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Composition_eReferral"

* extension.url = "http://hl7.org/fhir/StructureDefinition/composition-clinicaldocument-versionNumber"
* extension.valueString = "ARGcode"
 
* identifier.system = "http://jpfhir.jp/fhir/Common/IdSystem/resourceInstance-identifier"
* identifier.value = "ARGcode"
* status = #final
* type = $doc-typecodes#57133-1 "診療情報提供書"
* category = $doc-typecodes#57133-1 "診療情報提供書"
 
* subject.reference = "jppatientExample01"
* subject.display = "患者リソースPatient"
 
// 030on_紹介状受診(encounterReferralExample01) 
// 2020-08-21 2020-08-21
// ATGtime 12:12:20
* date = "2020-08-21T12:12:20+09:00"
 
* author[0].reference = "referralFromPractitionerExample01"
* author[=].display = "紹介状作成者PractitionerRoleリソース"
* author[+].reference = "referralFromOrganizaitonExample019"
* author[=].display = "紹介状作成機関Organaizationリソース"
* title = "診療情報提供書"
* custodian.reference = "referralFromOrganizaitonExample01"
* custodian.display = "紹介状交付責任機関Organaizationリソース"
 
* event.code.text = "診療情報提供書発行"
* event.period.start = "2020-08-21"
 
* section[+].title = "紹介先情報"
* section[=].code = $referral-section#910 "紹介先情報セクション"
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">東京第一テスト病院</div>"
* section[=].entry[+].reference = "referralToOrganizaitonExample01"
* section[=].entry[=].display = "紹介先医療機関 JP_Organization"
 
* section[=].entry[+].reference = "referralToOrganizaitonDeptExample01"
* section[=].entry[=].display = "紹介先診療科 JP_Organization"
 
* section[=].entry[+].reference = "referralToPractitionerExample01"
* section[=].entry[=].display = "紹介先医師 JP_Practitioner"
 
* section[+].title = "紹介元情報"
* section[=].code = $referral-section#920 "紹介元情報セクション"
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">港診療所</div>"
* section[=].entry[+].reference = "referralFromOrganizaitonExample01"
* section[=].entry[=].display = "紹介元医療機関 JP_Organization"
 
* section[=].entry[+].reference = "referralFromOrganizaitonDeptExample01"
* section[=].entry[=].display = "紹介元診療科 JP_Organization"
 
* section[=].entry[+].reference = "referralFromPractitionerExample01"
* section[=].entry[=].display = "紹介元医師 JP_Practitioner"
 
* section[+].title = "構造情報"
* section[=].code = $referral-section#300 "構造情報セクション"
* section[=].section[+].title = "紹介目的"
* section[=].section[=].code = $referral-section#950 "紹介目的セクション"
* section[=].section[=].text.status = #additional
* section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">腹痛精査お願いします。</div>"
//  Reference(JP_Ecounter) 紹介目的
* section[=].section[=].entry[+].reference = "purposeReferralExample01"
 
* section[=].section[+].title = "傷病名・主訴"
* section[=].section[=].code = $referral-section#340 "傷病名・主訴セクション"
* section[=].section[=].text.status = #additional
* section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">上腹部痛、腰痛</div>"
//  Reference(JP_Condition) 傷病名・主訴
* section[=].section[=].entry[+].reference = "$cc1ReferralExample01"
* section[=].section[=].entry[+].reference = "cc2ReferralExample01"

 
* section[=].section[+].title = "現病歴"
* section[=].section[=].code = $referral-section#360 "現病歴セクション"
* section[=].section[=].text.status = #additional
* section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">２０２２年６月上旬から夜食後に時々上腹部痛があり、だんだんひどくなっている。他に目立った症状なし。</div>"
//  Reference(JP_Condition) 
* section[=].section[=].entry[+].reference = "piReferralExample01"

 
* section[=].section[+].title = "既往歴"
* section[=].section[=].code = $referral-section#370 "既往歴セクション"
* section[=].section[=].text.status = #additional
* section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">2018年　狭心症　２ヶ月治療で軽快。2019年　交通事故で左前腕骨折　３ヶ月ギプス固定。</div>"
//  Reference(JP_Condition) 既往歴
* section[=].section[=].entry[+].reference = "ph1ReferralExample01"
* section[=].section[=].entry[+].reference = "ph2ReferralExample01"

 
* section[=].section[+].title = "アレルギー・不耐性反応"
* section[=].section[=].code = $referral-section#510 "アレルギー・不耐性反応セクション"
* section[=].section[=].text.status = #additional
* section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">サバ　キーウイ</div>"
//  Reference(JP_Condition) アレルギー
* section[=].section[=].entry[+].reference = "alg1ReferralExample01"
* section[=].section[=].entry[+].reference = "alg1ReferralExample02"

 
* section[=].section[+].title = "家族歴"
* section[=].section[=].code = $referral-section#550 "家族歴セクション"
* section[=].section[=].text.status = #additional
* section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">母　胃がん</div>"
//  Reference(JP_FamilyMemberHistory) 家族歴
* section[=].section[=].entry[+].reference = "ARGref..."

 
* section[=].section[+].title = "身体所見"
* section[=].section[=].code = $referral-section#610 "身体所見セクション"
* section[=].section[=].text.status = #additional
* section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">腹部所見：上腹部圧痛あり、その他特に所見なし。</div>"
//  Reference(JP_Observation_Common) 身体所見
* section[=].section[=].entry[+].reference = "psobsCommonExample01"

 
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
* section[=].section[=].entry[+].reference = "ccourseReferralExample01"






