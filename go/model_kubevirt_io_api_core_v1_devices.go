/*
 * Harvester APIs
 *
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 * API version: v1beta1
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package harvester

type KubevirtIoApiCoreV1Devices struct {
	// Whether to attach the default graphics device or not. VNC will not be available if set to false. Defaults to true.
	AutoattachGraphicsDevice bool `json:"autoattachGraphicsDevice,omitempty"`
	// Whether to attach the Memory balloon device with default period. Period can be adjusted in virt-config. Defaults to true.
	AutoattachMemBalloon bool `json:"autoattachMemBalloon,omitempty"`
	// Whether to attach a pod network interface. Defaults to true.
	AutoattachPodInterface bool `json:"autoattachPodInterface,omitempty"`
	// Whether to attach the default serial console or not. Serial console access will not be available if set to false. Defaults to true.
	AutoattachSerialConsole bool `json:"autoattachSerialConsole,omitempty"`
	// Whether or not to enable virtio multi-queue for block devices. Defaults to false.
	BlockMultiQueue bool `json:"blockMultiQueue,omitempty"`
	// To configure and access client devices such as redirecting USB
	ClientPassthrough *KubevirtIoApiCoreV1ClientPassthroughDevices `json:"clientPassthrough,omitempty"`
	// DisableHotplug disabled the ability to hotplug disks.
	DisableHotplug bool `json:"disableHotplug,omitempty"`
	// Disks describes disks, cdroms and luns which are connected to the vmi.
	Disks []KubevirtIoApiCoreV1Disk `json:"disks,omitempty"`
	// Filesystems describes filesystem which is connected to the vmi.
	Filesystems []KubevirtIoApiCoreV1Filesystem `json:"filesystems,omitempty"`
	// Whether to attach a GPU device to the vmi.
	Gpus []KubevirtIoApiCoreV1Gpu `json:"gpus,omitempty"`
	// Whether to attach a host device to the vmi.
	HostDevices []KubevirtIoApiCoreV1HostDevice `json:"hostDevices,omitempty"`
	// Inputs describe input devices
	Inputs []KubevirtIoApiCoreV1Input `json:"inputs,omitempty"`
	// Interfaces describe network interfaces which are added to the vmi.
	Interfaces []KubevirtIoApiCoreV1Interface `json:"interfaces,omitempty"`
	// If specified, virtual network interfaces configured with a virtio bus will also enable the vhost multiqueue feature for network devices. The number of queues created depends on additional factors of the VirtualMachineInstance, like the number of guest CPUs.
	NetworkInterfaceMultiqueue bool `json:"networkInterfaceMultiqueue,omitempty"`
	// Whether to have random number generator from host
	Rng *KubevirtIoApiCoreV1Rng `json:"rng,omitempty"`
	// Whether to emulate a sound device.
	Sound *KubevirtIoApiCoreV1SoundDevice `json:"sound,omitempty"`
	// Whether to emulate a TPM device.
	Tpm *KubevirtIoApiCoreV1TpmDevice `json:"tpm,omitempty"`
	// Fall back to legacy virtio 0.9 support if virtio bus is selected on devices. This is helpful for old machines like CentOS6 or RHEL6 which do not understand virtio_non_transitional (virtio 1.0).
	UseVirtioTransitional bool `json:"useVirtioTransitional,omitempty"`
	// Watchdog describes a watchdog device which can be added to the vmi.
	Watchdog *KubevirtIoApiCoreV1Watchdog `json:"watchdog,omitempty"`
}