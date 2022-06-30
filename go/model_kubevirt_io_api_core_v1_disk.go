/*
 * Harvester APIs
 *
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 * API version: v1beta1
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package harvester

type KubevirtIoApiCoreV1Disk struct {
	// If specified, the virtual disk will be presented with the given block sizes.
	BlockSize *KubevirtIoApiCoreV1BlockSize `json:"blockSize,omitempty"`
	// BootOrder is an integer value > 0, used to determine ordering of boot devices. Lower values take precedence. Each disk or interface that has a boot order must have a unique value. Disks without a boot order are not tried if a disk with a boot order exists.
	BootOrder int32 `json:"bootOrder,omitempty"`
	// Cache specifies which kvm disk cache mode should be used. Supported values are: CacheNone, CacheWriteThrough.
	Cache string `json:"cache,omitempty"`
	// Attach a volume as a cdrom to the vmi.
	Cdrom *KubevirtIoApiCoreV1CdRomTarget `json:"cdrom,omitempty"`
	// dedicatedIOThread indicates this disk should have an exclusive IO Thread. Enabling this implies useIOThreads = true. Defaults to false.
	DedicatedIOThread bool `json:"dedicatedIOThread,omitempty"`
	// Attach a volume as a disk to the vmi.
	Disk *KubevirtIoApiCoreV1DiskTarget `json:"disk,omitempty"`
	// IO specifies which QEMU disk IO mode should be used. Supported values are: native, default, threads.
	Io string `json:"io,omitempty"`
	// Attach a volume as a LUN to the vmi.
	Lun *KubevirtIoApiCoreV1LunTarget `json:"lun,omitempty"`
	// Name is the device name
	Name string `json:"name"`
	// Serial provides the ability to specify a serial number for the disk device.
	Serial string `json:"serial,omitempty"`
	// If specified the disk is made sharable and multiple write from different VMs are permitted
	Shareable bool `json:"shareable,omitempty"`
	// If specified, disk address and its tag will be provided to the guest via config drive metadata
	Tag string `json:"tag,omitempty"`
}