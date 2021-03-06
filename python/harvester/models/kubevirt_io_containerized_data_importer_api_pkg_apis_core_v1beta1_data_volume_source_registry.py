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


class KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSourceRegistry(object):
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
        'image_stream': 'str',
        'pull_method': 'str',
        'secret_ref': 'str',
        'url': 'str'
    }

    attribute_map = {
        'cert_config_map': 'certConfigMap',
        'image_stream': 'imageStream',
        'pull_method': 'pullMethod',
        'secret_ref': 'secretRef',
        'url': 'url'
    }

    def __init__(self, cert_config_map=None, image_stream=None, pull_method=None, secret_ref=None, url=None, _configuration=None):  # noqa: E501
        """KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSourceRegistry - a model defined in Swagger"""  # noqa: E501
        if _configuration is None:
            _configuration = Configuration()
        self._configuration = _configuration

        self._cert_config_map = None
        self._image_stream = None
        self._pull_method = None
        self._secret_ref = None
        self._url = None
        self.discriminator = None

        if cert_config_map is not None:
            self.cert_config_map = cert_config_map
        if image_stream is not None:
            self.image_stream = image_stream
        if pull_method is not None:
            self.pull_method = pull_method
        if secret_ref is not None:
            self.secret_ref = secret_ref
        if url is not None:
            self.url = url

    @property
    def cert_config_map(self):
        """Gets the cert_config_map of this KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSourceRegistry.  # noqa: E501

        CertConfigMap provides a reference to the Registry certs  # noqa: E501

        :return: The cert_config_map of this KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSourceRegistry.  # noqa: E501
        :rtype: str
        """
        return self._cert_config_map

    @cert_config_map.setter
    def cert_config_map(self, cert_config_map):
        """Sets the cert_config_map of this KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSourceRegistry.

        CertConfigMap provides a reference to the Registry certs  # noqa: E501

        :param cert_config_map: The cert_config_map of this KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSourceRegistry.  # noqa: E501
        :type: str
        """

        self._cert_config_map = cert_config_map

    @property
    def image_stream(self):
        """Gets the image_stream of this KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSourceRegistry.  # noqa: E501

        ImageStream is the name of image stream for import  # noqa: E501

        :return: The image_stream of this KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSourceRegistry.  # noqa: E501
        :rtype: str
        """
        return self._image_stream

    @image_stream.setter
    def image_stream(self, image_stream):
        """Sets the image_stream of this KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSourceRegistry.

        ImageStream is the name of image stream for import  # noqa: E501

        :param image_stream: The image_stream of this KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSourceRegistry.  # noqa: E501
        :type: str
        """

        self._image_stream = image_stream

    @property
    def pull_method(self):
        """Gets the pull_method of this KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSourceRegistry.  # noqa: E501

        PullMethod can be either \"pod\" (default import), or \"node\" (node docker cache based import)  # noqa: E501

        :return: The pull_method of this KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSourceRegistry.  # noqa: E501
        :rtype: str
        """
        return self._pull_method

    @pull_method.setter
    def pull_method(self, pull_method):
        """Sets the pull_method of this KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSourceRegistry.

        PullMethod can be either \"pod\" (default import), or \"node\" (node docker cache based import)  # noqa: E501

        :param pull_method: The pull_method of this KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSourceRegistry.  # noqa: E501
        :type: str
        """

        self._pull_method = pull_method

    @property
    def secret_ref(self):
        """Gets the secret_ref of this KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSourceRegistry.  # noqa: E501

        SecretRef provides the secret reference needed to access the Registry source  # noqa: E501

        :return: The secret_ref of this KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSourceRegistry.  # noqa: E501
        :rtype: str
        """
        return self._secret_ref

    @secret_ref.setter
    def secret_ref(self, secret_ref):
        """Sets the secret_ref of this KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSourceRegistry.

        SecretRef provides the secret reference needed to access the Registry source  # noqa: E501

        :param secret_ref: The secret_ref of this KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSourceRegistry.  # noqa: E501
        :type: str
        """

        self._secret_ref = secret_ref

    @property
    def url(self):
        """Gets the url of this KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSourceRegistry.  # noqa: E501

        URL is the url of the registry source (starting with the scheme: docker, oci-archive)  # noqa: E501

        :return: The url of this KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSourceRegistry.  # noqa: E501
        :rtype: str
        """
        return self._url

    @url.setter
    def url(self, url):
        """Sets the url of this KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSourceRegistry.

        URL is the url of the registry source (starting with the scheme: docker, oci-archive)  # noqa: E501

        :param url: The url of this KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSourceRegistry.  # noqa: E501
        :type: str
        """

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
        if issubclass(KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSourceRegistry, dict):
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
        if not isinstance(other, KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSourceRegistry):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, KubevirtIoContainerizedDataImporterApiPkgApisCoreV1beta1DataVolumeSourceRegistry):
            return True

        return self.to_dict() != other.to_dict()
