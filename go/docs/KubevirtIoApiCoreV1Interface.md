# KubevirtIoApiCoreV1Interface

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BootOrder** | **int32** | BootOrder is an integer value &gt; 0, used to determine ordering of boot devices. Lower values take precedence. Each interface or disk that has a boot order must have a unique value. Interfaces without a boot order are not tried. | [optional] [default to null]
**Bridge** | [***KubevirtIoApiCoreV1InterfaceBridge**](kubevirt.io.api.core.v1.InterfaceBridge.md) |  | [optional] [default to null]
**DhcpOptions** | [***KubevirtIoApiCoreV1DhcpOptions**](kubevirt.io.api.core.v1.DHCPOptions.md) | If specified the network interface will pass additional DHCP options to the VMI | [optional] [default to null]
**MacAddress** | **string** | Interface MAC address. For example: de:ad:00:00:be:af or DE-AD-00-00-BE-AF. | [optional] [default to null]
**Macvtap** | [***KubevirtIoApiCoreV1InterfaceMacvtap**](kubevirt.io.api.core.v1.InterfaceMacvtap.md) |  | [optional] [default to null]
**Masquerade** | [***KubevirtIoApiCoreV1InterfaceMasquerade**](kubevirt.io.api.core.v1.InterfaceMasquerade.md) |  | [optional] [default to null]
**Model** | **string** | Interface model. One of: e1000, e1000e, ne2k_pci, pcnet, rtl8139, virtio. Defaults to virtio. | [optional] [default to null]
**Name** | **string** | Logical name of the interface as well as a reference to the associated networks. Must match the Name of a Network. | [default to null]
**PciAddress** | **string** | If specified, the virtual network interface will be placed on the guests pci address with the specified PCI address. For example: 0000:81:01.10 | [optional] [default to null]
**Ports** | [**[]KubevirtIoApiCoreV1Port**](kubevirt.io.api.core.v1.Port.md) | List of ports to be forwarded to the virtual machine. | [optional] [default to null]
**Slirp** | [***KubevirtIoApiCoreV1InterfaceSlirp**](kubevirt.io.api.core.v1.InterfaceSlirp.md) |  | [optional] [default to null]
**Sriov** | [***KubevirtIoApiCoreV1InterfaceSriov**](kubevirt.io.api.core.v1.InterfaceSRIOV.md) |  | [optional] [default to null]
**Tag** | **string** | If specified, the virtual network interface address and its tag will be provided to the guest via config drive | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


