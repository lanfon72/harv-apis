# KubevirtIoApiCoreV1SysprepSource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**config_map** | [**K8sIoV1LocalObjectReference**](K8sIoV1LocalObjectReference.md) | ConfigMap references a ConfigMap that contains Sysprep answer file named autounattend.xml that should be attached as disk of CDROM type. | [optional] 
**secret** | [**K8sIoV1LocalObjectReference**](K8sIoV1LocalObjectReference.md) | Secret references a k8s Secret that contains Sysprep answer file named autounattend.xml that should be attached as disk of CDROM type. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


