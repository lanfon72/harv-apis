# KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSourceHttp

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CertConfigMap** | **string** | CertConfigMap is a configmap reference, containing a Certificate Authority(CA) public key, and a base64 encoded pem certificate | [optional] [default to null]
**ExtraHeaders** | **[]string** | ExtraHeaders is a list of strings containing extra headers to include with HTTP transfer requests | [optional] [default to null]
**SecretExtraHeaders** | **[]string** | SecretExtraHeaders is a list of Secret references, each containing an extra HTTP header that may include sensitive information | [optional] [default to null]
**SecretRef** | **string** | SecretRef A Secret reference, the secret should contain accessKeyId (user name) base64 encoded, and secretKey (password) also base64 encoded | [optional] [default to null]
**Url** | **string** | URL is the URL of the http(s) endpoint | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


