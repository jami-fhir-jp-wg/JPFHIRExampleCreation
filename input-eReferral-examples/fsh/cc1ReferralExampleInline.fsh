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

Instance: cc1ReferralExample01Inline
InstanceOf: JP_Condition
Usage: #inline
  
Description: "Conditionリソース　（診療情報提供書　主訴テキスト　上腹部痛）"

* meta.lastUpdated = "2023-04-01T10:00:00+09:00"

* meta.profile[+] = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_Condition_eClinicalSummary"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "192837-01"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
 // active | recurrence | relapse | inactive | remission | resolved
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item

* code[+].text = "上腹部痛"

* subject.reference = "jppatientExample01Inline"

// 2022-06-09 2020-08-21
// ATGtime 12:12:20
* onsetDateTime = "2022-06-09"


Instance: cc2ReferralExample01Inline
InstanceOf: JP_Condition
Usage: #inline
  
Description: "Conditionリソース　（診療情報提供書　主訴テキスト　腰痛）"

* meta.lastUpdated = "2023-04-01T10:00:00+09:00"

* meta.profile[+] = "http://jpfhir.jp/fhir/eClinicalSummary/StructureDefinition/JP_Condition_eClinicalSummary"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "192837-02"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
 // active | recurrence | relapse | inactive | remission | resolved
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item

* code[+].text = "腰痛"

* subject.reference = "jppatientExample01Inline"

// 2022-05 2020-08-21
// ATGtime 12:12:20
* onsetDateTime = "2022-05"


