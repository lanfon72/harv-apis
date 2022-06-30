# KubevirtIoApiCoreV1HostDisk

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Capacity** | [***K8sIoApimachineryPkgApiResourceQuantity**](k8s.io.apimachinery.pkg.api.resource.Quantity.md) | Capacity of the sparse disk | [optional] [default to null]
**Path** | **string** | The path to HostDisk image located on the cluster | [default to null]
**Shared** | **bool** | Shared indicate whether the path is shared between nodes | [optional] [default to null]
**Type_** | **string** | Contains information if disk.img exists or should be created allowed options are &#39;Disk&#39; and &#39;DiskOrCreate&#39; | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


