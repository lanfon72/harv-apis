/*
 * Harvester APIs
 *
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 * API version: v1beta1
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package harvester

type NetworkHarvesterhciIoV1beta1LinkStatus struct {
	Conditions []NetworkHarvesterhciIoV1beta1Condition `json:"conditions,omitempty"`
	Index int32 `json:"index,omitempty"`
	Ipv4Address []string `json:"ipv4Address,omitempty"`
	Mac string `json:"mac,omitempty"`
	MasterIndex int32 `json:"masterIndex,omitempty"`
	Promiscuous bool `json:"promiscuous,omitempty"`
	Routes []string `json:"routes,omitempty"`
	State string `json:"state,omitempty"`
	Type_ string `json:"type,omitempty"`
}
