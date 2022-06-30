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


class KubevirtIoApiCoreV1AccessCredential(object):
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
        'ssh_public_key': 'KubevirtIoApiCoreV1SSHPublicKeyAccessCredential',
        'user_password': 'KubevirtIoApiCoreV1UserPasswordAccessCredential'
    }

    attribute_map = {
        'ssh_public_key': 'sshPublicKey',
        'user_password': 'userPassword'
    }

    def __init__(self, ssh_public_key=None, user_password=None, _configuration=None):  # noqa: E501
        """KubevirtIoApiCoreV1AccessCredential - a model defined in Swagger"""  # noqa: E501
        if _configuration is None:
            _configuration = Configuration()
        self._configuration = _configuration

        self._ssh_public_key = None
        self._user_password = None
        self.discriminator = None

        if ssh_public_key is not None:
            self.ssh_public_key = ssh_public_key
        if user_password is not None:
            self.user_password = user_password

    @property
    def ssh_public_key(self):
        """Gets the ssh_public_key of this KubevirtIoApiCoreV1AccessCredential.  # noqa: E501

        SSHPublicKey represents the source and method of applying a ssh public key into a guest virtual machine.  # noqa: E501

        :return: The ssh_public_key of this KubevirtIoApiCoreV1AccessCredential.  # noqa: E501
        :rtype: KubevirtIoApiCoreV1SSHPublicKeyAccessCredential
        """
        return self._ssh_public_key

    @ssh_public_key.setter
    def ssh_public_key(self, ssh_public_key):
        """Sets the ssh_public_key of this KubevirtIoApiCoreV1AccessCredential.

        SSHPublicKey represents the source and method of applying a ssh public key into a guest virtual machine.  # noqa: E501

        :param ssh_public_key: The ssh_public_key of this KubevirtIoApiCoreV1AccessCredential.  # noqa: E501
        :type: KubevirtIoApiCoreV1SSHPublicKeyAccessCredential
        """

        self._ssh_public_key = ssh_public_key

    @property
    def user_password(self):
        """Gets the user_password of this KubevirtIoApiCoreV1AccessCredential.  # noqa: E501

        UserPassword represents the source and method for applying a guest user's password  # noqa: E501

        :return: The user_password of this KubevirtIoApiCoreV1AccessCredential.  # noqa: E501
        :rtype: KubevirtIoApiCoreV1UserPasswordAccessCredential
        """
        return self._user_password

    @user_password.setter
    def user_password(self, user_password):
        """Sets the user_password of this KubevirtIoApiCoreV1AccessCredential.

        UserPassword represents the source and method for applying a guest user's password  # noqa: E501

        :param user_password: The user_password of this KubevirtIoApiCoreV1AccessCredential.  # noqa: E501
        :type: KubevirtIoApiCoreV1UserPasswordAccessCredential
        """

        self._user_password = user_password

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
        if issubclass(KubevirtIoApiCoreV1AccessCredential, dict):
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
        if not isinstance(other, KubevirtIoApiCoreV1AccessCredential):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, KubevirtIoApiCoreV1AccessCredential):
            return True

        return self.to_dict() != other.to_dict()