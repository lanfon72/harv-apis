# KubevirtIoApiCoreV1VolumeStatus

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**HotplugVolume** | [***KubevirtIoApiCoreV1HotplugVolumeStatus**](kubevirt.io.api.core.v1.HotplugVolumeStatus.md) | If the volume is hotplug, this will contain the hotplug status. | [optional] [default to null]
**Message** | **string** | Message is a detailed message about the current hotplug volume phase | [optional] [default to null]
**Name** | **string** | Name is the name of the volume | [default to null]
**PersistentVolumeClaimInfo** | [***KubevirtIoApiCoreV1PersistentVolumeClaimInfo**](kubevirt.io.api.core.v1.PersistentVolumeClaimInfo.md) | PersistentVolumeClaimInfo is information about the PVC that handler requires during start flow | [optional] [default to null]
**Phase** | **string** | Phase is the phase | [optional] [default to null]
**Reason** | **string** | Reason is a brief description of why we are in the current hotplug volume phase | [optional] [default to null]
**Size** | **int64** | Represents the size of the volume | [optional] [default to null]
**Target** | **string** | Target is the target name used when adding the volume to the VM, eg: vda | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


