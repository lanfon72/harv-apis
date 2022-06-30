# harvester.ImagesApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_namespaced_virtual_machine_image**](ImagesApi.md#create_namespaced_virtual_machine_image) | **POST** /apis/harvesterhci.io/v1beta1/namespaces/{namespace:[a-z0-9][a-z0-9\-]*}/virtualmachineimages | 
[**delete_namespaced_virtual_machine_image**](ImagesApi.md#delete_namespaced_virtual_machine_image) | **DELETE** /apis/harvesterhci.io/v1beta1/namespaces/{namespace:[a-z0-9][a-z0-9\-]*}/virtualmachineimages/{name:[a-z0-9][a-z0-9\-]*} | 
[**list_namespaced_virtual_machine_image**](ImagesApi.md#list_namespaced_virtual_machine_image) | **GET** /apis/harvesterhci.io/v1beta1/namespaces/{namespace:[a-z0-9][a-z0-9\-]*}/virtualmachineimages | 
[**list_virtual_machine_image_for_all_namespaces**](ImagesApi.md#list_virtual_machine_image_for_all_namespaces) | **GET** /apis/harvesterhci.io/v1beta1/virtualmachineimages | 
[**patch_namespaced_virtual_machine_image**](ImagesApi.md#patch_namespaced_virtual_machine_image) | **PATCH** /apis/harvesterhci.io/v1beta1/namespaces/{namespace:[a-z0-9][a-z0-9\-]*}/virtualmachineimages/{name:[a-z0-9][a-z0-9\-]*} | 
[**read_namespaced_virtual_machine_image**](ImagesApi.md#read_namespaced_virtual_machine_image) | **GET** /apis/harvesterhci.io/v1beta1/namespaces/{namespace:[a-z0-9][a-z0-9\-]*}/virtualmachineimages/{name:[a-z0-9][a-z0-9\-]*} | 
[**replace_namespaced_virtual_machine_image**](ImagesApi.md#replace_namespaced_virtual_machine_image) | **PUT** /apis/harvesterhci.io/v1beta1/namespaces/{namespace:[a-z0-9][a-z0-9\-]*}/virtualmachineimages/{name:[a-z0-9][a-z0-9\-]*} | 


# **create_namespaced_virtual_machine_image**
> HarvesterhciIoV1beta1VirtualMachineImage create_namespaced_virtual_machine_image(namespace, body)



Create a VirtualMachineImage object.

### Example
```python
from __future__ import print_function
import time
import harvester
from harvester.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = harvester.ImagesApi()
namespace = 'namespace_example' # str | Object name and auth scope, such as for teams and projects
body = harvester.HarvesterhciIoV1beta1VirtualMachineImage() # HarvesterhciIoV1beta1VirtualMachineImage | 

try:
    api_response = api_instance.create_namespaced_virtual_machine_image(namespace, body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ImagesApi->create_namespaced_virtual_machine_image: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **str**| Object name and auth scope, such as for teams and projects | 
 **body** | [**HarvesterhciIoV1beta1VirtualMachineImage**](HarvesterhciIoV1beta1VirtualMachineImage.md)|  | 

### Return type

[**HarvesterhciIoV1beta1VirtualMachineImage**](HarvesterhciIoV1beta1VirtualMachineImage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json, application/yaml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_namespaced_virtual_machine_image**
> K8sIoV1Status delete_namespaced_virtual_machine_image(name, namespace, body, grace_period_seconds=grace_period_seconds, orphan_dependents=orphan_dependents, propagation_policy=propagation_policy)



Delete a VirtualMachineImage object.

### Example
```python
from __future__ import print_function
import time
import harvester
from harvester.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = harvester.ImagesApi()
name = 'name_example' # str | Name of the resource
namespace = 'namespace_example' # str | Object name and auth scope, such as for teams and projects
body = harvester.K8sIoV1DeleteOptions() # K8sIoV1DeleteOptions | 
grace_period_seconds = 56 # int | The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately. (optional)
orphan_dependents = true # bool | Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both. (optional)
propagation_policy = 'propagation_policy_example' # str | Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground. (optional)

try:
    api_response = api_instance.delete_namespaced_virtual_machine_image(name, namespace, body, grace_period_seconds=grace_period_seconds, orphan_dependents=orphan_dependents, propagation_policy=propagation_policy)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ImagesApi->delete_namespaced_virtual_machine_image: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| Name of the resource | 
 **namespace** | **str**| Object name and auth scope, such as for teams and projects | 
 **body** | [**K8sIoV1DeleteOptions**](K8sIoV1DeleteOptions.md)|  | 
 **grace_period_seconds** | **int**| The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately. | [optional] 
 **orphan_dependents** | **bool**| Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If true/false, the \&quot;orphan\&quot; finalizer will be added to/removed from the object&#39;s finalizers list. Either this field or PropagationPolicy may be set, but not both. | [optional] 
 **propagation_policy** | **str**| Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: &#39;Orphan&#39; - orphan the dependents; &#39;Background&#39; - allow the garbage collector to delete the dependents in the background; &#39;Foreground&#39; - a cascading policy that deletes all dependents in the foreground. | [optional] 

### Return type

[**K8sIoV1Status**](K8sIoV1Status.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json, application/yaml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_namespaced_virtual_machine_image**
> HarvesterhciIoV1beta1VirtualMachineImageList list_namespaced_virtual_machine_image(namespace, _continue=_continue, field_selector=field_selector, include_uninitialized=include_uninitialized, label_selector=label_selector, limit=limit, resource_version=resource_version, timeout_seconds=timeout_seconds, watch=watch)



Get a list of VirtualMachineImage objects in a namespace.

### Example
```python
from __future__ import print_function
import time
import harvester
from harvester.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = harvester.ImagesApi()
namespace = 'namespace_example' # str | Object name and auth scope, such as for teams and projects
_continue = '_continue_example' # str | The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server the server will respond with a 410 ResourceExpired error indicating the client must restart their list without the continue field. This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications. (optional)
field_selector = 'field_selector_example' # str | A selector to restrict the list of returned objects by their fields. Defaults to everything. (optional)
include_uninitialized = true # bool | If true, partially initialized resources are included in the response. (optional)
label_selector = 'label_selector_example' # str | A selector to restrict the list of returned objects by their labels. Defaults to everything (optional)
limit = 56 # int | limit is a maximum number of responses to return for a list call. If more items exist, the server will set the `continue` field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned. (optional)
resource_version = 'resource_version_example' # str | When specified with a watch call, shows changes that occur after that particular version of a resource. Defaults to changes from the beginning of history. (optional)
timeout_seconds = 56 # int | TimeoutSeconds for the list/watch call. (optional)
watch = true # bool | Watch for changes to the described resources and return them as a stream of add, update, and remove notifications. Specify resourceVersion. (optional)

try:
    api_response = api_instance.list_namespaced_virtual_machine_image(namespace, _continue=_continue, field_selector=field_selector, include_uninitialized=include_uninitialized, label_selector=label_selector, limit=limit, resource_version=resource_version, timeout_seconds=timeout_seconds, watch=watch)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ImagesApi->list_namespaced_virtual_machine_image: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **str**| Object name and auth scope, such as for teams and projects | 
 **_continue** | **str**| The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server the server will respond with a 410 ResourceExpired error indicating the client must restart their list without the continue field. This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications. | [optional] 
 **field_selector** | **str**| A selector to restrict the list of returned objects by their fields. Defaults to everything. | [optional] 
 **include_uninitialized** | **bool**| If true, partially initialized resources are included in the response. | [optional] 
 **label_selector** | **str**| A selector to restrict the list of returned objects by their labels. Defaults to everything | [optional] 
 **limit** | **int**| limit is a maximum number of responses to return for a list call. If more items exist, the server will set the &#x60;continue&#x60; field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned. | [optional] 
 **resource_version** | **str**| When specified with a watch call, shows changes that occur after that particular version of a resource. Defaults to changes from the beginning of history. | [optional] 
 **timeout_seconds** | **int**| TimeoutSeconds for the list/watch call. | [optional] 
 **watch** | **bool**| Watch for changes to the described resources and return them as a stream of add, update, and remove notifications. Specify resourceVersion. | [optional] 

### Return type

[**HarvesterhciIoV1beta1VirtualMachineImageList**](HarvesterhciIoV1beta1VirtualMachineImageList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/yaml, application/json;stream=watch

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_virtual_machine_image_for_all_namespaces**
> HarvesterhciIoV1beta1VirtualMachineImageList list_virtual_machine_image_for_all_namespaces(_continue=_continue, field_selector=field_selector, include_uninitialized=include_uninitialized, label_selector=label_selector, limit=limit, resource_version=resource_version, timeout_seconds=timeout_seconds, watch=watch)



Get a list of all VirtualMachineImage objects.

### Example
```python
from __future__ import print_function
import time
import harvester
from harvester.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = harvester.ImagesApi()
_continue = '_continue_example' # str | The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server the server will respond with a 410 ResourceExpired error indicating the client must restart their list without the continue field. This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications. (optional)
field_selector = 'field_selector_example' # str | A selector to restrict the list of returned objects by their fields. Defaults to everything. (optional)
include_uninitialized = true # bool | If true, partially initialized resources are included in the response. (optional)
label_selector = 'label_selector_example' # str | A selector to restrict the list of returned objects by their labels. Defaults to everything (optional)
limit = 56 # int | limit is a maximum number of responses to return for a list call. If more items exist, the server will set the `continue` field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned. (optional)
resource_version = 'resource_version_example' # str | When specified with a watch call, shows changes that occur after that particular version of a resource. Defaults to changes from the beginning of history. (optional)
timeout_seconds = 56 # int | TimeoutSeconds for the list/watch call. (optional)
watch = true # bool | Watch for changes to the described resources and return them as a stream of add, update, and remove notifications. Specify resourceVersion. (optional)

try:
    api_response = api_instance.list_virtual_machine_image_for_all_namespaces(_continue=_continue, field_selector=field_selector, include_uninitialized=include_uninitialized, label_selector=label_selector, limit=limit, resource_version=resource_version, timeout_seconds=timeout_seconds, watch=watch)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ImagesApi->list_virtual_machine_image_for_all_namespaces: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_continue** | **str**| The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server the server will respond with a 410 ResourceExpired error indicating the client must restart their list without the continue field. This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications. | [optional] 
 **field_selector** | **str**| A selector to restrict the list of returned objects by their fields. Defaults to everything. | [optional] 
 **include_uninitialized** | **bool**| If true, partially initialized resources are included in the response. | [optional] 
 **label_selector** | **str**| A selector to restrict the list of returned objects by their labels. Defaults to everything | [optional] 
 **limit** | **int**| limit is a maximum number of responses to return for a list call. If more items exist, the server will set the &#x60;continue&#x60; field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned. | [optional] 
 **resource_version** | **str**| When specified with a watch call, shows changes that occur after that particular version of a resource. Defaults to changes from the beginning of history. | [optional] 
 **timeout_seconds** | **int**| TimeoutSeconds for the list/watch call. | [optional] 
 **watch** | **bool**| Watch for changes to the described resources and return them as a stream of add, update, and remove notifications. Specify resourceVersion. | [optional] 

### Return type

[**HarvesterhciIoV1beta1VirtualMachineImageList**](HarvesterhciIoV1beta1VirtualMachineImageList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/yaml, application/json;stream=watch

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patch_namespaced_virtual_machine_image**
> HarvesterhciIoV1beta1VirtualMachineImage patch_namespaced_virtual_machine_image(name, namespace, body)



Patch a VirtualMachineImage object.

### Example
```python
from __future__ import print_function
import time
import harvester
from harvester.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = harvester.ImagesApi()
name = 'name_example' # str | Name of the resource
namespace = 'namespace_example' # str | Object name and auth scope, such as for teams and projects
body = harvester.K8sIoV1Patch() # K8sIoV1Patch | 

try:
    api_response = api_instance.patch_namespaced_virtual_machine_image(name, namespace, body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ImagesApi->patch_namespaced_virtual_machine_image: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| Name of the resource | 
 **namespace** | **str**| Object name and auth scope, such as for teams and projects | 
 **body** | [**K8sIoV1Patch**](K8sIoV1Patch.md)|  | 

### Return type

[**HarvesterhciIoV1beta1VirtualMachineImage**](HarvesterhciIoV1beta1VirtualMachineImage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/merge-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **read_namespaced_virtual_machine_image**
> HarvesterhciIoV1beta1VirtualMachineImage read_namespaced_virtual_machine_image(name, namespace, exact=exact, export=export)



Get a VirtualMachineImage object.

### Example
```python
from __future__ import print_function
import time
import harvester
from harvester.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = harvester.ImagesApi()
name = 'name_example' # str | Name of the resource
namespace = 'namespace_example' # str | Object name and auth scope, such as for teams and projects
exact = true # bool | Should the export be exact. Exact export maintains cluster-specific fields like 'Namespace'. (optional)
export = true # bool | Should this value be exported. Export strips fields that a user can not specify. (optional)

try:
    api_response = api_instance.read_namespaced_virtual_machine_image(name, namespace, exact=exact, export=export)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ImagesApi->read_namespaced_virtual_machine_image: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| Name of the resource | 
 **namespace** | **str**| Object name and auth scope, such as for teams and projects | 
 **exact** | **bool**| Should the export be exact. Exact export maintains cluster-specific fields like &#39;Namespace&#39;. | [optional] 
 **export** | **bool**| Should this value be exported. Export strips fields that a user can not specify. | [optional] 

### Return type

[**HarvesterhciIoV1beta1VirtualMachineImage**](HarvesterhciIoV1beta1VirtualMachineImage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/yaml, application/json;stream=watch

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **replace_namespaced_virtual_machine_image**
> HarvesterhciIoV1beta1VirtualMachineImage replace_namespaced_virtual_machine_image(name, namespace, body)



Update a VirtualMachineImage object.

### Example
```python
from __future__ import print_function
import time
import harvester
from harvester.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = harvester.ImagesApi()
name = 'name_example' # str | Name of the resource
namespace = 'namespace_example' # str | Object name and auth scope, such as for teams and projects
body = harvester.HarvesterhciIoV1beta1VirtualMachineImage() # HarvesterhciIoV1beta1VirtualMachineImage | 

try:
    api_response = api_instance.replace_namespaced_virtual_machine_image(name, namespace, body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ImagesApi->replace_namespaced_virtual_machine_image: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| Name of the resource | 
 **namespace** | **str**| Object name and auth scope, such as for teams and projects | 
 **body** | [**HarvesterhciIoV1beta1VirtualMachineImage**](HarvesterhciIoV1beta1VirtualMachineImage.md)|  | 

### Return type

[**HarvesterhciIoV1beta1VirtualMachineImage**](HarvesterhciIoV1beta1VirtualMachineImage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/yaml
 - **Accept**: application/json, application/yaml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
