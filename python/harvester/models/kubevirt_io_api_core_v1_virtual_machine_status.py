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


class KubevirtIoApiCoreV1VirtualMachineStatus(object):
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
        'conditions': 'list[KubevirtIoApiCoreV1VirtualMachineCondition]',
        'created': 'bool',
        'printable_status': 'str',
        'ready': 'bool',
        'restore_in_progress': 'str',
        'snapshot_in_progress': 'str',
        'start_failure': 'KubevirtIoApiCoreV1VirtualMachineStartFailure',
        'state_change_requests': 'list[KubevirtIoApiCoreV1VirtualMachineStateChangeRequest]',
        'volume_requests': 'list[KubevirtIoApiCoreV1VirtualMachineVolumeRequest]',
        'volume_snapshot_statuses': 'list[KubevirtIoApiCoreV1VolumeSnapshotStatus]'
    }

    attribute_map = {
        'conditions': 'conditions',
        'created': 'created',
        'printable_status': 'printableStatus',
        'ready': 'ready',
        'restore_in_progress': 'restoreInProgress',
        'snapshot_in_progress': 'snapshotInProgress',
        'start_failure': 'startFailure',
        'state_change_requests': 'stateChangeRequests',
        'volume_requests': 'volumeRequests',
        'volume_snapshot_statuses': 'volumeSnapshotStatuses'
    }

    def __init__(self, conditions=None, created=None, printable_status=None, ready=None, restore_in_progress=None, snapshot_in_progress=None, start_failure=None, state_change_requests=None, volume_requests=None, volume_snapshot_statuses=None, _configuration=None):  # noqa: E501
        """KubevirtIoApiCoreV1VirtualMachineStatus - a model defined in Swagger"""  # noqa: E501
        if _configuration is None:
            _configuration = Configuration()
        self._configuration = _configuration

        self._conditions = None
        self._created = None
        self._printable_status = None
        self._ready = None
        self._restore_in_progress = None
        self._snapshot_in_progress = None
        self._start_failure = None
        self._state_change_requests = None
        self._volume_requests = None
        self._volume_snapshot_statuses = None
        self.discriminator = None

        if conditions is not None:
            self.conditions = conditions
        if created is not None:
            self.created = created
        if printable_status is not None:
            self.printable_status = printable_status
        if ready is not None:
            self.ready = ready
        if restore_in_progress is not None:
            self.restore_in_progress = restore_in_progress
        if snapshot_in_progress is not None:
            self.snapshot_in_progress = snapshot_in_progress
        if start_failure is not None:
            self.start_failure = start_failure
        if state_change_requests is not None:
            self.state_change_requests = state_change_requests
        if volume_requests is not None:
            self.volume_requests = volume_requests
        if volume_snapshot_statuses is not None:
            self.volume_snapshot_statuses = volume_snapshot_statuses

    @property
    def conditions(self):
        """Gets the conditions of this KubevirtIoApiCoreV1VirtualMachineStatus.  # noqa: E501

        Hold the state information of the VirtualMachine and its VirtualMachineInstance  # noqa: E501

        :return: The conditions of this KubevirtIoApiCoreV1VirtualMachineStatus.  # noqa: E501
        :rtype: list[KubevirtIoApiCoreV1VirtualMachineCondition]
        """
        return self._conditions

    @conditions.setter
    def conditions(self, conditions):
        """Sets the conditions of this KubevirtIoApiCoreV1VirtualMachineStatus.

        Hold the state information of the VirtualMachine and its VirtualMachineInstance  # noqa: E501

        :param conditions: The conditions of this KubevirtIoApiCoreV1VirtualMachineStatus.  # noqa: E501
        :type: list[KubevirtIoApiCoreV1VirtualMachineCondition]
        """

        self._conditions = conditions

    @property
    def created(self):
        """Gets the created of this KubevirtIoApiCoreV1VirtualMachineStatus.  # noqa: E501

        Created indicates if the virtual machine is created in the cluster  # noqa: E501

        :return: The created of this KubevirtIoApiCoreV1VirtualMachineStatus.  # noqa: E501
        :rtype: bool
        """
        return self._created

    @created.setter
    def created(self, created):
        """Sets the created of this KubevirtIoApiCoreV1VirtualMachineStatus.

        Created indicates if the virtual machine is created in the cluster  # noqa: E501

        :param created: The created of this KubevirtIoApiCoreV1VirtualMachineStatus.  # noqa: E501
        :type: bool
        """

        self._created = created

    @property
    def printable_status(self):
        """Gets the printable_status of this KubevirtIoApiCoreV1VirtualMachineStatus.  # noqa: E501

        PrintableStatus is a human readable, high-level representation of the status of the virtual machine  # noqa: E501

        :return: The printable_status of this KubevirtIoApiCoreV1VirtualMachineStatus.  # noqa: E501
        :rtype: str
        """
        return self._printable_status

    @printable_status.setter
    def printable_status(self, printable_status):
        """Sets the printable_status of this KubevirtIoApiCoreV1VirtualMachineStatus.

        PrintableStatus is a human readable, high-level representation of the status of the virtual machine  # noqa: E501

        :param printable_status: The printable_status of this KubevirtIoApiCoreV1VirtualMachineStatus.  # noqa: E501
        :type: str
        """

        self._printable_status = printable_status

    @property
    def ready(self):
        """Gets the ready of this KubevirtIoApiCoreV1VirtualMachineStatus.  # noqa: E501

        Ready indicates if the virtual machine is running and ready  # noqa: E501

        :return: The ready of this KubevirtIoApiCoreV1VirtualMachineStatus.  # noqa: E501
        :rtype: bool
        """
        return self._ready

    @ready.setter
    def ready(self, ready):
        """Sets the ready of this KubevirtIoApiCoreV1VirtualMachineStatus.

        Ready indicates if the virtual machine is running and ready  # noqa: E501

        :param ready: The ready of this KubevirtIoApiCoreV1VirtualMachineStatus.  # noqa: E501
        :type: bool
        """

        self._ready = ready

    @property
    def restore_in_progress(self):
        """Gets the restore_in_progress of this KubevirtIoApiCoreV1VirtualMachineStatus.  # noqa: E501

        RestoreInProgress is the name of the VirtualMachineRestore currently executing  # noqa: E501

        :return: The restore_in_progress of this KubevirtIoApiCoreV1VirtualMachineStatus.  # noqa: E501
        :rtype: str
        """
        return self._restore_in_progress

    @restore_in_progress.setter
    def restore_in_progress(self, restore_in_progress):
        """Sets the restore_in_progress of this KubevirtIoApiCoreV1VirtualMachineStatus.

        RestoreInProgress is the name of the VirtualMachineRestore currently executing  # noqa: E501

        :param restore_in_progress: The restore_in_progress of this KubevirtIoApiCoreV1VirtualMachineStatus.  # noqa: E501
        :type: str
        """

        self._restore_in_progress = restore_in_progress

    @property
    def snapshot_in_progress(self):
        """Gets the snapshot_in_progress of this KubevirtIoApiCoreV1VirtualMachineStatus.  # noqa: E501

        SnapshotInProgress is the name of the VirtualMachineSnapshot currently executing  # noqa: E501

        :return: The snapshot_in_progress of this KubevirtIoApiCoreV1VirtualMachineStatus.  # noqa: E501
        :rtype: str
        """
        return self._snapshot_in_progress

    @snapshot_in_progress.setter
    def snapshot_in_progress(self, snapshot_in_progress):
        """Sets the snapshot_in_progress of this KubevirtIoApiCoreV1VirtualMachineStatus.

        SnapshotInProgress is the name of the VirtualMachineSnapshot currently executing  # noqa: E501

        :param snapshot_in_progress: The snapshot_in_progress of this KubevirtIoApiCoreV1VirtualMachineStatus.  # noqa: E501
        :type: str
        """

        self._snapshot_in_progress = snapshot_in_progress

    @property
    def start_failure(self):
        """Gets the start_failure of this KubevirtIoApiCoreV1VirtualMachineStatus.  # noqa: E501

        StartFailure tracks consecutive VMI startup failures for the purposes of crash loop backoffs  # noqa: E501

        :return: The start_failure of this KubevirtIoApiCoreV1VirtualMachineStatus.  # noqa: E501
        :rtype: KubevirtIoApiCoreV1VirtualMachineStartFailure
        """
        return self._start_failure

    @start_failure.setter
    def start_failure(self, start_failure):
        """Sets the start_failure of this KubevirtIoApiCoreV1VirtualMachineStatus.

        StartFailure tracks consecutive VMI startup failures for the purposes of crash loop backoffs  # noqa: E501

        :param start_failure: The start_failure of this KubevirtIoApiCoreV1VirtualMachineStatus.  # noqa: E501
        :type: KubevirtIoApiCoreV1VirtualMachineStartFailure
        """

        self._start_failure = start_failure

    @property
    def state_change_requests(self):
        """Gets the state_change_requests of this KubevirtIoApiCoreV1VirtualMachineStatus.  # noqa: E501

        StateChangeRequests indicates a list of actions that should be taken on a VMI e.g. stop a specific VMI then start a new one.  # noqa: E501

        :return: The state_change_requests of this KubevirtIoApiCoreV1VirtualMachineStatus.  # noqa: E501
        :rtype: list[KubevirtIoApiCoreV1VirtualMachineStateChangeRequest]
        """
        return self._state_change_requests

    @state_change_requests.setter
    def state_change_requests(self, state_change_requests):
        """Sets the state_change_requests of this KubevirtIoApiCoreV1VirtualMachineStatus.

        StateChangeRequests indicates a list of actions that should be taken on a VMI e.g. stop a specific VMI then start a new one.  # noqa: E501

        :param state_change_requests: The state_change_requests of this KubevirtIoApiCoreV1VirtualMachineStatus.  # noqa: E501
        :type: list[KubevirtIoApiCoreV1VirtualMachineStateChangeRequest]
        """

        self._state_change_requests = state_change_requests

    @property
    def volume_requests(self):
        """Gets the volume_requests of this KubevirtIoApiCoreV1VirtualMachineStatus.  # noqa: E501

        VolumeRequests indicates a list of volumes add or remove from the VMI template and hotplug on an active running VMI.  # noqa: E501

        :return: The volume_requests of this KubevirtIoApiCoreV1VirtualMachineStatus.  # noqa: E501
        :rtype: list[KubevirtIoApiCoreV1VirtualMachineVolumeRequest]
        """
        return self._volume_requests

    @volume_requests.setter
    def volume_requests(self, volume_requests):
        """Sets the volume_requests of this KubevirtIoApiCoreV1VirtualMachineStatus.

        VolumeRequests indicates a list of volumes add or remove from the VMI template and hotplug on an active running VMI.  # noqa: E501

        :param volume_requests: The volume_requests of this KubevirtIoApiCoreV1VirtualMachineStatus.  # noqa: E501
        :type: list[KubevirtIoApiCoreV1VirtualMachineVolumeRequest]
        """

        self._volume_requests = volume_requests

    @property
    def volume_snapshot_statuses(self):
        """Gets the volume_snapshot_statuses of this KubevirtIoApiCoreV1VirtualMachineStatus.  # noqa: E501

        VolumeSnapshotStatuses indicates a list of statuses whether snapshotting is supported by each volume.  # noqa: E501

        :return: The volume_snapshot_statuses of this KubevirtIoApiCoreV1VirtualMachineStatus.  # noqa: E501
        :rtype: list[KubevirtIoApiCoreV1VolumeSnapshotStatus]
        """
        return self._volume_snapshot_statuses

    @volume_snapshot_statuses.setter
    def volume_snapshot_statuses(self, volume_snapshot_statuses):
        """Sets the volume_snapshot_statuses of this KubevirtIoApiCoreV1VirtualMachineStatus.

        VolumeSnapshotStatuses indicates a list of statuses whether snapshotting is supported by each volume.  # noqa: E501

        :param volume_snapshot_statuses: The volume_snapshot_statuses of this KubevirtIoApiCoreV1VirtualMachineStatus.  # noqa: E501
        :type: list[KubevirtIoApiCoreV1VolumeSnapshotStatus]
        """

        self._volume_snapshot_statuses = volume_snapshot_statuses

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
        if issubclass(KubevirtIoApiCoreV1VirtualMachineStatus, dict):
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
        if not isinstance(other, KubevirtIoApiCoreV1VirtualMachineStatus):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, KubevirtIoApiCoreV1VirtualMachineStatus):
            return True

        return self.to_dict() != other.to_dict()
