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


class HarvesterhciIoV1beta1VirtualMachineImageSpec(object):
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
        'checksum': 'str',
        'description': 'str',
        'display_name': 'str',
        'pvc_name': 'str',
        'pvc_namespace': 'str',
        'source_type': 'str',
        'url': 'str'
    }

    attribute_map = {
        'checksum': 'checksum',
        'description': 'description',
        'display_name': 'displayName',
        'pvc_name': 'pvcName',
        'pvc_namespace': 'pvcNamespace',
        'source_type': 'sourceType',
        'url': 'url'
    }

    def __init__(self, checksum='', description=None, display_name='', pvc_name='', pvc_namespace='', source_type='', url='', _configuration=None):  # noqa: E501
        """HarvesterhciIoV1beta1VirtualMachineImageSpec - a model defined in Swagger"""  # noqa: E501
        if _configuration is None:
            _configuration = Configuration()
        self._configuration = _configuration

        self._checksum = None
        self._description = None
        self._display_name = None
        self._pvc_name = None
        self._pvc_namespace = None
        self._source_type = None
        self._url = None
        self.discriminator = None

        if checksum is not None:
            self.checksum = checksum
        if description is not None:
            self.description = description
        self.display_name = display_name
        if pvc_name is not None:
            self.pvc_name = pvc_name
        if pvc_namespace is not None:
            self.pvc_namespace = pvc_namespace
        self.source_type = source_type
        if url is not None:
            self.url = url

    @property
    def checksum(self):
        """Gets the checksum of this HarvesterhciIoV1beta1VirtualMachineImageSpec.  # noqa: E501


        :return: The checksum of this HarvesterhciIoV1beta1VirtualMachineImageSpec.  # noqa: E501
        :rtype: str
        """
        return self._checksum

    @checksum.setter
    def checksum(self, checksum):
        """Sets the checksum of this HarvesterhciIoV1beta1VirtualMachineImageSpec.


        :param checksum: The checksum of this HarvesterhciIoV1beta1VirtualMachineImageSpec.  # noqa: E501
        :type: str
        """

        self._checksum = checksum

    @property
    def description(self):
        """Gets the description of this HarvesterhciIoV1beta1VirtualMachineImageSpec.  # noqa: E501


        :return: The description of this HarvesterhciIoV1beta1VirtualMachineImageSpec.  # noqa: E501
        :rtype: str
        """
        return self._description

    @description.setter
    def description(self, description):
        """Sets the description of this HarvesterhciIoV1beta1VirtualMachineImageSpec.


        :param description: The description of this HarvesterhciIoV1beta1VirtualMachineImageSpec.  # noqa: E501
        :type: str
        """

        self._description = description

    @property
    def display_name(self):
        """Gets the display_name of this HarvesterhciIoV1beta1VirtualMachineImageSpec.  # noqa: E501


        :return: The display_name of this HarvesterhciIoV1beta1VirtualMachineImageSpec.  # noqa: E501
        :rtype: str
        """
        return self._display_name

    @display_name.setter
    def display_name(self, display_name):
        """Sets the display_name of this HarvesterhciIoV1beta1VirtualMachineImageSpec.


        :param display_name: The display_name of this HarvesterhciIoV1beta1VirtualMachineImageSpec.  # noqa: E501
        :type: str
        """
        if self._configuration.client_side_validation and display_name is None:
            raise ValueError("Invalid value for `display_name`, must not be `None`")  # noqa: E501

        self._display_name = display_name

    @property
    def pvc_name(self):
        """Gets the pvc_name of this HarvesterhciIoV1beta1VirtualMachineImageSpec.  # noqa: E501


        :return: The pvc_name of this HarvesterhciIoV1beta1VirtualMachineImageSpec.  # noqa: E501
        :rtype: str
        """
        return self._pvc_name

    @pvc_name.setter
    def pvc_name(self, pvc_name):
        """Sets the pvc_name of this HarvesterhciIoV1beta1VirtualMachineImageSpec.


        :param pvc_name: The pvc_name of this HarvesterhciIoV1beta1VirtualMachineImageSpec.  # noqa: E501
        :type: str
        """

        self._pvc_name = pvc_name

    @property
    def pvc_namespace(self):
        """Gets the pvc_namespace of this HarvesterhciIoV1beta1VirtualMachineImageSpec.  # noqa: E501


        :return: The pvc_namespace of this HarvesterhciIoV1beta1VirtualMachineImageSpec.  # noqa: E501
        :rtype: str
        """
        return self._pvc_namespace

    @pvc_namespace.setter
    def pvc_namespace(self, pvc_namespace):
        """Sets the pvc_namespace of this HarvesterhciIoV1beta1VirtualMachineImageSpec.


        :param pvc_namespace: The pvc_namespace of this HarvesterhciIoV1beta1VirtualMachineImageSpec.  # noqa: E501
        :type: str
        """

        self._pvc_namespace = pvc_namespace

    @property
    def source_type(self):
        """Gets the source_type of this HarvesterhciIoV1beta1VirtualMachineImageSpec.  # noqa: E501


        :return: The source_type of this HarvesterhciIoV1beta1VirtualMachineImageSpec.  # noqa: E501
        :rtype: str
        """
        return self._source_type

    @source_type.setter
    def source_type(self, source_type):
        """Sets the source_type of this HarvesterhciIoV1beta1VirtualMachineImageSpec.


        :param source_type: The source_type of this HarvesterhciIoV1beta1VirtualMachineImageSpec.  # noqa: E501
        :type: str
        """
        if self._configuration.client_side_validation and source_type is None:
            raise ValueError("Invalid value for `source_type`, must not be `None`")  # noqa: E501

        self._source_type = source_type

    @property
    def url(self):
        """Gets the url of this HarvesterhciIoV1beta1VirtualMachineImageSpec.  # noqa: E501


        :return: The url of this HarvesterhciIoV1beta1VirtualMachineImageSpec.  # noqa: E501
        :rtype: str
        """
        return self._url

    @url.setter
    def url(self, url):
        """Sets the url of this HarvesterhciIoV1beta1VirtualMachineImageSpec.


        :param url: The url of this HarvesterhciIoV1beta1VirtualMachineImageSpec.  # noqa: E501
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
        if issubclass(HarvesterhciIoV1beta1VirtualMachineImageSpec, dict):
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
        if not isinstance(other, HarvesterhciIoV1beta1VirtualMachineImageSpec):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, HarvesterhciIoV1beta1VirtualMachineImageSpec):
            return True

        return self.to_dict() != other.to_dict()
