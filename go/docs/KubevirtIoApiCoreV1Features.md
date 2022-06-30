# KubevirtIoApiCoreV1Features

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Acpi** | [***KubevirtIoApiCoreV1FeatureState**](kubevirt.io.api.core.v1.FeatureState.md) | ACPI enables/disables ACPI inside the guest. Defaults to enabled. | [optional] [default to null]
**Apic** | [***KubevirtIoApiCoreV1FeatureApic**](kubevirt.io.api.core.v1.FeatureAPIC.md) | Defaults to the machine type setting. | [optional] [default to null]
**Hyperv** | [***KubevirtIoApiCoreV1FeatureHyperv**](kubevirt.io.api.core.v1.FeatureHyperv.md) | Defaults to the machine type setting. | [optional] [default to null]
**Kvm** | [***KubevirtIoApiCoreV1FeatureKvm**](kubevirt.io.api.core.v1.FeatureKVM.md) | Configure how KVM presence is exposed to the guest. | [optional] [default to null]
**Pvspinlock** | [***KubevirtIoApiCoreV1FeatureState**](kubevirt.io.api.core.v1.FeatureState.md) | Notify the guest that the host supports paravirtual spinlocks. For older kernels this feature should be explicitly disabled. | [optional] [default to null]
**Smm** | [***KubevirtIoApiCoreV1FeatureState**](kubevirt.io.api.core.v1.FeatureState.md) | SMM enables/disables System Management Mode. TSEG not yet implemented. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


