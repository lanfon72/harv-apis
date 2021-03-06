# K8sIoV1HttpGetAction

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Host** | **string** | Host name to connect to, defaults to the pod IP. You probably want to set \&quot;Host\&quot; in httpHeaders instead. | [optional] [default to null]
**HttpHeaders** | [**[]K8sIoV1HttpHeader**](k8s.io.v1.HTTPHeader.md) | Custom headers to set in the request. HTTP allows repeated headers. | [optional] [default to null]
**Path** | **string** | Path to access on the HTTP server. | [optional] [default to null]
**Port** | [***K8sIoApimachineryPkgUtilIntstrIntOrString**](k8s.io.apimachinery.pkg.util.intstr.IntOrString.md) | Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME. | [default to null]
**Scheme** | **string** | Scheme to use for connecting to the host. Defaults to HTTP.  Possible enum values:  - &#x60;\&quot;HTTP\&quot;&#x60; means that the scheme used will be http://  - &#x60;\&quot;HTTPS\&quot;&#x60; means that the scheme used will be https:// | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


