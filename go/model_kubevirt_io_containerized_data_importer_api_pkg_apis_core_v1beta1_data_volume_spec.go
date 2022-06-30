/*
 * Harvester APIs
 *
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 * API version: v1beta1
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package harvester

// DataVolumeSpec defines the DataVolume type specification
type KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSpec struct {
	// Checkpoints is a list of DataVolumeCheckpoints, representing stages in a multistage import.
	Checkpoints []KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeCheckpoint `json:"checkpoints,omitempty"`
	// DataVolumeContentType options: \"kubevirt\", \"archive\"
	ContentType string `json:"contentType,omitempty"`
	// FinalCheckpoint indicates whether the current DataVolumeCheckpoint is the final checkpoint.
	FinalCheckpoint bool `json:"finalCheckpoint,omitempty"`
	// Preallocation controls whether storage for DataVolumes should be allocated in advance.
	Preallocation bool `json:"preallocation,omitempty"`
	// PriorityClassName for Importer, Cloner and Uploader pod
	PriorityClassName string `json:"priorityClassName,omitempty"`
	// PVC is the PVC specification
	Pvc *K8sIoV1PersistentVolumeClaimSpec `json:"pvc,omitempty"`
	// Source is the src of the data for the requested DataVolume
	Source *KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSource `json:"source,omitempty"`
	// SourceRef is an indirect reference to the source of data for the requested DataVolume
	SourceRef *KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSourceRef `json:"sourceRef,omitempty"`
	// Storage is the requested storage specification
	Storage *KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1StorageSpec `json:"storage,omitempty"`
}