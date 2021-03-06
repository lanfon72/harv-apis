/*
 * Harvester APIs
 *
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 * API version: v1beta1
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package harvester

// Represent a subset of client devices that can be accessed by VMI. At the moment only, USB devices using Usbredir's library and tooling. Another fit would be a smartcard with libcacard.  The struct is currently empty as there is no immediate request for user-facing APIs. This structure simply turns on USB redirection of UsbClientPassthroughMaxNumberOf devices.
type KubevirtIoApiCoreV1ClientPassthroughDevices struct {
}
