
Instance: bundleReferralExample01
InstanceOf: Bundle
Usage: #example

Description: "bundleReferralExample01 診療情報提供書Bundle"

* meta.profile[+] = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Bundle_eReferral"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
* identifier.value = "123456"
* type = #document

* timestamp = "2021-11-26T10:00:00+09:00"

* entry[+].fullUrl = "urn:uuid:c8d39583-4633-46b0-824f-f97b0920921c"
* entry[=].resource = compositionReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:719bf777-471d-4800-a807-8309b921e737"
* entry[=].resource = jppatientExample01Inline

* entry[+].fullUrl = "urn:uuid:4dbc6883-913b-4ff4-88cb-1a85f1370df8"
* entry[=].resource = encounterReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:7a8425eb-6ae0-4665-927d-f816965ed303"
* entry[=].resource = referralFromPractitionerExample01Inline

* entry[+].fullUrl = "urn:uuid:968b9ba2-6a9d-4579-ac1e-1ad9572f0224"
* entry[=].resource = referralToPractitionerExample01Inline

* entry[+].fullUrl = "urn:uuid:ceee943f-3736-4bc4-a607-073fb28811f7"
* entry[=].resource = referralFromOrganizationExample01Inline

* entry[+].fullUrl = "urn:uuid:36288a88-173e-4598-b867-98266570f441"
* entry[=].resource = referralToOrganizationExample01Inline

* entry[+].fullUrl = "urn:uuid:eb7834b3-1952-4353-88c6-6ccd273d3454"
* entry[=].resource = referralToOrganizationDeptExample01Inline

* entry[+].fullUrl = "urn:uuid:97996c6e-cc97-4f20-9290-cdffd9edc4d0"
* entry[=].resource = referralFromOrganizationDeptExample01Inline

* entry[+].fullUrl = "urn:uuid:5f690240-db66-41da-86a7-2dd782762730"
* entry[=].resource = purposeReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:649f1b94-f6c9-4cd2-aacd-9a47c0b5e87b"
* entry[=].resource = cc1ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:49173419-e1d1-47c9-8e66-ae8c90b77e16"
* entry[=].resource = cc2ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:712de6a8-a38b-47b7-b142-ef3f8fe40ede"
* entry[=].resource = piReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:e8c3f80a-08c9-44f3-9c89-a1830fbfb49b"
* entry[=].resource = ph1ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:28f57955-18d1-4fd1-8b8c-7c36aad93a7c"
* entry[=].resource = ph2ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:2b2ec889-247c-4324-b535-c6953ac56542"
* entry[=].resource = alg1ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:7c65e153-8135-43e3-8a24-c20c42ce53fe"
* entry[=].resource = alg1ReferralExample02Inline

* entry[+].fullUrl = "urn:uuid:4169507e-29db-4fd0-a7eb-7f3148847358"
* entry[=].resource = psobsCommonExample01Inline

* entry[+].fullUrl = "urn:uuid:5dca97c2-c979-402f-afd7-6c18a42f29ea"
* entry[=].resource = ccourseReferralExample01Inline

