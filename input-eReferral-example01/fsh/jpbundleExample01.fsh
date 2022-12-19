
Instance: bundleReferralExample01
InstanceOf: Bundle
Usage: #example

Description: "bundleReferralExample01 診療情報提供書Bundle"

* meta.profile[+] = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Bundle_eReferral"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
* identifier.value = "123456"
* type = #document

* timestamp = "2021-11-26T10:00:00+09:00"

* entry[+].fullUrl = "urn:uuid:811865db-fbf4-4064-857d-7b19edffe6a2"
* entry[=].resource = compositionReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:210d26b2-1216-4219-b70c-bfcbe7edf664"
* entry[=].resource = jppatientExample01Inline

* entry[+].fullUrl = "urn:uuid:dbe94af4-af22-4b3c-a33a-a984cba25acb"
* entry[=].resource = encounterReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:f8636e7e-1942-4f98-9138-03376ce02c51"
* entry[=].resource = referralFromPractitionerExample01Inline

* entry[+].fullUrl = "urn:uuid:1a98c344-c4db-4344-9d79-c0664835e0b1"
* entry[=].resource = referralToPractitionerExample01Inline

* entry[+].fullUrl = "urn:uuid:56223613-17c6-4165-af7a-b71c8d9ff908"
* entry[=].resource = referralFromOrganizationExample01Inline

* entry[+].fullUrl = "urn:uuid:8751c367-f89f-40ae-b565-760386ebd30e"
* entry[=].resource = referralToOrganizationExample01Inline

* entry[+].fullUrl = "urn:uuid:726d067d-f246-4c5f-ac2d-aee85bd9c6e8"
* entry[=].resource = referralToOrganizationDeptExample01Inline

* entry[+].fullUrl = "urn:uuid:45c31ba0-f611-4a29-8833-1cf83bf0eedd"
* entry[=].resource = referralFromOrganizationDeptExample01Inline

* entry[+].fullUrl = "urn:uuid:8f30745a-ecb6-4bc4-9176-06065cc75845"
* entry[=].resource = purposeReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:b7303acd-a487-41db-811d-ac286b777c2d"
* entry[=].resource = cc1ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:87054dd9-e100-49b9-80c9-3cb156d91a90"
* entry[=].resource = cc2ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:696f0854-887c-4837-858b-2d4e86310461"
* entry[=].resource = piReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:508e5796-2636-4d92-af5f-19c2fce86169"
* entry[=].resource = ph1ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:7df0ca28-5fb7-4733-b21f-6823e4ff63ac"
* entry[=].resource = ph2ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:9088a52c-0630-49df-9c8e-750a84f79e05"
* entry[=].resource = alg1ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:9d402467-cd33-4487-9292-f56cb10b57cc"
* entry[=].resource = alg1ReferralExample02Inline

* entry[+].fullUrl = "urn:uuid:2f247a81-efd5-409d-8a0a-cb261cb68c8a"
* entry[=].resource = psobsCommonExample01Inline

* entry[+].fullUrl = "urn:uuid:73a72925-3621-44f3-9fb1-975930a08941"
* entry[=].resource = ccourseReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:f165cd19-3679-4e1c-856d-a1dd465a4a49"
* entry[=].resource = MedicationRequestExample01Inline

* entry[+].fullUrl = "urn:uuid:9dcf7f6e-b887-4dbb-81df-f4f76c690093"
* entry[=].resource = JP-MedReq-ePreData-Example-fukintouByDayInline


