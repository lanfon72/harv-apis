/*
 * Harvester APIs
 *
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 * API version: v1beta1
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package harvester

type NetworkHarvesterhciIoV1beta1Nic struct {
	// Index of the NIC
	Index int32 `json:"index"`
	// Index of the NIC's master
	MasterIndex int32 `json:"masterIndex,omitempty"`
	// Name of the NIC
	Name string `json:"name"`
	// State of the NIC, up/down/unknown
	State string `json:"state"`
	// Interface type of the NIC
	Type_ string `json:"type"`
	// Specify whether used by management network or not
	UsedByManagementNetwork bool `json:"usedByManagementNetwork,omitempty"`
}
