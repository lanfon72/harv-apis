# KubevirtIoApiCoreV1Timer

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Hpet** | [***KubevirtIoApiCoreV1HpetTimer**](kubevirt.io.api.core.v1.HPETTimer.md) | HPET (High Precision Event Timer) - multiple timers with periodic interrupts. | [optional] [default to null]
**Hyperv** | [***KubevirtIoApiCoreV1HypervTimer**](kubevirt.io.api.core.v1.HypervTimer.md) | Hyperv (Hypervclock) - lets guests read the host’s wall clock time (paravirtualized). For windows guests. | [optional] [default to null]
**Kvm** | [***KubevirtIoApiCoreV1KvmTimer**](kubevirt.io.api.core.v1.KVMTimer.md) | KVM  (KVM clock) - lets guests read the host’s wall clock time (paravirtualized). For linux guests. | [optional] [default to null]
**Pit** | [***KubevirtIoApiCoreV1PitTimer**](kubevirt.io.api.core.v1.PITTimer.md) | PIT (Programmable Interval Timer) - a timer with periodic interrupts. | [optional] [default to null]
**Rtc** | [***KubevirtIoApiCoreV1RtcTimer**](kubevirt.io.api.core.v1.RTCTimer.md) | RTC (Real Time Clock) - a continuously running timer with periodic interrupts. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


