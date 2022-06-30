/*
 * Harvester APIs
 *
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 * API version: v1beta1
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package harvester

// AddVolumeOptions is provided when dynamically hot plugging a volume and disk
type KubevirtIoApiCoreV1AddVolumeOptions struct {
	// Disk represents the hotplug disk that will be plugged into the running VMI
	Disk *KubevirtIoApiCoreV1Disk `json:"disk"`
	// When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
	DryRun []string `json:"dryRun,omitempty"`
	// Name represents the name that will be used to map the disk to the corresponding volume. This overrides any name set inside the Disk struct itself.
	Name string `json:"name"`
	// VolumeSource represents the source of the volume to map to the disk.
	VolumeSource *KubevirtIoApiCoreV1HotplugVolumeSource `json:"volumeSource"`
}
