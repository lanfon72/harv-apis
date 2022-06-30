# KubevirtIoApiCoreV1Volume

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cloud_init_config_drive** | [**KubevirtIoApiCoreV1CloudInitConfigDriveSource**](KubevirtIoApiCoreV1CloudInitConfigDriveSource.md) | CloudInitConfigDrive represents a cloud-init Config Drive user-data source. The Config Drive data will be added as a disk to the vmi. A proper cloud-init installation is required inside the guest. More info: https://cloudinit.readthedocs.io/en/latest/topics/datasources/configdrive.html | [optional] 
**cloud_init_no_cloud** | [**KubevirtIoApiCoreV1CloudInitNoCloudSource**](KubevirtIoApiCoreV1CloudInitNoCloudSource.md) | CloudInitNoCloud represents a cloud-init NoCloud user-data source. The NoCloud data will be added as a disk to the vmi. A proper cloud-init installation is required inside the guest. More info: http://cloudinit.readthedocs.io/en/latest/topics/datasources/nocloud.html | [optional] 
**config_map** | [**KubevirtIoApiCoreV1ConfigMapVolumeSource**](KubevirtIoApiCoreV1ConfigMapVolumeSource.md) | ConfigMapSource represents a reference to a ConfigMap in the same namespace. More info: https://kubernetes.io/docs/tasks/configure-pod-container/configure-pod-configmap/ | [optional] 
**container_disk** | [**KubevirtIoApiCoreV1ContainerDiskSource**](KubevirtIoApiCoreV1ContainerDiskSource.md) | ContainerDisk references a docker image, embedding a qcow or raw disk. More info: https://kubevirt.gitbooks.io/user-guide/registry-disk.html | [optional] 
**data_volume** | [**KubevirtIoApiCoreV1DataVolumeSource**](KubevirtIoApiCoreV1DataVolumeSource.md) | DataVolume represents the dynamic creation a PVC for this volume as well as the process of populating that PVC with a disk image. | [optional] 
**downward_api** | [**KubevirtIoApiCoreV1DownwardAPIVolumeSource**](KubevirtIoApiCoreV1DownwardAPIVolumeSource.md) | DownwardAPI represents downward API about the pod that should populate this volume | [optional] 
**downward_metrics** | [**KubevirtIoApiCoreV1DownwardMetricsVolumeSource**](KubevirtIoApiCoreV1DownwardMetricsVolumeSource.md) | DownwardMetrics adds a very small disk to VMIs which contains a limited view of host and guest metrics. The disk content is compatible with vhostmd (https://github.com/vhostmd/vhostmd) and vm-dump-metrics. | [optional] 
**empty_disk** | [**KubevirtIoApiCoreV1EmptyDiskSource**](KubevirtIoApiCoreV1EmptyDiskSource.md) | EmptyDisk represents a temporary disk which shares the vmis lifecycle. More info: https://kubevirt.gitbooks.io/user-guide/disks-and-volumes.html | [optional] 
**ephemeral** | [**KubevirtIoApiCoreV1EphemeralVolumeSource**](KubevirtIoApiCoreV1EphemeralVolumeSource.md) | Ephemeral is a special volume source that \&quot;wraps\&quot; specified source and provides copy-on-write image on top of it. | [optional] 
**host_disk** | [**KubevirtIoApiCoreV1HostDisk**](KubevirtIoApiCoreV1HostDisk.md) | HostDisk represents a disk created on the cluster level | [optional] 
**name** | **str** | Volume&#39;s name. Must be a DNS_LABEL and unique within the vmi. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names | [default to '']
**persistent_volume_claim** | [**KubevirtIoApiCoreV1PersistentVolumeClaimVolumeSource**](KubevirtIoApiCoreV1PersistentVolumeClaimVolumeSource.md) | PersistentVolumeClaimVolumeSource represents a reference to a PersistentVolumeClaim in the same namespace. Directly attached to the vmi via qemu. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims | [optional] 
**secret** | [**KubevirtIoApiCoreV1SecretVolumeSource**](KubevirtIoApiCoreV1SecretVolumeSource.md) | SecretVolumeSource represents a reference to a secret data in the same namespace. More info: https://kubernetes.io/docs/concepts/configuration/secret/ | [optional] 
**service_account** | [**KubevirtIoApiCoreV1ServiceAccountVolumeSource**](KubevirtIoApiCoreV1ServiceAccountVolumeSource.md) | ServiceAccountVolumeSource represents a reference to a service account. There can only be one volume of this type! More info: https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/ | [optional] 
**sysprep** | [**KubevirtIoApiCoreV1SysprepSource**](KubevirtIoApiCoreV1SysprepSource.md) | Represents a Sysprep volume source. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


