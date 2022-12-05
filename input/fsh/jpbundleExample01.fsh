
Instance: bundleReferralExample01
InstanceOf: Bundle
Usage: #example

Description: "bundleReferralExample01 診療情報提供書Bundle"

* meta.profile[+] = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Bundle_eReferral"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
* identifier.value = "123456"
* type = #document

* timestamp = "2021-11-26T10:00:00+09:00"

* entry[+].fullUrl = "urn:uuid:937147fd-3e33-46d6-8eb9-6f391f2f3b76"
* entry[=].resource = compositionReferralExample01

* entry[+].fullUrl = "urn:uuid:b11e2fca-a64f-45b2-aba8-3d1fb9dd86f1"
* entry[=].resource = jppatientExample01

* entry[+].fullUrl = "urn:uuid:d9d64743-52f2-4ea2-bf0c-c1e9ff07bdd1"
* entry[=].resource = encounterReferralExample01

* entry[+].fullUrl = "urn:uuid:78dc5b01-58c2-4b64-8db0-c4bda37bc1f4"
* entry[=].resource = referralFromPractitionerExample01

* entry[+].fullUrl = "urn:uuid:7df5692d-1f70-44b7-8958-d4b3260e6b2c"
* entry[=].resource = referralToPractitionerExample01

* entry[+].fullUrl = "urn:uuid:64e7c9b4-1ee8-49b9-933b-0780d6834132"
* entry[=].resource = referralFromOrganizaitonExample01

* entry[+].fullUrl = "urn:uuid:928e8817-6a30-4676-b5be-c8c240b24738"
* entry[=].resource = referralToOrganizaitonExample01

* entry[+].fullUrl = "urn:uuid:7488ebe6-e2e2-4c7c-a23c-433eece9188d"
* entry[=].resource = referralToOrganizaitonDeptExample01

* entry[+].fullUrl = "urn:uuid:03245d0f-e6eb-44d6-a8cc-54458a8db4a4"
* entry[=].resource = referralFromOrganizaitonDeptExample01

* entry[+].fullUrl = "urn:uuid:b4503d76-f073-4631-8714-fdb9f19eb0da"
* entry[=].resource = purposeReferralExample01

* entry[+].fullUrl = "urn:uuid:f98f4149-81a0-47e2-94f8-dada91f4a76d"
* entry[=].resource = cc1ReferralExample01

* entry[+].fullUrl = "urn:uuid:c481759a-2d27-4b1f-b092-18f035bc1e87"
* entry[=].resource = cc2ReferralExample01

* entry[+].fullUrl = "urn:uuid:c9800289-c983-4a09-a948-caa14aea4d9e"
* entry[=].resource = piReferralExample01

* entry[+].fullUrl = "urn:uuid:63e74144-f400-4a12-98ed-c762f2365e27"
* entry[=].resource = ph1ReferralExample01

* entry[+].fullUrl = "urn:uuid:5d02ceab-84a8-4cd9-8adb-55e499542b4c"
* entry[=].resource = ph2ReferralExample01

* entry[+].fullUrl = "urn:uuid:006b9a2c-9a9f-4cef-869d-4af8e61d8b5e"
* entry[=].resource = alg1ReferralExample01

* entry[+].fullUrl = "urn:uuid:287e31c0-5c68-4cbb-8a4e-7aa02f93a8cf"
* entry[=].resource = alg1ReferralExample02

* entry[+].fullUrl = "urn:uuid:4aeaaea0-9401-4d61-8616-844bc7a106bb"
* entry[=].resource = psobsCommonExample01

* entry[+].fullUrl = "urn:uuid:9ada2459-bee2-47b9-ac2f-6568d9d9157f"
* entry[=].resource = ccourseReferralExample01

