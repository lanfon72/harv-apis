/*
 * Harvester APIs
 *
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 * API version: v1beta1
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package harvester

type KubevirtIoApiCoreV1VirtualMachineInstanceTemplateSpec struct {
	Metadata *K8sIoV1ObjectMeta `json:"metadata,omitempty"`
	// VirtualMachineInstance Spec contains the VirtualMachineInstance specification.
	Spec *KubevirtIoApiCoreV1VirtualMachineInstanceSpec `json:"spec,omitempty"`
}
