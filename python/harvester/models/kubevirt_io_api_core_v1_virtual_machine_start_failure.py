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


class KubevirtIoApiCoreV1VirtualMachineStartFailure(object):
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
        'consecutive_fail_count': 'int',
        'last_failed_vmiuid': 'str',
        'retry_after_timestamp': 'K8sIoV1Time'
    }

    attribute_map = {
        'consecutive_fail_count': 'consecutiveFailCount',
        'last_failed_vmiuid': 'lastFailedVMIUID',
        'retry_after_timestamp': 'retryAfterTimestamp'
    }

    def __init__(self, consecutive_fail_count=None, last_failed_vmiuid=None, retry_after_timestamp=None, _configuration=None):  # noqa: E501
        """KubevirtIoApiCoreV1VirtualMachineStartFailure - a model defined in Swagger"""  # noqa: E501
        if _configuration is None:
            _configuration = Configuration()
        self._configuration = _configuration

        self._consecutive_fail_count = None
        self._last_failed_vmiuid = None
        self._retry_after_timestamp = None
        self.discriminator = None

        if consecutive_fail_count is not None:
            self.consecutive_fail_count = consecutive_fail_count
        if last_failed_vmiuid is not None:
            self.last_failed_vmiuid = last_failed_vmiuid
        if retry_after_timestamp is not None:
            self.retry_after_timestamp = retry_after_timestamp

    @property
    def consecutive_fail_count(self):
        """Gets the consecutive_fail_count of this KubevirtIoApiCoreV1VirtualMachineStartFailure.  # noqa: E501


        :return: The consecutive_fail_count of this KubevirtIoApiCoreV1VirtualMachineStartFailure.  # noqa: E501
        :rtype: int
        """
        return self._consecutive_fail_count

    @consecutive_fail_count.setter
    def consecutive_fail_count(self, consecutive_fail_count):
        """Sets the consecutive_fail_count of this KubevirtIoApiCoreV1VirtualMachineStartFailure.


        :param consecutive_fail_count: The consecutive_fail_count of this KubevirtIoApiCoreV1VirtualMachineStartFailure.  # noqa: E501
        :type: int
        """

        self._consecutive_fail_count = consecutive_fail_count

    @property
    def last_failed_vmiuid(self):
        """Gets the last_failed_vmiuid of this KubevirtIoApiCoreV1VirtualMachineStartFailure.  # noqa: E501


        :return: The last_failed_vmiuid of this KubevirtIoApiCoreV1VirtualMachineStartFailure.  # noqa: E501
        :rtype: str
        """
        return self._last_failed_vmiuid

    @last_failed_vmiuid.setter
    def last_failed_vmiuid(self, last_failed_vmiuid):
        """Sets the last_failed_vmiuid of this KubevirtIoApiCoreV1VirtualMachineStartFailure.


        :param last_failed_vmiuid: The last_failed_vmiuid of this KubevirtIoApiCoreV1VirtualMachineStartFailure.  # noqa: E501
        :type: str
        """

        self._last_failed_vmiuid = last_failed_vmiuid

    @property
    def retry_after_timestamp(self):
        """Gets the retry_after_timestamp of this KubevirtIoApiCoreV1VirtualMachineStartFailure.  # noqa: E501


        :return: The retry_after_timestamp of this KubevirtIoApiCoreV1VirtualMachineStartFailure.  # noqa: E501
        :rtype: K8sIoV1Time
        """
        return self._retry_after_timestamp

    @retry_after_timestamp.setter
    def retry_after_timestamp(self, retry_after_timestamp):
        """Sets the retry_after_timestamp of this KubevirtIoApiCoreV1VirtualMachineStartFailure.


        :param retry_after_timestamp: The retry_after_timestamp of this KubevirtIoApiCoreV1VirtualMachineStartFailure.  # noqa: E501
        :type: K8sIoV1Time
        """

        self._retry_after_timestamp = retry_after_timestamp

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
        if issubclass(KubevirtIoApiCoreV1VirtualMachineStartFailure, dict):
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
        if not isinstance(other, KubevirtIoApiCoreV1VirtualMachineStartFailure):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, KubevirtIoApiCoreV1VirtualMachineStartFailure):
            return True

        return self.to_dict() != other.to_dict()