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


class KubevirtIoApiCoreV1SSHPublicKeyAccessCredential(object):
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
        'propagation_method': 'KubevirtIoApiCoreV1SSHPublicKeyAccessCredentialPropagationMethod',
        'source': 'KubevirtIoApiCoreV1SSHPublicKeyAccessCredentialSource'
    }

    attribute_map = {
        'propagation_method': 'propagationMethod',
        'source': 'source'
    }

    def __init__(self, propagation_method=None, source=None, _configuration=None):  # noqa: E501
        """KubevirtIoApiCoreV1SSHPublicKeyAccessCredential - a model defined in Swagger"""  # noqa: E501
        if _configuration is None:
            _configuration = Configuration()
        self._configuration = _configuration

        self._propagation_method = None
        self._source = None
        self.discriminator = None

        self.propagation_method = propagation_method
        self.source = source

    @property
    def propagation_method(self):
        """Gets the propagation_method of this KubevirtIoApiCoreV1SSHPublicKeyAccessCredential.  # noqa: E501

        PropagationMethod represents how the public key is injected into the vm guest.  # noqa: E501

        :return: The propagation_method of this KubevirtIoApiCoreV1SSHPublicKeyAccessCredential.  # noqa: E501
        :rtype: KubevirtIoApiCoreV1SSHPublicKeyAccessCredentialPropagationMethod
        """
        return self._propagation_method

    @propagation_method.setter
    def propagation_method(self, propagation_method):
        """Sets the propagation_method of this KubevirtIoApiCoreV1SSHPublicKeyAccessCredential.

        PropagationMethod represents how the public key is injected into the vm guest.  # noqa: E501

        :param propagation_method: The propagation_method of this KubevirtIoApiCoreV1SSHPublicKeyAccessCredential.  # noqa: E501
        :type: KubevirtIoApiCoreV1SSHPublicKeyAccessCredentialPropagationMethod
        """
        if self._configuration.client_side_validation and propagation_method is None:
            raise ValueError("Invalid value for `propagation_method`, must not be `None`")  # noqa: E501

        self._propagation_method = propagation_method

    @property
    def source(self):
        """Gets the source of this KubevirtIoApiCoreV1SSHPublicKeyAccessCredential.  # noqa: E501

        Source represents where the public keys are pulled from  # noqa: E501

        :return: The source of this KubevirtIoApiCoreV1SSHPublicKeyAccessCredential.  # noqa: E501
        :rtype: KubevirtIoApiCoreV1SSHPublicKeyAccessCredentialSource
        """
        return self._source

    @source.setter
    def source(self, source):
        """Sets the source of this KubevirtIoApiCoreV1SSHPublicKeyAccessCredential.

        Source represents where the public keys are pulled from  # noqa: E501

        :param source: The source of this KubevirtIoApiCoreV1SSHPublicKeyAccessCredential.  # noqa: E501
        :type: KubevirtIoApiCoreV1SSHPublicKeyAccessCredentialSource
        """
        if self._configuration.client_side_validation and source is None:
            raise ValueError("Invalid value for `source`, must not be `None`")  # noqa: E501

        self._source = source

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
        if issubclass(KubevirtIoApiCoreV1SSHPublicKeyAccessCredential, dict):
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
        if not isinstance(other, KubevirtIoApiCoreV1SSHPublicKeyAccessCredential):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, KubevirtIoApiCoreV1SSHPublicKeyAccessCredential):
            return True

        return self.to_dict() != other.to_dict()