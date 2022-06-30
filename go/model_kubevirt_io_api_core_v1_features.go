/*
 * Harvester APIs
 *
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 * API version: v1beta1
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package harvester

type KubevirtIoApiCoreV1Features struct {
	// ACPI enables/disables ACPI inside the guest. Defaults to enabled.
	Acpi *KubevirtIoApiCoreV1FeatureState `json:"acpi,omitempty"`
	// Defaults to the machine type setting.
	Apic *KubevirtIoApiCoreV1FeatureApic `json:"apic,omitempty"`
	// Defaults to the machine type setting.
	Hyperv *KubevirtIoApiCoreV1FeatureHyperv `json:"hyperv,omitempty"`
	// Configure how KVM presence is exposed to the guest.
	Kvm *KubevirtIoApiCoreV1FeatureKvm `json:"kvm,omitempty"`
	// Notify the guest that the host supports paravirtual spinlocks. For older kernels this feature should be explicitly disabled.
	Pvspinlock *KubevirtIoApiCoreV1FeatureState `json:"pvspinlock,omitempty"`
	// SMM enables/disables System Management Mode. TSEG not yet implemented.
	Smm *KubevirtIoApiCoreV1FeatureState `json:"smm,omitempty"`
}