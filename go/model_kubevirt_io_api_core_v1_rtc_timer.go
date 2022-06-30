/*
 * Harvester APIs
 *
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 * API version: v1beta1
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package harvester

type KubevirtIoApiCoreV1RtcTimer struct {
	// Enabled set to false makes sure that the machine type or a preset can't add the timer. Defaults to true.
	Present bool `json:"present,omitempty"`
	// TickPolicy determines what happens when QEMU misses a deadline for injecting a tick to the guest. One of \"delay\", \"catchup\".
	TickPolicy string `json:"tickPolicy,omitempty"`
	// Track the guest or the wall clock.
	Track string `json:"track,omitempty"`
}