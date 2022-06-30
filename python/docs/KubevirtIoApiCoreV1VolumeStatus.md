# KubevirtIoApiCoreV1VolumeStatus

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hotplug_volume** | [**KubevirtIoApiCoreV1HotplugVolumeStatus**](KubevirtIoApiCoreV1HotplugVolumeStatus.md) | If the volume is hotplug, this will contain the hotplug status. | [optional] 
**message** | **str** | Message is a detailed message about the current hotplug volume phase | [optional] 
**name** | **str** | Name is the name of the volume | [default to '']
**persistent_volume_claim_info** | [**KubevirtIoApiCoreV1PersistentVolumeClaimInfo**](KubevirtIoApiCoreV1PersistentVolumeClaimInfo.md) | PersistentVolumeClaimInfo is information about the PVC that handler requires during start flow | [optional] 
**phase** | **str** | Phase is the phase | [optional] 
**reason** | **str** | Reason is a brief description of why we are in the current hotplug volume phase | [optional] 
**size** | **int** | Represents the size of the volume | [optional] 
**target** | **str** | Target is the target name used when adding the volume to the VM, eg: vda | [default to '']

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


