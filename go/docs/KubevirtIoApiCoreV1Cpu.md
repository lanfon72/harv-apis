# KubevirtIoApiCoreV1Cpu

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Cores** | **int64** | Cores specifies the number of cores inside the vmi. Must be a value greater or equal 1. | [optional] [default to null]
**DedicatedCpuPlacement** | **bool** | DedicatedCPUPlacement requests the scheduler to place the VirtualMachineInstance on a node with enough dedicated pCPUs and pin the vCPUs to it. | [optional] [default to null]
**Features** | [**[]KubevirtIoApiCoreV1CpuFeature**](kubevirt.io.api.core.v1.CPUFeature.md) | Features specifies the CPU features list inside the VMI. | [optional] [default to null]
**IsolateEmulatorThread** | **bool** | IsolateEmulatorThread requests one more dedicated pCPU to be allocated for the VMI to place the emulator thread on it. | [optional] [default to null]
**Model** | **string** | Model specifies the CPU model inside the VMI. List of available models https://github.com/libvirt/libvirt/tree/master/src/cpu_map. It is possible to specify special cases like \&quot;host-passthrough\&quot; to get the same CPU as the node and \&quot;host-model\&quot; to get CPU closest to the node one. Defaults to host-model. | [optional] [default to null]
**Numa** | [***KubevirtIoApiCoreV1Numa**](kubevirt.io.api.core.v1.NUMA.md) | NUMA allows specifying settings for the guest NUMA topology | [optional] [default to null]
**Realtime** | [***KubevirtIoApiCoreV1Realtime**](kubevirt.io.api.core.v1.Realtime.md) | Realtime instructs the virt-launcher to tune the VMI for lower latency, optional for real time workloads | [optional] [default to null]
**Sockets** | **int64** | Sockets specifies the number of sockets inside the vmi. Must be a value greater or equal 1. | [optional] [default to null]
**Threads** | **int64** | Threads specifies the number of threads inside the vmi. Must be a value greater or equal 1. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


