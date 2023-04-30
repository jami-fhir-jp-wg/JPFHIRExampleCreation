// -------------------------------
// 診療情報提供書Bundle の定義
// -------------------------------
// Instance　ヘッダー設定　必須　１回のみ
// パラメータ：Instance名
// Description　Description設定　任意　１回のみ
// パラメータ：Description文字列
// Description　meta.lastUpdated設定　必須　１回のみ
// パラメータ：なし（固定値が設定される）
// Description　診療情報固有meta.profile設定　必須　１回のみ
// パラメータ：Profile文字列
// Description　meta.profile設定　任意　繰り返し
// パラメータ：Profile文字列
// Description　文書IDを表すIdentifier設定　必須　１回のみ
// パラメータ：文書ID文字列
// Description　文書日時設定　必須　１回のみ
// パラメータ：文書日付文字列（例：2023-04-01）、文書時刻文字列（例：12:23:00）
// Description　文書entry設定　必須　繰り返し
// パラメータ：URL、リソースインスタンス名
// Description　文書entry設定　必須　繰り返し
// パラメータ：URL、リソースインスタンス名

Instance: bundleReferralExample01
InstanceOf: Bundle
Usage: #example

Description: "bundleReferralExample01 診療情報提供書Bundle"

* meta.lastUpdated = "2023-04-01T10:00:00+09:00"

* meta.profile[+] = "http://jpfhir.jp/fhir/eReferral/StructureDefinition/JP_Bundle_eReferral"

* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/documentInstance-identifier"
* identifier.value = "123456"
* type = #document

* timestamp = "2021-11-26T10:00:00+09:00"

* entry[+].fullUrl = "urn:uuid:7ebf92d1-a288-4624-b0d9-72af4f2094c4"
* entry[=].resource = compositionReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:4990d943-e368-40dc-8c4c-4c688d40864a"
* entry[=].resource = jppatientExample01Inline

* entry[+].fullUrl = "urn:uuid:4fc29e95-818c-4037-824e-563e432ce9b1"
* entry[=].resource = encounterReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:3386ace6-ef6f-4555-b1b1-e47ca97199fb"
* entry[=].resource = referralFromPractitionerExample01Inline

* entry[+].fullUrl = "urn:uuid:6ab09396-bef9-4afd-bd1e-9b7b90447ccf"
* entry[=].resource = referralToPractitionerExample01Inline

* entry[+].fullUrl = "urn:uuid:46efcada-5df7-4527-85d9-39c8694f36c2"
* entry[=].resource = referralFromOrganizationExample01Inline

* entry[+].fullUrl = "urn:uuid:55dc102f-af84-45ff-9e21-6339b4fff477"
* entry[=].resource = referralToOrganizationExample01Inline

* entry[+].fullUrl = "urn:uuid:77e0e8b5-2c50-402c-9ecd-0d26bb59901a"
* entry[=].resource = referralToOrganizationDeptExample01Inline

* entry[+].fullUrl = "urn:uuid:6e9e91a4-9e63-45bb-802e-6b16c1395774"
* entry[=].resource = referralFromOrganizationDeptExample01Inline

* entry[+].fullUrl = "urn:uuid:c59bc742-ba57-4f78-823a-6844ffca3904"
* entry[=].resource = purposeReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:542c33dc-0c9f-4764-86d8-1a2b17e73e8b"
* entry[=].resource = cc1ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:c538613e-01e3-47a2-8eb0-b335d90268e6"
* entry[=].resource = cc2ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:d0548903-1b44-4a73-965b-e15782477a83"
* entry[=].resource = piReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:29bea7f7-70ac-4bca-b5de-a2fad6793c62"
* entry[=].resource = ph1ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:3f49855a-234a-41a0-865e-f631b65a345f"
* entry[=].resource = ph2ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:53f5d69e-70b5-4a66-afa5-fca00a3ff577"
* entry[=].resource = alg1ReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:88dd768b-663c-4fde-9d9b-5ecb3ab777d4"
* entry[=].resource = alg1ReferralExample02Inline

* entry[+].fullUrl = "urn:uuid:e9806251-8a4c-4335-be1b-25d47d4019a4"
* entry[=].resource = psobsCommonExample01Inline

* entry[+].fullUrl = "urn:uuid:90e71a3e-e2f8-4567-9294-48d3af243848"
* entry[=].resource = ccourseReferralExample01Inline

* entry[+].fullUrl = "urn:uuid:68ff6a2f-2f29-4ee5-a8d4-92fc8ddf93d9"
* entry[=].resource = MedicationRequestExample01Inline

* entry[+].fullUrl = "urn:uuid:32a7c6d2-5315-45ef-89d9-c3cb7b9acad0"
* entry[=].resource = JP-MedReq-ePreData-Example-fukintouByDayInline


