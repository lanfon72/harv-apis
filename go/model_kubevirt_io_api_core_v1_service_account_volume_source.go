/*
 * Harvester APIs
 *
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 * API version: v1beta1
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package harvester

// ServiceAccountVolumeSource adapts a ServiceAccount into a volume.
type KubevirtIoApiCoreV1ServiceAccountVolumeSource struct {
	// Name of the service account in the pod's namespace to use. More info: https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/
	ServiceAccountName string `json:"serviceAccountName,omitempty"`
}
