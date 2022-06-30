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


class HarvesterhciIoV1beta1VirtualMachineBackupSpec(object):
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
        'source': 'K8sIoV1TypedLocalObjectReference'
    }

    attribute_map = {
        'source': 'source'
    }

    def __init__(self, source=None, _configuration=None):  # noqa: E501
        """HarvesterhciIoV1beta1VirtualMachineBackupSpec - a model defined in Swagger"""  # noqa: E501
        if _configuration is None:
            _configuration = Configuration()
        self._configuration = _configuration

        self._source = None
        self.discriminator = None

        self.source = source

    @property
    def source(self):
        """Gets the source of this HarvesterhciIoV1beta1VirtualMachineBackupSpec.  # noqa: E501


        :return: The source of this HarvesterhciIoV1beta1VirtualMachineBackupSpec.  # noqa: E501
        :rtype: K8sIoV1TypedLocalObjectReference
        """
        return self._source

    @source.setter
    def source(self, source):
        """Sets the source of this HarvesterhciIoV1beta1VirtualMachineBackupSpec.


        :param source: The source of this HarvesterhciIoV1beta1VirtualMachineBackupSpec.  # noqa: E501
        :type: K8sIoV1TypedLocalObjectReference
        """
        if self._configuration.client_side_validation and source is None:
            raise ValueError("Invalid value for `source`, must not be `None`")  # noqa: E501

        self._source = source

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
        if issubclass(HarvesterhciIoV1beta1VirtualMachineBackupSpec, dict):
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
        if not isinstance(other, HarvesterhciIoV1beta1VirtualMachineBackupSpec):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, HarvesterhciIoV1beta1VirtualMachineBackupSpec):
            return True

        return self.to_dict() != other.to_dict()
