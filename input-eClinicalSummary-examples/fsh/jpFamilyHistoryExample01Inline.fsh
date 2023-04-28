// FamilyHistory_eClinicalSummary
// FamilyHistory_eClinicalSummary
// 030 verificationStatus

Instance: jpFamilyHistoryExample01Inline
InstanceOf: JP_FamilyMemberHistory
Usage: #inline
  
Description: "退院時サマリー　家族歴"

* meta.profile[+] = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_FamilyMemberHistory"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "192837-01"
* clinicalStatus = http://hl7.org/fhir/ValueSet/history-status#completed
 // partial | completed | entered-in-error | health-unknown 

* patient.reference = "jppatientExample01Inline"

$110mn_家族名TEXT(父)
* condition[+].code.text = "胃がん"


Instance: jpFamilyHistoryExample02Inline
InstanceOf: JP_FamilyMemberHistory
Usage: #inline
  
Description: "退院時サマリー　家族歴"

* meta.profile[+] = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_FamilyMemberHistory"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
* identifier.value = "192837-02"
* clinicalStatus = http://hl7.org/fhir/ValueSet/history-status#completed
 // partial | completed | entered-in-error | health-unknown 

* patient.reference = "jppatientExample01Inline"

$110mn_家族名TEXT()
// note.textはmarkdown
* note.text = "家族に心疾患の既往なし"



