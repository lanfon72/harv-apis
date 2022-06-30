# KubevirtIoApiCoreV1Features

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**acpi** | [**KubevirtIoApiCoreV1FeatureState**](KubevirtIoApiCoreV1FeatureState.md) | ACPI enables/disables ACPI inside the guest. Defaults to enabled. | [optional] 
**apic** | [**KubevirtIoApiCoreV1FeatureAPIC**](KubevirtIoApiCoreV1FeatureAPIC.md) | Defaults to the machine type setting. | [optional] 
**hyperv** | [**KubevirtIoApiCoreV1FeatureHyperv**](KubevirtIoApiCoreV1FeatureHyperv.md) | Defaults to the machine type setting. | [optional] 
**kvm** | [**KubevirtIoApiCoreV1FeatureKVM**](KubevirtIoApiCoreV1FeatureKVM.md) | Configure how KVM presence is exposed to the guest. | [optional] 
**pvspinlock** | [**KubevirtIoApiCoreV1FeatureState**](KubevirtIoApiCoreV1FeatureState.md) | Notify the guest that the host supports paravirtual spinlocks. For older kernels this feature should be explicitly disabled. | [optional] 
**smm** | [**KubevirtIoApiCoreV1FeatureState**](KubevirtIoApiCoreV1FeatureState.md) | SMM enables/disables System Management Mode. TSEG not yet implemented. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


