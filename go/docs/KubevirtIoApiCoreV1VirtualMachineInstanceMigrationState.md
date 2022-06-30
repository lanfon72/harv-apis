# KubevirtIoApiCoreV1VirtualMachineInstanceMigrationState

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AbortRequested** | **bool** | Indicates that the migration has been requested to abort | [optional] [default to null]
**AbortStatus** | **string** | Indicates the final status of the live migration abortion | [optional] [default to null]
**Completed** | **bool** | Indicates the migration completed | [optional] [default to null]
**EndTimestamp** | [***K8sIoV1Time**](k8s.io.v1.Time.md) | The time the migration action ended | [optional] [default to null]
**Failed** | **bool** | Indicates that the migration failed | [optional] [default to null]
**MigrationConfiguration** | [***KubevirtIoApiCoreV1MigrationConfiguration**](kubevirt.io.api.core.v1.MigrationConfiguration.md) | Migration configurations to apply | [optional] [default to null]
**MigrationPolicyName** | **string** | Name of the migration policy. If string is empty, no policy is matched | [optional] [default to null]
**MigrationUid** | **string** | The VirtualMachineInstanceMigration object associated with this migration | [optional] [default to null]
**Mode** | **string** | Lets us know if the vmi is currently running pre or post copy migration | [optional] [default to null]
**SourceNode** | **string** | The source node that the VMI originated on | [optional] [default to null]
**StartTimestamp** | [***K8sIoV1Time**](k8s.io.v1.Time.md) | The time the migration action began | [optional] [default to null]
**TargetAttachmentPodUID** | **string** | The UID of the target attachment pod for hotplug volumes | [optional] [default to null]
**TargetCPUSet** | **[]int32** | If the VMI requires dedicated CPUs, this field will hold the dedicated CPU set on the target node | [optional] [default to null]
**TargetDirectMigrationNodePorts** | **map[string]int32** | The list of ports opened for live migration on the destination node | [optional] [default to null]
**TargetNode** | **string** | The target node that the VMI is moving to | [optional] [default to null]
**TargetNodeAddress** | **string** | The address of the target node to use for the migration | [optional] [default to null]
**TargetNodeDomainDetected** | **bool** | The Target Node has seen the Domain Start Event | [optional] [default to null]
**TargetNodeTopology** | **string** | If the VMI requires dedicated CPUs, this field will hold the numa topology on the target node | [optional] [default to null]
**TargetPod** | **string** | The target pod that the VMI is moving to | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


