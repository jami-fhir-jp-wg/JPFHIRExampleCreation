
Instance: bundleReferralExample01
InstanceOf: Bundle
Usage: #example

Description: "bundleReferralExample01 診療情報提供書Bundle"

* meta.profile[+] = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Bundle_eReferral"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
* identifier.value = "123456"
* type = #document

* timestamp = "2021-11-26T10:00:00+09:00"

* entry[+].fullUrl = "urn:uuid:f37eee78-59a6-4f07-a185-446eba6514b5"
* entry[=].resource = compositionReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:1f2f6840-c8b5-4c2b-bbc7-012efa46ba32"
* entry[=].resource = jppatientExample01Inline

* entry[+].fullUrl = "urn:uuid:920888d0-2c14-49a9-a1c1-7091fa8ad53b"
* entry[=].resource = encounterReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:60cbfdb9-1a78-4bcb-ad8d-6c70dd270edf"
* entry[=].resource = referralFromPractitionerExample01Inline

* entry[+].fullUrl = "urn:uuid:ff280917-5a72-44e1-89ae-f6c5721a6a4d"
* entry[=].resource = referralToPractitionerExample01Inline

* entry[+].fullUrl = "urn:uuid:511ca58b-9fdc-4050-ad1e-f8e33549fb39"
* entry[=].resource = referralFromOrganizationExample01Inline

* entry[+].fullUrl = "urn:uuid:045de25f-2073-464b-982d-0ed0c422ae56"
* entry[=].resource = referralToOrganizationExample01Inline

* entry[+].fullUrl = "urn:uuid:aae567ca-b98a-4015-96dd-fa0496036a64"
* entry[=].resource = referralToOrganizationDeptExample01Inline

* entry[+].fullUrl = "urn:uuid:45406486-ab8b-4524-acc9-88ed2949db27"
* entry[=].resource = referralFromOrganizationDeptExample01Inline

* entry[+].fullUrl = "urn:uuid:3051593d-2d17-47f5-b094-0f6f03dba097"
* entry[=].resource = purposeReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:a3a48022-5f84-443e-afb3-dec222dcbec3"
* entry[=].resource = cc1ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:39d7c85a-56af-4ed2-a0ff-33afc3298849"
* entry[=].resource = cc2ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:2b8e9d71-44eb-46d9-88ea-96e9a0465da2"
* entry[=].resource = piReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:3d98fb27-0847-4ddc-993c-b00d0a54f53e"
* entry[=].resource = ph1ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:7f3c8060-9639-41d7-9446-fa1c7bc4142c"
* entry[=].resource = ph2ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:627082c8-103a-469f-9929-deec8c85dcf0"
* entry[=].resource = alg1ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:caaa4e23-79bd-4cfc-9d56-22425f792372"
* entry[=].resource = alg1ReferralExample02Inline

* entry[+].fullUrl = "urn:uuid:114e24ca-5a92-4d35-a69f-b999f83976e9"
* entry[=].resource = psobsCommonExample01Inline

* entry[+].fullUrl = "urn:uuid:342f9708-cf98-4d36-9d5f-53c80f4bb269"
* entry[=].resource = ccourseReferralExample01Inline

