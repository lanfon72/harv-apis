# KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Checkpoints** | [**[]KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeCheckpoint**](kubevirt.io.containerized-data-importer-api.pkg.apis.core.v1beta1.DataVolumeCheckpoint.md) | Checkpoints is a list of DataVolumeCheckpoints, representing stages in a multistage import. | [optional] [default to null]
**ContentType** | **string** | DataVolumeContentType options: \&quot;kubevirt\&quot;, \&quot;archive\&quot; | [optional] [default to null]
**FinalCheckpoint** | **bool** | FinalCheckpoint indicates whether the current DataVolumeCheckpoint is the final checkpoint. | [optional] [default to null]
**Preallocation** | **bool** | Preallocation controls whether storage for DataVolumes should be allocated in advance. | [optional] [default to null]
**PriorityClassName** | **string** | PriorityClassName for Importer, Cloner and Uploader pod | [optional] [default to null]
**Pvc** | [***K8sIoV1PersistentVolumeClaimSpec**](k8s.io.v1.PersistentVolumeClaimSpec.md) | PVC is the PVC specification | [optional] [default to null]
**Source** | [***KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSource**](kubevirt.io.containerized-data-importer-api.pkg.apis.core.v1beta1.DataVolumeSource.md) | Source is the src of the data for the requested DataVolume | [optional] [default to null]
**SourceRef** | [***KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSourceRef**](kubevirt.io.containerized-data-importer-api.pkg.apis.core.v1beta1.DataVolumeSourceRef.md) | SourceRef is an indirect reference to the source of data for the requested DataVolume | [optional] [default to null]
**Storage** | [***KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1StorageSpec**](kubevirt.io.containerized-data-importer-api.pkg.apis.core.v1beta1.StorageSpec.md) | Storage is the requested storage specification | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


