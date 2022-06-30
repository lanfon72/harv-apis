# HarvesterhciIoV1beta1VirtualMachineBackupStatus

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BackupTarget** | [***HarvesterhciIoV1beta1BackupTarget**](harvesterhci.io.v1beta1.BackupTarget.md) |  | [optional] [default to null]
**Conditions** | [**[]HarvesterhciIoV1beta1Condition**](harvesterhci.io.v1beta1.Condition.md) |  | [optional] [default to null]
**CreationTime** | [***K8sIoV1Time**](k8s.io.v1.Time.md) |  | [optional] [default to null]
**Error_** | [***HarvesterhciIoV1beta1Error**](harvesterhci.io.v1beta1.Error.md) |  | [optional] [default to null]
**ReadyToUse** | **bool** |  | [optional] [default to null]
**SecretBackups** | [**[]HarvesterhciIoV1beta1SecretBackup**](harvesterhci.io.v1beta1.SecretBackup.md) |  | [optional] [default to null]
**Source** | [***HarvesterhciIoV1beta1VirtualMachineSourceSpec**](harvesterhci.io.v1beta1.VirtualMachineSourceSpec.md) | SourceSpec contains the vm spec source of the backup target | [optional] [default to null]
**SourceUID** | **string** |  | [optional] [default to null]
**VolumeBackups** | [**[]HarvesterhciIoV1beta1VolumeBackup**](harvesterhci.io.v1beta1.VolumeBackup.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


