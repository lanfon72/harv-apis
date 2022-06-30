# KubevirtIoApiCoreV1Devices

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AutoattachGraphicsDevice** | **bool** | Whether to attach the default graphics device or not. VNC will not be available if set to false. Defaults to true. | [optional] [default to null]
**AutoattachMemBalloon** | **bool** | Whether to attach the Memory balloon device with default period. Period can be adjusted in virt-config. Defaults to true. | [optional] [default to null]
**AutoattachPodInterface** | **bool** | Whether to attach a pod network interface. Defaults to true. | [optional] [default to null]
**AutoattachSerialConsole** | **bool** | Whether to attach the default serial console or not. Serial console access will not be available if set to false. Defaults to true. | [optional] [default to null]
**BlockMultiQueue** | **bool** | Whether or not to enable virtio multi-queue for block devices. Defaults to false. | [optional] [default to null]
**ClientPassthrough** | [***KubevirtIoApiCoreV1ClientPassthroughDevices**](kubevirt.io.api.core.v1.ClientPassthroughDevices.md) | To configure and access client devices such as redirecting USB | [optional] [default to null]
**DisableHotplug** | **bool** | DisableHotplug disabled the ability to hotplug disks. | [optional] [default to null]
**Disks** | [**[]KubevirtIoApiCoreV1Disk**](kubevirt.io.api.core.v1.Disk.md) | Disks describes disks, cdroms and luns which are connected to the vmi. | [optional] [default to null]
**Filesystems** | [**[]KubevirtIoApiCoreV1Filesystem**](kubevirt.io.api.core.v1.Filesystem.md) | Filesystems describes filesystem which is connected to the vmi. | [optional] [default to null]
**Gpus** | [**[]KubevirtIoApiCoreV1Gpu**](kubevirt.io.api.core.v1.GPU.md) | Whether to attach a GPU device to the vmi. | [optional] [default to null]
**HostDevices** | [**[]KubevirtIoApiCoreV1HostDevice**](kubevirt.io.api.core.v1.HostDevice.md) | Whether to attach a host device to the vmi. | [optional] [default to null]
**Inputs** | [**[]KubevirtIoApiCoreV1Input**](kubevirt.io.api.core.v1.Input.md) | Inputs describe input devices | [optional] [default to null]
**Interfaces** | [**[]KubevirtIoApiCoreV1Interface**](kubevirt.io.api.core.v1.Interface.md) | Interfaces describe network interfaces which are added to the vmi. | [optional] [default to null]
**NetworkInterfaceMultiqueue** | **bool** | If specified, virtual network interfaces configured with a virtio bus will also enable the vhost multiqueue feature for network devices. The number of queues created depends on additional factors of the VirtualMachineInstance, like the number of guest CPUs. | [optional] [default to null]
**Rng** | [***KubevirtIoApiCoreV1Rng**](kubevirt.io.api.core.v1.Rng.md) | Whether to have random number generator from host | [optional] [default to null]
**Sound** | [***KubevirtIoApiCoreV1SoundDevice**](kubevirt.io.api.core.v1.SoundDevice.md) | Whether to emulate a sound device. | [optional] [default to null]
**Tpm** | [***KubevirtIoApiCoreV1TpmDevice**](kubevirt.io.api.core.v1.TPMDevice.md) | Whether to emulate a TPM device. | [optional] [default to null]
**UseVirtioTransitional** | **bool** | Fall back to legacy virtio 0.9 support if virtio bus is selected on devices. This is helpful for old machines like CentOS6 or RHEL6 which do not understand virtio_non_transitional (virtio 1.0). | [optional] [default to null]
**Watchdog** | [***KubevirtIoApiCoreV1Watchdog**](kubevirt.io.api.core.v1.Watchdog.md) | Watchdog describes a watchdog device which can be added to the vmi. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


