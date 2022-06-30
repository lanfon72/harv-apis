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


class K8sIoV1Status(object):
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
        'api_version': 'str',
        'code': 'int',
        'details': 'K8sIoV1StatusDetails',
        'kind': 'str',
        'message': 'str',
        'metadata': 'K8sIoV1ListMeta',
        'reason': 'str',
        'status': 'str'
    }

    attribute_map = {
        'api_version': 'apiVersion',
        'code': 'code',
        'details': 'details',
        'kind': 'kind',
        'message': 'message',
        'metadata': 'metadata',
        'reason': 'reason',
        'status': 'status'
    }

    def __init__(self, api_version=None, code=None, details=None, kind=None, message=None, metadata=None, reason=None, status=None, _configuration=None):  # noqa: E501
        """K8sIoV1Status - a model defined in Swagger"""  # noqa: E501
        if _configuration is None:
            _configuration = Configuration()
        self._configuration = _configuration

        self._api_version = None
        self._code = None
        self._details = None
        self._kind = None
        self._message = None
        self._metadata = None
        self._reason = None
        self._status = None
        self.discriminator = None

        self.api_version = api_version
        if code is not None:
            self.code = code
        if details is not None:
            self.details = details
        self.kind = kind
        if message is not None:
            self.message = message
        if metadata is not None:
            self.metadata = metadata
        if reason is not None:
            self.reason = reason
        if status is not None:
            self.status = status

    @property
    def api_version(self):
        """Gets the api_version of this K8sIoV1Status.  # noqa: E501

        APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources  # noqa: E501

        :return: The api_version of this K8sIoV1Status.  # noqa: E501
        :rtype: str
        """
        return self._api_version

    @api_version.setter
    def api_version(self, api_version):
        """Sets the api_version of this K8sIoV1Status.

        APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources  # noqa: E501

        :param api_version: The api_version of this K8sIoV1Status.  # noqa: E501
        :type: str
        """
        if self._configuration.client_side_validation and api_version is None:
            raise ValueError("Invalid value for `api_version`, must not be `None`")  # noqa: E501

        self._api_version = api_version

    @property
    def code(self):
        """Gets the code of this K8sIoV1Status.  # noqa: E501

        Suggested HTTP return code for this status, 0 if not set.  # noqa: E501

        :return: The code of this K8sIoV1Status.  # noqa: E501
        :rtype: int
        """
        return self._code

    @code.setter
    def code(self, code):
        """Sets the code of this K8sIoV1Status.

        Suggested HTTP return code for this status, 0 if not set.  # noqa: E501

        :param code: The code of this K8sIoV1Status.  # noqa: E501
        :type: int
        """

        self._code = code

    @property
    def details(self):
        """Gets the details of this K8sIoV1Status.  # noqa: E501

        Extended data associated with the reason.  Each reason may define its own extended details. This field is optional and the data returned is not guaranteed to conform to any schema except that defined by the reason type.  # noqa: E501

        :return: The details of this K8sIoV1Status.  # noqa: E501
        :rtype: K8sIoV1StatusDetails
        """
        return self._details

    @details.setter
    def details(self, details):
        """Sets the details of this K8sIoV1Status.

        Extended data associated with the reason.  Each reason may define its own extended details. This field is optional and the data returned is not guaranteed to conform to any schema except that defined by the reason type.  # noqa: E501

        :param details: The details of this K8sIoV1Status.  # noqa: E501
        :type: K8sIoV1StatusDetails
        """

        self._details = details

    @property
    def kind(self):
        """Gets the kind of this K8sIoV1Status.  # noqa: E501

        Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds  # noqa: E501

        :return: The kind of this K8sIoV1Status.  # noqa: E501
        :rtype: str
        """
        return self._kind

    @kind.setter
    def kind(self, kind):
        """Sets the kind of this K8sIoV1Status.

        Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds  # noqa: E501

        :param kind: The kind of this K8sIoV1Status.  # noqa: E501
        :type: str
        """
        if self._configuration.client_side_validation and kind is None:
            raise ValueError("Invalid value for `kind`, must not be `None`")  # noqa: E501

        self._kind = kind

    @property
    def message(self):
        """Gets the message of this K8sIoV1Status.  # noqa: E501

        A human-readable description of the status of this operation.  # noqa: E501

        :return: The message of this K8sIoV1Status.  # noqa: E501
        :rtype: str
        """
        return self._message

    @message.setter
    def message(self, message):
        """Sets the message of this K8sIoV1Status.

        A human-readable description of the status of this operation.  # noqa: E501

        :param message: The message of this K8sIoV1Status.  # noqa: E501
        :type: str
        """

        self._message = message

    @property
    def metadata(self):
        """Gets the metadata of this K8sIoV1Status.  # noqa: E501

        Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds  # noqa: E501

        :return: The metadata of this K8sIoV1Status.  # noqa: E501
        :rtype: K8sIoV1ListMeta
        """
        return self._metadata

    @metadata.setter
    def metadata(self, metadata):
        """Sets the metadata of this K8sIoV1Status.

        Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds  # noqa: E501

        :param metadata: The metadata of this K8sIoV1Status.  # noqa: E501
        :type: K8sIoV1ListMeta
        """

        self._metadata = metadata

    @property
    def reason(self):
        """Gets the reason of this K8sIoV1Status.  # noqa: E501

        A machine-readable description of why this operation is in the \"Failure\" status. If this value is empty there is no information available. A Reason clarifies an HTTP status code but does not override it.  # noqa: E501

        :return: The reason of this K8sIoV1Status.  # noqa: E501
        :rtype: str
        """
        return self._reason

    @reason.setter
    def reason(self, reason):
        """Sets the reason of this K8sIoV1Status.

        A machine-readable description of why this operation is in the \"Failure\" status. If this value is empty there is no information available. A Reason clarifies an HTTP status code but does not override it.  # noqa: E501

        :param reason: The reason of this K8sIoV1Status.  # noqa: E501
        :type: str
        """

        self._reason = reason

    @property
    def status(self):
        """Gets the status of this K8sIoV1Status.  # noqa: E501

        Status of the operation. One of: \"Success\" or \"Failure\". More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status  # noqa: E501

        :return: The status of this K8sIoV1Status.  # noqa: E501
        :rtype: str
        """
        return self._status

    @status.setter
    def status(self, status):
        """Sets the status of this K8sIoV1Status.

        Status of the operation. One of: \"Success\" or \"Failure\". More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status  # noqa: E501

        :param status: The status of this K8sIoV1Status.  # noqa: E501
        :type: str
        """

        self._status = status

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
        if issubclass(K8sIoV1Status, dict):
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
        if not isinstance(other, K8sIoV1Status):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, K8sIoV1Status):
            return True

        return self.to_dict() != other.to_dict()
