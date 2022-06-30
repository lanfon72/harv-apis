# KubevirtIoApiCoreV1VirtualMachineInstanceSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**access_credentials** | [**list[KubevirtIoApiCoreV1AccessCredential]**](KubevirtIoApiCoreV1AccessCredential.md) | Specifies a set of public keys to inject into the vm guest | [optional] 
**affinity** | [**K8sIoV1Affinity**](K8sIoV1Affinity.md) | If affinity is specifies, obey all the affinity rules | [optional] 
**dns_config** | [**K8sIoV1PodDNSConfig**](K8sIoV1PodDNSConfig.md) | Specifies the DNS parameters of a pod. Parameters specified here will be merged to the generated DNS configuration based on DNSPolicy. | [optional] 
**dns_policy** | **str** | Set DNS policy for the pod. Defaults to \&quot;ClusterFirst\&quot;. Valid values are &#39;ClusterFirstWithHostNet&#39;, &#39;ClusterFirst&#39;, &#39;Default&#39; or &#39;None&#39;. DNS parameters given in DNSConfig will be merged with the policy selected with DNSPolicy. To have DNS options set along with hostNetwork, you have to specify DNS policy explicitly to &#39;ClusterFirstWithHostNet&#39;.  Possible enum values:  - &#x60;\&quot;ClusterFirst\&quot;&#x60; indicates that the pod should use cluster DNS first unless hostNetwork is true, if it is available, then fall back on the default (as determined by kubelet) DNS settings.  - &#x60;\&quot;ClusterFirstWithHostNet\&quot;&#x60; indicates that the pod should use cluster DNS first, if it is available, then fall back on the default (as determined by kubelet) DNS settings.  - &#x60;\&quot;Default\&quot;&#x60; indicates that the pod should use the default (as determined by kubelet) DNS settings.  - &#x60;\&quot;None\&quot;&#x60; indicates that the pod should use empty DNS settings. DNS parameters such as nameservers and search paths should be defined via DNSConfig. | [optional] 
**domain** | [**KubevirtIoApiCoreV1DomainSpec**](KubevirtIoApiCoreV1DomainSpec.md) | Specification of the desired behavior of the VirtualMachineInstance on the host. | 
**eviction_strategy** | **str** | EvictionStrategy can be set to \&quot;LiveMigrate\&quot; if the VirtualMachineInstance should be migrated instead of shut-off in case of a node drain. | [optional] 
**hostname** | **str** | Specifies the hostname of the vmi If not specified, the hostname will be set to the name of the vmi, if dhcp or cloud-init is configured properly. | [optional] 
**liveness_probe** | [**KubevirtIoApiCoreV1Probe**](KubevirtIoApiCoreV1Probe.md) | Periodic probe of VirtualMachineInstance liveness. VirtualmachineInstances will be stopped if the probe fails. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes | [optional] 
**networks** | [**list[KubevirtIoApiCoreV1Network]**](KubevirtIoApiCoreV1Network.md) | List of networks that can be attached to a vm&#39;s virtual interface. | [optional] 
**node_selector** | **dict(str, str)** | NodeSelector is a selector which must be true for the vmi to fit on a node. Selector which must match a node&#39;s labels for the vmi to be scheduled on that node. More info: https://kubernetes.io/docs/concepts/configuration/assign-pod-node/ | [optional] 
**priority_class_name** | **str** | If specified, indicates the pod&#39;s priority. If not specified, the pod priority will be default or zero if there is no default. | [optional] 
**readiness_probe** | [**KubevirtIoApiCoreV1Probe**](KubevirtIoApiCoreV1Probe.md) | Periodic probe of VirtualMachineInstance service readiness. VirtualmachineInstances will be removed from service endpoints if the probe fails. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes | [optional] 
**scheduler_name** | **str** | If specified, the VMI will be dispatched by specified scheduler. If not specified, the VMI will be dispatched by default scheduler. | [optional] 
**start_strategy** | **str** | StartStrategy can be set to \&quot;Paused\&quot; if Virtual Machine should be started in paused state. | [optional] 
**subdomain** | **str** | If specified, the fully qualified vmi hostname will be \&quot;&lt;hostname&gt;.&lt;subdomain&gt;.&lt;pod namespace&gt;.svc.&lt;cluster domain&gt;\&quot;. If not specified, the vmi will not have a domainname at all. The DNS entry will resolve to the vmi, no matter if the vmi itself can pick up a hostname. | [optional] 
**termination_grace_period_seconds** | **int** | Grace period observed after signalling a VirtualMachineInstance to stop after which the VirtualMachineInstance is force terminated. | [optional] 
**tolerations** | [**list[K8sIoV1Toleration]**](K8sIoV1Toleration.md) | If toleration is specified, obey all the toleration rules. | [optional] 
**volumes** | [**list[KubevirtIoApiCoreV1Volume]**](KubevirtIoApiCoreV1Volume.md) | List of volumes that can be mounted by disks belonging to the vmi. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


