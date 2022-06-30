# KubevirtIoApiCoreV1DiskTarget

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Bus** | **string** | Bus indicates the type of disk device to emulate. supported values: virtio, sata, scsi. | [optional] [default to null]
**PciAddress** | **string** | If specified, the virtual disk will be placed on the guests pci address with the specified PCI address. For example: 0000:81:01.10 | [optional] [default to null]
**Readonly** | **bool** | ReadOnly. Defaults to false. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


