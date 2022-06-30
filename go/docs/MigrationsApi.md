# \MigrationsApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateNamespacedVirtualMachineInstanceMigration**](MigrationsApi.md#CreateNamespacedVirtualMachineInstanceMigration) | **Post** /apis/kubevirt.io/v1/namespaces/{namespace:[a-z0-9][a-z0-9\-]*}/virtualmachineinstancemigrations | 
[**DeleteNamespacedVirtualMachineInstanceMigration**](MigrationsApi.md#DeleteNamespacedVirtualMachineInstanceMigration) | **Delete** /apis/kubevirt.io/v1/namespaces/{namespace:[a-z0-9][a-z0-9\-]*}/virtualmachineinstancemigrations/{name:[a-z0-9][a-z0-9\-]*} | 
[**ListNamespacedVirtualMachineInstanceMigration**](MigrationsApi.md#ListNamespacedVirtualMachineInstanceMigration) | **Get** /apis/kubevirt.io/v1/namespaces/{namespace:[a-z0-9][a-z0-9\-]*}/virtualmachineinstancemigrations | 
[**ListVirtualMachineInstanceMigrationForAllNamespaces**](MigrationsApi.md#ListVirtualMachineInstanceMigrationForAllNamespaces) | **Get** /apis/kubevirt.io/v1/virtualmachineinstancemigrations | 
[**PatchNamespacedVirtualMachineInstanceMigration**](MigrationsApi.md#PatchNamespacedVirtualMachineInstanceMigration) | **Patch** /apis/kubevirt.io/v1/namespaces/{namespace:[a-z0-9][a-z0-9\-]*}/virtualmachineinstancemigrations/{name:[a-z0-9][a-z0-9\-]*} | 
[**ReadNamespacedVirtualMachineInstanceMigration**](MigrationsApi.md#ReadNamespacedVirtualMachineInstanceMigration) | **Get** /apis/kubevirt.io/v1/namespaces/{namespace:[a-z0-9][a-z0-9\-]*}/virtualmachineinstancemigrations/{name:[a-z0-9][a-z0-9\-]*} | 
[**ReplaceNamespacedVirtualMachineInstanceMigration**](MigrationsApi.md#ReplaceNamespacedVirtualMachineInstanceMigration) | **Put** /apis/kubevirt.io/v1/namespaces/{namespace:[a-z0-9][a-z0-9\-]*}/virtualmachineinstancemigrations/{name:[a-z0-9][a-z0-9\-]*} | 


# **CreateNamespacedVirtualMachineInstanceMigration**
> KubevirtIoApiCoreV1VirtualMachineInstanceMigration CreateNamespacedVirtualMachineInstanceMigration(ctx, namespace, body)


Create a VirtualMachineInstanceMigration object.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **namespace** | **string**| Object name and auth scope, such as for teams and projects | 
  **body** | [**KubevirtIoApiCoreV1VirtualMachineInstanceMigration**](KubevirtIoApiCoreV1VirtualMachineInstanceMigration.md)|  | 

### Return type

[**KubevirtIoApiCoreV1VirtualMachineInstanceMigration**](kubevirt.io.api.core.v1.VirtualMachineInstanceMigration.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json, application/yaml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **DeleteNamespacedVirtualMachineInstanceMigration**
> K8sIoV1Status DeleteNamespacedVirtualMachineInstanceMigration(ctx, name, namespace, body, optional)


Delete a VirtualMachineInstanceMigration object.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **name** | **string**| Name of the resource | 
  **namespace** | **string**| Object name and auth scope, such as for teams and projects | 
  **body** | [**K8sIoV1DeleteOptions**](K8sIoV1DeleteOptions.md)|  | 
 **optional** | ***MigrationsApiDeleteNamespacedVirtualMachineInstanceMigrationOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a MigrationsApiDeleteNamespacedVirtualMachineInstanceMigrationOpts struct

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

# **ListNamespacedVirtualMachineInstanceMigration**
> KubevirtIoApiCoreV1VirtualMachineInstanceMigrationList ListNamespacedVirtualMachineInstanceMigration(ctx, namespace, optional)


Get a list of VirtualMachineInstanceMigration objects in a namespace.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **namespace** | **string**| Object name and auth scope, such as for teams and projects | 
 **optional** | ***MigrationsApiListNamespacedVirtualMachineInstanceMigrationOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a MigrationsApiListNamespacedVirtualMachineInstanceMigrationOpts struct

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

[**KubevirtIoApiCoreV1VirtualMachineInstanceMigrationList**](kubevirt.io.api.core.v1.VirtualMachineInstanceMigrationList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/yaml, application/json;stream=watch

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ListVirtualMachineInstanceMigrationForAllNamespaces**
> KubevirtIoApiCoreV1VirtualMachineInstanceMigrationList ListVirtualMachineInstanceMigrationForAllNamespaces(ctx, optional)


Get a list of all VirtualMachineInstanceMigration objects.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***MigrationsApiListVirtualMachineInstanceMigrationForAllNamespacesOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a MigrationsApiListVirtualMachineInstanceMigrationForAllNamespacesOpts struct

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

[**KubevirtIoApiCoreV1VirtualMachineInstanceMigrationList**](kubevirt.io.api.core.v1.VirtualMachineInstanceMigrationList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/yaml, application/json;stream=watch

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **PatchNamespacedVirtualMachineInstanceMigration**
> KubevirtIoApiCoreV1VirtualMachineInstanceMigration PatchNamespacedVirtualMachineInstanceMigration(ctx, name, namespace, body)


Patch a VirtualMachineInstanceMigration object.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **name** | **string**| Name of the resource | 
  **namespace** | **string**| Object name and auth scope, such as for teams and projects | 
  **body** | [**K8sIoV1Patch**](K8sIoV1Patch.md)|  | 

### Return type

[**KubevirtIoApiCoreV1VirtualMachineInstanceMigration**](kubevirt.io.api.core.v1.VirtualMachineInstanceMigration.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/merge-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ReadNamespacedVirtualMachineInstanceMigration**
> KubevirtIoApiCoreV1VirtualMachineInstanceMigration ReadNamespacedVirtualMachineInstanceMigration(ctx, name, namespace, optional)


Get a VirtualMachineInstanceMigration object.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **name** | **string**| Name of the resource | 
  **namespace** | **string**| Object name and auth scope, such as for teams and projects | 
 **optional** | ***MigrationsApiReadNamespacedVirtualMachineInstanceMigrationOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a MigrationsApiReadNamespacedVirtualMachineInstanceMigrationOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **exact** | **optional.Bool**| Should the export be exact. Exact export maintains cluster-specific fields like &#39;Namespace&#39;. | 
 **export** | **optional.Bool**| Should this value be exported. Export strips fields that a user can not specify. | 

### Return type

[**KubevirtIoApiCoreV1VirtualMachineInstanceMigration**](kubevirt.io.api.core.v1.VirtualMachineInstanceMigration.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/yaml, application/json;stream=watch

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ReplaceNamespacedVirtualMachineInstanceMigration**
> KubevirtIoApiCoreV1VirtualMachineInstanceMigration ReplaceNamespacedVirtualMachineInstanceMigration(ctx, name, namespace, body)


Update a VirtualMachineInstanceMigration object.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **name** | **string**| Name of the resource | 
  **namespace** | **string**| Object name and auth scope, such as for teams and projects | 
  **body** | [**KubevirtIoApiCoreV1VirtualMachineInstanceMigration**](KubevirtIoApiCoreV1VirtualMachineInstanceMigration.md)|  | 

### Return type

[**KubevirtIoApiCoreV1VirtualMachineInstanceMigration**](kubevirt.io.api.core.v1.VirtualMachineInstanceMigration.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json, application/yaml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

