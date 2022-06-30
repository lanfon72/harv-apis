# KubevirtIoApiCoreV1SysprepSource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ConfigMap** | [***K8sIoV1LocalObjectReference**](k8s.io.v1.LocalObjectReference.md) | ConfigMap references a ConfigMap that contains Sysprep answer file named autounattend.xml that should be attached as disk of CDROM type. | [optional] [default to null]
**Secret** | [***K8sIoV1LocalObjectReference**](k8s.io.v1.LocalObjectReference.md) | Secret references a k8s Secret that contains Sysprep answer file named autounattend.xml that should be attached as disk of CDROM type. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


