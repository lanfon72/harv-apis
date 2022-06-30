# KubevirtIoApiCoreV1DomainSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chassis** | [**KubevirtIoApiCoreV1Chassis**](KubevirtIoApiCoreV1Chassis.md) | Chassis specifies the chassis info passed to the domain. | [optional] 
**clock** | [**KubevirtIoApiCoreV1Clock**](KubevirtIoApiCoreV1Clock.md) | Clock sets the clock and timers of the vmi. | [optional] 
**cpu** | [**KubevirtIoApiCoreV1CPU**](KubevirtIoApiCoreV1CPU.md) | CPU allow specified the detailed CPU topology inside the vmi. | [optional] 
**devices** | [**KubevirtIoApiCoreV1Devices**](KubevirtIoApiCoreV1Devices.md) | Devices allows adding disks, network interfaces, and others | 
**features** | [**KubevirtIoApiCoreV1Features**](KubevirtIoApiCoreV1Features.md) | Features like acpi, apic, hyperv, smm. | [optional] 
**firmware** | [**KubevirtIoApiCoreV1Firmware**](KubevirtIoApiCoreV1Firmware.md) | Firmware. | [optional] 
**io_threads_policy** | **str** | Controls whether or not disks will share IOThreads. Omitting IOThreadsPolicy disables use of IOThreads. One of: shared, auto | [optional] 
**launch_security** | [**KubevirtIoApiCoreV1LaunchSecurity**](KubevirtIoApiCoreV1LaunchSecurity.md) | Launch Security setting of the vmi. | [optional] 
**machine** | [**KubevirtIoApiCoreV1Machine**](KubevirtIoApiCoreV1Machine.md) | Machine type. | [optional] 
**memory** | [**KubevirtIoApiCoreV1Memory**](KubevirtIoApiCoreV1Memory.md) | Memory allow specifying the VMI memory features. | [optional] 
**resources** | [**KubevirtIoApiCoreV1ResourceRequirements**](KubevirtIoApiCoreV1ResourceRequirements.md) | Resources describes the Compute Resources required by this vmi. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


