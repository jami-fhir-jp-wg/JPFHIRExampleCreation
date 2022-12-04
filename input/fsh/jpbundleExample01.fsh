
Instance: bundleReferralExample01
InstanceOf: Bundle
Usage: #example

Description: "bundleReferralExample01 診療情報提供書Bundle"

* meta.profile[+] = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Bundle_eReferral"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
* identifier.value = "123456"
* type = #document

* timestamp = "2021-11-26T10:00:00+09:00"

* entry[+].fullUrl = "urn:uuid:59683a66-9362-404b-901f-60bb8194400e"
* entry[=].resource = compositionReferralExample01

* entry[+].fullUrl = "urn:uuid:8cf7bdf0-cb09-408c-9bc3-2f6e5373d183"
* entry[=].resource = jppatientExample01

* entry[+].fullUrl = "urn:uuid:a1891ccb-2bd7-4040-b7d6-2d36c378f971"
* entry[=].resource = encounterReferralExample01

* entry[+].fullUrl = "urn:uuid:d47eb710-12b2-4a75-8c5f-6ea0e6fd8c70"
* entry[=].resource = referralFromPractitionerExample01

* entry[+].fullUrl = "urn:uuid:109710dc-e1ba-471e-a3cf-bb9b4cdecd82"
* entry[=].resource = referralToPractitionerExample01

* entry[+].fullUrl = "urn:uuid:ffc3f268-b7c3-4508-a32e-56ee07051a89"
* entry[=].resource = referralFromOrganizaitonExample01

* entry[+].fullUrl = "urn:uuid:6556cd90-0534-40cc-894f-c41413f5bd0f"
* entry[=].resource = referralToOrganizaitonExample01

* entry[+].fullUrl = "urn:uuid:3a7e3bb7-b248-4881-b0c8-3fc51c5909f1"
* entry[=].resource = referralToOrganizaitonDeptExample01

* entry[+].fullUrl = "urn:uuid:37d1e941-d858-468f-bbb7-9c6ca380261c"
* entry[=].resource = referralFromOrganizaitonDeptExample01

* entry[+].fullUrl = "urn:uuid:bd8f6924-5905-427a-af45-cbfa009340d5"
* entry[=].resource = purposeReferralExample01

* entry[+].fullUrl = "urn:uuid:5bac96dd-d1ff-4f42-96c9-423ed32af9ee"
* entry[=].resource = cc1ReferralExample01

* entry[+].fullUrl = "urn:uuid:532e9081-9e63-42b9-b7fe-f9decbfe4fd0"
* entry[=].resource = cc2ReferralExample01

* entry[+].fullUrl = "urn:uuid:d3638110-0d72-4170-b507-c0c2e5366095"
* entry[=].resource = piReferralExample01

* entry[+].fullUrl = "urn:uuid:e67cb867-e7e0-42b2-b04a-1946850faf3c"
* entry[=].resource = ph1ReferralExample01

* entry[+].fullUrl = "urn:uuid:3494b38f-dcd0-48c8-a900-e43d0876db9d"
* entry[=].resource = ph2ReferralExample01

* entry[+].fullUrl = "urn:uuid:13df3807-97ef-4ad4-8e11-8527b85cf5d9"
* entry[=].resource = alg1ReferralExample01

* entry[+].fullUrl = "urn:uuid:9dba94f0-753f-4d9a-b171-49463a9ecf10"
* entry[=].resource = alg1ReferralExample02

* entry[+].fullUrl = "urn:uuid:b48f98b3-2c7d-4000-874b-3daee56a016a"
* entry[=].resource = psobsCommonExample01

* entry[+].fullUrl = "urn:uuid:2b14f9bb-d121-4c62-ba81-b865946486eb"
* entry[=].resource = ccourseReferralExample01

