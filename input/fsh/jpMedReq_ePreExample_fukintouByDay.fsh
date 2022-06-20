// MedicationResourceリース宣言
//#define $INSINDEX 0...

Instance: JP-MedReq-ePreData-Example-fukintouByDay
InstanceOf: JP_MedicationRequest
Usage: #example
Description: "不均等投与1日用法の医薬品処方１件　MedicationRequestリソースのインスタンス例（プレドニン錠５ｍｇ１日３回　毎食後　７錠（４錠－２錠－１錠））"
* meta.profile = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRequest"
  
//不均等投与1日用法の医薬品処方１件　
//MedicationRequestリソースのインスタンス例
//プレドニン錠５ｍｇ１日３回　毎食後　７錠（４錠－２錠－１錠）
* identifier[RpNumber].system = "urn:oid:1.2.392.100495.20.3.81"
* identifier[RpNumber].value = "9"
* identifier[OrderInRp].system = "urn:oid:1.2.392.100495.20.3.82"
* identifier[OrderInRp].value = "1"
* status = #active
* intent = #order

* medicationCodeableConcept.coding[+] = urn:oid:1.2.392.200119.4.403.1#105271807 "プレドニン錠５ｍｇ"

* medicationCodeableConcept.text = "プレドニン錠５ｍｇ"

* subject = Reference(JP-Patient-ePreData-Example)


* authoredOn = "2020-08-21T12:28:17+09:00"

//051on_薬剤メモ(ARGtext)
//06on_処方開始日(ARGdate) // extension
* dosageInstruction[0].extension[+].url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationRequest_DosageInstruction_UsageDuration"
* dosageInstruction[0].extension[=].valueDuration = 7 'd' "日"
 // extension
* dosageInstruction[0].text = "１日３回　毎食後　７錠（４錠－２錠－１錠）"

* dosageInstruction[0].additionalInstruction[+] = urn:oid:1.2.392.200250.2.2.20.22#V14NNNNN "不均等・１回目・４錠"

* dosageInstruction[0].additionalInstruction[+] = urn:oid:1.2.392.200250.2.2.20.22#V22NNNNN "不均等・２回目・２錠"

* dosageInstruction[0].additionalInstruction[+] = urn:oid:1.2.392.200250.2.2.20.22#V31NNNNN "不均等・３回目・１錠"

* dosageInstruction[0].timing.repeat.boundsDuration = 7 'd' "日"

* dosageInstruction[0].timing.code = urn:oid:1.2.392.200250.2.2.20.20#1013044400000000 "内服・経口・１日３回毎食後"

//12on_用法部位(ARGsitecode,ARGsite)
* dosageInstruction[0].route = http://jpfhir.jp/fhir/ePrescription/CodeSystem/route-codes#PO "口"
* dosageInstruction[0].method = urn:oid:1.2.392.200250.2.2.20.30#1 "内服"

//13on_外用用法(ARGmethodcode,ARGmethodname)
// 　1=1:製剤量（通常）, 2:原薬量
* dosageInstruction[0].doseAndRate.type = urn:oid:1.2.392.100495.20.2.22#1 "原薬量"

* dosageInstruction[0].doseAndRate.rateRatio.numerator = 7 urn:oid:1.2.392.100495.20.2.101#KO "個"
* dosageInstruction[0].doseAndRate.rateRatio.denominator = 1 'd' "日"

* dispenseRequest.quantity = 49 urn:oid:1.2.392.100495.20.2.101#49code "49name"

* dispenseRequest.expectedSupplyDuration = 7 'd' "日"

* substitution.allowedCodeableConcept = urn:oid:1.2.392.100495.20.2.41#0 "変更可"

//* substitution.allowedCodeableConcept = urn:oid:1.2.392.100495.20.2.41#1 "変更不可"
* substitution.reason.text = "患者からの強い要望により"


