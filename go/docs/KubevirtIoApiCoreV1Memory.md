# KubevirtIoApiCoreV1Memory

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Guest** | [***K8sIoApimachineryPkgApiResourceQuantity**](k8s.io.apimachinery.pkg.api.resource.Quantity.md) | Guest allows to specifying the amount of memory which is visible inside the Guest OS. The Guest must lie between Requests and Limits from the resources section. Defaults to the requested memory in the resources section if not specified. | [optional] [default to null]
**Hugepages** | [***KubevirtIoApiCoreV1Hugepages**](kubevirt.io.api.core.v1.Hugepages.md) | Hugepages allow to use hugepages for the VirtualMachineInstance instead of regular memory. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


