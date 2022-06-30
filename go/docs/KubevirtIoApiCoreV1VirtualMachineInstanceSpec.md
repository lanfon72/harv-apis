# KubevirtIoApiCoreV1VirtualMachineInstanceSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessCredentials** | [**[]KubevirtIoApiCoreV1AccessCredential**](kubevirt.io.api.core.v1.AccessCredential.md) | Specifies a set of public keys to inject into the vm guest | [optional] [default to null]
**Affinity** | [***K8sIoV1Affinity**](k8s.io.v1.Affinity.md) | If affinity is specifies, obey all the affinity rules | [optional] [default to null]
**DnsConfig** | [***K8sIoV1PodDnsConfig**](k8s.io.v1.PodDNSConfig.md) | Specifies the DNS parameters of a pod. Parameters specified here will be merged to the generated DNS configuration based on DNSPolicy. | [optional] [default to null]
**DnsPolicy** | **string** | Set DNS policy for the pod. Defaults to \&quot;ClusterFirst\&quot;. Valid values are &#39;ClusterFirstWithHostNet&#39;, &#39;ClusterFirst&#39;, &#39;Default&#39; or &#39;None&#39;. DNS parameters given in DNSConfig will be merged with the policy selected with DNSPolicy. To have DNS options set along with hostNetwork, you have to specify DNS policy explicitly to &#39;ClusterFirstWithHostNet&#39;.  Possible enum values:  - &#x60;\&quot;ClusterFirst\&quot;&#x60; indicates that the pod should use cluster DNS first unless hostNetwork is true, if it is available, then fall back on the default (as determined by kubelet) DNS settings.  - &#x60;\&quot;ClusterFirstWithHostNet\&quot;&#x60; indicates that the pod should use cluster DNS first, if it is available, then fall back on the default (as determined by kubelet) DNS settings.  - &#x60;\&quot;Default\&quot;&#x60; indicates that the pod should use the default (as determined by kubelet) DNS settings.  - &#x60;\&quot;None\&quot;&#x60; indicates that the pod should use empty DNS settings. DNS parameters such as nameservers and search paths should be defined via DNSConfig. | [optional] [default to null]
**Domain** | [***KubevirtIoApiCoreV1DomainSpec**](kubevirt.io.api.core.v1.DomainSpec.md) | Specification of the desired behavior of the VirtualMachineInstance on the host. | [default to null]
**EvictionStrategy** | **string** | EvictionStrategy can be set to \&quot;LiveMigrate\&quot; if the VirtualMachineInstance should be migrated instead of shut-off in case of a node drain. | [optional] [default to null]
**Hostname** | **string** | Specifies the hostname of the vmi If not specified, the hostname will be set to the name of the vmi, if dhcp or cloud-init is configured properly. | [optional] [default to null]
**LivenessProbe** | [***KubevirtIoApiCoreV1Probe**](kubevirt.io.api.core.v1.Probe.md) | Periodic probe of VirtualMachineInstance liveness. VirtualmachineInstances will be stopped if the probe fails. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes | [optional] [default to null]
**Networks** | [**[]KubevirtIoApiCoreV1Network**](kubevirt.io.api.core.v1.Network.md) | List of networks that can be attached to a vm&#39;s virtual interface. | [optional] [default to null]
**NodeSelector** | **map[string]string** | NodeSelector is a selector which must be true for the vmi to fit on a node. Selector which must match a node&#39;s labels for the vmi to be scheduled on that node. More info: https://kubernetes.io/docs/concepts/configuration/assign-pod-node/ | [optional] [default to null]
**PriorityClassName** | **string** | If specified, indicates the pod&#39;s priority. If not specified, the pod priority will be default or zero if there is no default. | [optional] [default to null]
**ReadinessProbe** | [***KubevirtIoApiCoreV1Probe**](kubevirt.io.api.core.v1.Probe.md) | Periodic probe of VirtualMachineInstance service readiness. VirtualmachineInstances will be removed from service endpoints if the probe fails. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes | [optional] [default to null]
**SchedulerName** | **string** | If specified, the VMI will be dispatched by specified scheduler. If not specified, the VMI will be dispatched by default scheduler. | [optional] [default to null]
**StartStrategy** | **string** | StartStrategy can be set to \&quot;Paused\&quot; if Virtual Machine should be started in paused state. | [optional] [default to null]
**Subdomain** | **string** | If specified, the fully qualified vmi hostname will be \&quot;&lt;hostname&gt;.&lt;subdomain&gt;.&lt;pod namespace&gt;.svc.&lt;cluster domain&gt;\&quot;. If not specified, the vmi will not have a domainname at all. The DNS entry will resolve to the vmi, no matter if the vmi itself can pick up a hostname. | [optional] [default to null]
**TerminationGracePeriodSeconds** | **int64** | Grace period observed after signalling a VirtualMachineInstance to stop after which the VirtualMachineInstance is force terminated. | [optional] [default to null]
**Tolerations** | [**[]K8sIoV1Toleration**](k8s.io.v1.Toleration.md) | If toleration is specified, obey all the toleration rules. | [optional] [default to null]
**Volumes** | [**[]KubevirtIoApiCoreV1Volume**](kubevirt.io.api.core.v1.Volume.md) | List of volumes that can be mounted by disks belonging to the vmi. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

