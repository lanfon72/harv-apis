# KubevirtIoApiCoreV1PersistentVolumeClaimInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessModes** | **[]string** | AccessModes contains the desired access modes the volume should have. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1 | [optional] [default to null]
**Capacity** | [**map[string]K8sIoApimachineryPkgApiResourceQuantity**](k8s.io.apimachinery.pkg.api.resource.Quantity.md) | Capacity represents the capacity set on the corresponding PVC status | [optional] [default to null]
**FilesystemOverhead** | **string** | Percentage of filesystem&#39;s size to be reserved when resizing the PVC | [optional] [default to null]
**Preallocated** | **bool** | Preallocated indicates if the PVC&#39;s storage is preallocated or not | [optional] [default to null]
**Requests** | [**map[string]K8sIoApimachineryPkgApiResourceQuantity**](k8s.io.apimachinery.pkg.api.resource.Quantity.md) | Requests represents the resources requested by the corresponding PVC spec | [optional] [default to null]
**VolumeMode** | **string** | VolumeMode defines what type of volume is required by the claim. Value of Filesystem is implied when not included in claim spec. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


