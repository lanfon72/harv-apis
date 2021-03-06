/*
 * Harvester APIs
 *
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 * API version: v1beta1
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package harvester

type KubevirtIoApiCoreV1HostDevice struct {
	// DeviceName is the resource name of the host device exposed by a device plugin
	DeviceName string `json:"deviceName"`
	Name string `json:"name"`
	// If specified, the virtual network interface address and its tag will be provided to the guest via config drive
	Tag string `json:"tag,omitempty"`
}
