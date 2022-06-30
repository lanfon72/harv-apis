/*
 * Harvester APIs
 *
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 * API version: v1beta1
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package harvester

type KubevirtIoApiCoreV1VirtualMachineInstanceNetworkInterface struct {
	// Specifies the origin of the interface data collected. values: domain, guest-agent, or both
	InfoSource string `json:"infoSource,omitempty"`
	// The interface name inside the Virtual Machine
	InterfaceName string `json:"interfaceName,omitempty"`
	// IP address of a Virtual Machine interface. It is always the first item of IPs
	IpAddress string `json:"ipAddress,omitempty"`
	// List of all IP addresses of a Virtual Machine interface
	IpAddresses []string `json:"ipAddresses,omitempty"`
	// Hardware address of a Virtual Machine interface
	Mac string `json:"mac,omitempty"`
	// Name of the interface, corresponds to name of the network assigned to the interface
	Name string `json:"name,omitempty"`
}
