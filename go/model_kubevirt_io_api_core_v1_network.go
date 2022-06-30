/*
 * Harvester APIs
 *
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 * API version: v1beta1
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package harvester

// Network represents a network type and a resource that should be connected to the vm.
type KubevirtIoApiCoreV1Network struct {
	Multus *KubevirtIoApiCoreV1MultusNetwork `json:"multus,omitempty"`
	// Network name. Must be a DNS_LABEL and unique within the vm. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
	Name string `json:"name"`
	Pod *KubevirtIoApiCoreV1PodNetwork `json:"pod,omitempty"`
}
