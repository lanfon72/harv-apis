/*
 * Harvester APIs
 *
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 * API version: v1beta1
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package harvester

// Represents a disk created on the cluster level
type KubevirtIoApiCoreV1HostDisk struct {
	// Capacity of the sparse disk
	Capacity *K8sIoApimachineryPkgApiResourceQuantity `json:"capacity,omitempty"`
	// The path to HostDisk image located on the cluster
	Path string `json:"path"`
	// Shared indicate whether the path is shared between nodes
	Shared bool `json:"shared,omitempty"`
	// Contains information if disk.img exists or should be created allowed options are 'Disk' and 'DiskOrCreate'
	Type_ string `json:"type"`
}
