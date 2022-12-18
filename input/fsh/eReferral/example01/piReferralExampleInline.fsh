// Condition_eClinicalSummary
// 030 verificationStatus
//当面中略（診療情報提供書）


Instance: piReferralExample01Inline
InstanceOf: JP_Condition
Usage: #inline

Description: "conditionReferralExample01 診療情報提供書　現病歴例　上腹部痛"

* meta.profile[+] = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_Condition_eClinicalSummary"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "192838"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
 // active | recurrence | relapse | inactive | remission | resolved
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item

* code[+].text = "上腹部痛"

// * subject.reference = "jppatientExample01Inline"
* subject.reference = "urn:uuid:dab195af-7a77-4061-b652-b0b8aae6df4d"

* note.text = "２０２２年６月上旬から夜食後に時々上腹部痛があり、だんだんひどくなっている。他に目立った症状なし。"


