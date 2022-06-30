/*
 * Harvester APIs
 *
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 * API version: v1beta1
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package harvester

// DataVolumeSourceHTTP can be either an http or https endpoint, with an optional basic auth user name and password, and an optional configmap containing additional CAs
type KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSourceHttp struct {
	// CertConfigMap is a configmap reference, containing a Certificate Authority(CA) public key, and a base64 encoded pem certificate
	CertConfigMap string `json:"certConfigMap,omitempty"`
	// ExtraHeaders is a list of strings containing extra headers to include with HTTP transfer requests
	ExtraHeaders []string `json:"extraHeaders,omitempty"`
	// SecretExtraHeaders is a list of Secret references, each containing an extra HTTP header that may include sensitive information
	SecretExtraHeaders []string `json:"secretExtraHeaders,omitempty"`
	// SecretRef A Secret reference, the secret should contain accessKeyId (user name) base64 encoded, and secretKey (password) also base64 encoded
	SecretRef string `json:"secretRef,omitempty"`
	// URL is the URL of the http(s) endpoint
	Url string `json:"url"`
}
