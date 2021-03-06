/*
 * Harvester APIs
 *
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 * API version: v1beta1
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package harvester

// Volume represents a named volume in a vmi.
type KubevirtIoApiCoreV1Volume struct {
	// CloudInitConfigDrive represents a cloud-init Config Drive user-data source. The Config Drive data will be added as a disk to the vmi. A proper cloud-init installation is required inside the guest. More info: https://cloudinit.readthedocs.io/en/latest/topics/datasources/configdrive.html
	CloudInitConfigDrive *KubevirtIoApiCoreV1CloudInitConfigDriveSource `json:"cloudInitConfigDrive,omitempty"`
	// CloudInitNoCloud represents a cloud-init NoCloud user-data source. The NoCloud data will be added as a disk to the vmi. A proper cloud-init installation is required inside the guest. More info: http://cloudinit.readthedocs.io/en/latest/topics/datasources/nocloud.html
	CloudInitNoCloud *KubevirtIoApiCoreV1CloudInitNoCloudSource `json:"cloudInitNoCloud,omitempty"`
	// ConfigMapSource represents a reference to a ConfigMap in the same namespace. More info: https://kubernetes.io/docs/tasks/configure-pod-container/configure-pod-configmap/
	ConfigMap *KubevirtIoApiCoreV1ConfigMapVolumeSource `json:"configMap,omitempty"`
	// ContainerDisk references a docker image, embedding a qcow or raw disk. More info: https://kubevirt.gitbooks.io/user-guide/registry-disk.html
	ContainerDisk *KubevirtIoApiCoreV1ContainerDiskSource `json:"containerDisk,omitempty"`
	// DataVolume represents the dynamic creation a PVC for this volume as well as the process of populating that PVC with a disk image.
	DataVolume *KubevirtIoApiCoreV1DataVolumeSource `json:"dataVolume,omitempty"`
	// DownwardAPI represents downward API about the pod that should populate this volume
	DownwardAPI *KubevirtIoApiCoreV1DownwardApiVolumeSource `json:"downwardAPI,omitempty"`
	// DownwardMetrics adds a very small disk to VMIs which contains a limited view of host and guest metrics. The disk content is compatible with vhostmd (https://github.com/vhostmd/vhostmd) and vm-dump-metrics.
	DownwardMetrics *KubevirtIoApiCoreV1DownwardMetricsVolumeSource `json:"downwardMetrics,omitempty"`
	// EmptyDisk represents a temporary disk which shares the vmis lifecycle. More info: https://kubevirt.gitbooks.io/user-guide/disks-and-volumes.html
	EmptyDisk *KubevirtIoApiCoreV1EmptyDiskSource `json:"emptyDisk,omitempty"`
	// Ephemeral is a special volume source that \"wraps\" specified source and provides copy-on-write image on top of it.
	Ephemeral *KubevirtIoApiCoreV1EphemeralVolumeSource `json:"ephemeral,omitempty"`
	// HostDisk represents a disk created on the cluster level
	HostDisk *KubevirtIoApiCoreV1HostDisk `json:"hostDisk,omitempty"`
	// Volume's name. Must be a DNS_LABEL and unique within the vmi. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
	Name string `json:"name"`
	// PersistentVolumeClaimVolumeSource represents a reference to a PersistentVolumeClaim in the same namespace. Directly attached to the vmi via qemu. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims
	PersistentVolumeClaim *KubevirtIoApiCoreV1PersistentVolumeClaimVolumeSource `json:"persistentVolumeClaim,omitempty"`
	// SecretVolumeSource represents a reference to a secret data in the same namespace. More info: https://kubernetes.io/docs/concepts/configuration/secret/
	Secret *KubevirtIoApiCoreV1SecretVolumeSource `json:"secret,omitempty"`
	// ServiceAccountVolumeSource represents a reference to a service account. There can only be one volume of this type! More info: https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/
	ServiceAccount *KubevirtIoApiCoreV1ServiceAccountVolumeSource `json:"serviceAccount,omitempty"`
	// Represents a Sysprep volume source.
	Sysprep *KubevirtIoApiCoreV1SysprepSource `json:"sysprep,omitempty"`
}
