/*
 * Harvester APIs
 *
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 * API version: v1beta1
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package harvester

// PersistentVolumeClaimInfo contains the relavant information virt-handler needs cached about a PVC
type KubevirtIoApiCoreV1PersistentVolumeClaimInfo struct {
	// AccessModes contains the desired access modes the volume should have. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1
	AccessModes []string `json:"accessModes,omitempty"`
	// Capacity represents the capacity set on the corresponding PVC status
	Capacity map[string]K8sIoApimachineryPkgApiResourceQuantity `json:"capacity,omitempty"`
	// Percentage of filesystem's size to be reserved when resizing the PVC
	FilesystemOverhead string `json:"filesystemOverhead,omitempty"`
	// Preallocated indicates if the PVC's storage is preallocated or not
	Preallocated bool `json:"preallocated,omitempty"`
	// Requests represents the resources requested by the corresponding PVC spec
	Requests map[string]K8sIoApimachineryPkgApiResourceQuantity `json:"requests,omitempty"`
	// VolumeMode defines what type of volume is required by the claim. Value of Filesystem is implied when not included in claim spec.
	VolumeMode string `json:"volumeMode,omitempty"`
}