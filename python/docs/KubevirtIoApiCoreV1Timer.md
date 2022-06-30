# KubevirtIoApiCoreV1Timer

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hpet** | [**KubevirtIoApiCoreV1HPETTimer**](KubevirtIoApiCoreV1HPETTimer.md) | HPET (High Precision Event Timer) - multiple timers with periodic interrupts. | [optional] 
**hyperv** | [**KubevirtIoApiCoreV1HypervTimer**](KubevirtIoApiCoreV1HypervTimer.md) | Hyperv (Hypervclock) - lets guests read the host’s wall clock time (paravirtualized). For windows guests. | [optional] 
**kvm** | [**KubevirtIoApiCoreV1KVMTimer**](KubevirtIoApiCoreV1KVMTimer.md) | KVM  (KVM clock) - lets guests read the host’s wall clock time (paravirtualized). For linux guests. | [optional] 
**pit** | [**KubevirtIoApiCoreV1PITTimer**](KubevirtIoApiCoreV1PITTimer.md) | PIT (Programmable Interval Timer) - a timer with periodic interrupts. | [optional] 
**rtc** | [**KubevirtIoApiCoreV1RTCTimer**](KubevirtIoApiCoreV1RTCTimer.md) | RTC (Real Time Clock) - a continuously running timer with periodic interrupts. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


