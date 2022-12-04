
Instance: bundleReferralExample01
InstanceOf: Bundle
Usage: #example

Description: "bundleReferralExample01 診療情報提供書Bundle"

* meta.profile[+] = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Bundle_eReferral"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
* identifier.value = "123456"
* type = #document

* timestamp = "2021-11-26T10:00:00+09:00"

* entry[+].fullUrl = "urn:uuid:106cf559-d9c8-4dcd-b7c4-1e22b6d12aeb"
* entry[=].resource = compositionReferralExample01

* entry[+].fullUrl = "urn:uuid:1329a718-c5fc-4205-9b65-4cae3829ea22"
* entry[=].resource = jppatientExample01

* entry[+].fullUrl = "urn:uuid:36a0b47d-4572-4f93-8e72-a69281d12fca"
* entry[=].resource = encounterReferralExample01

* entry[+].fullUrl = "urn:uuid:60e2da6b-3e25-4909-b893-1c0a040b3231"
* entry[=].resource = referralFromPractitionerExample01

* entry[+].fullUrl = "urn:uuid:d53b6a81-c745-4382-95c3-bcc4df168a6c"
* entry[=].resource = referralToPractitionerExample01

* entry[+].fullUrl = "urn:uuid:48cc7158-e3e6-48f0-ac9d-7f5be059d6f4"
* entry[=].resource = referralFromOrganizaitonExample01

* entry[+].fullUrl = "urn:uuid:363a0be1-1ad8-4015-8e7e-14edf23a9563"
* entry[=].resource = referralToOrganizaitonExample01

* entry[+].fullUrl = "urn:uuid:0179f4eb-999b-4503-951c-4b1fddc83ec3"
* entry[=].resource = referralToOrganizaitonDeptExample01

* entry[+].fullUrl = "urn:uuid:7c556800-ed20-4d84-96b3-00da710d0cc4"
* entry[=].resource = referralFromOrganizaitonDeptExample01

* entry[+].fullUrl = "urn:uuid:d180f905-a12a-4a28-b8b1-9b1182d62f2a"
* entry[=].resource = purposeReferralExample01

* entry[+].fullUrl = "urn:uuid:091ef01f-230b-4bbd-97bc-7ae05fa73bf5"
* entry[=].resource = cc1ReferralExample01

* entry[+].fullUrl = "urn:uuid:8f6a4d55-d8b3-416e-ba8d-ecff93771314"
* entry[=].resource = cc2ReferralExample01

* entry[+].fullUrl = "urn:uuid:6bf68b45-44e7-4e3e-b85d-896a2bdea8f3"
* entry[=].resource = piReferralExample01

* entry[+].fullUrl = "urn:uuid:3105b737-93bd-4352-90e6-0993c54a40da"
* entry[=].resource = ph1ReferralExample01

* entry[+].fullUrl = "urn:uuid:c21c7f46-0b91-4c44-96d5-f6232ef82fcc"
* entry[=].resource = ph2ReferralExample01

* entry[+].fullUrl = "urn:uuid:5f7b4749-1dd6-40cc-b850-c9ad4d5628aa"
* entry[=].resource = alg1ReferralExample01

* entry[+].fullUrl = "urn:uuid:bb2a6e5f-1d59-4d12-bbb9-590294c39054"
* entry[=].resource = alg1ReferralExample02

* entry[+].fullUrl = "urn:uuid:00aa43b0-e5d9-4d83-b5fb-a83d589084e2"
* entry[=].resource = psobsCommonExample01

* entry[+].fullUrl = "urn:uuid:fcb46b07-de03-4530-a0f5-76a5a0707266"
* entry[=].resource = ccourseReferralExample01

