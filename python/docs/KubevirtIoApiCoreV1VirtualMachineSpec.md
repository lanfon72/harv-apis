# KubevirtIoApiCoreV1VirtualMachineSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data_volume_templates** | [**list[KubevirtIoApiCoreV1DataVolumeTemplateSpec]**](KubevirtIoApiCoreV1DataVolumeTemplateSpec.md) | dataVolumeTemplates is a list of dataVolumes that the VirtualMachineInstance template can reference. DataVolumes in this list are dynamically created for the VirtualMachine and are tied to the VirtualMachine&#39;s life-cycle. | [optional] 
**flavor** | [**KubevirtIoApiCoreV1FlavorMatcher**](KubevirtIoApiCoreV1FlavorMatcher.md) | FlavorMatcher references a flavor that is used to fill fields in Template | [optional] 
**run_strategy** | **str** | Running state indicates the requested running state of the VirtualMachineInstance mutually exclusive with Running | [optional] 
**running** | **bool** | Running controls whether the associatied VirtualMachineInstance is created or not Mutually exclusive with RunStrategy | [optional] 
**template** | [**KubevirtIoApiCoreV1VirtualMachineInstanceTemplateSpec**](KubevirtIoApiCoreV1VirtualMachineInstanceTemplateSpec.md) | Template is the direct specification of VirtualMachineInstance | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


