// MedicationResourceリース宣言
//#define $INSINDEX 0...

// MedicationResourceリース宣言
//00mn_JPMedicationRequest_ePrescriptionData(ARGinstancename,ARGusage,ARGtxt) 
//01mn_処方番号(ARGshohono,ARGrpno)
//02mr_処方薬HOT9(ARGindex,ARGcode,ARGname)
//02mr_処方薬YJ(ARGindex,ARGcode,ARGname)
//02mr_処方薬LOCAL(ARGindex,ARGcode,ARGname,ARGlocalsystem)
//03mn_処方薬TEXT(ARGname)
//04mn_患者(ARGpatient)
//05mn_処方日時(ARGdate,ARGtime)
//051on_薬剤メモ(ARGtext)
//06on_処方開始日(ARGdate)
//07on_処方実日数(ARGdays)
//08mn_用法テキスト(ARGtext)
//09or_処方補足用法(ARGusageauxcode,ARGusageauxname)
//10or_服用全期間日数(ARGduration)
//11mn_用法メイン(ARGtimingusagecode,ARGtimingusagename)
//12on_用法部位(ARGsitecode,ARGsite)
//13on_内服用法()
//13on_外用用法(ARGmethodcode,ARGmethodname)
//14mn_製剤タイプ(ARGdosetype)
//15on_用法1回用量(ARGdoseqty,ARGdoseunitcode,ARGdoseunitname)
//16on_用法1日用量(ARGdoseqty,ARGdoseunitcode,ARGdoseunitname)
//20mn_調剤全量(ARGqty,ARGqtycode,ARGqtyname)
//21on_調剤全日数(ARGdays)
//30on_後発変更可()

Instance: MedicationRequestExample01
InstanceOf: JP_MedicationRequest
Usage: #example
Description: "内服　処方例１件　MedicationRequestリソースのインスタンス例"
* meta.profile = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRequest"
  
* identifier[RpNumber].system = "urn:oid:1.2.392.100495.20.3.81"
* identifier[RpNumber].value = "1"
* identifier[OrderInRp].system = "urn:oid:1.2.392.100495.20.3.82"
* identifier[OrderInRp].value = "1"
* status = #active
* intent = #order

* medicationCodeableConcept.coding[+] = urn:oid:1.2.392.200119.4.403.1#103831601 "カルボシステイン錠２５０ｍｇ"

* medicationCodeableConcept.coding[+] = urn:oid:1.2.392.100495.20.1.73#2233002F1280 "カルボシステイン錠２５０ｍｇ"

//* medicationCodeableConcept.coding[+] = ARGlocalsystem#ARGcode "ARGname"

* medicationCodeableConcept.text = "カルボシステイン２５０ｍｇ錠"

* subject = Reference(JP-Patient-ePreData-Example)


* authoredOn = "2020-08-21T12:28:17+09:00"

//051on_薬剤メモ(ARGtext)
//06on_処方開始日(ARGdate) // extension
* dosageInstruction[0].extension[+].url = "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationRequest_DosageInstruction_UsageDuration"
* dosageInstruction[0].extension[=].valueDuration = 7 'd' "日"
 // extension
* dosageInstruction[0].text = "内服・経口・１日３回朝昼夕食後　１回１錠　７日分"

//09or_処方補足用法(ARGusageauxcode,ARGusageauxname)
* dosageInstruction[0].timing.repeat.boundsDuration = 7 'd' "日"

* dosageInstruction[0].timing.code = urn:oid:1.2.392.200250.2.2.20.20#1013044400000000 "内服・経口・１日３回朝昼夕食後"

//12on_用法部位(ARGsitecode,ARGsite)
* dosageInstruction[0].route = http://jpfhir.jp/fhir/ePrescription/CodeSystem/route-codes#PO "口"
* dosageInstruction[0].method = urn:oid:1.2.392.200250.2.2.20.30#1 "内服"

//13on_外用用法(ARGmethodcode,ARGmethodname)
// 　2=1:製剤量（通常）, 2:原薬量
* dosageInstruction[0].doseAndRate.type = urn:oid:1.2.392.100495.20.2.22#2 "原薬量"

* dosageInstruction[0].doseAndRate.doseQuantity = 1 urn:oid:1.2.392.100495.20.2.101#TAB "錠"

* dosageInstruction[0].doseAndRate.rateRatio.numerator = 3 urn:oid:1.2.392.100495.20.2.101#KO "個"
* dosageInstruction[0].doseAndRate.rateRatio.denominator = 1 'd' "日"

* dispenseRequest.quantity = 21 urn:oid:1.2.392.100495.20.2.101#21code "21name"

* dispenseRequest.expectedSupplyDuration = 7 'd' "日"

//30on_後発変更可()
* substitution.allowedCodeableConcept = urn:oid:1.2.392.100495.20.2.41#1 "変更不可"
* substitution.reason.text = "患者からの強い要望により"


