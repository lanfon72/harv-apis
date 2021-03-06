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


class KubevirtIoApiCoreV1CDRomTarget(object):
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
        'bus': 'str',
        'readonly': 'bool',
        'tray': 'str'
    }

    attribute_map = {
        'bus': 'bus',
        'readonly': 'readonly',
        'tray': 'tray'
    }

    def __init__(self, bus=None, readonly=None, tray=None, _configuration=None):  # noqa: E501
        """KubevirtIoApiCoreV1CDRomTarget - a model defined in Swagger"""  # noqa: E501
        if _configuration is None:
            _configuration = Configuration()
        self._configuration = _configuration

        self._bus = None
        self._readonly = None
        self._tray = None
        self.discriminator = None

        if bus is not None:
            self.bus = bus
        if readonly is not None:
            self.readonly = readonly
        if tray is not None:
            self.tray = tray

    @property
    def bus(self):
        """Gets the bus of this KubevirtIoApiCoreV1CDRomTarget.  # noqa: E501

        Bus indicates the type of disk device to emulate. supported values: virtio, sata, scsi.  # noqa: E501

        :return: The bus of this KubevirtIoApiCoreV1CDRomTarget.  # noqa: E501
        :rtype: str
        """
        return self._bus

    @bus.setter
    def bus(self, bus):
        """Sets the bus of this KubevirtIoApiCoreV1CDRomTarget.

        Bus indicates the type of disk device to emulate. supported values: virtio, sata, scsi.  # noqa: E501

        :param bus: The bus of this KubevirtIoApiCoreV1CDRomTarget.  # noqa: E501
        :type: str
        """

        self._bus = bus

    @property
    def readonly(self):
        """Gets the readonly of this KubevirtIoApiCoreV1CDRomTarget.  # noqa: E501

        ReadOnly. Defaults to true.  # noqa: E501

        :return: The readonly of this KubevirtIoApiCoreV1CDRomTarget.  # noqa: E501
        :rtype: bool
        """
        return self._readonly

    @readonly.setter
    def readonly(self, readonly):
        """Sets the readonly of this KubevirtIoApiCoreV1CDRomTarget.

        ReadOnly. Defaults to true.  # noqa: E501

        :param readonly: The readonly of this KubevirtIoApiCoreV1CDRomTarget.  # noqa: E501
        :type: bool
        """

        self._readonly = readonly

    @property
    def tray(self):
        """Gets the tray of this KubevirtIoApiCoreV1CDRomTarget.  # noqa: E501

        Tray indicates if the tray of the device is open or closed. Allowed values are \"open\" and \"closed\". Defaults to closed.  # noqa: E501

        :return: The tray of this KubevirtIoApiCoreV1CDRomTarget.  # noqa: E501
        :rtype: str
        """
        return self._tray

    @tray.setter
    def tray(self, tray):
        """Sets the tray of this KubevirtIoApiCoreV1CDRomTarget.

        Tray indicates if the tray of the device is open or closed. Allowed values are \"open\" and \"closed\". Defaults to closed.  # noqa: E501

        :param tray: The tray of this KubevirtIoApiCoreV1CDRomTarget.  # noqa: E501
        :type: str
        """

        self._tray = tray

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
        if issubclass(KubevirtIoApiCoreV1CDRomTarget, dict):
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
        if not isinstance(other, KubevirtIoApiCoreV1CDRomTarget):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, KubevirtIoApiCoreV1CDRomTarget):
            return True

        return self.to_dict() != other.to_dict()
