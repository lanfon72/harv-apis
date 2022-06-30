# \NetworksApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateNamespacedClusterNetwork**](NetworksApi.md#CreateNamespacedClusterNetwork) | **Post** /apis/network.harvesterhci.io/v1beta1/clusternetworks | 
[**CreateNamespacedNetworkAttachmentDefinition**](NetworksApi.md#CreateNamespacedNetworkAttachmentDefinition) | **Post** /apis/k8s.cni.cncf.io/v1/namespaces/{namespace:[a-z0-9][a-z0-9\-]*}/network-attachment-definitions | 
[**CreateNamespacedNodeNetwork**](NetworksApi.md#CreateNamespacedNodeNetwork) | **Post** /apis/network.harvesterhci.io/v1beta1/nodenetworks | 
[**DeleteNamespacedClusterNetwork**](NetworksApi.md#DeleteNamespacedClusterNetwork) | **Delete** /apis/network.harvesterhci.io/v1beta1/clusternetworks/{name:[a-z0-9][a-z0-9\-]*} | 
[**DeleteNamespacedNetworkAttachmentDefinition**](NetworksApi.md#DeleteNamespacedNetworkAttachmentDefinition) | **Delete** /apis/k8s.cni.cncf.io/v1/namespaces/{namespace:[a-z0-9][a-z0-9\-]*}/network-attachment-definitions/{name:[a-z0-9][a-z0-9\-]*} | 
[**DeleteNamespacedNodeNetwork**](NetworksApi.md#DeleteNamespacedNodeNetwork) | **Delete** /apis/network.harvesterhci.io/v1beta1/nodenetworks/{name:[a-z0-9][a-z0-9\-]*} | 
[**ListNamespacedClusterNetwork**](NetworksApi.md#ListNamespacedClusterNetwork) | **Get** /apis/network.harvesterhci.io/v1beta1/clusternetworks | 
[**ListNamespacedNetworkAttachmentDefinition**](NetworksApi.md#ListNamespacedNetworkAttachmentDefinition) | **Get** /apis/k8s.cni.cncf.io/v1/namespaces/{namespace:[a-z0-9][a-z0-9\-]*}/network-attachment-definitions | 
[**ListNamespacedNodeNetwork**](NetworksApi.md#ListNamespacedNodeNetwork) | **Get** /apis/network.harvesterhci.io/v1beta1/nodenetworks | 
[**ListNetworkAttachmentDefinitionForAllNamespaces**](NetworksApi.md#ListNetworkAttachmentDefinitionForAllNamespaces) | **Get** /apis/k8s.cni.cncf.io/v1/network-attachment-definitions | 
[**PatchNamespacedClusterNetwork**](NetworksApi.md#PatchNamespacedClusterNetwork) | **Patch** /apis/network.harvesterhci.io/v1beta1/clusternetworks/{name:[a-z0-9][a-z0-9\-]*} | 
[**PatchNamespacedNetworkAttachmentDefinition**](NetworksApi.md#PatchNamespacedNetworkAttachmentDefinition) | **Patch** /apis/k8s.cni.cncf.io/v1/namespaces/{namespace:[a-z0-9][a-z0-9\-]*}/network-attachment-definitions/{name:[a-z0-9][a-z0-9\-]*} | 
[**PatchNamespacedNodeNetwork**](NetworksApi.md#PatchNamespacedNodeNetwork) | **Patch** /apis/network.harvesterhci.io/v1beta1/nodenetworks/{name:[a-z0-9][a-z0-9\-]*} | 
[**ReadNamespacedClusterNetwork**](NetworksApi.md#ReadNamespacedClusterNetwork) | **Get** /apis/network.harvesterhci.io/v1beta1/clusternetworks/{name:[a-z0-9][a-z0-9\-]*} | 
[**ReadNamespacedNetworkAttachmentDefinition**](NetworksApi.md#ReadNamespacedNetworkAttachmentDefinition) | **Get** /apis/k8s.cni.cncf.io/v1/namespaces/{namespace:[a-z0-9][a-z0-9\-]*}/network-attachment-definitions/{name:[a-z0-9][a-z0-9\-]*} | 
[**ReadNamespacedNodeNetwork**](NetworksApi.md#ReadNamespacedNodeNetwork) | **Get** /apis/network.harvesterhci.io/v1beta1/nodenetworks/{name:[a-z0-9][a-z0-9\-]*} | 
[**ReplaceNamespacedClusterNetwork**](NetworksApi.md#ReplaceNamespacedClusterNetwork) | **Put** /apis/network.harvesterhci.io/v1beta1/clusternetworks/{name:[a-z0-9][a-z0-9\-]*} | 
[**ReplaceNamespacedNetworkAttachmentDefinition**](NetworksApi.md#ReplaceNamespacedNetworkAttachmentDefinition) | **Put** /apis/k8s.cni.cncf.io/v1/namespaces/{namespace:[a-z0-9][a-z0-9\-]*}/network-attachment-definitions/{name:[a-z0-9][a-z0-9\-]*} | 
[**ReplaceNamespacedNodeNetwork**](NetworksApi.md#ReplaceNamespacedNodeNetwork) | **Put** /apis/network.harvesterhci.io/v1beta1/nodenetworks/{name:[a-z0-9][a-z0-9\-]*} | 


# **CreateNamespacedClusterNetwork**
> NetworkHarvesterhciIoV1beta1ClusterNetwork CreateNamespacedClusterNetwork(ctx, body, namespace)


Create a ClusterNetwork object.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **body** | [**NetworkHarvesterhciIoV1beta1ClusterNetwork**](NetworkHarvesterhciIoV1beta1ClusterNetwork.md)|  | 
  **namespace** | **string**| Object name and auth scope, such as for teams and projects | 

### Return type

[**NetworkHarvesterhciIoV1beta1ClusterNetwork**](network.harvesterhci.io.v1beta1.ClusterNetwork.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json, application/yaml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CreateNamespacedNetworkAttachmentDefinition**
> K8sCniCncfIoV1NetworkAttachmentDefinition CreateNamespacedNetworkAttachmentDefinition(ctx, namespace, body)


Create a NetworkAttachmentDefinition object.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **namespace** | **string**| Object name and auth scope, such as for teams and projects | 
  **body** | [**K8sCniCncfIoV1NetworkAttachmentDefinition**](K8sCniCncfIoV1NetworkAttachmentDefinition.md)|  | 

### Return type

[**K8sCniCncfIoV1NetworkAttachmentDefinition**](k8s.cni.cncf.io.v1.NetworkAttachmentDefinition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json, application/yaml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **CreateNamespacedNodeNetwork**
> NetworkHarvesterhciIoV1beta1NodeNetwork CreateNamespacedNodeNetwork(ctx, body, namespace)


Create a NodeNetwork object.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **body** | [**NetworkHarvesterhciIoV1beta1NodeNetwork**](NetworkHarvesterhciIoV1beta1NodeNetwork.md)|  | 
  **namespace** | **string**| Object name and auth scope, such as for teams and projects | 

### Return type

[**NetworkHarvesterhciIoV1beta1NodeNetwork**](network.harvesterhci.io.v1beta1.NodeNetwork.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json, application/yaml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DeleteNamespacedClusterNetwork**
> K8sIoV1Status DeleteNamespacedClusterNetwork(ctx, name, namespace, body, optional)


Delete a ClusterNetwork object.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **name** | **string**| Name of the resource | 
  **namespace** | **string**| Object name and auth scope, such as for teams and projects | 
  **body** | [**K8sIoV1DeleteOptions**](K8sIoV1DeleteOptions.md)|  | 
 **optional** | ***NetworksApiDeleteNamespacedClusterNetworkOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a NetworksApiDeleteNamespacedClusterNetworkOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



 **gracePeriodSeconds** | **optional.Int32**| The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately. | 
 **orphanDependents** | **optional.Bool**| Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If true/false, the \&quot;orphan\&quot; finalizer will be added to/removed from the object&#39;s finalizers list. Either this field or PropagationPolicy may be set, but not both. | 
 **propagationPolicy** | **optional.String**| Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: &#39;Orphan&#39; - orphan the dependents; &#39;Background&#39; - allow the garbage collector to delete the dependents in the background; &#39;Foreground&#39; - a cascading policy that deletes all dependents in the foreground. | 

### Return type

[**K8sIoV1Status**](k8s.io.v1.Status.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json, application/yaml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DeleteNamespacedNetworkAttachmentDefinition**
> K8sIoV1Status DeleteNamespacedNetworkAttachmentDefinition(ctx, name, namespace, body, optional)


Delete a NetworkAttachmentDefinition object.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **name** | **string**| Name of the resource | 
  **namespace** | **string**| Object name and auth scope, such as for teams and projects | 
  **body** | [**K8sIoV1DeleteOptions**](K8sIoV1DeleteOptions.md)|  | 
 **optional** | ***NetworksApiDeleteNamespacedNetworkAttachmentDefinitionOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a NetworksApiDeleteNamespacedNetworkAttachmentDefinitionOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



 **gracePeriodSeconds** | **optional.Int32**| The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately. | 
 **orphanDependents** | **optional.Bool**| Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If true/false, the \&quot;orphan\&quot; finalizer will be added to/removed from the object&#39;s finalizers list. Either this field or PropagationPolicy may be set, but not both. | 
 **propagationPolicy** | **optional.String**| Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: &#39;Orphan&#39; - orphan the dependents; &#39;Background&#39; - allow the garbage collector to delete the dependents in the background; &#39;Foreground&#39; - a cascading policy that deletes all dependents in the foreground. | 

### Return type

[**K8sIoV1Status**](k8s.io.v1.Status.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json, application/yaml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DeleteNamespacedNodeNetwork**
> K8sIoV1Status DeleteNamespacedNodeNetwork(ctx, name, namespace, body, optional)


Delete a NodeNetwork object.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **name** | **string**| Name of the resource | 
  **namespace** | **string**| Object name and auth scope, such as for teams and projects | 
  **body** | [**K8sIoV1DeleteOptions**](K8sIoV1DeleteOptions.md)|  | 
 **optional** | ***NetworksApiDeleteNamespacedNodeNetworkOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a NetworksApiDeleteNamespacedNodeNetworkOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



 **gracePeriodSeconds** | **optional.Int32**| The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately. | 
 **orphanDependents** | **optional.Bool**| Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If true/false, the \&quot;orphan\&quot; finalizer will be added to/removed from the object&#39;s finalizers list. Either this field or PropagationPolicy may be set, but not both. | 
 **propagationPolicy** | **optional.String**| Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: &#39;Orphan&#39; - orphan the dependents; &#39;Background&#39; - allow the garbage collector to delete the dependents in the background; &#39;Foreground&#39; - a cascading policy that deletes all dependents in the foreground. | 

### Return type

[**K8sIoV1Status**](k8s.io.v1.Status.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json, application/yaml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ListNamespacedClusterNetwork**
> NetworkHarvesterhciIoV1beta1ClusterNetworkList ListNamespacedClusterNetwork(ctx, namespace, optional)


Get a list of ClusterNetwork objects in a namespace.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **namespace** | **string**| Object name and auth scope, such as for teams and projects | 
 **optional** | ***NetworksApiListNamespacedClusterNetworkOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a NetworksApiListNamespacedClusterNetworkOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **continue_** | **optional.String**| The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server the server will respond with a 410 ResourceExpired error indicating the client must restart their list without the continue field. This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications. | 
 **fieldSelector** | **optional.String**| A selector to restrict the list of returned objects by their fields. Defaults to everything. | 
 **includeUninitialized** | **optional.Bool**| If true, partially initialized resources are included in the response. | 
 **labelSelector** | **optional.String**| A selector to restrict the list of returned objects by their labels. Defaults to everything | 
 **limit** | **optional.Int32**| limit is a maximum number of responses to return for a list call. If more items exist, the server will set the &#x60;continue&#x60; field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned. | 
 **resourceVersion** | **optional.String**| When specified with a watch call, shows changes that occur after that particular version of a resource. Defaults to changes from the beginning of history. | 
 **timeoutSeconds** | **optional.Int32**| TimeoutSeconds for the list/watch call. | 
 **watch** | **optional.Bool**| Watch for changes to the described resources and return them as a stream of add, update, and remove notifications. Specify resourceVersion. | 

### Return type

[**NetworkHarvesterhciIoV1beta1ClusterNetworkList**](network.harvesterhci.io.v1beta1.ClusterNetworkList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/yaml, application/json;stream=watch

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ListNamespacedNetworkAttachmentDefinition**
> K8sCniCncfIoV1NetworkAttachmentDefinitionList ListNamespacedNetworkAttachmentDefinition(ctx, namespace, optional)


Get a list of NetworkAttachmentDefinition objects in a namespace.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **namespace** | **string**| Object name and auth scope, such as for teams and projects | 
 **optional** | ***NetworksApiListNamespacedNetworkAttachmentDefinitionOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a NetworksApiListNamespacedNetworkAttachmentDefinitionOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **continue_** | **optional.String**| The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server the server will respond with a 410 ResourceExpired error indicating the client must restart their list without the continue field. This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications. | 
 **fieldSelector** | **optional.String**| A selector to restrict the list of returned objects by their fields. Defaults to everything. | 
 **includeUninitialized** | **optional.Bool**| If true, partially initialized resources are included in the response. | 
 **labelSelector** | **optional.String**| A selector to restrict the list of returned objects by their labels. Defaults to everything | 
 **limit** | **optional.Int32**| limit is a maximum number of responses to return for a list call. If more items exist, the server will set the &#x60;continue&#x60; field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned. | 
 **resourceVersion** | **optional.String**| When specified with a watch call, shows changes that occur after that particular version of a resource. Defaults to changes from the beginning of history. | 
 **timeoutSeconds** | **optional.Int32**| TimeoutSeconds for the list/watch call. | 
 **watch** | **optional.Bool**| Watch for changes to the described resources and return them as a stream of add, update, and remove notifications. Specify resourceVersion. | 

### Return type

[**K8sCniCncfIoV1NetworkAttachmentDefinitionList**](k8s.cni.cncf.io.v1.NetworkAttachmentDefinitionList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/yaml, application/json;stream=watch

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ListNamespacedNodeNetwork**
> NetworkHarvesterhciIoV1beta1NodeNetworkList ListNamespacedNodeNetwork(ctx, namespace, optional)


Get a list of NodeNetwork objects in a namespace.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **namespace** | **string**| Object name and auth scope, such as for teams and projects | 
 **optional** | ***NetworksApiListNamespacedNodeNetworkOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a NetworksApiListNamespacedNodeNetworkOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **continue_** | **optional.String**| The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server the server will respond with a 410 ResourceExpired error indicating the client must restart their list without the continue field. This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications. | 
 **fieldSelector** | **optional.String**| A selector to restrict the list of returned objects by their fields. Defaults to everything. | 
 **includeUninitialized** | **optional.Bool**| If true, partially initialized resources are included in the response. | 
 **labelSelector** | **optional.String**| A selector to restrict the list of returned objects by their labels. Defaults to everything | 
 **limit** | **optional.Int32**| limit is a maximum number of responses to return for a list call. If more items exist, the server will set the &#x60;continue&#x60; field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned. | 
 **resourceVersion** | **optional.String**| When specified with a watch call, shows changes that occur after that particular version of a resource. Defaults to changes from the beginning of history. | 
 **timeoutSeconds** | **optional.Int32**| TimeoutSeconds for the list/watch call. | 
 **watch** | **optional.Bool**| Watch for changes to the described resources and return them as a stream of add, update, and remove notifications. Specify resourceVersion. | 

### Return type

[**NetworkHarvesterhciIoV1beta1NodeNetworkList**](network.harvesterhci.io.v1beta1.NodeNetworkList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/yaml, application/json;stream=watch

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ListNetworkAttachmentDefinitionForAllNamespaces**
> K8sCniCncfIoV1NetworkAttachmentDefinitionList ListNetworkAttachmentDefinitionForAllNamespaces(ctx, optional)


Get a list of all NetworkAttachmentDefinition objects.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***NetworksApiListNetworkAttachmentDefinitionForAllNamespacesOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a NetworksApiListNetworkAttachmentDefinitionForAllNamespacesOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **continue_** | **optional.String**| The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server the server will respond with a 410 ResourceExpired error indicating the client must restart their list without the continue field. This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications. | 
 **fieldSelector** | **optional.String**| A selector to restrict the list of returned objects by their fields. Defaults to everything. | 
 **includeUninitialized** | **optional.Bool**| If true, partially initialized resources are included in the response. | 
 **labelSelector** | **optional.String**| A selector to restrict the list of returned objects by their labels. Defaults to everything | 
 **limit** | **optional.Int32**| limit is a maximum number of responses to return for a list call. If more items exist, the server will set the &#x60;continue&#x60; field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned. | 
 **resourceVersion** | **optional.String**| When specified with a watch call, shows changes that occur after that particular version of a resource. Defaults to changes from the beginning of history. | 
 **timeoutSeconds** | **optional.Int32**| TimeoutSeconds for the list/watch call. | 
 **watch** | **optional.Bool**| Watch for changes to the described resources and return them as a stream of add, update, and remove notifications. Specify resourceVersion. | 

### Return type

[**K8sCniCncfIoV1NetworkAttachmentDefinitionList**](k8s.cni.cncf.io.v1.NetworkAttachmentDefinitionList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/yaml, application/json;stream=watch

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **PatchNamespacedClusterNetwork**
> NetworkHarvesterhciIoV1beta1ClusterNetwork PatchNamespacedClusterNetwork(ctx, name, namespace, body)


Patch a ClusterNetwork object.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **name** | **string**| Name of the resource | 
  **namespace** | **string**| Object name and auth scope, such as for teams and projects | 
  **body** | [**K8sIoV1Patch**](K8sIoV1Patch.md)|  | 

### Return type

[**NetworkHarvesterhciIoV1beta1ClusterNetwork**](network.harvesterhci.io.v1beta1.ClusterNetwork.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/merge-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **PatchNamespacedNetworkAttachmentDefinition**
> K8sCniCncfIoV1NetworkAttachmentDefinition PatchNamespacedNetworkAttachmentDefinition(ctx, name, namespace, body)


Patch a NetworkAttachmentDefinition object.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **name** | **string**| Name of the resource | 
  **namespace** | **string**| Object name and auth scope, such as for teams and projects | 
  **body** | [**K8sIoV1Patch**](K8sIoV1Patch.md)|  | 

### Return type

[**K8sCniCncfIoV1NetworkAttachmentDefinition**](k8s.cni.cncf.io.v1.NetworkAttachmentDefinition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/merge-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **PatchNamespacedNodeNetwork**
> NetworkHarvesterhciIoV1beta1NodeNetwork PatchNamespacedNodeNetwork(ctx, name, namespace, body)


Patch a NodeNetwork object.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **name** | **string**| Name of the resource | 
  **namespace** | **string**| Object name and auth scope, such as for teams and projects | 
  **body** | [**K8sIoV1Patch**](K8sIoV1Patch.md)|  | 

### Return type

[**NetworkHarvesterhciIoV1beta1NodeNetwork**](network.harvesterhci.io.v1beta1.NodeNetwork.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/merge-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ReadNamespacedClusterNetwork**
> NetworkHarvesterhciIoV1beta1ClusterNetwork ReadNamespacedClusterNetwork(ctx, name, namespace, optional)


Get a ClusterNetwork object.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **name** | **string**| Name of the resource | 
  **namespace** | **string**| Object name and auth scope, such as for teams and projects | 
 **optional** | ***NetworksApiReadNamespacedClusterNetworkOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a NetworksApiReadNamespacedClusterNetworkOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **exact** | **optional.Bool**| Should the export be exact. Exact export maintains cluster-specific fields like &#39;Namespace&#39;. | 
 **export** | **optional.Bool**| Should this value be exported. Export strips fields that a user can not specify. | 

### Return type

[**NetworkHarvesterhciIoV1beta1ClusterNetwork**](network.harvesterhci.io.v1beta1.ClusterNetwork.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/yaml, application/json;stream=watch

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ReadNamespacedNetworkAttachmentDefinition**
> K8sCniCncfIoV1NetworkAttachmentDefinition ReadNamespacedNetworkAttachmentDefinition(ctx, name, namespace, optional)


Get a NetworkAttachmentDefinition object.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **name** | **string**| Name of the resource | 
  **namespace** | **string**| Object name and auth scope, such as for teams and projects | 
 **optional** | ***NetworksApiReadNamespacedNetworkAttachmentDefinitionOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a NetworksApiReadNamespacedNetworkAttachmentDefinitionOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **exact** | **optional.Bool**| Should the export be exact. Exact export maintains cluster-specific fields like &#39;Namespace&#39;. | 
 **export** | **optional.Bool**| Should this value be exported. Export strips fields that a user can not specify. | 

### Return type

[**K8sCniCncfIoV1NetworkAttachmentDefinition**](k8s.cni.cncf.io.v1.NetworkAttachmentDefinition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/yaml, application/json;stream=watch

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ReadNamespacedNodeNetwork**
> NetworkHarvesterhciIoV1beta1NodeNetwork ReadNamespacedNodeNetwork(ctx, name, namespace, optional)


Get a NodeNetwork object.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **name** | **string**| Name of the resource | 
  **namespace** | **string**| Object name and auth scope, such as for teams and projects | 
 **optional** | ***NetworksApiReadNamespacedNodeNetworkOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a NetworksApiReadNamespacedNodeNetworkOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **exact** | **optional.Bool**| Should the export be exact. Exact export maintains cluster-specific fields like &#39;Namespace&#39;. | 
 **export** | **optional.Bool**| Should this value be exported. Export strips fields that a user can not specify. | 

### Return type

[**NetworkHarvesterhciIoV1beta1NodeNetwork**](network.harvesterhci.io.v1beta1.NodeNetwork.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/yaml, application/json;stream=watch

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ReplaceNamespacedClusterNetwork**
> NetworkHarvesterhciIoV1beta1ClusterNetwork ReplaceNamespacedClusterNetwork(ctx, name, namespace, body)


Update a ClusterNetwork object.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **name** | **string**| Name of the resource | 
  **namespace** | **string**| Object name and auth scope, such as for teams and projects | 
  **body** | [**NetworkHarvesterhciIoV1beta1ClusterNetwork**](NetworkHarvesterhciIoV1beta1ClusterNetwork.md)|  | 

### Return type

[**NetworkHarvesterhciIoV1beta1ClusterNetwork**](network.harvesterhci.io.v1beta1.ClusterNetwork.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json, application/yaml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ReplaceNamespacedNetworkAttachmentDefinition**
> K8sCniCncfIoV1NetworkAttachmentDefinition ReplaceNamespacedNetworkAttachmentDefinition(ctx, name, namespace, body)


Update a NetworkAttachmentDefinition object.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **name** | **string**| Name of the resource | 
  **namespace** | **string**| Object name and auth scope, such as for teams and projects | 
  **body** | [**K8sCniCncfIoV1NetworkAttachmentDefinition**](K8sCniCncfIoV1NetworkAttachmentDefinition.md)|  | 

### Return type

[**K8sCniCncfIoV1NetworkAttachmentDefinition**](k8s.cni.cncf.io.v1.NetworkAttachmentDefinition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json, application/yaml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ReplaceNamespacedNodeNetwork**
> NetworkHarvesterhciIoV1beta1NodeNetwork ReplaceNamespacedNodeNetwork(ctx, name, namespace, body)


Update a NodeNetwork object.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **name** | **string**| Name of the resource | 
  **namespace** | **string**| Object name and auth scope, such as for teams and projects | 
  **body** | [**NetworkHarvesterhciIoV1beta1NodeNetwork**](NetworkHarvesterhciIoV1beta1NodeNetwork.md)|  | 

### Return type

[**NetworkHarvesterhciIoV1beta1NodeNetwork**](network.harvesterhci.io.v1beta1.NodeNetwork.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json, application/yaml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

