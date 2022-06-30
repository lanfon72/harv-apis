# KubevirtIoApiCoreV1Disk

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BlockSize** | [***KubevirtIoApiCoreV1BlockSize**](kubevirt.io.api.core.v1.BlockSize.md) | If specified, the virtual disk will be presented with the given block sizes. | [optional] [default to null]
**BootOrder** | **int32** | BootOrder is an integer value &gt; 0, used to determine ordering of boot devices. Lower values take precedence. Each disk or interface that has a boot order must have a unique value. Disks without a boot order are not tried if a disk with a boot order exists. | [optional] [default to null]
**Cache** | **string** | Cache specifies which kvm disk cache mode should be used. Supported values are: CacheNone, CacheWriteThrough. | [optional] [default to null]
**Cdrom** | [***KubevirtIoApiCoreV1CdRomTarget**](kubevirt.io.api.core.v1.CDRomTarget.md) | Attach a volume as a cdrom to the vmi. | [optional] [default to null]
**DedicatedIOThread** | **bool** | dedicatedIOThread indicates this disk should have an exclusive IO Thread. Enabling this implies useIOThreads &#x3D; true. Defaults to false. | [optional] [default to null]
**Disk** | [***KubevirtIoApiCoreV1DiskTarget**](kubevirt.io.api.core.v1.DiskTarget.md) | Attach a volume as a disk to the vmi. | [optional] [default to null]
**Io** | **string** | IO specifies which QEMU disk IO mode should be used. Supported values are: native, default, threads. | [optional] [default to null]
**Lun** | [***KubevirtIoApiCoreV1LunTarget**](kubevirt.io.api.core.v1.LunTarget.md) | Attach a volume as a LUN to the vmi. | [optional] [default to null]
**Name** | **string** | Name is the device name | [default to null]
**Serial** | **string** | Serial provides the ability to specify a serial number for the disk device. | [optional] [default to null]
**Shareable** | **bool** | If specified the disk is made sharable and multiple write from different VMs are permitted | [optional] [default to null]
**Tag** | **string** | If specified, disk address and its tag will be provided to the guest via config drive metadata | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


