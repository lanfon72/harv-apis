# KubevirtIoApiCoreV1ConfigMapVolumeSource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **string** | Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names | [optional] [default to null]
**Optional** | **bool** | Specify whether the ConfigMap or it&#39;s keys must be defined | [optional] [default to null]
**VolumeLabel** | **string** | The volume label of the resulting disk inside the VMI. Different bootstrapping mechanisms require different values. Typical values are \&quot;cidata\&quot; (cloud-init), \&quot;config-2\&quot; (cloud-init) or \&quot;OEMDRV\&quot; (kickstart). | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


