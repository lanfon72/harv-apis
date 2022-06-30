/*
 * Harvester APIs
 *
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 * API version: v1beta1
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package harvester

// Represents a docker image with an embedded disk.
type KubevirtIoApiCoreV1ContainerDiskSource struct {
	// Image is the name of the image with the embedded disk.
	Image string `json:"image"`
	// Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise. Cannot be updated. More info: https://kubernetes.io/docs/concepts/containers/images#updating-images  Possible enum values:  - `\"Always\"` means that kubelet always attempts to pull the latest image. Container will fail If the pull fails.  - `\"IfNotPresent\"` means that kubelet pulls if the image isn't present on disk. Container will fail if the image isn't present and the pull fails.  - `\"Never\"` means that kubelet never pulls an image, but only uses a local image. Container will fail if the image isn't present
	ImagePullPolicy string `json:"imagePullPolicy,omitempty"`
	// ImagePullSecret is the name of the Docker registry secret required to pull the image. The secret must already exist.
	ImagePullSecret string `json:"imagePullSecret,omitempty"`
	// Path defines the path to disk file in the container
	Path string `json:"path,omitempty"`
}