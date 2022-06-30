# KubevirtIoApiCoreV1AddVolumeOptions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Disk** | [***KubevirtIoApiCoreV1Disk**](kubevirt.io.api.core.v1.Disk.md) | Disk represents the hotplug disk that will be plugged into the running VMI | [default to null]
**DryRun** | **[]string** | When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed | [optional] [default to null]
**Name** | **string** | Name represents the name that will be used to map the disk to the corresponding volume. This overrides any name set inside the Disk struct itself. | [default to null]
**VolumeSource** | [***KubevirtIoApiCoreV1HotplugVolumeSource**](kubevirt.io.api.core.v1.HotplugVolumeSource.md) | VolumeSource represents the source of the volume to map to the disk. | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


