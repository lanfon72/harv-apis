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


class KubevirtIoApiCoreV1SSHPublicKeyAccessCredentialPropagationMethod(object):
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
        'config_drive': 'KubevirtIoApiCoreV1ConfigDriveSSHPublicKeyAccessCredentialPropagation',
        'qemu_guest_agent': 'KubevirtIoApiCoreV1QemuGuestAgentSSHPublicKeyAccessCredentialPropagation'
    }

    attribute_map = {
        'config_drive': 'configDrive',
        'qemu_guest_agent': 'qemuGuestAgent'
    }

    def __init__(self, config_drive=None, qemu_guest_agent=None, _configuration=None):  # noqa: E501
        """KubevirtIoApiCoreV1SSHPublicKeyAccessCredentialPropagationMethod - a model defined in Swagger"""  # noqa: E501
        if _configuration is None:
            _configuration = Configuration()
        self._configuration = _configuration

        self._config_drive = None
        self._qemu_guest_agent = None
        self.discriminator = None

        if config_drive is not None:
            self.config_drive = config_drive
        if qemu_guest_agent is not None:
            self.qemu_guest_agent = qemu_guest_agent

    @property
    def config_drive(self):
        """Gets the config_drive of this KubevirtIoApiCoreV1SSHPublicKeyAccessCredentialPropagationMethod.  # noqa: E501

        ConfigDrivePropagation means that the ssh public keys are injected into the VM using metadata using the configDrive cloud-init provider  # noqa: E501

        :return: The config_drive of this KubevirtIoApiCoreV1SSHPublicKeyAccessCredentialPropagationMethod.  # noqa: E501
        :rtype: KubevirtIoApiCoreV1ConfigDriveSSHPublicKeyAccessCredentialPropagation
        """
        return self._config_drive

    @config_drive.setter
    def config_drive(self, config_drive):
        """Sets the config_drive of this KubevirtIoApiCoreV1SSHPublicKeyAccessCredentialPropagationMethod.

        ConfigDrivePropagation means that the ssh public keys are injected into the VM using metadata using the configDrive cloud-init provider  # noqa: E501

        :param config_drive: The config_drive of this KubevirtIoApiCoreV1SSHPublicKeyAccessCredentialPropagationMethod.  # noqa: E501
        :type: KubevirtIoApiCoreV1ConfigDriveSSHPublicKeyAccessCredentialPropagation
        """

        self._config_drive = config_drive

    @property
    def qemu_guest_agent(self):
        """Gets the qemu_guest_agent of this KubevirtIoApiCoreV1SSHPublicKeyAccessCredentialPropagationMethod.  # noqa: E501

        QemuGuestAgentAccessCredentailPropagation means ssh public keys are dynamically injected into the vm at runtime via the qemu guest agent. This feature requires the qemu guest agent to be running within the guest.  # noqa: E501

        :return: The qemu_guest_agent of this KubevirtIoApiCoreV1SSHPublicKeyAccessCredentialPropagationMethod.  # noqa: E501
        :rtype: KubevirtIoApiCoreV1QemuGuestAgentSSHPublicKeyAccessCredentialPropagation
        """
        return self._qemu_guest_agent

    @qemu_guest_agent.setter
    def qemu_guest_agent(self, qemu_guest_agent):
        """Sets the qemu_guest_agent of this KubevirtIoApiCoreV1SSHPublicKeyAccessCredentialPropagationMethod.

        QemuGuestAgentAccessCredentailPropagation means ssh public keys are dynamically injected into the vm at runtime via the qemu guest agent. This feature requires the qemu guest agent to be running within the guest.  # noqa: E501

        :param qemu_guest_agent: The qemu_guest_agent of this KubevirtIoApiCoreV1SSHPublicKeyAccessCredentialPropagationMethod.  # noqa: E501
        :type: KubevirtIoApiCoreV1QemuGuestAgentSSHPublicKeyAccessCredentialPropagation
        """

        self._qemu_guest_agent = qemu_guest_agent

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
        if issubclass(KubevirtIoApiCoreV1SSHPublicKeyAccessCredentialPropagationMethod, dict):
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
        if not isinstance(other, KubevirtIoApiCoreV1SSHPublicKeyAccessCredentialPropagationMethod):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, KubevirtIoApiCoreV1SSHPublicKeyAccessCredentialPropagationMethod):
            return True

        return self.to_dict() != other.to_dict()
