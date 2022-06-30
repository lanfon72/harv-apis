/*
 * Harvester APIs
 *
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 * API version: v1beta1
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package harvester

type KubevirtIoApiCoreV1VirtualMachineVolumeRequest struct {
	// AddVolumeOptions when set indicates a volume should be added. The details within this field specify how to add the volume
	AddVolumeOptions *KubevirtIoApiCoreV1AddVolumeOptions `json:"addVolumeOptions,omitempty"`
	// RemoveVolumeOptions when set indicates a volume should be removed. The details within this field specify how to add the volume
	RemoveVolumeOptions *KubevirtIoApiCoreV1RemoveVolumeOptions `json:"removeVolumeOptions,omitempty"`
}