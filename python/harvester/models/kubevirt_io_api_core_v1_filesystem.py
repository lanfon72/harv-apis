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


class KubevirtIoApiCoreV1Filesystem(object):
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
        'name': 'str',
        'virtiofs': 'KubevirtIoApiCoreV1FilesystemVirtiofs'
    }

    attribute_map = {
        'name': 'name',
        'virtiofs': 'virtiofs'
    }

    def __init__(self, name='', virtiofs=None, _configuration=None):  # noqa: E501
        """KubevirtIoApiCoreV1Filesystem - a model defined in Swagger"""  # noqa: E501
        if _configuration is None:
            _configuration = Configuration()
        self._configuration = _configuration

        self._name = None
        self._virtiofs = None
        self.discriminator = None

        self.name = name
        self.virtiofs = virtiofs

    @property
    def name(self):
        """Gets the name of this KubevirtIoApiCoreV1Filesystem.  # noqa: E501

        Name is the device name  # noqa: E501

        :return: The name of this KubevirtIoApiCoreV1Filesystem.  # noqa: E501
        :rtype: str
        """
        return self._name

    @name.setter
    def name(self, name):
        """Sets the name of this KubevirtIoApiCoreV1Filesystem.

        Name is the device name  # noqa: E501

        :param name: The name of this KubevirtIoApiCoreV1Filesystem.  # noqa: E501
        :type: str
        """
        if self._configuration.client_side_validation and name is None:
            raise ValueError("Invalid value for `name`, must not be `None`")  # noqa: E501

        self._name = name

    @property
    def virtiofs(self):
        """Gets the virtiofs of this KubevirtIoApiCoreV1Filesystem.  # noqa: E501

        Virtiofs is supported  # noqa: E501

        :return: The virtiofs of this KubevirtIoApiCoreV1Filesystem.  # noqa: E501
        :rtype: KubevirtIoApiCoreV1FilesystemVirtiofs
        """
        return self._virtiofs

    @virtiofs.setter
    def virtiofs(self, virtiofs):
        """Sets the virtiofs of this KubevirtIoApiCoreV1Filesystem.

        Virtiofs is supported  # noqa: E501

        :param virtiofs: The virtiofs of this KubevirtIoApiCoreV1Filesystem.  # noqa: E501
        :type: KubevirtIoApiCoreV1FilesystemVirtiofs
        """
        if self._configuration.client_side_validation and virtiofs is None:
            raise ValueError("Invalid value for `virtiofs`, must not be `None`")  # noqa: E501

        self._virtiofs = virtiofs

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
        if issubclass(KubevirtIoApiCoreV1Filesystem, dict):
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
        if not isinstance(other, KubevirtIoApiCoreV1Filesystem):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, KubevirtIoApiCoreV1Filesystem):
            return True

        return self.to_dict() != other.to_dict()
