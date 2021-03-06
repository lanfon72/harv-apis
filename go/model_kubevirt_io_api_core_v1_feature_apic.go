/*
 * Harvester APIs
 *
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 * API version: v1beta1
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package harvester

type KubevirtIoApiCoreV1FeatureApic struct {
	// Enabled determines if the feature should be enabled or disabled on the guest. Defaults to true.
	Enabled bool `json:"enabled,omitempty"`
	// EndOfInterrupt enables the end of interrupt notification in the guest. Defaults to false.
	EndOfInterrupt bool `json:"endOfInterrupt,omitempty"`
}
