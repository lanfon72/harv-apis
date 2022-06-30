/*
 * Harvester APIs
 *
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 * API version: v1beta1
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package harvester

// Extra DHCP options to use in the interface.
type KubevirtIoApiCoreV1DhcpOptions struct {
	// If specified will pass option 67 to interface's DHCP server
	BootFileName string `json:"bootFileName,omitempty"`
	// If specified will pass the configured NTP server to the VM via DHCP option 042.
	NtpServers []string `json:"ntpServers,omitempty"`
	// If specified will pass extra DHCP options for private use, range: 224-254
	PrivateOptions []KubevirtIoApiCoreV1DhcpPrivateOptions `json:"privateOptions,omitempty"`
	// If specified will pass option 66 to interface's DHCP server
	TftpServerName string `json:"tftpServerName,omitempty"`
}
