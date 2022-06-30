/*
 * Harvester APIs
 *
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 * API version: v1beta1
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package harvester

type KubevirtIoApiCoreV1FeatureVendorId struct {
	// Enabled determines if the feature should be enabled or disabled on the guest. Defaults to true.
	Enabled bool `json:"enabled,omitempty"`
	// VendorID sets the hypervisor vendor id, visible to the vmi. String up to twelve characters.
	Vendorid string `json:"vendorid,omitempty"`
}
