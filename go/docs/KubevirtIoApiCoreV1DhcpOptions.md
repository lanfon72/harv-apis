# KubevirtIoApiCoreV1DhcpOptions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BootFileName** | **string** | If specified will pass option 67 to interface&#39;s DHCP server | [optional] [default to null]
**NtpServers** | **[]string** | If specified will pass the configured NTP server to the VM via DHCP option 042. | [optional] [default to null]
**PrivateOptions** | [**[]KubevirtIoApiCoreV1DhcpPrivateOptions**](kubevirt.io.api.core.v1.DHCPPrivateOptions.md) | If specified will pass extra DHCP options for private use, range: 224-254 | [optional] [default to null]
**TftpServerName** | **string** | If specified will pass option 66 to interface&#39;s DHCP server | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


