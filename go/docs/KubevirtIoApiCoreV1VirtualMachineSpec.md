# KubevirtIoApiCoreV1VirtualMachineSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DataVolumeTemplates** | [**[]KubevirtIoApiCoreV1DataVolumeTemplateSpec**](kubevirt.io.api.core.v1.DataVolumeTemplateSpec.md) | dataVolumeTemplates is a list of dataVolumes that the VirtualMachineInstance template can reference. DataVolumes in this list are dynamically created for the VirtualMachine and are tied to the VirtualMachine&#39;s life-cycle. | [optional] [default to null]
**Flavor** | [***KubevirtIoApiCoreV1FlavorMatcher**](kubevirt.io.api.core.v1.FlavorMatcher.md) | FlavorMatcher references a flavor that is used to fill fields in Template | [optional] [default to null]
**RunStrategy** | **string** | Running state indicates the requested running state of the VirtualMachineInstance mutually exclusive with Running | [optional] [default to null]
**Running** | **bool** | Running controls whether the associatied VirtualMachineInstance is created or not Mutually exclusive with RunStrategy | [optional] [default to null]
**Template** | [***KubevirtIoApiCoreV1VirtualMachineInstanceTemplateSpec**](kubevirt.io.api.core.v1.VirtualMachineInstanceTemplateSpec.md) | Template is the direct specification of VirtualMachineInstance | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


