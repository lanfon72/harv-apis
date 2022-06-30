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


class K8sIoV1PreferredSchedulingTerm(object):
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
        'preference': 'K8sIoV1NodeSelectorTerm',
        'weight': 'int'
    }

    attribute_map = {
        'preference': 'preference',
        'weight': 'weight'
    }

    def __init__(self, preference=None, weight=0, _configuration=None):  # noqa: E501
        """K8sIoV1PreferredSchedulingTerm - a model defined in Swagger"""  # noqa: E501
        if _configuration is None:
            _configuration = Configuration()
        self._configuration = _configuration

        self._preference = None
        self._weight = None
        self.discriminator = None

        self.preference = preference
        self.weight = weight

    @property
    def preference(self):
        """Gets the preference of this K8sIoV1PreferredSchedulingTerm.  # noqa: E501

        A node selector term, associated with the corresponding weight.  # noqa: E501

        :return: The preference of this K8sIoV1PreferredSchedulingTerm.  # noqa: E501
        :rtype: K8sIoV1NodeSelectorTerm
        """
        return self._preference

    @preference.setter
    def preference(self, preference):
        """Sets the preference of this K8sIoV1PreferredSchedulingTerm.

        A node selector term, associated with the corresponding weight.  # noqa: E501

        :param preference: The preference of this K8sIoV1PreferredSchedulingTerm.  # noqa: E501
        :type: K8sIoV1NodeSelectorTerm
        """
        if self._configuration.client_side_validation and preference is None:
            raise ValueError("Invalid value for `preference`, must not be `None`")  # noqa: E501

        self._preference = preference

    @property
    def weight(self):
        """Gets the weight of this K8sIoV1PreferredSchedulingTerm.  # noqa: E501

        Weight associated with matching the corresponding nodeSelectorTerm, in the range 1-100.  # noqa: E501

        :return: The weight of this K8sIoV1PreferredSchedulingTerm.  # noqa: E501
        :rtype: int
        """
        return self._weight

    @weight.setter
    def weight(self, weight):
        """Sets the weight of this K8sIoV1PreferredSchedulingTerm.

        Weight associated with matching the corresponding nodeSelectorTerm, in the range 1-100.  # noqa: E501

        :param weight: The weight of this K8sIoV1PreferredSchedulingTerm.  # noqa: E501
        :type: int
        """
        if self._configuration.client_side_validation and weight is None:
            raise ValueError("Invalid value for `weight`, must not be `None`")  # noqa: E501

        self._weight = weight

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
        if issubclass(K8sIoV1PreferredSchedulingTerm, dict):
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
        if not isinstance(other, K8sIoV1PreferredSchedulingTerm):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, K8sIoV1PreferredSchedulingTerm):
            return True

        return self.to_dict() != other.to_dict()
