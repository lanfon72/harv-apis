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


class KubevirtIoApiCoreV1KernelBootContainer(object):
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
        'image': 'str',
        'image_pull_policy': 'str',
        'image_pull_secret': 'str',
        'initrd_path': 'str',
        'kernel_path': 'str'
    }

    attribute_map = {
        'image': 'image',
        'image_pull_policy': 'imagePullPolicy',
        'image_pull_secret': 'imagePullSecret',
        'initrd_path': 'initrdPath',
        'kernel_path': 'kernelPath'
    }

    def __init__(self, image='', image_pull_policy=None, image_pull_secret=None, initrd_path=None, kernel_path=None, _configuration=None):  # noqa: E501
        """KubevirtIoApiCoreV1KernelBootContainer - a model defined in Swagger"""  # noqa: E501
        if _configuration is None:
            _configuration = Configuration()
        self._configuration = _configuration

        self._image = None
        self._image_pull_policy = None
        self._image_pull_secret = None
        self._initrd_path = None
        self._kernel_path = None
        self.discriminator = None

        self.image = image
        if image_pull_policy is not None:
            self.image_pull_policy = image_pull_policy
        if image_pull_secret is not None:
            self.image_pull_secret = image_pull_secret
        if initrd_path is not None:
            self.initrd_path = initrd_path
        if kernel_path is not None:
            self.kernel_path = kernel_path

    @property
    def image(self):
        """Gets the image of this KubevirtIoApiCoreV1KernelBootContainer.  # noqa: E501

        Image that contains initrd / kernel files.  # noqa: E501

        :return: The image of this KubevirtIoApiCoreV1KernelBootContainer.  # noqa: E501
        :rtype: str
        """
        return self._image

    @image.setter
    def image(self, image):
        """Sets the image of this KubevirtIoApiCoreV1KernelBootContainer.

        Image that contains initrd / kernel files.  # noqa: E501

        :param image: The image of this KubevirtIoApiCoreV1KernelBootContainer.  # noqa: E501
        :type: str
        """
        if self._configuration.client_side_validation and image is None:
            raise ValueError("Invalid value for `image`, must not be `None`")  # noqa: E501

        self._image = image

    @property
    def image_pull_policy(self):
        """Gets the image_pull_policy of this KubevirtIoApiCoreV1KernelBootContainer.  # noqa: E501

        Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise. Cannot be updated. More info: https://kubernetes.io/docs/concepts/containers/images#updating-images  Possible enum values:  - `\"Always\"` means that kubelet always attempts to pull the latest image. Container will fail If the pull fails.  - `\"IfNotPresent\"` means that kubelet pulls if the image isn't present on disk. Container will fail if the image isn't present and the pull fails.  - `\"Never\"` means that kubelet never pulls an image, but only uses a local image. Container will fail if the image isn't present  # noqa: E501

        :return: The image_pull_policy of this KubevirtIoApiCoreV1KernelBootContainer.  # noqa: E501
        :rtype: str
        """
        return self._image_pull_policy

    @image_pull_policy.setter
    def image_pull_policy(self, image_pull_policy):
        """Sets the image_pull_policy of this KubevirtIoApiCoreV1KernelBootContainer.

        Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise. Cannot be updated. More info: https://kubernetes.io/docs/concepts/containers/images#updating-images  Possible enum values:  - `\"Always\"` means that kubelet always attempts to pull the latest image. Container will fail If the pull fails.  - `\"IfNotPresent\"` means that kubelet pulls if the image isn't present on disk. Container will fail if the image isn't present and the pull fails.  - `\"Never\"` means that kubelet never pulls an image, but only uses a local image. Container will fail if the image isn't present  # noqa: E501

        :param image_pull_policy: The image_pull_policy of this KubevirtIoApiCoreV1KernelBootContainer.  # noqa: E501
        :type: str
        """
        allowed_values = ["Always", "IfNotPresent", "Never"]  # noqa: E501
        if (self._configuration.client_side_validation and
                image_pull_policy not in allowed_values):
            raise ValueError(
                "Invalid value for `image_pull_policy` ({0}), must be one of {1}"  # noqa: E501
                .format(image_pull_policy, allowed_values)
            )

        self._image_pull_policy = image_pull_policy

    @property
    def image_pull_secret(self):
        """Gets the image_pull_secret of this KubevirtIoApiCoreV1KernelBootContainer.  # noqa: E501

        ImagePullSecret is the name of the Docker registry secret required to pull the image. The secret must already exist.  # noqa: E501

        :return: The image_pull_secret of this KubevirtIoApiCoreV1KernelBootContainer.  # noqa: E501
        :rtype: str
        """
        return self._image_pull_secret

    @image_pull_secret.setter
    def image_pull_secret(self, image_pull_secret):
        """Sets the image_pull_secret of this KubevirtIoApiCoreV1KernelBootContainer.

        ImagePullSecret is the name of the Docker registry secret required to pull the image. The secret must already exist.  # noqa: E501

        :param image_pull_secret: The image_pull_secret of this KubevirtIoApiCoreV1KernelBootContainer.  # noqa: E501
        :type: str
        """

        self._image_pull_secret = image_pull_secret

    @property
    def initrd_path(self):
        """Gets the initrd_path of this KubevirtIoApiCoreV1KernelBootContainer.  # noqa: E501

        the fully-qualified path to the ramdisk image in the host OS  # noqa: E501

        :return: The initrd_path of this KubevirtIoApiCoreV1KernelBootContainer.  # noqa: E501
        :rtype: str
        """
        return self._initrd_path

    @initrd_path.setter
    def initrd_path(self, initrd_path):
        """Sets the initrd_path of this KubevirtIoApiCoreV1KernelBootContainer.

        the fully-qualified path to the ramdisk image in the host OS  # noqa: E501

        :param initrd_path: The initrd_path of this KubevirtIoApiCoreV1KernelBootContainer.  # noqa: E501
        :type: str
        """

        self._initrd_path = initrd_path

    @property
    def kernel_path(self):
        """Gets the kernel_path of this KubevirtIoApiCoreV1KernelBootContainer.  # noqa: E501

        The fully-qualified path to the kernel image in the host OS  # noqa: E501

        :return: The kernel_path of this KubevirtIoApiCoreV1KernelBootContainer.  # noqa: E501
        :rtype: str
        """
        return self._kernel_path

    @kernel_path.setter
    def kernel_path(self, kernel_path):
        """Sets the kernel_path of this KubevirtIoApiCoreV1KernelBootContainer.

        The fully-qualified path to the kernel image in the host OS  # noqa: E501

        :param kernel_path: The kernel_path of this KubevirtIoApiCoreV1KernelBootContainer.  # noqa: E501
        :type: str
        """

        self._kernel_path = kernel_path

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
        if issubclass(KubevirtIoApiCoreV1KernelBootContainer, dict):
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
        if not isinstance(other, KubevirtIoApiCoreV1KernelBootContainer):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, KubevirtIoApiCoreV1KernelBootContainer):
            return True

        return self.to_dict() != other.to_dict()
