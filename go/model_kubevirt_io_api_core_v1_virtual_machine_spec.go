/*
 * Harvester APIs
 *
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 * API version: v1beta1
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package harvester

// VirtualMachineSpec describes how the proper VirtualMachine should look like
type KubevirtIoApiCoreV1VirtualMachineSpec struct {
	// dataVolumeTemplates is a list of dataVolumes that the VirtualMachineInstance template can reference. DataVolumes in this list are dynamically created for the VirtualMachine and are tied to the VirtualMachine's life-cycle.
	DataVolumeTemplates []KubevirtIoApiCoreV1DataVolumeTemplateSpec `json:"dataVolumeTemplates,omitempty"`
	// FlavorMatcher references a flavor that is used to fill fields in Template
	Flavor *KubevirtIoApiCoreV1FlavorMatcher `json:"flavor,omitempty"`
	// Running state indicates the requested running state of the VirtualMachineInstance mutually exclusive with Running
	RunStrategy string `json:"runStrategy,omitempty"`
	// Running controls whether the associatied VirtualMachineInstance is created or not Mutually exclusive with RunStrategy
	Running bool `json:"running,omitempty"`
	// Template is the direct specification of VirtualMachineInstance
	Template *KubevirtIoApiCoreV1VirtualMachineInstanceTemplateSpec `json:"template"`
}