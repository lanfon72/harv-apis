# KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSourceVddk

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BackingFile** | **string** | BackingFile is the path to the virtual hard disk to migrate from vCenter/ESXi | [optional] [default to null]
**InitImageURL** | **string** | InitImageURL is an optional URL to an image containing an extracted VDDK library, overrides v2v-vmware config map | [optional] [default to null]
**SecretRef** | **string** | SecretRef provides a reference to a secret containing the username and password needed to access the vCenter or ESXi host | [optional] [default to null]
**Thumbprint** | **string** | Thumbprint is the certificate thumbprint of the vCenter or ESXi host | [optional] [default to null]
**Url** | **string** | URL is the URL of the vCenter or ESXi host with the VM to migrate | [optional] [default to null]
**Uuid** | **string** | UUID is the UUID of the virtual machine that the backing file is attached to in vCenter/ESXi | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


