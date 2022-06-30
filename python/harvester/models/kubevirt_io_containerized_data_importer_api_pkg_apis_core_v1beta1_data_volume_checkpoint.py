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


class KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeCheckpoint(object):
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
        'current': 'str',
        'previous': 'str'
    }

    attribute_map = {
        'current': 'current',
        'previous': 'previous'
    }

    def __init__(self, current='', previous='', _configuration=None):  # noqa: E501
        """KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeCheckpoint - a model defined in Swagger"""  # noqa: E501
        if _configuration is None:
            _configuration = Configuration()
        self._configuration = _configuration

        self._current = None
        self._previous = None
        self.discriminator = None

        self.current = current
        self.previous = previous

    @property
    def current(self):
        """Gets the current of this KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeCheckpoint.  # noqa: E501

        Current is the identifier of the snapshot created for this checkpoint.  # noqa: E501

        :return: The current of this KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeCheckpoint.  # noqa: E501
        :rtype: str
        """
        return self._current

    @current.setter
    def current(self, current):
        """Sets the current of this KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeCheckpoint.

        Current is the identifier of the snapshot created for this checkpoint.  # noqa: E501

        :param current: The current of this KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeCheckpoint.  # noqa: E501
        :type: str
        """
        if self._configuration.client_side_validation and current is None:
            raise ValueError("Invalid value for `current`, must not be `None`")  # noqa: E501

        self._current = current

    @property
    def previous(self):
        """Gets the previous of this KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeCheckpoint.  # noqa: E501

        Previous is the identifier of the snapshot from the previous checkpoint.  # noqa: E501

        :return: The previous of this KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeCheckpoint.  # noqa: E501
        :rtype: str
        """
        return self._previous

    @previous.setter
    def previous(self, previous):
        """Sets the previous of this KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeCheckpoint.

        Previous is the identifier of the snapshot from the previous checkpoint.  # noqa: E501

        :param previous: The previous of this KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeCheckpoint.  # noqa: E501
        :type: str
        """
        if self._configuration.client_side_validation and previous is None:
            raise ValueError("Invalid value for `previous`, must not be `None`")  # noqa: E501

        self._previous = previous

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
        if issubclass(KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeCheckpoint, dict):
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
        if not isinstance(other, KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeCheckpoint):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeCheckpoint):
            return True

        return self.to_dict() != other.to_dict()
