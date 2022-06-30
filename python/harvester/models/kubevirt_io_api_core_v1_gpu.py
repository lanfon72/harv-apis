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


class KubevirtIoApiCoreV1GPU(object):
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
        'device_name': 'str',
        'name': 'str',
        'tag': 'str',
        'virtual_gpu_options': 'KubevirtIoApiCoreV1VGPUOptions'
    }

    attribute_map = {
        'device_name': 'deviceName',
        'name': 'name',
        'tag': 'tag',
        'virtual_gpu_options': 'virtualGPUOptions'
    }

    def __init__(self, device_name='', name='', tag=None, virtual_gpu_options=None, _configuration=None):  # noqa: E501
        """KubevirtIoApiCoreV1GPU - a model defined in Swagger"""  # noqa: E501
        if _configuration is None:
            _configuration = Configuration()
        self._configuration = _configuration

        self._device_name = None
        self._name = None
        self._tag = None
        self._virtual_gpu_options = None
        self.discriminator = None

        self.device_name = device_name
        self.name = name
        if tag is not None:
            self.tag = tag
        if virtual_gpu_options is not None:
            self.virtual_gpu_options = virtual_gpu_options

    @property
    def device_name(self):
        """Gets the device_name of this KubevirtIoApiCoreV1GPU.  # noqa: E501


        :return: The device_name of this KubevirtIoApiCoreV1GPU.  # noqa: E501
        :rtype: str
        """
        return self._device_name

    @device_name.setter
    def device_name(self, device_name):
        """Sets the device_name of this KubevirtIoApiCoreV1GPU.


        :param device_name: The device_name of this KubevirtIoApiCoreV1GPU.  # noqa: E501
        :type: str
        """
        if self._configuration.client_side_validation and device_name is None:
            raise ValueError("Invalid value for `device_name`, must not be `None`")  # noqa: E501

        self._device_name = device_name

    @property
    def name(self):
        """Gets the name of this KubevirtIoApiCoreV1GPU.  # noqa: E501

        Name of the GPU device as exposed by a device plugin  # noqa: E501

        :return: The name of this KubevirtIoApiCoreV1GPU.  # noqa: E501
        :rtype: str
        """
        return self._name

    @name.setter
    def name(self, name):
        """Sets the name of this KubevirtIoApiCoreV1GPU.

        Name of the GPU device as exposed by a device plugin  # noqa: E501

        :param name: The name of this KubevirtIoApiCoreV1GPU.  # noqa: E501
        :type: str
        """
        if self._configuration.client_side_validation and name is None:
            raise ValueError("Invalid value for `name`, must not be `None`")  # noqa: E501

        self._name = name

    @property
    def tag(self):
        """Gets the tag of this KubevirtIoApiCoreV1GPU.  # noqa: E501

        If specified, the virtual network interface address and its tag will be provided to the guest via config drive  # noqa: E501

        :return: The tag of this KubevirtIoApiCoreV1GPU.  # noqa: E501
        :rtype: str
        """
        return self._tag

    @tag.setter
    def tag(self, tag):
        """Sets the tag of this KubevirtIoApiCoreV1GPU.

        If specified, the virtual network interface address and its tag will be provided to the guest via config drive  # noqa: E501

        :param tag: The tag of this KubevirtIoApiCoreV1GPU.  # noqa: E501
        :type: str
        """

        self._tag = tag

    @property
    def virtual_gpu_options(self):
        """Gets the virtual_gpu_options of this KubevirtIoApiCoreV1GPU.  # noqa: E501


        :return: The virtual_gpu_options of this KubevirtIoApiCoreV1GPU.  # noqa: E501
        :rtype: KubevirtIoApiCoreV1VGPUOptions
        """
        return self._virtual_gpu_options

    @virtual_gpu_options.setter
    def virtual_gpu_options(self, virtual_gpu_options):
        """Sets the virtual_gpu_options of this KubevirtIoApiCoreV1GPU.


        :param virtual_gpu_options: The virtual_gpu_options of this KubevirtIoApiCoreV1GPU.  # noqa: E501
        :type: KubevirtIoApiCoreV1VGPUOptions
        """

        self._virtual_gpu_options = virtual_gpu_options

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
        if issubclass(KubevirtIoApiCoreV1GPU, dict):
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
        if not isinstance(other, KubevirtIoApiCoreV1GPU):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, KubevirtIoApiCoreV1GPU):
            return True

        return self.to_dict() != other.to_dict()
