
Instance: bundleReferralExample01
InstanceOf: Bundle
Usage: #example

Description: "bundleReferralExample01 診療情報提供書Bundle"

* meta.profile[+] = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Bundle_eReferral"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
* identifier.value = "123456"
* type = #document

* timestamp = "2021-11-26T10:00:00+09:00"

* entry[+].fullUrl = "urn:uuid:580af201-3a30-43d9-9acc-75a08503044c"
* entry[=].resource = compositionReferralExample01

* entry[+].fullUrl = "urn:uuid:53fcc255-5630-42dd-bd14-d1caf074fbed"
* entry[=].resource = jppatientExample01

* entry[+].fullUrl = "urn:uuid:eb67ba45-7b5d-428c-8e6b-5d8d96413bdd"
* entry[=].resource = encounterReferralExample01

* entry[+].fullUrl = "urn:uuid:3800a0de-dc28-4afe-809d-06b69236c9af"
* entry[=].resource = referralFromPractitionerExample01

* entry[+].fullUrl = "urn:uuid:60383d52-0b84-4278-88e7-4c18d600f75d"
* entry[=].resource = referralToPractitionerExample01

* entry[+].fullUrl = "urn:uuid:a7c183f5-bde5-499d-9690-079f360610b0"
* entry[=].resource = referralFromOrganizationExample01

* entry[+].fullUrl = "urn:uuid:cde4e818-5339-481f-9406-3447d3b92f89"
* entry[=].resource = referralToOrganizationExample01

//* entry[+].fullUrl = "urn:uuid:24aeeed0-09ab-4fa9-a749-643fda775485"
* entry[=].resource = referralToOrganizationDeptExample01

//* entry[+].fullUrl = "urn:uuid:20a00aca-abf8-4672-9c93-a180b0ce393c"
* entry[=].resource = referralFromOrganizationDeptExample01

* entry[+].fullUrl = "urn:uuid:3fa474b0-2f2d-433f-854b-f436effd767d"
* entry[=].resource = purposeReferralExample01

* entry[+].fullUrl = "urn:uuid:893e8d89-a373-4983-9619-ca38dc5dfe05"
* entry[=].resource = cc1ReferralExample01

* entry[+].fullUrl = "urn:uuid:1b9cdd99-38fc-4cf3-a17e-f19d2854fd81"
* entry[=].resource = cc2ReferralExample01

* entry[+].fullUrl = "urn:uuid:60f1d617-6fc4-4126-b5ce-f13f3275a029"
* entry[=].resource = piReferralExample01

* entry[+].fullUrl = "urn:uuid:fcc0ecf8-a371-4cd7-bb70-e18e227358ea"
* entry[=].resource = ph1ReferralExample01

* entry[+].fullUrl = "urn:uuid:9210a69b-7753-4fdc-a05a-1baf798696d9"
* entry[=].resource = ph2ReferralExample01

* entry[+].fullUrl = "urn:uuid:d444afee-e911-4345-9d62-5845010e18a1"
* entry[=].resource = alg1ReferralExample01

* entry[+].fullUrl = "urn:uuid:975a1cfa-0b81-48d9-b07b-1cb0463e3eb0"
* entry[=].resource = alg1ReferralExample02

* entry[+].fullUrl = "urn:uuid:d776665d-a392-4ed8-9851-8caededa1141"
* entry[=].resource = psobsCommonExample01

* entry[+].fullUrl = "urn:uuid:e253c769-3b64-4d09-a9b9-f59d491edbaa"
* entry[=].resource = ccourseReferralExample01

