/*
 * Harvester APIs
 *
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 * API version: v1beta1
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package harvester

// HTTPGetAction describes an action based on HTTP Get requests.
type K8sIoV1HttpGetAction struct {
	// Host name to connect to, defaults to the pod IP. You probably want to set \"Host\" in httpHeaders instead.
	Host string `json:"host,omitempty"`
	// Custom headers to set in the request. HTTP allows repeated headers.
	HttpHeaders []K8sIoV1HttpHeader `json:"httpHeaders,omitempty"`
	// Path to access on the HTTP server.
	Path string `json:"path,omitempty"`
	// Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME.
	Port *K8sIoApimachineryPkgUtilIntstrIntOrString `json:"port"`
	// Scheme to use for connecting to the host. Defaults to HTTP.  Possible enum values:  - `\"HTTP\"` means that the scheme used will be http://  - `\"HTTPS\"` means that the scheme used will be https://
	Scheme string `json:"scheme,omitempty"`
}
