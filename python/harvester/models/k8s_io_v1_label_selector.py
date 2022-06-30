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


class K8sIoV1LabelSelector(object):
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
        'match_expressions': 'list[K8sIoV1LabelSelectorRequirement]',
        'match_labels': 'dict(str, str)'
    }

    attribute_map = {
        'match_expressions': 'matchExpressions',
        'match_labels': 'matchLabels'
    }

    def __init__(self, match_expressions=None, match_labels=None, _configuration=None):  # noqa: E501
        """K8sIoV1LabelSelector - a model defined in Swagger"""  # noqa: E501
        if _configuration is None:
            _configuration = Configuration()
        self._configuration = _configuration

        self._match_expressions = None
        self._match_labels = None
        self.discriminator = None

        if match_expressions is not None:
            self.match_expressions = match_expressions
        if match_labels is not None:
            self.match_labels = match_labels

    @property
    def match_expressions(self):
        """Gets the match_expressions of this K8sIoV1LabelSelector.  # noqa: E501

        matchExpressions is a list of label selector requirements. The requirements are ANDed.  # noqa: E501

        :return: The match_expressions of this K8sIoV1LabelSelector.  # noqa: E501
        :rtype: list[K8sIoV1LabelSelectorRequirement]
        """
        return self._match_expressions

    @match_expressions.setter
    def match_expressions(self, match_expressions):
        """Sets the match_expressions of this K8sIoV1LabelSelector.

        matchExpressions is a list of label selector requirements. The requirements are ANDed.  # noqa: E501

        :param match_expressions: The match_expressions of this K8sIoV1LabelSelector.  # noqa: E501
        :type: list[K8sIoV1LabelSelectorRequirement]
        """

        self._match_expressions = match_expressions

    @property
    def match_labels(self):
        """Gets the match_labels of this K8sIoV1LabelSelector.  # noqa: E501

        matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.  # noqa: E501

        :return: The match_labels of this K8sIoV1LabelSelector.  # noqa: E501
        :rtype: dict(str, str)
        """
        return self._match_labels

    @match_labels.setter
    def match_labels(self, match_labels):
        """Sets the match_labels of this K8sIoV1LabelSelector.

        matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.  # noqa: E501

        :param match_labels: The match_labels of this K8sIoV1LabelSelector.  # noqa: E501
        :type: dict(str, str)
        """

        self._match_labels = match_labels

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
        if issubclass(K8sIoV1LabelSelector, dict):
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
        if not isinstance(other, K8sIoV1LabelSelector):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, K8sIoV1LabelSelector):
            return True

        return self.to_dict() != other.to_dict()
