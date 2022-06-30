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


class KubevirtIoApiCoreV1VolumeSnapshotStatus(object):
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
        'enabled': 'bool',
        'name': 'str',
        'reason': 'str'
    }

    attribute_map = {
        'enabled': 'enabled',
        'name': 'name',
        'reason': 'reason'
    }

    def __init__(self, enabled=False, name='', reason=None, _configuration=None):  # noqa: E501
        """KubevirtIoApiCoreV1VolumeSnapshotStatus - a model defined in Swagger"""  # noqa: E501
        if _configuration is None:
            _configuration = Configuration()
        self._configuration = _configuration

        self._enabled = None
        self._name = None
        self._reason = None
        self.discriminator = None

        self.enabled = enabled
        self.name = name
        if reason is not None:
            self.reason = reason

    @property
    def enabled(self):
        """Gets the enabled of this KubevirtIoApiCoreV1VolumeSnapshotStatus.  # noqa: E501

        True if the volume supports snapshotting  # noqa: E501

        :return: The enabled of this KubevirtIoApiCoreV1VolumeSnapshotStatus.  # noqa: E501
        :rtype: bool
        """
        return self._enabled

    @enabled.setter
    def enabled(self, enabled):
        """Sets the enabled of this KubevirtIoApiCoreV1VolumeSnapshotStatus.

        True if the volume supports snapshotting  # noqa: E501

        :param enabled: The enabled of this KubevirtIoApiCoreV1VolumeSnapshotStatus.  # noqa: E501
        :type: bool
        """
        if self._configuration.client_side_validation and enabled is None:
            raise ValueError("Invalid value for `enabled`, must not be `None`")  # noqa: E501

        self._enabled = enabled

    @property
    def name(self):
        """Gets the name of this KubevirtIoApiCoreV1VolumeSnapshotStatus.  # noqa: E501

        Volume name  # noqa: E501

        :return: The name of this KubevirtIoApiCoreV1VolumeSnapshotStatus.  # noqa: E501
        :rtype: str
        """
        return self._name

    @name.setter
    def name(self, name):
        """Sets the name of this KubevirtIoApiCoreV1VolumeSnapshotStatus.

        Volume name  # noqa: E501

        :param name: The name of this KubevirtIoApiCoreV1VolumeSnapshotStatus.  # noqa: E501
        :type: str
        """
        if self._configuration.client_side_validation and name is None:
            raise ValueError("Invalid value for `name`, must not be `None`")  # noqa: E501

        self._name = name

    @property
    def reason(self):
        """Gets the reason of this KubevirtIoApiCoreV1VolumeSnapshotStatus.  # noqa: E501

        Empty if snapshotting is enabled, contains reason otherwise  # noqa: E501

        :return: The reason of this KubevirtIoApiCoreV1VolumeSnapshotStatus.  # noqa: E501
        :rtype: str
        """
        return self._reason

    @reason.setter
    def reason(self, reason):
        """Sets the reason of this KubevirtIoApiCoreV1VolumeSnapshotStatus.

        Empty if snapshotting is enabled, contains reason otherwise  # noqa: E501

        :param reason: The reason of this KubevirtIoApiCoreV1VolumeSnapshotStatus.  # noqa: E501
        :type: str
        """

        self._reason = reason

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
        if issubclass(KubevirtIoApiCoreV1VolumeSnapshotStatus, dict):
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
        if not isinstance(other, KubevirtIoApiCoreV1VolumeSnapshotStatus):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, KubevirtIoApiCoreV1VolumeSnapshotStatus):
            return True

        return self.to_dict() != other.to_dict()