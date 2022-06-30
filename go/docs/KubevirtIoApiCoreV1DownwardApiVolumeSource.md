# KubevirtIoApiCoreV1DownwardApiVolumeSource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Fields** | [**[]K8sIoV1DownwardApiVolumeFile**](k8s.io.v1.DownwardAPIVolumeFile.md) | Fields is a list of downward API volume file | [optional] [default to null]
**VolumeLabel** | **string** | The volume label of the resulting disk inside the VMI. Different bootstrapping mechanisms require different values. Typical values are \&quot;cidata\&quot; (cloud-init), \&quot;config-2\&quot; (cloud-init) or \&quot;OEMDRV\&quot; (kickstart). | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


