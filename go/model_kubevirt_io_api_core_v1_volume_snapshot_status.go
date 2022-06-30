/*
 * Harvester APIs
 *
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 * API version: v1beta1
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package harvester

type KubevirtIoApiCoreV1VolumeSnapshotStatus struct {
	// True if the volume supports snapshotting
	Enabled bool `json:"enabled"`
	// Volume name
	Name string `json:"name"`
	// Empty if snapshotting is enabled, contains reason otherwise
	Reason string `json:"reason,omitempty"`
}