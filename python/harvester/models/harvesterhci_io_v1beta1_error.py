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


class HarvesterhciIoV1beta1Error(object):
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
        'message': 'str',
        'time': 'K8sIoV1Time'
    }

    attribute_map = {
        'message': 'message',
        'time': 'time'
    }

    def __init__(self, message=None, time=None, _configuration=None):  # noqa: E501
        """HarvesterhciIoV1beta1Error - a model defined in Swagger"""  # noqa: E501
        if _configuration is None:
            _configuration = Configuration()
        self._configuration = _configuration

        self._message = None
        self._time = None
        self.discriminator = None

        if message is not None:
            self.message = message
        if time is not None:
            self.time = time

    @property
    def message(self):
        """Gets the message of this HarvesterhciIoV1beta1Error.  # noqa: E501


        :return: The message of this HarvesterhciIoV1beta1Error.  # noqa: E501
        :rtype: str
        """
        return self._message

    @message.setter
    def message(self, message):
        """Sets the message of this HarvesterhciIoV1beta1Error.


        :param message: The message of this HarvesterhciIoV1beta1Error.  # noqa: E501
        :type: str
        """

        self._message = message

    @property
    def time(self):
        """Gets the time of this HarvesterhciIoV1beta1Error.  # noqa: E501


        :return: The time of this HarvesterhciIoV1beta1Error.  # noqa: E501
        :rtype: K8sIoV1Time
        """
        return self._time

    @time.setter
    def time(self, time):
        """Sets the time of this HarvesterhciIoV1beta1Error.


        :param time: The time of this HarvesterhciIoV1beta1Error.  # noqa: E501
        :type: K8sIoV1Time
        """

        self._time = time

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
        if issubclass(HarvesterhciIoV1beta1Error, dict):
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
        if not isinstance(other, HarvesterhciIoV1beta1Error):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, HarvesterhciIoV1beta1Error):
            return True

        return self.to_dict() != other.to_dict()
