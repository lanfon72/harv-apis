/*
 * Harvester APIs
 *
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 * API version: v1beta1
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package harvester

// FlavorMatcher references a flavor that is used to fill fields in the VMI template.
type KubevirtIoApiCoreV1FlavorMatcher struct {
	// Kind specifies which flavor resource is referenced. Allowed values are: \"VirtualMachineFlavor\" and \"VirtualMachineClusterFlavor\". If not specified, \"VirtualMachineClusterFlavor\" is used by default.
	Kind string `json:"kind,omitempty"`
	// Name is the name of the VirtualMachineFlavor or VirtualMachineClusterFlavor
	Name string `json:"name"`
}
