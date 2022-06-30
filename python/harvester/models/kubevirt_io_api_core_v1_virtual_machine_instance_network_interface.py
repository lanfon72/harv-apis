# coding: utf-8

"""
    Harvester APIs

    No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)  # noqa: E501

    OpenAPI spec version: v1beta1
    
    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""


import pprint
import re  # noqa: F401

import six

from harvester.configuration import Configuration


class KubevirtIoApiCoreV1VirtualMachineInstanceNetworkInterface(object):
    """NOTE: This class is auto generated by the swagger code generator program.

    Do not edit the class manually.
    """

    """
    Attributes:
      swagger_types (dict): The key is attribute name
                            and the value is attribute type.
      attribute_map (dict): The key is attribute name
                            and the value is json key in definition.
    """
    swagger_types = {
        'info_source': 'str',
        'interface_name': 'str',
        'ip_address': 'str',
        'ip_addresses': 'list[str]',
        'mac': 'str',
        'name': 'str'
    }

    attribute_map = {
        'info_source': 'infoSource',
        'interface_name': 'interfaceName',
        'ip_address': 'ipAddress',
        'ip_addresses': 'ipAddresses',
        'mac': 'mac',
        'name': 'name'
    }

    def __init__(self, info_source=None, interface_name=None, ip_address=None, ip_addresses=None, mac=None, name=None, _configuration=None):  # noqa: E501
        """KubevirtIoApiCoreV1VirtualMachineInstanceNetworkInterface - a model defined in Swagger"""  # noqa: E501
        if _configuration is None:
            _configuration = Configuration()
        self._configuration = _configuration

        self._info_source = None
        self._interface_name = None
        self._ip_address = None
        self._ip_addresses = None
        self._mac = None
        self._name = None
        self.discriminator = None

        if info_source is not None:
            self.info_source = info_source
        if interface_name is not None:
            self.interface_name = interface_name
        if ip_address is not None:
            self.ip_address = ip_address
        if ip_addresses is not None:
            self.ip_addresses = ip_addresses
        if mac is not None:
            self.mac = mac
        if name is not None:
            self.name = name

    @property
    def info_source(self):
        """Gets the info_source of this KubevirtIoApiCoreV1VirtualMachineInstanceNetworkInterface.  # noqa: E501

        Specifies the origin of the interface data collected. values: domain, guest-agent, or both  # noqa: E501

        :return: The info_source of this KubevirtIoApiCoreV1VirtualMachineInstanceNetworkInterface.  # noqa: E501
        :rtype: str
        """
        return self._info_source

    @info_source.setter
    def info_source(self, info_source):
        """Sets the info_source of this KubevirtIoApiCoreV1VirtualMachineInstanceNetworkInterface.

        Specifies the origin of the interface data collected. values: domain, guest-agent, or both  # noqa: E501

        :param info_source: The info_source of this KubevirtIoApiCoreV1VirtualMachineInstanceNetworkInterface.  # noqa: E501
        :type: str
        """

        self._info_source = info_source

    @property
    def interface_name(self):
        """Gets the interface_name of this KubevirtIoApiCoreV1VirtualMachineInstanceNetworkInterface.  # noqa: E501

        The interface name inside the Virtual Machine  # noqa: E501

        :return: The interface_name of this KubevirtIoApiCoreV1VirtualMachineInstanceNetworkInterface.  # noqa: E501
        :rtype: str
        """
        return self._interface_name

    @interface_name.setter
    def interface_name(self, interface_name):
        """Sets the interface_name of this KubevirtIoApiCoreV1VirtualMachineInstanceNetworkInterface.

        The interface name inside the Virtual Machine  # noqa: E501

        :param interface_name: The interface_name of this KubevirtIoApiCoreV1VirtualMachineInstanceNetworkInterface.  # noqa: E501
        :type: str
        """

        self._interface_name = interface_name

    @property
    def ip_address(self):
        """Gets the ip_address of this KubevirtIoApiCoreV1VirtualMachineInstanceNetworkInterface.  # noqa: E501

        IP address of a Virtual Machine interface. It is always the first item of IPs  # noqa: E501

        :return: The ip_address of this KubevirtIoApiCoreV1VirtualMachineInstanceNetworkInterface.  # noqa: E501
        :rtype: str
        """
        return self._ip_address

    @ip_address.setter
    def ip_address(self, ip_address):
        """Sets the ip_address of this KubevirtIoApiCoreV1VirtualMachineInstanceNetworkInterface.

        IP address of a Virtual Machine interface. It is always the first item of IPs  # noqa: E501

        :param ip_address: The ip_address of this KubevirtIoApiCoreV1VirtualMachineInstanceNetworkInterface.  # noqa: E501
        :type: str
        """

        self._ip_address = ip_address

    @property
    def ip_addresses(self):
        """Gets the ip_addresses of this KubevirtIoApiCoreV1VirtualMachineInstanceNetworkInterface.  # noqa: E501

        List of all IP addresses of a Virtual Machine interface  # noqa: E501

        :return: The ip_addresses of this KubevirtIoApiCoreV1VirtualMachineInstanceNetworkInterface.  # noqa: E501
        :rtype: list[str]
        """
        return self._ip_addresses

    @ip_addresses.setter
    def ip_addresses(self, ip_addresses):
        """Sets the ip_addresses of this KubevirtIoApiCoreV1VirtualMachineInstanceNetworkInterface.

        List of all IP addresses of a Virtual Machine interface  # noqa: E501

        :param ip_addresses: The ip_addresses of this KubevirtIoApiCoreV1VirtualMachineInstanceNetworkInterface.  # noqa: E501
        :type: list[str]
        """

        self._ip_addresses = ip_addresses

    @property
    def mac(self):
        """Gets the mac of this KubevirtIoApiCoreV1VirtualMachineInstanceNetworkInterface.  # noqa: E501

        Hardware address of a Virtual Machine interface  # noqa: E501

        :return: The mac of this KubevirtIoApiCoreV1VirtualMachineInstanceNetworkInterface.  # noqa: E501
        :rtype: str
        """
        return self._mac

    @mac.setter
    def mac(self, mac):
        """Sets the mac of this KubevirtIoApiCoreV1VirtualMachineInstanceNetworkInterface.

        Hardware address of a Virtual Machine interface  # noqa: E501

        :param mac: The mac of this KubevirtIoApiCoreV1VirtualMachineInstanceNetworkInterface.  # noqa: E501
        :type: str
        """

        self._mac = mac

    @property
    def name(self):
        """Gets the name of this KubevirtIoApiCoreV1VirtualMachineInstanceNetworkInterface.  # noqa: E501

        Name of the interface, corresponds to name of the network assigned to the interface  # noqa: E501

        :return: The name of this KubevirtIoApiCoreV1VirtualMachineInstanceNetworkInterface.  # noqa: E501
        :rtype: str
        """
        return self._name

    @name.setter
    def name(self, name):
        """Sets the name of this KubevirtIoApiCoreV1VirtualMachineInstanceNetworkInterface.

        Name of the interface, corresponds to name of the network assigned to the interface  # noqa: E501

        :param name: The name of this KubevirtIoApiCoreV1VirtualMachineInstanceNetworkInterface.  # noqa: E501
        :type: str
        """

        self._name = name

    def to_dict(self):
        """Returns the model properties as a dict"""
        result = {}

        for attr, _ in six.iteritems(self.swagger_types):
            value = getattr(self, attr)
            if isinstance(value, list):
                result[attr] = list(map(
                    lambda x: x.to_dict() if hasattr(x, "to_dict") else x,
                    value
                ))
            elif hasattr(value, "to_dict"):
                result[attr] = value.to_dict()
            elif isinstance(value, dict):
                result[attr] = dict(map(
                    lambda item: (item[0], item[1].to_dict())
                    if hasattr(item[1], "to_dict") else item,
                    value.items()
                ))
            else:
                result[attr] = value
        if issubclass(KubevirtIoApiCoreV1VirtualMachineInstanceNetworkInterface, dict):
            for key, value in self.items():
                result[key] = value

        return result

    def to_str(self):
        """Returns the string representation of the model"""
        return pprint.pformat(self.to_dict())

    def __repr__(self):
        """For `print` and `pprint`"""
        return self.to_str()

    def __eq__(self, other):
        """Returns true if both objects are equal"""
        if not isinstance(other, KubevirtIoApiCoreV1VirtualMachineInstanceNetworkInterface):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, KubevirtIoApiCoreV1VirtualMachineInstanceNetworkInterface):
            return True

        return self.to_dict() != other.to_dict()