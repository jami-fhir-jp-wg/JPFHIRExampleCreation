// Allergy_eClinicalSummary
// 030 verificationStatus
//当面中略（診療情報提供書）

Instance: alg1ReferralExample01
InstanceOf: JP_AllergyIntolerance
Usage: #inline

Description: "allergyeferralExample01 診療情報提供書　アレルギー例1"

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

// * patient.reference = "jppatientExample01"
* patient.reference = "urn:uuid:53fcc255-5630-42dd-bd14-d1caf074fbed"

// * encounter.reference = "encounterReferralExample01"
* encounter.reference = "urn:uuid:eb67ba45-7b5d-428c-8e6b-5d8d96413bdd"

//100on_アレルギ時期日時(ARGdate,ARGtime)
//100on_アレルギ時期日(ARGdate)
* onsetAge.system = "http://unitsofmeasure.org"
* onsetAge.value = 30
* onsetAge.code = #a

* note.text = "サバ食後３時間ほどで全身に発疹と腹痛あり"


Instance: alg1ReferralExample02
InstanceOf: JP_AllergyIntolerance
Usage: #inline

Description: "allergyeferralExample01 診療情報提供書　アレルギー例1"

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

// * patient.reference = "jppatientExample01"
* patient.reference = "urn:uuid:53fcc255-5630-42dd-bd14-d1caf074fbed"

// * encounter.reference = "encounterReferralExample01"
* encounter.reference = "urn:uuid:eb67ba45-7b5d-428c-8e6b-5d8d96413bdd"

//100on_アレルギ時期日時(ARGdate,ARGtime)
//100on_アレルギ時期日(ARGdate)
* onsetAge.system = "http://unitsofmeasure.org"
* onsetAge.value = 10
* onsetAge.code = #a

* note.text = "食べると口の周りが痺れる感じ"


