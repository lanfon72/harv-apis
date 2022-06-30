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


class KubevirtIoApiCoreV1RTCTimer(object):
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
        'present': 'bool',
        'tick_policy': 'str',
        'track': 'str'
    }

    attribute_map = {
        'present': 'present',
        'tick_policy': 'tickPolicy',
        'track': 'track'
    }

    def __init__(self, present=None, tick_policy=None, track=None, _configuration=None):  # noqa: E501
        """KubevirtIoApiCoreV1RTCTimer - a model defined in Swagger"""  # noqa: E501
        if _configuration is None:
            _configuration = Configuration()
        self._configuration = _configuration

        self._present = None
        self._tick_policy = None
        self._track = None
        self.discriminator = None

        if present is not None:
            self.present = present
        if tick_policy is not None:
            self.tick_policy = tick_policy
        if track is not None:
            self.track = track

    @property
    def present(self):
        """Gets the present of this KubevirtIoApiCoreV1RTCTimer.  # noqa: E501

        Enabled set to false makes sure that the machine type or a preset can't add the timer. Defaults to true.  # noqa: E501

        :return: The present of this KubevirtIoApiCoreV1RTCTimer.  # noqa: E501
        :rtype: bool
        """
        return self._present

    @present.setter
    def present(self, present):
        """Sets the present of this KubevirtIoApiCoreV1RTCTimer.

        Enabled set to false makes sure that the machine type or a preset can't add the timer. Defaults to true.  # noqa: E501

        :param present: The present of this KubevirtIoApiCoreV1RTCTimer.  # noqa: E501
        :type: bool
        """

        self._present = present

    @property
    def tick_policy(self):
        """Gets the tick_policy of this KubevirtIoApiCoreV1RTCTimer.  # noqa: E501

        TickPolicy determines what happens when QEMU misses a deadline for injecting a tick to the guest. One of \"delay\", \"catchup\".  # noqa: E501

        :return: The tick_policy of this KubevirtIoApiCoreV1RTCTimer.  # noqa: E501
        :rtype: str
        """
        return self._tick_policy

    @tick_policy.setter
    def tick_policy(self, tick_policy):
        """Sets the tick_policy of this KubevirtIoApiCoreV1RTCTimer.

        TickPolicy determines what happens when QEMU misses a deadline for injecting a tick to the guest. One of \"delay\", \"catchup\".  # noqa: E501

        :param tick_policy: The tick_policy of this KubevirtIoApiCoreV1RTCTimer.  # noqa: E501
        :type: str
        """

        self._tick_policy = tick_policy

    @property
    def track(self):
        """Gets the track of this KubevirtIoApiCoreV1RTCTimer.  # noqa: E501

        Track the guest or the wall clock.  # noqa: E501

        :return: The track of this KubevirtIoApiCoreV1RTCTimer.  # noqa: E501
        :rtype: str
        """
        return self._track

    @track.setter
    def track(self, track):
        """Sets the track of this KubevirtIoApiCoreV1RTCTimer.

        Track the guest or the wall clock.  # noqa: E501

        :param track: The track of this KubevirtIoApiCoreV1RTCTimer.  # noqa: E501
        :type: str
        """

        self._track = track

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
        if issubclass(KubevirtIoApiCoreV1RTCTimer, dict):
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
        if not isinstance(other, KubevirtIoApiCoreV1RTCTimer):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, KubevirtIoApiCoreV1RTCTimer):
            return True

        return self.to_dict() != other.to_dict()
