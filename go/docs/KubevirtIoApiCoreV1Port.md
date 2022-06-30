# KubevirtIoApiCoreV1Port

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **string** | If specified, this must be an IANA_SVC_NAME and unique within the pod. Each named port in a pod must have a unique name. Name for the port that can be referred to by services. | [optional] [default to null]
**Port** | **int32** | Number of port to expose for the virtual machine. This must be a valid port number, 0 &lt; x &lt; 65536. | [default to 0]
**Protocol** | **string** | Protocol for port. Must be UDP or TCP. Defaults to \&quot;TCP\&quot;. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


