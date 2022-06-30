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


class K8sIoV1HTTPGetAction(object):
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
        'host': 'str',
        'http_headers': 'list[K8sIoV1HTTPHeader]',
        'path': 'str',
        'port': 'K8sIoApimachineryPkgUtilIntstrIntOrString',
        'scheme': 'str'
    }

    attribute_map = {
        'host': 'host',
        'http_headers': 'httpHeaders',
        'path': 'path',
        'port': 'port',
        'scheme': 'scheme'
    }

    def __init__(self, host=None, http_headers=None, path=None, port=None, scheme=None, _configuration=None):  # noqa: E501
        """K8sIoV1HTTPGetAction - a model defined in Swagger"""  # noqa: E501
        if _configuration is None:
            _configuration = Configuration()
        self._configuration = _configuration

        self._host = None
        self._http_headers = None
        self._path = None
        self._port = None
        self._scheme = None
        self.discriminator = None

        if host is not None:
            self.host = host
        if http_headers is not None:
            self.http_headers = http_headers
        if path is not None:
            self.path = path
        self.port = port
        if scheme is not None:
            self.scheme = scheme

    @property
    def host(self):
        """Gets the host of this K8sIoV1HTTPGetAction.  # noqa: E501

        Host name to connect to, defaults to the pod IP. You probably want to set \"Host\" in httpHeaders instead.  # noqa: E501

        :return: The host of this K8sIoV1HTTPGetAction.  # noqa: E501
        :rtype: str
        """
        return self._host

    @host.setter
    def host(self, host):
        """Sets the host of this K8sIoV1HTTPGetAction.

        Host name to connect to, defaults to the pod IP. You probably want to set \"Host\" in httpHeaders instead.  # noqa: E501

        :param host: The host of this K8sIoV1HTTPGetAction.  # noqa: E501
        :type: str
        """

        self._host = host

    @property
    def http_headers(self):
        """Gets the http_headers of this K8sIoV1HTTPGetAction.  # noqa: E501

        Custom headers to set in the request. HTTP allows repeated headers.  # noqa: E501

        :return: The http_headers of this K8sIoV1HTTPGetAction.  # noqa: E501
        :rtype: list[K8sIoV1HTTPHeader]
        """
        return self._http_headers

    @http_headers.setter
    def http_headers(self, http_headers):
        """Sets the http_headers of this K8sIoV1HTTPGetAction.

        Custom headers to set in the request. HTTP allows repeated headers.  # noqa: E501

        :param http_headers: The http_headers of this K8sIoV1HTTPGetAction.  # noqa: E501
        :type: list[K8sIoV1HTTPHeader]
        """

        self._http_headers = http_headers

    @property
    def path(self):
        """Gets the path of this K8sIoV1HTTPGetAction.  # noqa: E501

        Path to access on the HTTP server.  # noqa: E501

        :return: The path of this K8sIoV1HTTPGetAction.  # noqa: E501
        :rtype: str
        """
        return self._path

    @path.setter
    def path(self, path):
        """Sets the path of this K8sIoV1HTTPGetAction.

        Path to access on the HTTP server.  # noqa: E501

        :param path: The path of this K8sIoV1HTTPGetAction.  # noqa: E501
        :type: str
        """

        self._path = path

    @property
    def port(self):
        """Gets the port of this K8sIoV1HTTPGetAction.  # noqa: E501

        Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME.  # noqa: E501

        :return: The port of this K8sIoV1HTTPGetAction.  # noqa: E501
        :rtype: K8sIoApimachineryPkgUtilIntstrIntOrString
        """
        return self._port

    @port.setter
    def port(self, port):
        """Sets the port of this K8sIoV1HTTPGetAction.

        Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME.  # noqa: E501

        :param port: The port of this K8sIoV1HTTPGetAction.  # noqa: E501
        :type: K8sIoApimachineryPkgUtilIntstrIntOrString
        """
        if self._configuration.client_side_validation and port is None:
            raise ValueError("Invalid value for `port`, must not be `None`")  # noqa: E501

        self._port = port

    @property
    def scheme(self):
        """Gets the scheme of this K8sIoV1HTTPGetAction.  # noqa: E501

        Scheme to use for connecting to the host. Defaults to HTTP.  Possible enum values:  - `\"HTTP\"` means that the scheme used will be http://  - `\"HTTPS\"` means that the scheme used will be https://  # noqa: E501

        :return: The scheme of this K8sIoV1HTTPGetAction.  # noqa: E501
        :rtype: str
        """
        return self._scheme

    @scheme.setter
    def scheme(self, scheme):
        """Sets the scheme of this K8sIoV1HTTPGetAction.

        Scheme to use for connecting to the host. Defaults to HTTP.  Possible enum values:  - `\"HTTP\"` means that the scheme used will be http://  - `\"HTTPS\"` means that the scheme used will be https://  # noqa: E501

        :param scheme: The scheme of this K8sIoV1HTTPGetAction.  # noqa: E501
        :type: str
        """
        allowed_values = ["HTTP", "HTTPS"]  # noqa: E501
        if (self._configuration.client_side_validation and
                scheme not in allowed_values):
            raise ValueError(
                "Invalid value for `scheme` ({0}), must be one of {1}"  # noqa: E501
                .format(scheme, allowed_values)
            )

        self._scheme = scheme

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
        if issubclass(K8sIoV1HTTPGetAction, dict):
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
        if not isinstance(other, K8sIoV1HTTPGetAction):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, K8sIoV1HTTPGetAction):
            return True

        return self.to_dict() != other.to_dict()
