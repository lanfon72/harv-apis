/*
 * Harvester APIs
 *
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 * API version: v1beta1
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package harvester

// OwnerReference contains enough information to let you identify an owning object. An owning object must be in the same namespace as the dependent, or be cluster-scoped, so there is no namespace field.
type K8sIoV1OwnerReference struct {
	// API version of the referent.
	ApiVersion string `json:"apiVersion"`
	// If true, AND if the owner has the \"foregroundDeletion\" finalizer, then the owner cannot be deleted from the key-value store until this reference is removed. Defaults to false. To set this field, a user needs \"delete\" permission of the owner, otherwise 422 (Unprocessable Entity) will be returned.
	BlockOwnerDeletion bool `json:"blockOwnerDeletion,omitempty"`
	// If true, this reference points to the managing controller.
	Controller bool `json:"controller,omitempty"`
	// Kind of the referent. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
	Kind string `json:"kind"`
	// Name of the referent. More info: http://kubernetes.io/docs/user-guide/identifiers#names
	Name string `json:"name"`
	// UID of the referent. More info: http://kubernetes.io/docs/user-guide/identifiers#uids
	Uid string `json:"uid"`
}