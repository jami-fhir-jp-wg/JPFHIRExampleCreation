// Allergy_eClinicalSummary
// 030 verificationStatus
//当面中略（診療情報提供書）

Instance: alg1ReferralExample01Inline
InstanceOf: JP_AllergyIntolerance
Usage: #inline

Description: "allergyeferralExample01 診療情報提供書　アレルギー例1　サバ"

* meta.profile[+] = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_AllergyIntolerance_eClinicalSummary"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "102934701"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
 // active | recurrence | relapse | inactive | remission | resolved

* type = #allergy

//040on_アレルギタイプ不耐性()
// food | medication | environment | biologic 食物、医薬品、環境、生物学的
* category = #food

// food | medication | environment | biologic 食物、医薬品、環境、生物学的
//060on_アレルギ程度(ARGst)
// low | high | unable-to-assess 低、高、評価不能
* criticality = #unable-to-assess

//070on_アレルギ物質コード名称JFAGY(ARGcode,ARGname)
* code.text = "サバ"

// * patient.reference = "jppatientExample01Inline"
* patient.reference = "urn:uuid:1f2f6840-c8b5-4c2b-bbc7-012efa46ba32"

// * encounter.reference = "encounterReferralExample01Inline"
* encounter.reference = "urn:uuid:920888d0-2c14-49a9-a1c1-7091fa8ad53b"

//100on_アレルギ時期日時(ARGdate,ARGtime)
//100on_アレルギ時期日(ARGdate)
* onsetAge.system = "http://unitsofmeasure.org"
* onsetAge.value = 30
* onsetAge.code = #a

* note.text = "サバ食後３時間ほどで全身に発疹と腹痛あり"


Instance: alg1ReferralExample02Inline
InstanceOf: JP_AllergyIntolerance
Usage: #inline

Description: "allergyeferralExample01 診療情報提供書　アレルギー例1　キーウイ"

* meta.profile[+] = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_AllergyIntolerance_eClinicalSummary"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "102934701"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
 // active | recurrence | relapse | inactive | remission | resolved

* type = #allergy

//040on_アレルギタイプ不耐性()
// food | medication | environment | biologic 食物、医薬品、環境、生物学的
* category = #food

// food | medication | environment | biologic 食物、医薬品、環境、生物学的
//060on_アレルギ程度(ARGst)
// low | high | unable-to-assess 低、高、評価不能
* criticality = #unable-to-assess

//070on_アレルギ物質コード名称JFAGY(ARGcode,ARGname)
* code.text = "キーウイ"

// * patient.reference = "jppatientExample01Inline"
* patient.reference = "urn:uuid:1f2f6840-c8b5-4c2b-bbc7-012efa46ba32"

// * encounter.reference = "encounterReferralExample01Inline"
* encounter.reference = "urn:uuid:920888d0-2c14-49a9-a1c1-7091fa8ad53b"

//100on_アレルギ時期日時(ARGdate,ARGtime)
//100on_アレルギ時期日(ARGdate)
* onsetAge.system = "http://unitsofmeasure.org"
* onsetAge.value = 10
* onsetAge.code = #a

* note.text = "食べると口の周りが痺れる感じ"


