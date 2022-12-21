
Instance: bundleReferralExample01
InstanceOf: Bundle
Usage: #example

Description: "bundleReferralExample01 診療情報提供書Bundle"

* meta.profile[+] = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Bundle_eReferral"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
* identifier.value = "123456"
* type = #document

* timestamp = "2021-11-26T10:00:00+09:00"

* entry[+].fullUrl = "urn:uuid:6f0910bd-b3fb-4a76-a37f-48874f15e278"
* entry[=].resource = compositionReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:714d7ead-c92b-4342-87ba-57cd89a0c363"
* entry[=].resource = jppatientExample01Inline

* entry[+].fullUrl = "urn:uuid:666cacd1-c1d4-4fdd-bea4-0409629f8027"
* entry[=].resource = encounterReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:d99cbf9b-fbcf-4eab-9c72-8804cebe85ec"
* entry[=].resource = referralFromPractitionerExample01Inline

* entry[+].fullUrl = "urn:uuid:c4b0c04f-9331-4fe1-9afb-932afd8b6b83"
* entry[=].resource = referralToPractitionerExample01Inline

* entry[+].fullUrl = "urn:uuid:9d9fc0bd-2839-47d8-8b1a-0d145df9a4ae"
* entry[=].resource = referralFromOrganizationExample01Inline

* entry[+].fullUrl = "urn:uuid:b76b3456-68ad-4759-9c20-e07e09df52c9"
* entry[=].resource = referralToOrganizationExample01Inline

* entry[+].fullUrl = "urn:uuid:595a7cae-3894-449f-94ff-6ee989825c41"
* entry[=].resource = referralToOrganizationDeptExample01Inline

* entry[+].fullUrl = "urn:uuid:4732cd90-71ef-4f8a-8549-7027fe0b4236"
* entry[=].resource = referralFromOrganizationDeptExample01Inline

* entry[+].fullUrl = "urn:uuid:b338fe1f-7464-45be-a2e9-7c461db14591"
* entry[=].resource = purposeReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:b9f0f06c-177b-405a-a383-6f01a548dd16"
* entry[=].resource = cc1ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:e8358718-ba6e-4aab-bddd-67d323eb9f44"
* entry[=].resource = cc2ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:7e267642-6662-4f6a-821e-1a743140fe49"
* entry[=].resource = piReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:54764f12-6227-4b17-bddc-ae289119920d"
* entry[=].resource = ph1ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:9d2f9a9d-9dab-478c-a0ec-6dddbf07d3fb"
* entry[=].resource = ph2ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:ff9adfca-bf93-413a-8671-dd6de2a5654f"
* entry[=].resource = alg1ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:a304f316-e47a-4240-ae70-34da3e75719e"
* entry[=].resource = alg1ReferralExample02Inline

* entry[+].fullUrl = "urn:uuid:3758edce-3fd0-414a-be35-226a8742a6bb"
* entry[=].resource = psobsCommonExample01Inline

* entry[+].fullUrl = "urn:uuid:1d1a8866-2351-4c3b-890c-67e6b639d364"
* entry[=].resource = ccourseReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:2318e40f-3eac-4d98-949b-b82346ff47cc"
* entry[=].resource = MedicationRequestExample01Inline

* entry[+].fullUrl = "urn:uuid:8f48f39e-fef0-4c22-becb-df12f65f55c5"
* entry[=].resource = JP-MedReq-ePreData-Example-fukintouByDayInline


