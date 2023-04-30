// FamilyHistory_eClinicalSummary
// FamilyHistory_eClinicalSummary
// Description　meta.lastUpdated設定　必須　１回のみ
// パラメータ：なし（固定値が設定される）
// Description　meta.lastUpdated設定　必須　１回のみ
// パラメータ：なし（固定値が設定される）
// 030 verificationStatus

Instance: jpFamilyHistoryExample01Inline
InstanceOf: JP_FamilyMemberHistory
Usage: #inline

Description: "退院時サマリー　家族歴"

* meta.lastUpdated = "2023-04-01T10:00:00+09:00"

* meta.profile[+] = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_FamilyMemberHistory"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "192837-01"
* status = #completed
 // partial | completed | entered-in-error | health-unknown

// * patient.reference = "jppatientExample01Inline"
* patient.reference = "urn:uuid:85a51292-1089-4641-bac7-d453a0bdc311"

* relationship.text = "父"

* condition[+].code.text = "胃がん"


Instance: jpFamilyHistoryExample02Inline
InstanceOf: JP_FamilyMemberHistory
Usage: #inline

Description: "退院時サマリー　家族歴"

* meta.lastUpdated = "2023-04-01T10:00:00+09:00"

* meta.profile[+] = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_FamilyMemberHistory"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "192837-02"
* status = #completed
 // partial | completed | entered-in-error | health-unknown

// * patient.reference = "jppatientExample01Inline"
* patient.reference = "urn:uuid:85a51292-1089-4641-bac7-d453a0bdc311"

* relationship.text = ""

// note.textはmarkdown
* note.text = "家族に心疾患の既往なし"



