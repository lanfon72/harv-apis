# HarvesterhciIoV1beta1VirtualMachineBackupStatus

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**backup_target** | [**HarvesterhciIoV1beta1BackupTarget**](HarvesterhciIoV1beta1BackupTarget.md) |  | [optional] 
**conditions** | [**list[HarvesterhciIoV1beta1Condition]**](HarvesterhciIoV1beta1Condition.md) |  | [optional] 
**creation_time** | [**K8sIoV1Time**](K8sIoV1Time.md) |  | [optional] 
**error** | [**HarvesterhciIoV1beta1Error**](HarvesterhciIoV1beta1Error.md) |  | [optional] 
**ready_to_use** | **bool** |  | [optional] 
**secret_backups** | [**list[HarvesterhciIoV1beta1SecretBackup]**](HarvesterhciIoV1beta1SecretBackup.md) |  | [optional] 
**source** | [**HarvesterhciIoV1beta1VirtualMachineSourceSpec**](HarvesterhciIoV1beta1VirtualMachineSourceSpec.md) | SourceSpec contains the vm spec source of the backup target | [optional] 
**source_uid** | **str** |  | [optional] 
**volume_backups** | [**list[HarvesterhciIoV1beta1VolumeBackup]**](HarvesterhciIoV1beta1VolumeBackup.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


