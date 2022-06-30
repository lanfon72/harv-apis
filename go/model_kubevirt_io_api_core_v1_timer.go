/*
 * Harvester APIs
 *
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 * API version: v1beta1
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package harvester

// Represents all available timers in a vmi.
type KubevirtIoApiCoreV1Timer struct {
	// HPET (High Precision Event Timer) - multiple timers with periodic interrupts.
	Hpet *KubevirtIoApiCoreV1HpetTimer `json:"hpet,omitempty"`
	// Hyperv (Hypervclock) - lets guests read the host’s wall clock time (paravirtualized). For windows guests.
	Hyperv *KubevirtIoApiCoreV1HypervTimer `json:"hyperv,omitempty"`
	// KVM  (KVM clock) - lets guests read the host’s wall clock time (paravirtualized). For linux guests.
	Kvm *KubevirtIoApiCoreV1KvmTimer `json:"kvm,omitempty"`
	// PIT (Programmable Interval Timer) - a timer with periodic interrupts.
	Pit *KubevirtIoApiCoreV1PitTimer `json:"pit,omitempty"`
	// RTC (Real Time Clock) - a continuously running timer with periodic interrupts.
	Rtc *KubevirtIoApiCoreV1RtcTimer `json:"rtc,omitempty"`
}
