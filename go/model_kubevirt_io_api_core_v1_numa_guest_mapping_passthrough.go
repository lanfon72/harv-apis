/*
 * Harvester APIs
 *
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 * API version: v1beta1
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package harvester

// NUMAGuestMappingPassthrough instructs kubevirt to model numa topology which is compatible with the CPU pinning on the guest. This will result in a subset of the node numa topology being passed through, ensuring that virtual numa nodes and their memory never cross boundaries coming from the node numa mapping.
type KubevirtIoApiCoreV1NumaGuestMappingPassthrough struct {
}