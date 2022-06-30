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


class KubevirtIoApiCoreV1Features(object):
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
        'acpi': 'KubevirtIoApiCoreV1FeatureState',
        'apic': 'KubevirtIoApiCoreV1FeatureAPIC',
        'hyperv': 'KubevirtIoApiCoreV1FeatureHyperv',
        'kvm': 'KubevirtIoApiCoreV1FeatureKVM',
        'pvspinlock': 'KubevirtIoApiCoreV1FeatureState',
        'smm': 'KubevirtIoApiCoreV1FeatureState'
    }

    attribute_map = {
        'acpi': 'acpi',
        'apic': 'apic',
        'hyperv': 'hyperv',
        'kvm': 'kvm',
        'pvspinlock': 'pvspinlock',
        'smm': 'smm'
    }

    def __init__(self, acpi=None, apic=None, hyperv=None, kvm=None, pvspinlock=None, smm=None, _configuration=None):  # noqa: E501
        """KubevirtIoApiCoreV1Features - a model defined in Swagger"""  # noqa: E501
        if _configuration is None:
            _configuration = Configuration()
        self._configuration = _configuration

        self._acpi = None
        self._apic = None
        self._hyperv = None
        self._kvm = None
        self._pvspinlock = None
        self._smm = None
        self.discriminator = None

        if acpi is not None:
            self.acpi = acpi
        if apic is not None:
            self.apic = apic
        if hyperv is not None:
            self.hyperv = hyperv
        if kvm is not None:
            self.kvm = kvm
        if pvspinlock is not None:
            self.pvspinlock = pvspinlock
        if smm is not None:
            self.smm = smm

    @property
    def acpi(self):
        """Gets the acpi of this KubevirtIoApiCoreV1Features.  # noqa: E501

        ACPI enables/disables ACPI inside the guest. Defaults to enabled.  # noqa: E501

        :return: The acpi of this KubevirtIoApiCoreV1Features.  # noqa: E501
        :rtype: KubevirtIoApiCoreV1FeatureState
        """
        return self._acpi

    @acpi.setter
    def acpi(self, acpi):
        """Sets the acpi of this KubevirtIoApiCoreV1Features.

        ACPI enables/disables ACPI inside the guest. Defaults to enabled.  # noqa: E501

        :param acpi: The acpi of this KubevirtIoApiCoreV1Features.  # noqa: E501
        :type: KubevirtIoApiCoreV1FeatureState
        """

        self._acpi = acpi

    @property
    def apic(self):
        """Gets the apic of this KubevirtIoApiCoreV1Features.  # noqa: E501

        Defaults to the machine type setting.  # noqa: E501

        :return: The apic of this KubevirtIoApiCoreV1Features.  # noqa: E501
        :rtype: KubevirtIoApiCoreV1FeatureAPIC
        """
        return self._apic

    @apic.setter
    def apic(self, apic):
        """Sets the apic of this KubevirtIoApiCoreV1Features.

        Defaults to the machine type setting.  # noqa: E501

        :param apic: The apic of this KubevirtIoApiCoreV1Features.  # noqa: E501
        :type: KubevirtIoApiCoreV1FeatureAPIC
        """

        self._apic = apic

    @property
    def hyperv(self):
        """Gets the hyperv of this KubevirtIoApiCoreV1Features.  # noqa: E501

        Defaults to the machine type setting.  # noqa: E501

        :return: The hyperv of this KubevirtIoApiCoreV1Features.  # noqa: E501
        :rtype: KubevirtIoApiCoreV1FeatureHyperv
        """
        return self._hyperv

    @hyperv.setter
    def hyperv(self, hyperv):
        """Sets the hyperv of this KubevirtIoApiCoreV1Features.

        Defaults to the machine type setting.  # noqa: E501

        :param hyperv: The hyperv of this KubevirtIoApiCoreV1Features.  # noqa: E501
        :type: KubevirtIoApiCoreV1FeatureHyperv
        """

        self._hyperv = hyperv

    @property
    def kvm(self):
        """Gets the kvm of this KubevirtIoApiCoreV1Features.  # noqa: E501

        Configure how KVM presence is exposed to the guest.  # noqa: E501

        :return: The kvm of this KubevirtIoApiCoreV1Features.  # noqa: E501
        :rtype: KubevirtIoApiCoreV1FeatureKVM
        """
        return self._kvm

    @kvm.setter
    def kvm(self, kvm):
        """Sets the kvm of this KubevirtIoApiCoreV1Features.

        Configure how KVM presence is exposed to the guest.  # noqa: E501

        :param kvm: The kvm of this KubevirtIoApiCoreV1Features.  # noqa: E501
        :type: KubevirtIoApiCoreV1FeatureKVM
        """

        self._kvm = kvm

    @property
    def pvspinlock(self):
        """Gets the pvspinlock of this KubevirtIoApiCoreV1Features.  # noqa: E501

        Notify the guest that the host supports paravirtual spinlocks. For older kernels this feature should be explicitly disabled.  # noqa: E501

        :return: The pvspinlock of this KubevirtIoApiCoreV1Features.  # noqa: E501
        :rtype: KubevirtIoApiCoreV1FeatureState
        """
        return self._pvspinlock

    @pvspinlock.setter
    def pvspinlock(self, pvspinlock):
        """Sets the pvspinlock of this KubevirtIoApiCoreV1Features.

        Notify the guest that the host supports paravirtual spinlocks. For older kernels this feature should be explicitly disabled.  # noqa: E501

        :param pvspinlock: The pvspinlock of this KubevirtIoApiCoreV1Features.  # noqa: E501
        :type: KubevirtIoApiCoreV1FeatureState
        """

        self._pvspinlock = pvspinlock

    @property
    def smm(self):
        """Gets the smm of this KubevirtIoApiCoreV1Features.  # noqa: E501

        SMM enables/disables System Management Mode. TSEG not yet implemented.  # noqa: E501

        :return: The smm of this KubevirtIoApiCoreV1Features.  # noqa: E501
        :rtype: KubevirtIoApiCoreV1FeatureState
        """
        return self._smm

    @smm.setter
    def smm(self, smm):
        """Sets the smm of this KubevirtIoApiCoreV1Features.

        SMM enables/disables System Management Mode. TSEG not yet implemented.  # noqa: E501

        :param smm: The smm of this KubevirtIoApiCoreV1Features.  # noqa: E501
        :type: KubevirtIoApiCoreV1FeatureState
        """

        self._smm = smm

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
        if issubclass(KubevirtIoApiCoreV1Features, dict):
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
        if not isinstance(other, KubevirtIoApiCoreV1Features):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, KubevirtIoApiCoreV1Features):
            return True

        return self.to_dict() != other.to_dict()