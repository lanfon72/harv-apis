/*
 * Harvester APIs
 *
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 * API version: v1beta1
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package harvester

// SecretVolumeSource adapts a Secret into a volume.
type KubevirtIoApiCoreV1SecretVolumeSource struct {
	// Specify whether the Secret or it's keys must be defined
	Optional bool `json:"optional,omitempty"`
	// Name of the secret in the pod's namespace to use. More info: https://kubernetes.io/docs/concepts/storage/volumes#secret
	SecretName string `json:"secretName,omitempty"`
	// The volume label of the resulting disk inside the VMI. Different bootstrapping mechanisms require different values. Typical values are \"cidata\" (cloud-init), \"config-2\" (cloud-init) or \"OEMDRV\" (kickstart).
	VolumeLabel string `json:"volumeLabel,omitempty"`
}
