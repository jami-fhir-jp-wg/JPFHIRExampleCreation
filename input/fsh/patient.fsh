







/*
Instance: ARGinstanceName
InstanceOf: JP_Patient_eMunicipalCheckup
  
* identifier.system = "urn:oid:1.2.392.200119.6.102.11234567890"
* identifier.value = "ARGptif"

* name[0].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = #IDE
* name[=].use = #official
* name[=].text = "ARGfamilyname　ARGgivenname"
* name[=].family = "ARGfamilyname"
* name[=].given = "ARGgivenname"

* name[0].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = #SYL
* name[=].use = #official
* name[=].text = "ARGfamilynamekana　ARGgivennamekana"
* name[=].family = "ARGfamilynamekana"
* name[=].given = "ARGgivennamekana"

* telecom.system = #phone
* telecom.value = "ARGphonenumber"
* telecom.use = #home

* gender = #ARG
* birthDate = "ARG"
* address.postalCode = "ARG" 
* address.text = "ARG"
* address.country = "JP"

*/

Instance: sample01
InstanceOf: JP_Patient
  
* identifier.system = "urn:oid:1.2.392.200119.6.102.11234567890"
* identifier.value = "12345"

* name[0].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = #IDE
* name[=].use = #official
* name[=].text = "田中　太郎"
* name[=].family = "田中"
* name[=].given = "太郎"

* name[0].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = #SYL
* name[=].use = #official
* name[=].text = "タナカ　タロウ"
* name[=].family = "タナカ"
* name[=].given = "タロウ"

* telecom.system = #phone
* telecom.value = "03-1234-5678"
* telecom.use = #home

* gender = #male
* birthDate = "1955-05-04"
* address.postalCode = "123-4567" 
* address.text = "神奈川県横浜市港区１－２－３"
* address.country = "JP"

