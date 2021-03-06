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


class KubevirtIoApiCoreV1Clock(object):
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
        'timer': 'KubevirtIoApiCoreV1Timer',
        'timezone': 'str',
        'utc': 'KubevirtIoApiCoreV1ClockOffsetUTC'
    }

    attribute_map = {
        'timer': 'timer',
        'timezone': 'timezone',
        'utc': 'utc'
    }

    def __init__(self, timer=None, timezone=None, utc=None, _configuration=None):  # noqa: E501
        """KubevirtIoApiCoreV1Clock - a model defined in Swagger"""  # noqa: E501
        if _configuration is None:
            _configuration = Configuration()
        self._configuration = _configuration

        self._timer = None
        self._timezone = None
        self._utc = None
        self.discriminator = None

        if timer is not None:
            self.timer = timer
        if timezone is not None:
            self.timezone = timezone
        if utc is not None:
            self.utc = utc

    @property
    def timer(self):
        """Gets the timer of this KubevirtIoApiCoreV1Clock.  # noqa: E501

        Timer specifies whih timers are attached to the vmi.  # noqa: E501

        :return: The timer of this KubevirtIoApiCoreV1Clock.  # noqa: E501
        :rtype: KubevirtIoApiCoreV1Timer
        """
        return self._timer

    @timer.setter
    def timer(self, timer):
        """Sets the timer of this KubevirtIoApiCoreV1Clock.

        Timer specifies whih timers are attached to the vmi.  # noqa: E501

        :param timer: The timer of this KubevirtIoApiCoreV1Clock.  # noqa: E501
        :type: KubevirtIoApiCoreV1Timer
        """

        self._timer = timer

    @property
    def timezone(self):
        """Gets the timezone of this KubevirtIoApiCoreV1Clock.  # noqa: E501

        Timezone sets the guest clock to the specified timezone. Zone name follows the TZ environment variable format (e.g. 'America/New_York').  # noqa: E501

        :return: The timezone of this KubevirtIoApiCoreV1Clock.  # noqa: E501
        :rtype: str
        """
        return self._timezone

    @timezone.setter
    def timezone(self, timezone):
        """Sets the timezone of this KubevirtIoApiCoreV1Clock.

        Timezone sets the guest clock to the specified timezone. Zone name follows the TZ environment variable format (e.g. 'America/New_York').  # noqa: E501

        :param timezone: The timezone of this KubevirtIoApiCoreV1Clock.  # noqa: E501
        :type: str
        """

        self._timezone = timezone

    @property
    def utc(self):
        """Gets the utc of this KubevirtIoApiCoreV1Clock.  # noqa: E501

        UTC sets the guest clock to UTC on each boot. If an offset is specified, guest changes to the clock will be kept during reboots and are not reset.  # noqa: E501

        :return: The utc of this KubevirtIoApiCoreV1Clock.  # noqa: E501
        :rtype: KubevirtIoApiCoreV1ClockOffsetUTC
        """
        return self._utc

    @utc.setter
    def utc(self, utc):
        """Sets the utc of this KubevirtIoApiCoreV1Clock.

        UTC sets the guest clock to UTC on each boot. If an offset is specified, guest changes to the clock will be kept during reboots and are not reset.  # noqa: E501

        :param utc: The utc of this KubevirtIoApiCoreV1Clock.  # noqa: E501
        :type: KubevirtIoApiCoreV1ClockOffsetUTC
        """

        self._utc = utc

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
        if issubclass(KubevirtIoApiCoreV1Clock, dict):
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
        if not isinstance(other, KubevirtIoApiCoreV1Clock):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, KubevirtIoApiCoreV1Clock):
            return True

        return self.to_dict() != other.to_dict()
