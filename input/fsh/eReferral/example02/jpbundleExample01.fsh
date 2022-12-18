
Instance: bundleReferralExample01
InstanceOf: Bundle
Usage: #example

Description: "bundleReferralExample01 診療情報提供書Bundle"

* meta.profile[+] = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Bundle_eReferral"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
* identifier.value = "123456"
* type = #document

* timestamp = "2021-11-26T10:00:00+09:00"

* entry[+].fullUrl = "urn:uuid:5d0670bf-4469-4185-a85c-f4f3c975183d"
* entry[=].resource = compositionReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:dab195af-7a77-4061-b652-b0b8aae6df4d"
* entry[=].resource = jppatientExample01Inline

* entry[+].fullUrl = "urn:uuid:03708894-f90b-49b7-8b6e-73bf62bc6bbc"
* entry[=].resource = encounterReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:234b92be-4764-4979-8e93-ee4d9c8126e6"
* entry[=].resource = referralFromPractitionerExample01Inline

* entry[+].fullUrl = "urn:uuid:1640800f-ccf4-4b43-a6f0-e563613f4493"
* entry[=].resource = referralToPractitionerExample01Inline

* entry[+].fullUrl = "urn:uuid:528cc808-8ebd-4225-ba65-f4dc17a676f4"
* entry[=].resource = referralFromOrganizationExample01Inline

* entry[+].fullUrl = "urn:uuid:4bd7e5b3-c489-4cda-a677-5d7bf4b1b97d"
* entry[=].resource = referralToOrganizationExample01Inline

* entry[+].fullUrl = "urn:uuid:882edb7a-fe0b-4b49-8487-7317b8d67414"
* entry[=].resource = referralToOrganizationDeptExample01Inline

* entry[+].fullUrl = "urn:uuid:3188240c-dc7e-4ca4-9549-8648dc9841e2"
* entry[=].resource = referralFromOrganizationDeptExample01Inline

* entry[+].fullUrl = "urn:uuid:f7837dd2-a7b0-4afd-9e8b-61dd905c2021"
* entry[=].resource = purposeReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:986e4b5e-4126-4bf4-8814-b7632b1de560"
* entry[=].resource = cc1ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:6220975b-3150-46d9-980f-19cff2b12119"
* entry[=].resource = cc2ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:762bda54-caa2-46e2-92d5-53095a3fe5d5"
* entry[=].resource = piReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:acf20c90-bbc0-43f7-93fd-41d71d7608f1"
* entry[=].resource = ph1ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:5baeb6c8-7dcd-413f-bba8-7f06d04bdc94"
* entry[=].resource = ph2ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:68180867-606b-4ec8-b89e-8b49d3ea83b8"
* entry[=].resource = alg1ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:5c751c19-4adf-4f98-bc62-2f81c3b143e1"
* entry[=].resource = alg1ReferralExample02Inline

* entry[+].fullUrl = "urn:uuid:69f4ed60-5752-4700-b99b-5073cd3c89b7"
* entry[=].resource = psobsCommonExample01Inline

* entry[+].fullUrl = "urn:uuid:8fecbbbe-e22f-4136-b84f-8218839d80e9"
* entry[=].resource = ccourseReferralExample01Inline

