# KubevirtIoApiCoreV1ResourceRequirements

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Limits** | [**map[string]K8sIoApimachineryPkgApiResourceQuantity**](k8s.io.apimachinery.pkg.api.resource.Quantity.md) | Limits describes the maximum amount of compute resources allowed. Valid resource keys are \&quot;memory\&quot; and \&quot;cpu\&quot;. | [optional] [default to null]
**OvercommitGuestOverhead** | **bool** | Don&#39;t ask the scheduler to take the guest-management overhead into account. Instead put the overhead only into the container&#39;s memory limit. This can lead to crashes if all memory is in use on a node. Defaults to false. | [optional] [default to null]
**Requests** | [**map[string]K8sIoApimachineryPkgApiResourceQuantity**](k8s.io.apimachinery.pkg.api.resource.Quantity.md) | Requests is a description of the initial vmi resources. Valid resource keys are \&quot;memory\&quot; and \&quot;cpu\&quot;. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


