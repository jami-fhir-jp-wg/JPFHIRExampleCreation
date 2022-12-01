
Instance: bundleReferralExample01
InstanceOf: Bundle
Usage: #example

Description: "bundleReferralExample01 診療情報提供書Bundle"

* meta.profile[+] = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Bundle_eReferral"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
* identifier.value = "123456"
* type = #document

* timestamp = "2021-11-26T10:00:00+09:00"

* entry[+].fullUrl = "urn:uuid:ccd17cec-eebd-412d-9568-6fedb110e567"
* entry[=].resource = compositionReferralExample01

* entry[+].fullUrl = "urn:uuid:f9a0d875-2413-4653-9ce0-cd5b1a5383f6"
* entry[=].resource = jppatientExample01

* entry[+].fullUrl = "urn:uuid:d23aea10-20e7-4266-9eca-6ba53966e96f"
* entry[=].resource = referralFromPractitionerExample01

* entry[+].fullUrl = "urn:uuid:196dd763-9939-4b21-909f-0d3883188064"
* entry[=].resource = referralToPractitionerExample01

* entry[+].fullUrl = "urn:uuid:4be13836-d9c5-4156-976e-7ada7ad6ec5f"
* entry[=].resource = referralFromOrganizaitonExample01

* entry[+].fullUrl = "urn:uuid:b9603e8d-773d-406d-889d-42bcaf19bd84"
* entry[=].resource = referralToOrganizaitonExample01

* entry[+].fullUrl = "urn:uuid:d9b31062-ee2d-4c24-9bec-8a2e301341c5"
* entry[=].resource = referralToOrganizaitonDeptExample01

* entry[+].fullUrl = "urn:uuid:69144e08-bb82-4043-b985-7a41489d9c2f"
* entry[=].resource = referralFromOrganizaitonDeptExample01

* entry[+].fullUrl = "urn:uuid:f6e5fc5f-224c-41c3-9f0c-249ba95a9a9e"
* entry[=].resource = purposeReferralExample01

* entry[+].fullUrl = "urn:uuid:c66c535b-bfb0-401a-81b6-08de6bcbd823"
* entry[=].resource = cc1ReferralExample01

* entry[+].fullUrl = "urn:uuid:5d872336-74b6-4b69-a443-7ade800a3cab"
* entry[=].resource = cc2ReferralExample01

* entry[+].fullUrl = "urn:uuid:0003d3f9-78dd-42e1-9c3d-a1b777d8d5aa"
* entry[=].resource = piReferralExample01

* entry[+].fullUrl = "urn:uuid:f3ff258e-815e-44eb-a959-cb89bd92a42d"
* entry[=].resource = ph1ReferralExample01

* entry[+].fullUrl = "urn:uuid:64fe4ca4-513b-44c1-97d9-474db6b8df2a"
* entry[=].resource = ph2ReferralExample01

* entry[+].fullUrl = "urn:uuid:3099ff3e-1f37-4c6b-a4f4-17ae51aaa8e6"
* entry[=].resource = alg1ReferralExample01

* entry[+].fullUrl = "urn:uuid:f2a78877-af3a-41b0-88c7-0b56f75d610c"
* entry[=].resource = alg1ReferralExample02

* entry[+].fullUrl = "urn:uuid:197e0d65-099e-401d-b5fb-2f64ffe5fe4d"
* entry[=].resource = psobsCommonExample01

* entry[+].fullUrl = "urn:uuid:eb4085b8-1850-441c-8c8a-9e11febf0c97"
* entry[=].resource = ccourseReferralExample01

