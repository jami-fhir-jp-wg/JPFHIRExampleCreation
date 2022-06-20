// Patientリース宣言
/*
Patient(ARGinstanceName)  
患者ID(ARGptif)
漢字氏名(ARGnmidx, ARGfamilyname,ARGgivenname)
カナ氏名(ARGnmidx, ARGfamilynamekana,ARGgivennamekana)
電話番号(ARGphonenumber)
性別(ARG)
生年月日(ARG)
郵便番号(ARG) 
住所(ARG)
*/

// 00mn_JPPatient(ARGinstancename,ARGusage)  
// 01mn_患者ID(ARG)
// 02or_漢字氏名(ARGnmidx,ARGfirstname,ARGgivenname)
// 03or_カナ氏名(ARGnmidx,ARGfirstnamekana,ARGgivennamekana)
// 04or_電話番号(ARGnmidx,ARG)
// 04or_自宅電話番号(ARGnmidx,ARG)
// 04or_携帯番号(ARGnmidx,ARG)
// 04or_職場電話番号(ARGnmidx,ARG)
// 05on_性別(ARG)    * gender = #ARG
// 06on_生年月日(ARG)    * birthDate = "ARG"
// 07or_住所(ARGnmidx,ARGpostal,ARGtext)
// 07or_自宅住所(ARGnmidx,ARGpostal,ARGtext)
// 07or_職場住所(ARGnmidx,ARGpostal,ARGtext)
// 07or_住所分割(ARGnmidx,ARGpostal,ARGtext,ARGstate,ARGcity,ARGline)
// 07or_自宅住所分割(ARGnmidx,ARGpostal,ARGtext,ARGstate,ARGcity,ARGline)
// 07or_職場住所分割(ARGnmidx,ARGpostal,ARGtext,ARGstate,ARGcity,ARGline)

Instance: sample01
InstanceOf: JP_Patient
Usage: #example
* meta.profile = "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient"
  
* identifier.system = "urn:oid:1.2.392.200119.6.102.11234567890"
* identifier.value = "12345"

* name[0].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = #IDE
* name[=].use = #official
* name[=].text = "田中　太郎"
* name[=].family = "田中"
* name[=].given = "太郎"

* name[1].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = #SYL
* name[=].use = #official
* name[=].text = "タナカ　タロウ"
* name[=].family = "タナカ"
* name[=].given = "タロウ"

// 自宅電話番号と同じ処理
* telecom.system = #phone
* telecom.value = "03-1234-5678"
* telecom.use = #home

* gender = #male

* birthDate = "1955-05-04"

* address[0].text = "神奈川県横浜市港区１－２－３"
* address[0].postalCode = "123-4567"
* address[0].country = "JP"

