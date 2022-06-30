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


class KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSourceImageIO(object):
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
        'cert_config_map': 'str',
        'disk_id': 'str',
        'secret_ref': 'str',
        'url': 'str'
    }

    attribute_map = {
        'cert_config_map': 'certConfigMap',
        'disk_id': 'diskId',
        'secret_ref': 'secretRef',
        'url': 'url'
    }

    def __init__(self, cert_config_map=None, disk_id='', secret_ref=None, url='', _configuration=None):  # noqa: E501
        """KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSourceImageIO - a model defined in Swagger"""  # noqa: E501
        if _configuration is None:
            _configuration = Configuration()
        self._configuration = _configuration

        self._cert_config_map = None
        self._disk_id = None
        self._secret_ref = None
        self._url = None
        self.discriminator = None

        if cert_config_map is not None:
            self.cert_config_map = cert_config_map
        self.disk_id = disk_id
        if secret_ref is not None:
            self.secret_ref = secret_ref
        self.url = url

    @property
    def cert_config_map(self):
        """Gets the cert_config_map of this KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSourceImageIO.  # noqa: E501

        CertConfigMap provides a reference to the CA cert  # noqa: E501

        :return: The cert_config_map of this KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSourceImageIO.  # noqa: E501
        :rtype: str
        """
        return self._cert_config_map

    @cert_config_map.setter
    def cert_config_map(self, cert_config_map):
        """Sets the cert_config_map of this KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSourceImageIO.

        CertConfigMap provides a reference to the CA cert  # noqa: E501

        :param cert_config_map: The cert_config_map of this KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSourceImageIO.  # noqa: E501
        :type: str
        """

        self._cert_config_map = cert_config_map

    @property
    def disk_id(self):
        """Gets the disk_id of this KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSourceImageIO.  # noqa: E501

        DiskID provides id of a disk to be imported  # noqa: E501

        :return: The disk_id of this KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSourceImageIO.  # noqa: E501
        :rtype: str
        """
        return self._disk_id

    @disk_id.setter
    def disk_id(self, disk_id):
        """Sets the disk_id of this KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSourceImageIO.

        DiskID provides id of a disk to be imported  # noqa: E501

        :param disk_id: The disk_id of this KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSourceImageIO.  # noqa: E501
        :type: str
        """
        if self._configuration.client_side_validation and disk_id is None:
            raise ValueError("Invalid value for `disk_id`, must not be `None`")  # noqa: E501

        self._disk_id = disk_id

    @property
    def secret_ref(self):
        """Gets the secret_ref of this KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSourceImageIO.  # noqa: E501

        SecretRef provides the secret reference needed to access the ovirt-engine  # noqa: E501

        :return: The secret_ref of this KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSourceImageIO.  # noqa: E501
        :rtype: str
        """
        return self._secret_ref

    @secret_ref.setter
    def secret_ref(self, secret_ref):
        """Sets the secret_ref of this KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSourceImageIO.

        SecretRef provides the secret reference needed to access the ovirt-engine  # noqa: E501

        :param secret_ref: The secret_ref of this KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSourceImageIO.  # noqa: E501
        :type: str
        """

        self._secret_ref = secret_ref

    @property
    def url(self):
        """Gets the url of this KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSourceImageIO.  # noqa: E501

        URL is the URL of the ovirt-engine  # noqa: E501

        :return: The url of this KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSourceImageIO.  # noqa: E501
        :rtype: str
        """
        return self._url

    @url.setter
    def url(self, url):
        """Sets the url of this KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSourceImageIO.

        URL is the URL of the ovirt-engine  # noqa: E501

        :param url: The url of this KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSourceImageIO.  # noqa: E501
        :type: str
        """
        if self._configuration.client_side_validation and url is None:
            raise ValueError("Invalid value for `url`, must not be `None`")  # noqa: E501

        self._url = url

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
        if issubclass(KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSourceImageIO, dict):
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
        if not isinstance(other, KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSourceImageIO):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSourceImageIO):
            return True

        return self.to_dict() != other.to_dict()
