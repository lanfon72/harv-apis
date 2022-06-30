# KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSourceRegistry

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CertConfigMap** | **string** | CertConfigMap provides a reference to the Registry certs | [optional] [default to null]
**ImageStream** | **string** | ImageStream is the name of image stream for import | [optional] [default to null]
**PullMethod** | **string** | PullMethod can be either \&quot;pod\&quot; (default import), or \&quot;node\&quot; (node docker cache based import) | [optional] [default to null]
**SecretRef** | **string** | SecretRef provides the secret reference needed to access the Registry source | [optional] [default to null]
**Url** | **string** | URL is the url of the registry source (starting with the scheme: docker, oci-archive) | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


