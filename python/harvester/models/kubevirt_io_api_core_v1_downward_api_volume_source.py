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


class KubevirtIoApiCoreV1DownwardAPIVolumeSource(object):
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
        'fields': 'list[K8sIoV1DownwardAPIVolumeFile]',
        'volume_label': 'str'
    }

    attribute_map = {
        'fields': 'fields',
        'volume_label': 'volumeLabel'
    }

    def __init__(self, fields=None, volume_label=None, _configuration=None):  # noqa: E501
        """KubevirtIoApiCoreV1DownwardAPIVolumeSource - a model defined in Swagger"""  # noqa: E501
        if _configuration is None:
            _configuration = Configuration()
        self._configuration = _configuration

        self._fields = None
        self._volume_label = None
        self.discriminator = None

        if fields is not None:
            self.fields = fields
        if volume_label is not None:
            self.volume_label = volume_label

    @property
    def fields(self):
        """Gets the fields of this KubevirtIoApiCoreV1DownwardAPIVolumeSource.  # noqa: E501

        Fields is a list of downward API volume file  # noqa: E501

        :return: The fields of this KubevirtIoApiCoreV1DownwardAPIVolumeSource.  # noqa: E501
        :rtype: list[K8sIoV1DownwardAPIVolumeFile]
        """
        return self._fields

    @fields.setter
    def fields(self, fields):
        """Sets the fields of this KubevirtIoApiCoreV1DownwardAPIVolumeSource.

        Fields is a list of downward API volume file  # noqa: E501

        :param fields: The fields of this KubevirtIoApiCoreV1DownwardAPIVolumeSource.  # noqa: E501
        :type: list[K8sIoV1DownwardAPIVolumeFile]
        """

        self._fields = fields

    @property
    def volume_label(self):
        """Gets the volume_label of this KubevirtIoApiCoreV1DownwardAPIVolumeSource.  # noqa: E501

        The volume label of the resulting disk inside the VMI. Different bootstrapping mechanisms require different values. Typical values are \"cidata\" (cloud-init), \"config-2\" (cloud-init) or \"OEMDRV\" (kickstart).  # noqa: E501

        :return: The volume_label of this KubevirtIoApiCoreV1DownwardAPIVolumeSource.  # noqa: E501
        :rtype: str
        """
        return self._volume_label

    @volume_label.setter
    def volume_label(self, volume_label):
        """Sets the volume_label of this KubevirtIoApiCoreV1DownwardAPIVolumeSource.

        The volume label of the resulting disk inside the VMI. Different bootstrapping mechanisms require different values. Typical values are \"cidata\" (cloud-init), \"config-2\" (cloud-init) or \"OEMDRV\" (kickstart).  # noqa: E501

        :param volume_label: The volume_label of this KubevirtIoApiCoreV1DownwardAPIVolumeSource.  # noqa: E501
        :type: str
        """

        self._volume_label = volume_label

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
        if issubclass(KubevirtIoApiCoreV1DownwardAPIVolumeSource, dict):
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
        if not isinstance(other, KubevirtIoApiCoreV1DownwardAPIVolumeSource):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, KubevirtIoApiCoreV1DownwardAPIVolumeSource):
            return True

        return self.to_dict() != other.to_dict()
