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


class KubevirtIoApiCoreV1Memory(object):
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
        'guest': 'K8sIoApimachineryPkgApiResourceQuantity',
        'hugepages': 'KubevirtIoApiCoreV1Hugepages'
    }

    attribute_map = {
        'guest': 'guest',
        'hugepages': 'hugepages'
    }

    def __init__(self, guest=None, hugepages=None, _configuration=None):  # noqa: E501
        """KubevirtIoApiCoreV1Memory - a model defined in Swagger"""  # noqa: E501
        if _configuration is None:
            _configuration = Configuration()
        self._configuration = _configuration

        self._guest = None
        self._hugepages = None
        self.discriminator = None

        if guest is not None:
            self.guest = guest
        if hugepages is not None:
            self.hugepages = hugepages

    @property
    def guest(self):
        """Gets the guest of this KubevirtIoApiCoreV1Memory.  # noqa: E501

        Guest allows to specifying the amount of memory which is visible inside the Guest OS. The Guest must lie between Requests and Limits from the resources section. Defaults to the requested memory in the resources section if not specified.  # noqa: E501

        :return: The guest of this KubevirtIoApiCoreV1Memory.  # noqa: E501
        :rtype: K8sIoApimachineryPkgApiResourceQuantity
        """
        return self._guest

    @guest.setter
    def guest(self, guest):
        """Sets the guest of this KubevirtIoApiCoreV1Memory.

        Guest allows to specifying the amount of memory which is visible inside the Guest OS. The Guest must lie between Requests and Limits from the resources section. Defaults to the requested memory in the resources section if not specified.  # noqa: E501

        :param guest: The guest of this KubevirtIoApiCoreV1Memory.  # noqa: E501
        :type: K8sIoApimachineryPkgApiResourceQuantity
        """

        self._guest = guest

    @property
    def hugepages(self):
        """Gets the hugepages of this KubevirtIoApiCoreV1Memory.  # noqa: E501

        Hugepages allow to use hugepages for the VirtualMachineInstance instead of regular memory.  # noqa: E501

        :return: The hugepages of this KubevirtIoApiCoreV1Memory.  # noqa: E501
        :rtype: KubevirtIoApiCoreV1Hugepages
        """
        return self._hugepages

    @hugepages.setter
    def hugepages(self, hugepages):
        """Sets the hugepages of this KubevirtIoApiCoreV1Memory.

        Hugepages allow to use hugepages for the VirtualMachineInstance instead of regular memory.  # noqa: E501

        :param hugepages: The hugepages of this KubevirtIoApiCoreV1Memory.  # noqa: E501
        :type: KubevirtIoApiCoreV1Hugepages
        """

        self._hugepages = hugepages

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
        if issubclass(KubevirtIoApiCoreV1Memory, dict):
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
        if not isinstance(other, KubevirtIoApiCoreV1Memory):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, KubevirtIoApiCoreV1Memory):
            return True

        return self.to_dict() != other.to_dict()