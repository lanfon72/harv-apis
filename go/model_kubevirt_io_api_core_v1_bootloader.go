/*
 * Harvester APIs
 *
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 * API version: v1beta1
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package harvester

// Represents the firmware blob used to assist in the domain creation process. Used for setting the QEMU BIOS file path for the libvirt domain.
type KubevirtIoApiCoreV1Bootloader struct {
	// If set (default), BIOS will be used.
	Bios *KubevirtIoApiCoreV1Bios `json:"bios,omitempty"`
	// If set, EFI will be used instead of BIOS.
	Efi *KubevirtIoApiCoreV1Efi `json:"efi,omitempty"`
}
