# KubevirtIoApiCoreV1VirtualMachine

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApiVersion** | **string** | APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources | [default to null]
**Kind** | **string** | Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds | [default to null]
**Metadata** | [***K8sIoV1ObjectMeta**](k8s.io.v1.ObjectMeta.md) |  | [optional] [default to null]
**Spec** | [***KubevirtIoApiCoreV1VirtualMachineSpec**](kubevirt.io.api.core.v1.VirtualMachineSpec.md) | Spec contains the specification of VirtualMachineInstance created | [default to null]
**Status** | [***KubevirtIoApiCoreV1VirtualMachineStatus**](kubevirt.io.api.core.v1.VirtualMachineStatus.md) | Status holds the current state of the controller and brief information about its associated VirtualMachineInstance | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


