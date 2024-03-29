// Condition_eClinicalSummary
// Description　meta.lastUpdated設定　必須　１回のみ
// パラメータ：なし（固定値が設定される）
// 030 verificationStatus
//MEDISコード
// urn:oid:1.2.392.200119.4.101.6: MEDIS病名交換用コード
// urn:oid:1.2.392.200119.4.101.2: MEDIS病名管理番号
//病名コードシステムとコード
// urn:oid:1.2.392.200119.4.101.6: MEDIS病名交換用コード
// urn:oid:1.2.392.200119.4.101.2: MEDIS病名管理番号
// urn:oid:1.2.392.200119.4.201.５: MEDIS修飾語交換用コード
// urn:oid:1.2.392.200119.4.201.２: MEDIS修飾語管理番号
// urn:oid:1.2.392.200119.4.201.５: MEDIS修飾語交換用コード
// urn:oid:1.2.392.200119.4.201.２: MEDIS修飾語管理番号
//当面中略（診療情報提供書）

Instance: ph1ReferralExample01Inline
InstanceOf: JP_Condition
Usage: #inline

Description: "conditionReferralExample01 診療情報提供書　既往歴例1　狭心症"

* meta.lastUpdated = "2023-04-01T10:00:00+09:00"

* meta.profile[+] = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_Condition_eClinicalSummary"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "192839-01"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
 // active | recurrence | relapse | inactive | remission | resolved
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item

* code[+].text = "狭心症"

// * subject.reference = "jppatientExample01Inline"
* subject.reference = "urn:uuid:85a51292-1089-4641-bac7-d453a0bdc311"

// 2018 2020-08-21
// ATGtime 12:12:20
* onsetDateTime = "2018"

* note.text = "2018年　狭心症　２ヶ月治療で軽快。"


Instance: ph2ReferralExample01Inline
InstanceOf: JP_Condition
Usage: #inline

Description: "conditionReferralExample01 診療情報提供書　既往歴例2　左前腕骨折"

* meta.lastUpdated = "2023-04-01T10:00:00+09:00"

* meta.profile[+] = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_Condition_eClinicalSummary"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "192839-02"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
 // active | recurrence | relapse | inactive | remission | resolved
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item

* code[+].text = "左前腕骨折"

// * subject.reference = "jppatientExample01Inline"
* subject.reference = "urn:uuid:85a51292-1089-4641-bac7-d453a0bdc311"

// 2019 2020-08-21
// ATGtime 12:12:20
* onsetDateTime = "2019"

* note.text = "交通事故で左前腕骨折　３ヶ月ギプス固定。"




