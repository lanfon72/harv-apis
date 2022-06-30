# KubevirtIoApiCoreV1FeatureHyperv

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**evmcs** | [**KubevirtIoApiCoreV1FeatureState**](KubevirtIoApiCoreV1FeatureState.md) | EVMCS Speeds up L2 vmexits, but disables other virtualization features. Requires vapic. Defaults to the machine type setting. | [optional] 
**frequencies** | [**KubevirtIoApiCoreV1FeatureState**](KubevirtIoApiCoreV1FeatureState.md) | Frequencies improves the TSC clock source handling for Hyper-V on KVM. Defaults to the machine type setting. | [optional] 
**ipi** | [**KubevirtIoApiCoreV1FeatureState**](KubevirtIoApiCoreV1FeatureState.md) | IPI improves performances in overcommited environments. Requires vpindex. Defaults to the machine type setting. | [optional] 
**reenlightenment** | [**KubevirtIoApiCoreV1FeatureState**](KubevirtIoApiCoreV1FeatureState.md) | Reenlightenment enables the notifications on TSC frequency changes. Defaults to the machine type setting. | [optional] 
**relaxed** | [**KubevirtIoApiCoreV1FeatureState**](KubevirtIoApiCoreV1FeatureState.md) | Relaxed instructs the guest OS to disable watchdog timeouts. Defaults to the machine type setting. | [optional] 
**reset** | [**KubevirtIoApiCoreV1FeatureState**](KubevirtIoApiCoreV1FeatureState.md) | Reset enables Hyperv reboot/reset for the vmi. Requires synic. Defaults to the machine type setting. | [optional] 
**runtime** | [**KubevirtIoApiCoreV1FeatureState**](KubevirtIoApiCoreV1FeatureState.md) | Runtime improves the time accounting to improve scheduling in the guest. Defaults to the machine type setting. | [optional] 
**spinlocks** | [**KubevirtIoApiCoreV1FeatureSpinlocks**](KubevirtIoApiCoreV1FeatureSpinlocks.md) | Spinlocks allows to configure the spinlock retry attempts. | [optional] 
**synic** | [**KubevirtIoApiCoreV1FeatureState**](KubevirtIoApiCoreV1FeatureState.md) | SyNIC enables the Synthetic Interrupt Controller. Defaults to the machine type setting. | [optional] 
**synictimer** | [**KubevirtIoApiCoreV1SyNICTimer**](KubevirtIoApiCoreV1SyNICTimer.md) | SyNICTimer enables Synthetic Interrupt Controller Timers, reducing CPU load. Defaults to the machine type setting. | [optional] 
**tlbflush** | [**KubevirtIoApiCoreV1FeatureState**](KubevirtIoApiCoreV1FeatureState.md) | TLBFlush improves performances in overcommited environments. Requires vpindex. Defaults to the machine type setting. | [optional] 
**vapic** | [**KubevirtIoApiCoreV1FeatureState**](KubevirtIoApiCoreV1FeatureState.md) | VAPIC improves the paravirtualized handling of interrupts. Defaults to the machine type setting. | [optional] 
**vendorid** | [**KubevirtIoApiCoreV1FeatureVendorID**](KubevirtIoApiCoreV1FeatureVendorID.md) | VendorID allows setting the hypervisor vendor id. Defaults to the machine type setting. | [optional] 
**vpindex** | [**KubevirtIoApiCoreV1FeatureState**](KubevirtIoApiCoreV1FeatureState.md) | VPIndex enables the Virtual Processor Index to help windows identifying virtual processors. Defaults to the machine type setting. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


