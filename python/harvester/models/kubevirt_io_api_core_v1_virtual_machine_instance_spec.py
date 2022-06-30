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


class KubevirtIoApiCoreV1VirtualMachineInstanceSpec(object):
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
        'access_credentials': 'list[KubevirtIoApiCoreV1AccessCredential]',
        'affinity': 'K8sIoV1Affinity',
        'dns_config': 'K8sIoV1PodDNSConfig',
        'dns_policy': 'str',
        'domain': 'KubevirtIoApiCoreV1DomainSpec',
        'eviction_strategy': 'str',
        'hostname': 'str',
        'liveness_probe': 'KubevirtIoApiCoreV1Probe',
        'networks': 'list[KubevirtIoApiCoreV1Network]',
        'node_selector': 'dict(str, str)',
        'priority_class_name': 'str',
        'readiness_probe': 'KubevirtIoApiCoreV1Probe',
        'scheduler_name': 'str',
        'start_strategy': 'str',
        'subdomain': 'str',
        'termination_grace_period_seconds': 'int',
        'tolerations': 'list[K8sIoV1Toleration]',
        'volumes': 'list[KubevirtIoApiCoreV1Volume]'
    }

    attribute_map = {
        'access_credentials': 'accessCredentials',
        'affinity': 'affinity',
        'dns_config': 'dnsConfig',
        'dns_policy': 'dnsPolicy',
        'domain': 'domain',
        'eviction_strategy': 'evictionStrategy',
        'hostname': 'hostname',
        'liveness_probe': 'livenessProbe',
        'networks': 'networks',
        'node_selector': 'nodeSelector',
        'priority_class_name': 'priorityClassName',
        'readiness_probe': 'readinessProbe',
        'scheduler_name': 'schedulerName',
        'start_strategy': 'startStrategy',
        'subdomain': 'subdomain',
        'termination_grace_period_seconds': 'terminationGracePeriodSeconds',
        'tolerations': 'tolerations',
        'volumes': 'volumes'
    }

    def __init__(self, access_credentials=None, affinity=None, dns_config=None, dns_policy=None, domain=None, eviction_strategy=None, hostname=None, liveness_probe=None, networks=None, node_selector=None, priority_class_name=None, readiness_probe=None, scheduler_name=None, start_strategy=None, subdomain=None, termination_grace_period_seconds=None, tolerations=None, volumes=None, _configuration=None):  # noqa: E501
        """KubevirtIoApiCoreV1VirtualMachineInstanceSpec - a model defined in Swagger"""  # noqa: E501
        if _configuration is None:
            _configuration = Configuration()
        self._configuration = _configuration

        self._access_credentials = None
        self._affinity = None
        self._dns_config = None
        self._dns_policy = None
        self._domain = None
        self._eviction_strategy = None
        self._hostname = None
        self._liveness_probe = None
        self._networks = None
        self._node_selector = None
        self._priority_class_name = None
        self._readiness_probe = None
        self._scheduler_name = None
        self._start_strategy = None
        self._subdomain = None
        self._termination_grace_period_seconds = None
        self._tolerations = None
        self._volumes = None
        self.discriminator = None

        if access_credentials is not None:
            self.access_credentials = access_credentials
        if affinity is not None:
            self.affinity = affinity
        if dns_config is not None:
            self.dns_config = dns_config
        if dns_policy is not None:
            self.dns_policy = dns_policy
        self.domain = domain
        if eviction_strategy is not None:
            self.eviction_strategy = eviction_strategy
        if hostname is not None:
            self.hostname = hostname
        if liveness_probe is not None:
            self.liveness_probe = liveness_probe
        if networks is not None:
            self.networks = networks
        if node_selector is not None:
            self.node_selector = node_selector
        if priority_class_name is not None:
            self.priority_class_name = priority_class_name
        if readiness_probe is not None:
            self.readiness_probe = readiness_probe
        if scheduler_name is not None:
            self.scheduler_name = scheduler_name
        if start_strategy is not None:
            self.start_strategy = start_strategy
        if subdomain is not None:
            self.subdomain = subdomain
        if termination_grace_period_seconds is not None:
            self.termination_grace_period_seconds = termination_grace_period_seconds
        if tolerations is not None:
            self.tolerations = tolerations
        if volumes is not None:
            self.volumes = volumes

    @property
    def access_credentials(self):
        """Gets the access_credentials of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501

        Specifies a set of public keys to inject into the vm guest  # noqa: E501

        :return: The access_credentials of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501
        :rtype: list[KubevirtIoApiCoreV1AccessCredential]
        """
        return self._access_credentials

    @access_credentials.setter
    def access_credentials(self, access_credentials):
        """Sets the access_credentials of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.

        Specifies a set of public keys to inject into the vm guest  # noqa: E501

        :param access_credentials: The access_credentials of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501
        :type: list[KubevirtIoApiCoreV1AccessCredential]
        """

        self._access_credentials = access_credentials

    @property
    def affinity(self):
        """Gets the affinity of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501

        If affinity is specifies, obey all the affinity rules  # noqa: E501

        :return: The affinity of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501
        :rtype: K8sIoV1Affinity
        """
        return self._affinity

    @affinity.setter
    def affinity(self, affinity):
        """Sets the affinity of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.

        If affinity is specifies, obey all the affinity rules  # noqa: E501

        :param affinity: The affinity of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501
        :type: K8sIoV1Affinity
        """

        self._affinity = affinity

    @property
    def dns_config(self):
        """Gets the dns_config of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501

        Specifies the DNS parameters of a pod. Parameters specified here will be merged to the generated DNS configuration based on DNSPolicy.  # noqa: E501

        :return: The dns_config of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501
        :rtype: K8sIoV1PodDNSConfig
        """
        return self._dns_config

    @dns_config.setter
    def dns_config(self, dns_config):
        """Sets the dns_config of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.

        Specifies the DNS parameters of a pod. Parameters specified here will be merged to the generated DNS configuration based on DNSPolicy.  # noqa: E501

        :param dns_config: The dns_config of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501
        :type: K8sIoV1PodDNSConfig
        """

        self._dns_config = dns_config

    @property
    def dns_policy(self):
        """Gets the dns_policy of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501

        Set DNS policy for the pod. Defaults to \"ClusterFirst\". Valid values are 'ClusterFirstWithHostNet', 'ClusterFirst', 'Default' or 'None'. DNS parameters given in DNSConfig will be merged with the policy selected with DNSPolicy. To have DNS options set along with hostNetwork, you have to specify DNS policy explicitly to 'ClusterFirstWithHostNet'.  Possible enum values:  - `\"ClusterFirst\"` indicates that the pod should use cluster DNS first unless hostNetwork is true, if it is available, then fall back on the default (as determined by kubelet) DNS settings.  - `\"ClusterFirstWithHostNet\"` indicates that the pod should use cluster DNS first, if it is available, then fall back on the default (as determined by kubelet) DNS settings.  - `\"Default\"` indicates that the pod should use the default (as determined by kubelet) DNS settings.  - `\"None\"` indicates that the pod should use empty DNS settings. DNS parameters such as nameservers and search paths should be defined via DNSConfig.  # noqa: E501

        :return: The dns_policy of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501
        :rtype: str
        """
        return self._dns_policy

    @dns_policy.setter
    def dns_policy(self, dns_policy):
        """Sets the dns_policy of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.

        Set DNS policy for the pod. Defaults to \"ClusterFirst\". Valid values are 'ClusterFirstWithHostNet', 'ClusterFirst', 'Default' or 'None'. DNS parameters given in DNSConfig will be merged with the policy selected with DNSPolicy. To have DNS options set along with hostNetwork, you have to specify DNS policy explicitly to 'ClusterFirstWithHostNet'.  Possible enum values:  - `\"ClusterFirst\"` indicates that the pod should use cluster DNS first unless hostNetwork is true, if it is available, then fall back on the default (as determined by kubelet) DNS settings.  - `\"ClusterFirstWithHostNet\"` indicates that the pod should use cluster DNS first, if it is available, then fall back on the default (as determined by kubelet) DNS settings.  - `\"Default\"` indicates that the pod should use the default (as determined by kubelet) DNS settings.  - `\"None\"` indicates that the pod should use empty DNS settings. DNS parameters such as nameservers and search paths should be defined via DNSConfig.  # noqa: E501

        :param dns_policy: The dns_policy of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501
        :type: str
        """
        allowed_values = ["ClusterFirst", "ClusterFirstWithHostNet", "Default", "None"]  # noqa: E501
        if (self._configuration.client_side_validation and
                dns_policy not in allowed_values):
            raise ValueError(
                "Invalid value for `dns_policy` ({0}), must be one of {1}"  # noqa: E501
                .format(dns_policy, allowed_values)
            )

        self._dns_policy = dns_policy

    @property
    def domain(self):
        """Gets the domain of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501

        Specification of the desired behavior of the VirtualMachineInstance on the host.  # noqa: E501

        :return: The domain of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501
        :rtype: KubevirtIoApiCoreV1DomainSpec
        """
        return self._domain

    @domain.setter
    def domain(self, domain):
        """Sets the domain of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.

        Specification of the desired behavior of the VirtualMachineInstance on the host.  # noqa: E501

        :param domain: The domain of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501
        :type: KubevirtIoApiCoreV1DomainSpec
        """
        if self._configuration.client_side_validation and domain is None:
            raise ValueError("Invalid value for `domain`, must not be `None`")  # noqa: E501

        self._domain = domain

    @property
    def eviction_strategy(self):
        """Gets the eviction_strategy of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501

        EvictionStrategy can be set to \"LiveMigrate\" if the VirtualMachineInstance should be migrated instead of shut-off in case of a node drain.  # noqa: E501

        :return: The eviction_strategy of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501
        :rtype: str
        """
        return self._eviction_strategy

    @eviction_strategy.setter
    def eviction_strategy(self, eviction_strategy):
        """Sets the eviction_strategy of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.

        EvictionStrategy can be set to \"LiveMigrate\" if the VirtualMachineInstance should be migrated instead of shut-off in case of a node drain.  # noqa: E501

        :param eviction_strategy: The eviction_strategy of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501
        :type: str
        """

        self._eviction_strategy = eviction_strategy

    @property
    def hostname(self):
        """Gets the hostname of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501

        Specifies the hostname of the vmi If not specified, the hostname will be set to the name of the vmi, if dhcp or cloud-init is configured properly.  # noqa: E501

        :return: The hostname of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501
        :rtype: str
        """
        return self._hostname

    @hostname.setter
    def hostname(self, hostname):
        """Sets the hostname of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.

        Specifies the hostname of the vmi If not specified, the hostname will be set to the name of the vmi, if dhcp or cloud-init is configured properly.  # noqa: E501

        :param hostname: The hostname of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501
        :type: str
        """

        self._hostname = hostname

    @property
    def liveness_probe(self):
        """Gets the liveness_probe of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501

        Periodic probe of VirtualMachineInstance liveness. VirtualmachineInstances will be stopped if the probe fails. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes  # noqa: E501

        :return: The liveness_probe of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501
        :rtype: KubevirtIoApiCoreV1Probe
        """
        return self._liveness_probe

    @liveness_probe.setter
    def liveness_probe(self, liveness_probe):
        """Sets the liveness_probe of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.

        Periodic probe of VirtualMachineInstance liveness. VirtualmachineInstances will be stopped if the probe fails. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes  # noqa: E501

        :param liveness_probe: The liveness_probe of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501
        :type: KubevirtIoApiCoreV1Probe
        """

        self._liveness_probe = liveness_probe

    @property
    def networks(self):
        """Gets the networks of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501

        List of networks that can be attached to a vm's virtual interface.  # noqa: E501

        :return: The networks of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501
        :rtype: list[KubevirtIoApiCoreV1Network]
        """
        return self._networks

    @networks.setter
    def networks(self, networks):
        """Sets the networks of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.

        List of networks that can be attached to a vm's virtual interface.  # noqa: E501

        :param networks: The networks of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501
        :type: list[KubevirtIoApiCoreV1Network]
        """

        self._networks = networks

    @property
    def node_selector(self):
        """Gets the node_selector of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501

        NodeSelector is a selector which must be true for the vmi to fit on a node. Selector which must match a node's labels for the vmi to be scheduled on that node. More info: https://kubernetes.io/docs/concepts/configuration/assign-pod-node/  # noqa: E501

        :return: The node_selector of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501
        :rtype: dict(str, str)
        """
        return self._node_selector

    @node_selector.setter
    def node_selector(self, node_selector):
        """Sets the node_selector of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.

        NodeSelector is a selector which must be true for the vmi to fit on a node. Selector which must match a node's labels for the vmi to be scheduled on that node. More info: https://kubernetes.io/docs/concepts/configuration/assign-pod-node/  # noqa: E501

        :param node_selector: The node_selector of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501
        :type: dict(str, str)
        """

        self._node_selector = node_selector

    @property
    def priority_class_name(self):
        """Gets the priority_class_name of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501

        If specified, indicates the pod's priority. If not specified, the pod priority will be default or zero if there is no default.  # noqa: E501

        :return: The priority_class_name of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501
        :rtype: str
        """
        return self._priority_class_name

    @priority_class_name.setter
    def priority_class_name(self, priority_class_name):
        """Sets the priority_class_name of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.

        If specified, indicates the pod's priority. If not specified, the pod priority will be default or zero if there is no default.  # noqa: E501

        :param priority_class_name: The priority_class_name of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501
        :type: str
        """

        self._priority_class_name = priority_class_name

    @property
    def readiness_probe(self):
        """Gets the readiness_probe of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501

        Periodic probe of VirtualMachineInstance service readiness. VirtualmachineInstances will be removed from service endpoints if the probe fails. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes  # noqa: E501

        :return: The readiness_probe of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501
        :rtype: KubevirtIoApiCoreV1Probe
        """
        return self._readiness_probe

    @readiness_probe.setter
    def readiness_probe(self, readiness_probe):
        """Sets the readiness_probe of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.

        Periodic probe of VirtualMachineInstance service readiness. VirtualmachineInstances will be removed from service endpoints if the probe fails. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes  # noqa: E501

        :param readiness_probe: The readiness_probe of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501
        :type: KubevirtIoApiCoreV1Probe
        """

        self._readiness_probe = readiness_probe

    @property
    def scheduler_name(self):
        """Gets the scheduler_name of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501

        If specified, the VMI will be dispatched by specified scheduler. If not specified, the VMI will be dispatched by default scheduler.  # noqa: E501

        :return: The scheduler_name of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501
        :rtype: str
        """
        return self._scheduler_name

    @scheduler_name.setter
    def scheduler_name(self, scheduler_name):
        """Sets the scheduler_name of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.

        If specified, the VMI will be dispatched by specified scheduler. If not specified, the VMI will be dispatched by default scheduler.  # noqa: E501

        :param scheduler_name: The scheduler_name of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501
        :type: str
        """

        self._scheduler_name = scheduler_name

    @property
    def start_strategy(self):
        """Gets the start_strategy of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501

        StartStrategy can be set to \"Paused\" if Virtual Machine should be started in paused state.  # noqa: E501

        :return: The start_strategy of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501
        :rtype: str
        """
        return self._start_strategy

    @start_strategy.setter
    def start_strategy(self, start_strategy):
        """Sets the start_strategy of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.

        StartStrategy can be set to \"Paused\" if Virtual Machine should be started in paused state.  # noqa: E501

        :param start_strategy: The start_strategy of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501
        :type: str
        """

        self._start_strategy = start_strategy

    @property
    def subdomain(self):
        """Gets the subdomain of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501

        If specified, the fully qualified vmi hostname will be \"<hostname>.<subdomain>.<pod namespace>.svc.<cluster domain>\". If not specified, the vmi will not have a domainname at all. The DNS entry will resolve to the vmi, no matter if the vmi itself can pick up a hostname.  # noqa: E501

        :return: The subdomain of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501
        :rtype: str
        """
        return self._subdomain

    @subdomain.setter
    def subdomain(self, subdomain):
        """Sets the subdomain of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.

        If specified, the fully qualified vmi hostname will be \"<hostname>.<subdomain>.<pod namespace>.svc.<cluster domain>\". If not specified, the vmi will not have a domainname at all. The DNS entry will resolve to the vmi, no matter if the vmi itself can pick up a hostname.  # noqa: E501

        :param subdomain: The subdomain of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501
        :type: str
        """

        self._subdomain = subdomain

    @property
    def termination_grace_period_seconds(self):
        """Gets the termination_grace_period_seconds of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501

        Grace period observed after signalling a VirtualMachineInstance to stop after which the VirtualMachineInstance is force terminated.  # noqa: E501

        :return: The termination_grace_period_seconds of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501
        :rtype: int
        """
        return self._termination_grace_period_seconds

    @termination_grace_period_seconds.setter
    def termination_grace_period_seconds(self, termination_grace_period_seconds):
        """Sets the termination_grace_period_seconds of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.

        Grace period observed after signalling a VirtualMachineInstance to stop after which the VirtualMachineInstance is force terminated.  # noqa: E501

        :param termination_grace_period_seconds: The termination_grace_period_seconds of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501
        :type: int
        """

        self._termination_grace_period_seconds = termination_grace_period_seconds

    @property
    def tolerations(self):
        """Gets the tolerations of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501

        If toleration is specified, obey all the toleration rules.  # noqa: E501

        :return: The tolerations of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501
        :rtype: list[K8sIoV1Toleration]
        """
        return self._tolerations

    @tolerations.setter
    def tolerations(self, tolerations):
        """Sets the tolerations of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.

        If toleration is specified, obey all the toleration rules.  # noqa: E501

        :param tolerations: The tolerations of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501
        :type: list[K8sIoV1Toleration]
        """

        self._tolerations = tolerations

    @property
    def volumes(self):
        """Gets the volumes of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501

        List of volumes that can be mounted by disks belonging to the vmi.  # noqa: E501

        :return: The volumes of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501
        :rtype: list[KubevirtIoApiCoreV1Volume]
        """
        return self._volumes

    @volumes.setter
    def volumes(self, volumes):
        """Sets the volumes of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.

        List of volumes that can be mounted by disks belonging to the vmi.  # noqa: E501

        :param volumes: The volumes of this KubevirtIoApiCoreV1VirtualMachineInstanceSpec.  # noqa: E501
        :type: list[KubevirtIoApiCoreV1Volume]
        """

        self._volumes = volumes

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
        if issubclass(KubevirtIoApiCoreV1VirtualMachineInstanceSpec, dict):
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
        if not isinstance(other, KubevirtIoApiCoreV1VirtualMachineInstanceSpec):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, KubevirtIoApiCoreV1VirtualMachineInstanceSpec):
            return True

        return self.to_dict() != other.to_dict()