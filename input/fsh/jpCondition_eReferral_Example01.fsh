// Condition_eClinicalSummary
// 030 verificationStatus
//当面中略（診療情報提供書）

Instance: cc1ReferralExample01
InstanceOf: JP_Condition
Usage: #example
  
Description: "conditionReferralExample01 診療情報提供書　主訴例"

* meta.profile[+] = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Condition_eClinicalSummary"

* identifier.system = "http://jpfhir.jp/fhir/Common/CodeSystem/resourceInstance-identifier"
* identifier.value = "192837-01"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
 // active | recurrence | relapse | inactive | remission | resolved
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item

* code[+].text = "上腹部痛"

* subject = Reference(jppatientExample01)

// 2022-06-09 2020-08-21
// ATGtime 12:12:20
* onsetDateTime = "2022-06-09"


Instance: cc2ReferralExample01
InstanceOf: JP_Condition
Usage: #example
  
Description: "conditionReferralExample01 診療情報提供書　主訴例"

* meta.profile[+] = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Condition_eClinicalSummary"

* identifier.system = "http://jpfhir.jp/fhir/Common/CodeSystem/resourceInstance-identifier"
* identifier.value = "192837-02"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
 // active | recurrence | relapse | inactive | remission | resolved
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item

* code[+].text = "腰痛"

* subject = Reference(jppatientExample01)

// 2022-05 2020-08-21
// ATGtime 12:12:20
* onsetDateTime = "2022-05"


Instance: piReferralExample01
InstanceOf: JP_Condition
Usage: #example
  
Description: "conditionReferralExample01 診療情報提供書　現病歴例"

* meta.profile[+] = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Condition_eClinicalSummary"

* identifier.system = "http://jpfhir.jp/fhir/Common/CodeSystem/resourceInstance-identifier"
* identifier.value = "192838"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
 // active | recurrence | relapse | inactive | remission | resolved
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item

* code[+].text = ""

* subject = Reference(jppatientExample01)

* note.text = "２０２２年６月上旬から夜食後に時々上腹部痛があり、だんだんひどくなっている。他に目立った症状なし。"


Instance: ph1ReferralExample01
InstanceOf: JP_Condition
Usage: #example
  
Description: "conditionReferralExample01 診療情報提供書　既往歴例1"

* meta.profile[+] = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Condition_eClinicalSummary"

* identifier.system = "http://jpfhir.jp/fhir/Common/CodeSystem/resourceInstance-identifier"
* identifier.value = "192839-01"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
 // active | recurrence | relapse | inactive | remission | resolved
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item

* code[+].text = "狭心症"

* subject = Reference(jppatientExample01)

// 2018 2020-08-21
// ATGtime 12:12:20
* onsetDateTime = "2018"

* note.text = "2018年　狭心症　２ヶ月治療で軽快。"


Instance: ph2ReferralExample01
InstanceOf: JP_Condition
Usage: #example
  
Description: "conditionReferralExample01 診療情報提供書　既往歴例2"

* meta.profile[+] = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Condition_eClinicalSummary"

* identifier.system = "http://jpfhir.jp/fhir/Common/CodeSystem/resourceInstance-identifier"
* identifier.value = "192839-02"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
 // active | recurrence | relapse | inactive | remission | resolved
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item

* code[+].text = "左前腕骨折"

* subject = Reference(jppatientExample01)

// 2019 2020-08-21
// ATGtime 12:12:20
* onsetDateTime = "2019"

* note.text = "交通事故で左前腕骨折　３ヶ月ギプス固定。"




