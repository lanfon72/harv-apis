# KubevirtIoApiCoreV1Devices

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**autoattach_graphics_device** | **bool** | Whether to attach the default graphics device or not. VNC will not be available if set to false. Defaults to true. | [optional] 
**autoattach_mem_balloon** | **bool** | Whether to attach the Memory balloon device with default period. Period can be adjusted in virt-config. Defaults to true. | [optional] 
**autoattach_pod_interface** | **bool** | Whether to attach a pod network interface. Defaults to true. | [optional] 
**autoattach_serial_console** | **bool** | Whether to attach the default serial console or not. Serial console access will not be available if set to false. Defaults to true. | [optional] 
**block_multi_queue** | **bool** | Whether or not to enable virtio multi-queue for block devices. Defaults to false. | [optional] 
**client_passthrough** | [**KubevirtIoApiCoreV1ClientPassthroughDevices**](KubevirtIoApiCoreV1ClientPassthroughDevices.md) | To configure and access client devices such as redirecting USB | [optional] 
**disable_hotplug** | **bool** | DisableHotplug disabled the ability to hotplug disks. | [optional] 
**disks** | [**list[KubevirtIoApiCoreV1Disk]**](KubevirtIoApiCoreV1Disk.md) | Disks describes disks, cdroms and luns which are connected to the vmi. | [optional] 
**filesystems** | [**list[KubevirtIoApiCoreV1Filesystem]**](KubevirtIoApiCoreV1Filesystem.md) | Filesystems describes filesystem which is connected to the vmi. | [optional] 
**gpus** | [**list[KubevirtIoApiCoreV1GPU]**](KubevirtIoApiCoreV1GPU.md) | Whether to attach a GPU device to the vmi. | [optional] 
**host_devices** | [**list[KubevirtIoApiCoreV1HostDevice]**](KubevirtIoApiCoreV1HostDevice.md) | Whether to attach a host device to the vmi. | [optional] 
**inputs** | [**list[KubevirtIoApiCoreV1Input]**](KubevirtIoApiCoreV1Input.md) | Inputs describe input devices | [optional] 
**interfaces** | [**list[KubevirtIoApiCoreV1Interface]**](KubevirtIoApiCoreV1Interface.md) | Interfaces describe network interfaces which are added to the vmi. | [optional] 
**network_interface_multiqueue** | **bool** | If specified, virtual network interfaces configured with a virtio bus will also enable the vhost multiqueue feature for network devices. The number of queues created depends on additional factors of the VirtualMachineInstance, like the number of guest CPUs. | [optional] 
**rng** | [**KubevirtIoApiCoreV1Rng**](KubevirtIoApiCoreV1Rng.md) | Whether to have random number generator from host | [optional] 
**sound** | [**KubevirtIoApiCoreV1SoundDevice**](KubevirtIoApiCoreV1SoundDevice.md) | Whether to emulate a sound device. | [optional] 
**tpm** | [**KubevirtIoApiCoreV1TPMDevice**](KubevirtIoApiCoreV1TPMDevice.md) | Whether to emulate a TPM device. | [optional] 
**use_virtio_transitional** | **bool** | Fall back to legacy virtio 0.9 support if virtio bus is selected on devices. This is helpful for old machines like CentOS6 or RHEL6 which do not understand virtio_non_transitional (virtio 1.0). | [optional] 
**watchdog** | [**KubevirtIoApiCoreV1Watchdog**](KubevirtIoApiCoreV1Watchdog.md) | Watchdog describes a watchdog device which can be added to the vmi. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


