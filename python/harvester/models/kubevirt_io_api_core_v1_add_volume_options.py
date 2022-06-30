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


class KubevirtIoApiCoreV1AddVolumeOptions(object):
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
        'disk': 'KubevirtIoApiCoreV1Disk',
        'dry_run': 'list[str]',
        'name': 'str',
        'volume_source': 'KubevirtIoApiCoreV1HotplugVolumeSource'
    }

    attribute_map = {
        'disk': 'disk',
        'dry_run': 'dryRun',
        'name': 'name',
        'volume_source': 'volumeSource'
    }

    def __init__(self, disk=None, dry_run=None, name='', volume_source=None, _configuration=None):  # noqa: E501
        """KubevirtIoApiCoreV1AddVolumeOptions - a model defined in Swagger"""  # noqa: E501
        if _configuration is None:
            _configuration = Configuration()
        self._configuration = _configuration

        self._disk = None
        self._dry_run = None
        self._name = None
        self._volume_source = None
        self.discriminator = None

        self.disk = disk
        if dry_run is not None:
            self.dry_run = dry_run
        self.name = name
        self.volume_source = volume_source

    @property
    def disk(self):
        """Gets the disk of this KubevirtIoApiCoreV1AddVolumeOptions.  # noqa: E501

        Disk represents the hotplug disk that will be plugged into the running VMI  # noqa: E501

        :return: The disk of this KubevirtIoApiCoreV1AddVolumeOptions.  # noqa: E501
        :rtype: KubevirtIoApiCoreV1Disk
        """
        return self._disk

    @disk.setter
    def disk(self, disk):
        """Sets the disk of this KubevirtIoApiCoreV1AddVolumeOptions.

        Disk represents the hotplug disk that will be plugged into the running VMI  # noqa: E501

        :param disk: The disk of this KubevirtIoApiCoreV1AddVolumeOptions.  # noqa: E501
        :type: KubevirtIoApiCoreV1Disk
        """
        if self._configuration.client_side_validation and disk is None:
            raise ValueError("Invalid value for `disk`, must not be `None`")  # noqa: E501

        self._disk = disk

    @property
    def dry_run(self):
        """Gets the dry_run of this KubevirtIoApiCoreV1AddVolumeOptions.  # noqa: E501

        When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed  # noqa: E501

        :return: The dry_run of this KubevirtIoApiCoreV1AddVolumeOptions.  # noqa: E501
        :rtype: list[str]
        """
        return self._dry_run

    @dry_run.setter
    def dry_run(self, dry_run):
        """Sets the dry_run of this KubevirtIoApiCoreV1AddVolumeOptions.

        When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed  # noqa: E501

        :param dry_run: The dry_run of this KubevirtIoApiCoreV1AddVolumeOptions.  # noqa: E501
        :type: list[str]
        """

        self._dry_run = dry_run

    @property
    def name(self):
        """Gets the name of this KubevirtIoApiCoreV1AddVolumeOptions.  # noqa: E501

        Name represents the name that will be used to map the disk to the corresponding volume. This overrides any name set inside the Disk struct itself.  # noqa: E501

        :return: The name of this KubevirtIoApiCoreV1AddVolumeOptions.  # noqa: E501
        :rtype: str
        """
        return self._name

    @name.setter
    def name(self, name):
        """Sets the name of this KubevirtIoApiCoreV1AddVolumeOptions.

        Name represents the name that will be used to map the disk to the corresponding volume. This overrides any name set inside the Disk struct itself.  # noqa: E501

        :param name: The name of this KubevirtIoApiCoreV1AddVolumeOptions.  # noqa: E501
        :type: str
        """
        if self._configuration.client_side_validation and name is None:
            raise ValueError("Invalid value for `name`, must not be `None`")  # noqa: E501

        self._name = name

    @property
    def volume_source(self):
        """Gets the volume_source of this KubevirtIoApiCoreV1AddVolumeOptions.  # noqa: E501

        VolumeSource represents the source of the volume to map to the disk.  # noqa: E501

        :return: The volume_source of this KubevirtIoApiCoreV1AddVolumeOptions.  # noqa: E501
        :rtype: KubevirtIoApiCoreV1HotplugVolumeSource
        """
        return self._volume_source

    @volume_source.setter
    def volume_source(self, volume_source):
        """Sets the volume_source of this KubevirtIoApiCoreV1AddVolumeOptions.

        VolumeSource represents the source of the volume to map to the disk.  # noqa: E501

        :param volume_source: The volume_source of this KubevirtIoApiCoreV1AddVolumeOptions.  # noqa: E501
        :type: KubevirtIoApiCoreV1HotplugVolumeSource
        """
        if self._configuration.client_side_validation and volume_source is None:
            raise ValueError("Invalid value for `volume_source`, must not be `None`")  # noqa: E501

        self._volume_source = volume_source

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
        if issubclass(KubevirtIoApiCoreV1AddVolumeOptions, dict):
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
        if not isinstance(other, KubevirtIoApiCoreV1AddVolumeOptions):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, KubevirtIoApiCoreV1AddVolumeOptions):
            return True

        return self.to_dict() != other.to_dict()