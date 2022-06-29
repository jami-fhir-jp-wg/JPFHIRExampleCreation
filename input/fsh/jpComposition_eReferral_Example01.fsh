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
 
* encounter.reference = "encounterReferralExample01"
* encounter.display = "受診Encounterリソース"
 
// 2020-08-21 2020-08-21
// ATGtime 12:12:20
* date = "2020-08-21T12:12:20+09:00"
 
* author[0].reference = "紹介状作成者Practitionerリソース"
* author[=].display = "紹介状作成者PractitionerRoleリソース"
* author[+].reference = "紹介状作成機関Organaizationリソース9"
* author[=].display = "紹介状作成機関Organaizationリソース"
* title = "診療情報提供書"
* custodian.reference = "紹介状作成機関Organaizationリソース"
* custodian.display = "紹介状交付責任機関Organaizationリソース"
 
* event.code.text = "診療情報提供書発行"
* event.period.start = "2020-08-21"
 
* section[+].title = "紹介先情報"
* section[=].code = $referral-section#910 "紹介先情報セクション"
* section[=].text.status = #additional
* section[=].text.div = "<div>東京第一病院</div>"
* section[=].entry[+].reference = "urn:uuid:9b4e6a12-7bb3-5d46-a126-31b33410f796"
* section[=].entry[=].display = "紹介先医療機関 JP_Organization"
 
* section[=].entry[+].reference = "urn:uuid:9b4e6a12-7bb3-5d46-a126-31b33410f796"
* section[=].entry[=].display = "紹介先診療科 JP_Organization"
 
* section[=].entry[+].reference = "urn:uuid:a871437d-03eb-edfb-9ac7-f3313c54f31a"
* section[=].entry[=].display = "紹介先医師 JP_Practitioner"
 
* section[+].title = "紹介元情報"
* section[=].code = $referral-section#910 "紹介元情報セクション"
* section[=].text.status = #additional
* section[=].text.div = "<div>港区第一診療所</div>"
* section[=].entry[+].reference = "urn:uuid:9b4e6a12-7bb3-5d46-a126-31b33410f796"
* section[=].entry[=].display = "紹介元医療機関 JP_Organization"
 
* section[=].entry[+].reference = "urn:uuid:9b4e6a12-7bb3-5d46-a126-31b33410f796"
* section[=].entry[=].display = "紹介元診療科 JP_Organization"
 
* section[=].entry[+].reference = "urn:uuid:a871437d-03eb-edfb-9ac7-f3313c54f31a"
* section[=].entry[=].display = "紹介元医師 JP_Practitioner"
 
* section[+].title = "構造情報"
* section[=].code = $referral-section#300 "構造情報セクション"
* section[=].section[+].title = "紹介目的"
* section[=].section[=].code = $referral-section#950 "紹介目的セクション"
* section[=].section[=].text.status = #additional
* section[=].section[=].text.div = "<div>腹痛精査お願いします。</div>"
//  Reference(JP_Ecounter) 紹介目的
* section[=].section[=].entry[+].reference = "purposeReferralExample01"
 
* section[=].section[+].title = "傷病名・主訴"
* section[=].section[=].code = $referral-section#340 "傷病名・主訴セクション"
* section[=].section[=].text.status = #additional
* section[=].section[=].text.div = "<div>上腹部痛、腰痛</div>"
//  Reference(JP_Condition) 傷病名・主訴
* section[=].section[=].entry[+].reference = "cc1ReferralExample01"
* section[=].section[=].entry[+].reference = "cc2ReferralExample01"

 
* section[=].section[+].title = "現病歴"
* section[=].section[=].code = $referral-section#360 "現病歴セクション"
* section[=].section[=].text.status = #additional
* section[=].section[=].text.div = "<div>２０２２年６月上旬から夜食後に時々上腹部痛があり、だんだんひどくなっている。他に目立った症状なし。</div>"
//  Reference(JP_Condition) 
* section[=].section[=].entry[+].reference = "piReferralExample01"

 
* section[=].section[+].title = "既往歴"
* section[=].section[=].code = $referral-section#370 "既往歴セクション"
* section[=].section[=].text.status = #additional
* section[=].section[=].text.div = "<div>2018年　狭心症　２ヶ月治療で軽快。2019年　交通事故で左前腕骨折　３ヶ月ギプス固定。</div>"
//  Reference(JP_Condition) 既往歴
* section[=].section[=].entry[+].reference = "ph1ReferralExample01"
* section[=].section[=].entry[+].reference = "ph2ReferralExample01"

 
* section[=].section[+].title = "アレルギー・不耐性反応"
* section[=].section[=].code = $referral-section#370 "アレルギー・不耐性反応セクション"
* section[=].section[=].text.status = #additional
* section[=].section[=].text.div = "<div>サバ　キーウイ</div>"
//  Reference(JP_Condition) アレルギー
* section[=].section[=].entry[+].reference = "alg1ReferralExample01"
* section[=].section[=].entry[+].reference = "alg1ReferralExample02"

 
* section[=].section[+].title = "家族歴"
* section[=].section[=].code = $referral-section#370 "家族歴セクション"
* section[=].section[=].text.status = #additional
* section[=].section[=].text.div = "<div>母　胃がん</div>"
//  Reference(JP_FamilyMemberHistory) 家族歴
* section[=].section[=].entry[+].reference = "ARGref..."

 
* section[=].section[+].title = "身体所見"
* section[=].section[=].code = $referral-section#370 "身体所見セクション"
* section[=].section[=].text.status = #additional
* section[=].section[=].text.div = "<div>腹部所見：上腹部圧痛あり、その他特に所見なし。</div>"
//  Reference(JP_Observation_Common) 身体所見
* section[=].section[=].entry[+].reference = "psobsCommonExample01"

 
* section[=].section[+].title = "感染症情報"
* section[=].section[=].code = $referral-section#370 "感染症情報セクション"
* section[=].section[=].text.status = #additional
* section[=].section[=].text.div = "<div>特になし</div>"
//  Reference(JP_Observation_Common) 感染症情報






