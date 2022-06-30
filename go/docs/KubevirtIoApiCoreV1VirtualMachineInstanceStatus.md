# KubevirtIoApiCoreV1VirtualMachineInstanceStatus

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ActivePods** | **map[string]string** | ActivePods is a mapping of pod UID to node name. It is possible for multiple pods to be running for a single VMI during migration. | [optional] [default to null]
**Conditions** | [**[]KubevirtIoApiCoreV1VirtualMachineInstanceCondition**](kubevirt.io.api.core.v1.VirtualMachineInstanceCondition.md) | Conditions are specific points in VirtualMachineInstance&#39;s pod runtime. | [optional] [default to null]
**EvacuationNodeName** | **string** | EvacuationNodeName is used to track the eviction process of a VMI. It stores the name of the node that we want to evacuate. It is meant to be used by KubeVirt core components only and can&#39;t be set or modified by users. | [optional] [default to null]
**FsFreezeStatus** | **string** | FSFreezeStatus is the state of the fs of the guest it can be either frozen or thawed | [optional] [default to null]
**GuestOSInfo** | [***KubevirtIoApiCoreV1VirtualMachineInstanceGuestOsInfo**](kubevirt.io.api.core.v1.VirtualMachineInstanceGuestOSInfo.md) | Guest OS Information | [optional] [default to null]
**Interfaces** | [**[]KubevirtIoApiCoreV1VirtualMachineInstanceNetworkInterface**](kubevirt.io.api.core.v1.VirtualMachineInstanceNetworkInterface.md) | Interfaces represent the details of available network interfaces. | [optional] [default to null]
**LauncherContainerImageVersion** | **string** | LauncherContainerImageVersion indicates what container image is currently active for the vmi. | [optional] [default to null]
**MigrationMethod** | **string** | Represents the method using which the vmi can be migrated: live migration or block migration | [optional] [default to null]
**MigrationState** | [***KubevirtIoApiCoreV1VirtualMachineInstanceMigrationState**](kubevirt.io.api.core.v1.VirtualMachineInstanceMigrationState.md) | Represents the status of a live migration | [optional] [default to null]
**MigrationTransport** | **string** | This represents the migration transport | [optional] [default to null]
**NodeName** | **string** | NodeName is the name where the VirtualMachineInstance is currently running. | [optional] [default to null]
**Phase** | **string** | Phase is the status of the VirtualMachineInstance in kubernetes world. It is not the VirtualMachineInstance status, but partially correlates to it. | [optional] [default to null]
**PhaseTransitionTimestamps** | [**[]KubevirtIoApiCoreV1VirtualMachineInstancePhaseTransitionTimestamp**](kubevirt.io.api.core.v1.VirtualMachineInstancePhaseTransitionTimestamp.md) | PhaseTransitionTimestamp is the timestamp of when the last phase change occurred | [optional] [default to null]
**QosClass** | **string** | The Quality of Service (QOS) classification assigned to the virtual machine instance based on resource requirements See PodQOSClass type for available QOS classes More info: https://git.k8s.io/community/contributors/design-proposals/node/resource-qos.md | [optional] [default to null]
**Reason** | **string** | A brief CamelCase message indicating details about why the VMI is in this state. e.g. &#39;NodeUnresponsive&#39; | [optional] [default to null]
**RuntimeUser** | **int64** | RuntimeUser is used to determine what user will be used in launcher | [optional] [default to 0]
**TopologyHints** | [***KubevirtIoApiCoreV1TopologyHints**](kubevirt.io.api.core.v1.TopologyHints.md) |  | [optional] [default to null]
**VirtualMachineRevisionName** | **string** | VirtualMachineRevisionName is used to get the vm revision of the vmi when doing an online vm snapshot | [optional] [default to null]
**VolumeStatus** | [**[]KubevirtIoApiCoreV1VolumeStatus**](kubevirt.io.api.core.v1.VolumeStatus.md) | VolumeStatus contains the statuses of all the volumes | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


