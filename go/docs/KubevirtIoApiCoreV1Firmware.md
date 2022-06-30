# KubevirtIoApiCoreV1Firmware

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Bootloader** | [***KubevirtIoApiCoreV1Bootloader**](kubevirt.io.api.core.v1.Bootloader.md) | Settings to control the bootloader that is used. | [optional] [default to null]
**KernelBoot** | [***KubevirtIoApiCoreV1KernelBoot**](kubevirt.io.api.core.v1.KernelBoot.md) | Settings to set the kernel for booting. | [optional] [default to null]
**Serial** | **string** | The system-serial-number in SMBIOS | [optional] [default to null]
**Uuid** | **string** | UUID reported by the vmi bios. Defaults to a random generated uid. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


