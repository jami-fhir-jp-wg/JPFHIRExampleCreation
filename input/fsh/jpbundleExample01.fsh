
Instance: bundleReferralExample01
InstanceOf: Bundle
Usage: #example

Description: "bundleReferralExample01 診療情報提供書Bundle"

* meta.profile[+] = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Bundle_eReferral"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
* identifier.value = "123456"
* type = #document

* timestamp = "2021-11-26T10:00:00+09:00"

* entry[+].fullUrl = "urn:uuid:e7a047bb-4b75-4c63-9c27-7d501740662c"
* entry[=].resource = compositionReferralExample01

* entry[+].fullUrl = "urn:uuid:dbeca8c9-34af-46fa-b1d9-ebf0f3d0d690"
* entry[=].resource = jppatientExample01

* entry[+].fullUrl = "urn:uuid:549ab974-f0be-4942-9737-243316abb7bd"
* entry[=].resource = encounterReferralExample01

* entry[+].fullUrl = "urn:uuid:5d0bd161-915a-4998-ad08-3e05f11e1419"
* entry[=].resource = referralFromPractitionerExample01

* entry[+].fullUrl = "urn:uuid:fffcfb4b-f9a4-4c1a-83de-92a63fa07456"
* entry[=].resource = referralToPractitionerExample01

* entry[+].fullUrl = "urn:uuid:53731a68-9c50-4fb4-95fc-827f0c9d891a"
* entry[=].resource = referralFromOrganizaitonExample01

* entry[+].fullUrl = "urn:uuid:da404863-0c6d-4767-8783-45a21e90023c"
* entry[=].resource = referralToOrganizaitonExample01

* entry[+].fullUrl = "urn:uuid:9d205411-22d1-4284-aca8-5530bc5aa517"
* entry[=].resource = referralToOrganizaitonDeptExample01

* entry[+].fullUrl = "urn:uuid:b016b8e6-bbc9-4659-abef-57f9d2cb2149"
* entry[=].resource = referralFromOrganizaitonDeptExample01

* entry[+].fullUrl = "urn:uuid:26cf5cc6-4df3-470a-a167-9aa9f11c361d"
* entry[=].resource = purposeReferralExample01

* entry[+].fullUrl = "urn:uuid:8bff0481-d4ea-4445-bfce-88c7c517283d"
* entry[=].resource = cc1ReferralExample01

* entry[+].fullUrl = "urn:uuid:6f6348a1-e2d0-4028-82f8-9790d788ad66"
* entry[=].resource = cc2ReferralExample01

* entry[+].fullUrl = "urn:uuid:a0c85bc4-c76f-4c01-9353-a87fcf9ea57e"
* entry[=].resource = piReferralExample01

* entry[+].fullUrl = "urn:uuid:17c424cd-1d34-4b5c-a97c-dee78ad767f0"
* entry[=].resource = ph1ReferralExample01

* entry[+].fullUrl = "urn:uuid:b8144bb4-380d-4c97-abc2-4998b1267a16"
* entry[=].resource = ph2ReferralExample01

* entry[+].fullUrl = "urn:uuid:6b6d4c95-33b9-4453-be4a-0deea813e05c"
* entry[=].resource = alg1ReferralExample01

* entry[+].fullUrl = "urn:uuid:275cbfdd-b1f6-4307-bad5-c913fea670e8"
* entry[=].resource = alg1ReferralExample02

* entry[+].fullUrl = "urn:uuid:fc474c31-7894-459a-acb0-696ec621d8d1"
* entry[=].resource = psobsCommonExample01

* entry[+].fullUrl = "urn:uuid:3c0c11aa-805d-4f08-a12e-b66063a3376e"
* entry[=].resource = ccourseReferralExample01

