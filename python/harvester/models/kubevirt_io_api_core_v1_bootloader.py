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


class KubevirtIoApiCoreV1Bootloader(object):
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
        'bios': 'KubevirtIoApiCoreV1BIOS',
        'efi': 'KubevirtIoApiCoreV1EFI'
    }

    attribute_map = {
        'bios': 'bios',
        'efi': 'efi'
    }

    def __init__(self, bios=None, efi=None, _configuration=None):  # noqa: E501
        """KubevirtIoApiCoreV1Bootloader - a model defined in Swagger"""  # noqa: E501
        if _configuration is None:
            _configuration = Configuration()
        self._configuration = _configuration

        self._bios = None
        self._efi = None
        self.discriminator = None

        if bios is not None:
            self.bios = bios
        if efi is not None:
            self.efi = efi

    @property
    def bios(self):
        """Gets the bios of this KubevirtIoApiCoreV1Bootloader.  # noqa: E501

        If set (default), BIOS will be used.  # noqa: E501

        :return: The bios of this KubevirtIoApiCoreV1Bootloader.  # noqa: E501
        :rtype: KubevirtIoApiCoreV1BIOS
        """
        return self._bios

    @bios.setter
    def bios(self, bios):
        """Sets the bios of this KubevirtIoApiCoreV1Bootloader.

        If set (default), BIOS will be used.  # noqa: E501

        :param bios: The bios of this KubevirtIoApiCoreV1Bootloader.  # noqa: E501
        :type: KubevirtIoApiCoreV1BIOS
        """

        self._bios = bios

    @property
    def efi(self):
        """Gets the efi of this KubevirtIoApiCoreV1Bootloader.  # noqa: E501

        If set, EFI will be used instead of BIOS.  # noqa: E501

        :return: The efi of this KubevirtIoApiCoreV1Bootloader.  # noqa: E501
        :rtype: KubevirtIoApiCoreV1EFI
        """
        return self._efi

    @efi.setter
    def efi(self, efi):
        """Sets the efi of this KubevirtIoApiCoreV1Bootloader.

        If set, EFI will be used instead of BIOS.  # noqa: E501

        :param efi: The efi of this KubevirtIoApiCoreV1Bootloader.  # noqa: E501
        :type: KubevirtIoApiCoreV1EFI
        """

        self._efi = efi

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
        if issubclass(KubevirtIoApiCoreV1Bootloader, dict):
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
        if not isinstance(other, KubevirtIoApiCoreV1Bootloader):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, KubevirtIoApiCoreV1Bootloader):
            return True

        return self.to_dict() != other.to_dict()