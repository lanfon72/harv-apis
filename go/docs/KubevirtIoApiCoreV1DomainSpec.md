# KubevirtIoApiCoreV1DomainSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Chassis** | [***KubevirtIoApiCoreV1Chassis**](kubevirt.io.api.core.v1.Chassis.md) | Chassis specifies the chassis info passed to the domain. | [optional] [default to null]
**Clock** | [***KubevirtIoApiCoreV1Clock**](kubevirt.io.api.core.v1.Clock.md) | Clock sets the clock and timers of the vmi. | [optional] [default to null]
**Cpu** | [***KubevirtIoApiCoreV1Cpu**](kubevirt.io.api.core.v1.CPU.md) | CPU allow specified the detailed CPU topology inside the vmi. | [optional] [default to null]
**Devices** | [***KubevirtIoApiCoreV1Devices**](kubevirt.io.api.core.v1.Devices.md) | Devices allows adding disks, network interfaces, and others | [default to null]
**Features** | [***KubevirtIoApiCoreV1Features**](kubevirt.io.api.core.v1.Features.md) | Features like acpi, apic, hyperv, smm. | [optional] [default to null]
**Firmware** | [***KubevirtIoApiCoreV1Firmware**](kubevirt.io.api.core.v1.Firmware.md) | Firmware. | [optional] [default to null]
**IoThreadsPolicy** | **string** | Controls whether or not disks will share IOThreads. Omitting IOThreadsPolicy disables use of IOThreads. One of: shared, auto | [optional] [default to null]
**LaunchSecurity** | [***KubevirtIoApiCoreV1LaunchSecurity**](kubevirt.io.api.core.v1.LaunchSecurity.md) | Launch Security setting of the vmi. | [optional] [default to null]
**Machine** | [***KubevirtIoApiCoreV1Machine**](kubevirt.io.api.core.v1.Machine.md) | Machine type. | [optional] [default to null]
**Memory** | [***KubevirtIoApiCoreV1Memory**](kubevirt.io.api.core.v1.Memory.md) | Memory allow specifying the VMI memory features. | [optional] [default to null]
**Resources** | [***KubevirtIoApiCoreV1ResourceRequirements**](kubevirt.io.api.core.v1.ResourceRequirements.md) | Resources describes the Compute Resources required by this vmi. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


