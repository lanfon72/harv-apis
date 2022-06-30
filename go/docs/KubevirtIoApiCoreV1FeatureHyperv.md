# KubevirtIoApiCoreV1FeatureHyperv

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Evmcs** | [***KubevirtIoApiCoreV1FeatureState**](kubevirt.io.api.core.v1.FeatureState.md) | EVMCS Speeds up L2 vmexits, but disables other virtualization features. Requires vapic. Defaults to the machine type setting. | [optional] [default to null]
**Frequencies** | [***KubevirtIoApiCoreV1FeatureState**](kubevirt.io.api.core.v1.FeatureState.md) | Frequencies improves the TSC clock source handling for Hyper-V on KVM. Defaults to the machine type setting. | [optional] [default to null]
**Ipi** | [***KubevirtIoApiCoreV1FeatureState**](kubevirt.io.api.core.v1.FeatureState.md) | IPI improves performances in overcommited environments. Requires vpindex. Defaults to the machine type setting. | [optional] [default to null]
**Reenlightenment** | [***KubevirtIoApiCoreV1FeatureState**](kubevirt.io.api.core.v1.FeatureState.md) | Reenlightenment enables the notifications on TSC frequency changes. Defaults to the machine type setting. | [optional] [default to null]
**Relaxed** | [***KubevirtIoApiCoreV1FeatureState**](kubevirt.io.api.core.v1.FeatureState.md) | Relaxed instructs the guest OS to disable watchdog timeouts. Defaults to the machine type setting. | [optional] [default to null]
**Reset** | [***KubevirtIoApiCoreV1FeatureState**](kubevirt.io.api.core.v1.FeatureState.md) | Reset enables Hyperv reboot/reset for the vmi. Requires synic. Defaults to the machine type setting. | [optional] [default to null]
**Runtime** | [***KubevirtIoApiCoreV1FeatureState**](kubevirt.io.api.core.v1.FeatureState.md) | Runtime improves the time accounting to improve scheduling in the guest. Defaults to the machine type setting. | [optional] [default to null]
**Spinlocks** | [***KubevirtIoApiCoreV1FeatureSpinlocks**](kubevirt.io.api.core.v1.FeatureSpinlocks.md) | Spinlocks allows to configure the spinlock retry attempts. | [optional] [default to null]
**Synic** | [***KubevirtIoApiCoreV1FeatureState**](kubevirt.io.api.core.v1.FeatureState.md) | SyNIC enables the Synthetic Interrupt Controller. Defaults to the machine type setting. | [optional] [default to null]
**Synictimer** | [***KubevirtIoApiCoreV1SyNicTimer**](kubevirt.io.api.core.v1.SyNICTimer.md) | SyNICTimer enables Synthetic Interrupt Controller Timers, reducing CPU load. Defaults to the machine type setting. | [optional] [default to null]
**Tlbflush** | [***KubevirtIoApiCoreV1FeatureState**](kubevirt.io.api.core.v1.FeatureState.md) | TLBFlush improves performances in overcommited environments. Requires vpindex. Defaults to the machine type setting. | [optional] [default to null]
**Vapic** | [***KubevirtIoApiCoreV1FeatureState**](kubevirt.io.api.core.v1.FeatureState.md) | VAPIC improves the paravirtualized handling of interrupts. Defaults to the machine type setting. | [optional] [default to null]
**Vendorid** | [***KubevirtIoApiCoreV1FeatureVendorId**](kubevirt.io.api.core.v1.FeatureVendorID.md) | VendorID allows setting the hypervisor vendor id. Defaults to the machine type setting. | [optional] [default to null]
**Vpindex** | [***KubevirtIoApiCoreV1FeatureState**](kubevirt.io.api.core.v1.FeatureState.md) | VPIndex enables the Virtual Processor Index to help windows identifying virtual processors. Defaults to the machine type setting. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


