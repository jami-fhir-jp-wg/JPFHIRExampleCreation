// Condition_eClinicalSummary
// 030 verificationStatus
//当面中略（診療情報提供書）

Instance: cc1ReferralExample01Inline
InstanceOf: JP_Condition
Usage: #inline

Description: "conditionReferralExample01CC1 診療情報提供書　主訴例　上腹部痛"

* meta.profile[+] = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_Condition_eClinicalSummary"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "192837-01"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
 // active | recurrence | relapse | inactive | remission | resolved
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item

* code[+].text = "上腹部痛"

// * subject.reference = "jppatientExample01Inline"
* subject.reference = "urn:uuid:1f2f6840-c8b5-4c2b-bbc7-012efa46ba32"

// 2022-06-09 2020-08-21
// ATGtime 12:12:20
* onsetDateTime = "2022-06-09"


Instance: cc2ReferralExample01Inline
InstanceOf: JP_Condition
Usage: #inline

Description: "conditionReferralExample01CC2 診療情報提供書　主訴例　腰痛"

* meta.profile[+] = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_Condition_eClinicalSummary"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "192837-02"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
 // active | recurrence | relapse | inactive | remission | resolved
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item

* code[+].text = "腰痛"

// * subject.reference = "jppatientExample01Inline"
* subject.reference = "urn:uuid:1f2f6840-c8b5-4c2b-bbc7-012efa46ba32"

// 2022-05 2020-08-21
// ATGtime 12:12:20
* onsetDateTime = "2022-05"


