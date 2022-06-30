# KubevirtIoApiCoreV1VirtualMachineStatus

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Conditions** | [**[]KubevirtIoApiCoreV1VirtualMachineCondition**](kubevirt.io.api.core.v1.VirtualMachineCondition.md) | Hold the state information of the VirtualMachine and its VirtualMachineInstance | [optional] [default to null]
**Created** | **bool** | Created indicates if the virtual machine is created in the cluster | [optional] [default to null]
**PrintableStatus** | **string** | PrintableStatus is a human readable, high-level representation of the status of the virtual machine | [optional] [default to null]
**Ready** | **bool** | Ready indicates if the virtual machine is running and ready | [optional] [default to null]
**RestoreInProgress** | **string** | RestoreInProgress is the name of the VirtualMachineRestore currently executing | [optional] [default to null]
**SnapshotInProgress** | **string** | SnapshotInProgress is the name of the VirtualMachineSnapshot currently executing | [optional] [default to null]
**StartFailure** | [***KubevirtIoApiCoreV1VirtualMachineStartFailure**](kubevirt.io.api.core.v1.VirtualMachineStartFailure.md) | StartFailure tracks consecutive VMI startup failures for the purposes of crash loop backoffs | [optional] [default to null]
**StateChangeRequests** | [**[]KubevirtIoApiCoreV1VirtualMachineStateChangeRequest**](kubevirt.io.api.core.v1.VirtualMachineStateChangeRequest.md) | StateChangeRequests indicates a list of actions that should be taken on a VMI e.g. stop a specific VMI then start a new one. | [optional] [default to null]
**VolumeRequests** | [**[]KubevirtIoApiCoreV1VirtualMachineVolumeRequest**](kubevirt.io.api.core.v1.VirtualMachineVolumeRequest.md) | VolumeRequests indicates a list of volumes add or remove from the VMI template and hotplug on an active running VMI. | [optional] [default to null]
**VolumeSnapshotStatuses** | [**[]KubevirtIoApiCoreV1VolumeSnapshotStatus**](kubevirt.io.api.core.v1.VolumeSnapshotStatus.md) | VolumeSnapshotStatuses indicates a list of statuses whether snapshotting is supported by each volume. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


