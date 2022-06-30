# KubevirtIoApiCoreV1CloudInitNoCloudSource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NetworkData** | **string** | NetworkData contains NoCloud inline cloud-init networkdata. | [optional] [default to null]
**NetworkDataBase64** | **string** | NetworkDataBase64 contains NoCloud cloud-init networkdata as a base64 encoded string. | [optional] [default to null]
**NetworkDataSecretRef** | [***K8sIoV1LocalObjectReference**](k8s.io.v1.LocalObjectReference.md) | NetworkDataSecretRef references a k8s secret that contains NoCloud networkdata. | [optional] [default to null]
**SecretRef** | [***K8sIoV1LocalObjectReference**](k8s.io.v1.LocalObjectReference.md) | UserDataSecretRef references a k8s secret that contains NoCloud userdata. | [optional] [default to null]
**UserData** | **string** | UserData contains NoCloud inline cloud-init userdata. | [optional] [default to null]
**UserDataBase64** | **string** | UserDataBase64 contains NoCloud cloud-init userdata as a base64 encoded string. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


