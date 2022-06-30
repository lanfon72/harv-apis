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


class HarvesterhciIoV1beta1VirtualMachineImage(object):
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
        'kind': 'str',
        'metadata': 'K8sIoV1ObjectMeta',
        'spec': 'HarvesterhciIoV1beta1VirtualMachineImageSpec',
        'status': 'HarvesterhciIoV1beta1VirtualMachineImageStatus'
    }

    attribute_map = {
        'api_version': 'apiVersion',
        'kind': 'kind',
        'metadata': 'metadata',
        'spec': 'spec',
        'status': 'status'
    }

    def __init__(self, api_version=None, kind=None, metadata=None, spec=None, status=None, _configuration=None):  # noqa: E501
        """HarvesterhciIoV1beta1VirtualMachineImage - a model defined in Swagger"""  # noqa: E501
        if _configuration is None:
            _configuration = Configuration()
        self._configuration = _configuration

        self._api_version = None
        self._kind = None
        self._metadata = None
        self._spec = None
        self._status = None
        self.discriminator = None

        self.api_version = api_version
        self.kind = kind
        if metadata is not None:
            self.metadata = metadata
        self.spec = spec
        if status is not None:
            self.status = status

    @property
    def api_version(self):
        """Gets the api_version of this HarvesterhciIoV1beta1VirtualMachineImage.  # noqa: E501

        APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources  # noqa: E501

        :return: The api_version of this HarvesterhciIoV1beta1VirtualMachineImage.  # noqa: E501
        :rtype: str
        """
        return self._api_version

    @api_version.setter
    def api_version(self, api_version):
        """Sets the api_version of this HarvesterhciIoV1beta1VirtualMachineImage.

        APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources  # noqa: E501

        :param api_version: The api_version of this HarvesterhciIoV1beta1VirtualMachineImage.  # noqa: E501
        :type: str
        """
        if self._configuration.client_side_validation and api_version is None:
            raise ValueError("Invalid value for `api_version`, must not be `None`")  # noqa: E501

        self._api_version = api_version

    @property
    def kind(self):
        """Gets the kind of this HarvesterhciIoV1beta1VirtualMachineImage.  # noqa: E501

        Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds  # noqa: E501

        :return: The kind of this HarvesterhciIoV1beta1VirtualMachineImage.  # noqa: E501
        :rtype: str
        """
        return self._kind

    @kind.setter
    def kind(self, kind):
        """Sets the kind of this HarvesterhciIoV1beta1VirtualMachineImage.

        Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds  # noqa: E501

        :param kind: The kind of this HarvesterhciIoV1beta1VirtualMachineImage.  # noqa: E501
        :type: str
        """
        if self._configuration.client_side_validation and kind is None:
            raise ValueError("Invalid value for `kind`, must not be `None`")  # noqa: E501

        self._kind = kind

    @property
    def metadata(self):
        """Gets the metadata of this HarvesterhciIoV1beta1VirtualMachineImage.  # noqa: E501


        :return: The metadata of this HarvesterhciIoV1beta1VirtualMachineImage.  # noqa: E501
        :rtype: K8sIoV1ObjectMeta
        """
        return self._metadata

    @metadata.setter
    def metadata(self, metadata):
        """Sets the metadata of this HarvesterhciIoV1beta1VirtualMachineImage.


        :param metadata: The metadata of this HarvesterhciIoV1beta1VirtualMachineImage.  # noqa: E501
        :type: K8sIoV1ObjectMeta
        """

        self._metadata = metadata

    @property
    def spec(self):
        """Gets the spec of this HarvesterhciIoV1beta1VirtualMachineImage.  # noqa: E501


        :return: The spec of this HarvesterhciIoV1beta1VirtualMachineImage.  # noqa: E501
        :rtype: HarvesterhciIoV1beta1VirtualMachineImageSpec
        """
        return self._spec

    @spec.setter
    def spec(self, spec):
        """Sets the spec of this HarvesterhciIoV1beta1VirtualMachineImage.


        :param spec: The spec of this HarvesterhciIoV1beta1VirtualMachineImage.  # noqa: E501
        :type: HarvesterhciIoV1beta1VirtualMachineImageSpec
        """
        if self._configuration.client_side_validation and spec is None:
            raise ValueError("Invalid value for `spec`, must not be `None`")  # noqa: E501

        self._spec = spec

    @property
    def status(self):
        """Gets the status of this HarvesterhciIoV1beta1VirtualMachineImage.  # noqa: E501


        :return: The status of this HarvesterhciIoV1beta1VirtualMachineImage.  # noqa: E501
        :rtype: HarvesterhciIoV1beta1VirtualMachineImageStatus
        """
        return self._status

    @status.setter
    def status(self, status):
        """Sets the status of this HarvesterhciIoV1beta1VirtualMachineImage.


        :param status: The status of this HarvesterhciIoV1beta1VirtualMachineImage.  # noqa: E501
        :type: HarvesterhciIoV1beta1VirtualMachineImageStatus
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
        if issubclass(HarvesterhciIoV1beta1VirtualMachineImage, dict):
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
        if not isinstance(other, HarvesterhciIoV1beta1VirtualMachineImage):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, HarvesterhciIoV1beta1VirtualMachineImage):
            return True

        return self.to_dict() != other.to_dict()
