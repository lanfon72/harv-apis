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


class KubevirtIoApiCoreV1DataVolumeSource(object):
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
        'hotpluggable': 'bool',
        'name': 'str'
    }

    attribute_map = {
        'hotpluggable': 'hotpluggable',
        'name': 'name'
    }

    def __init__(self, hotpluggable=None, name='', _configuration=None):  # noqa: E501
        """KubevirtIoApiCoreV1DataVolumeSource - a model defined in Swagger"""  # noqa: E501
        if _configuration is None:
            _configuration = Configuration()
        self._configuration = _configuration

        self._hotpluggable = None
        self._name = None
        self.discriminator = None

        if hotpluggable is not None:
            self.hotpluggable = hotpluggable
        self.name = name

    @property
    def hotpluggable(self):
        """Gets the hotpluggable of this KubevirtIoApiCoreV1DataVolumeSource.  # noqa: E501

        Hotpluggable indicates whether the volume can be hotplugged and hotunplugged.  # noqa: E501

        :return: The hotpluggable of this KubevirtIoApiCoreV1DataVolumeSource.  # noqa: E501
        :rtype: bool
        """
        return self._hotpluggable

    @hotpluggable.setter
    def hotpluggable(self, hotpluggable):
        """Sets the hotpluggable of this KubevirtIoApiCoreV1DataVolumeSource.

        Hotpluggable indicates whether the volume can be hotplugged and hotunplugged.  # noqa: E501

        :param hotpluggable: The hotpluggable of this KubevirtIoApiCoreV1DataVolumeSource.  # noqa: E501
        :type: bool
        """

        self._hotpluggable = hotpluggable

    @property
    def name(self):
        """Gets the name of this KubevirtIoApiCoreV1DataVolumeSource.  # noqa: E501

        Name represents the name of the DataVolume in the same namespace  # noqa: E501

        :return: The name of this KubevirtIoApiCoreV1DataVolumeSource.  # noqa: E501
        :rtype: str
        """
        return self._name

    @name.setter
    def name(self, name):
        """Sets the name of this KubevirtIoApiCoreV1DataVolumeSource.

        Name represents the name of the DataVolume in the same namespace  # noqa: E501

        :param name: The name of this KubevirtIoApiCoreV1DataVolumeSource.  # noqa: E501
        :type: str
        """
        if self._configuration.client_side_validation and name is None:
            raise ValueError("Invalid value for `name`, must not be `None`")  # noqa: E501

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
        if issubclass(KubevirtIoApiCoreV1DataVolumeSource, dict):
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
        if not isinstance(other, KubevirtIoApiCoreV1DataVolumeSource):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, KubevirtIoApiCoreV1DataVolumeSource):
            return True

        return self.to_dict() != other.to_dict()
