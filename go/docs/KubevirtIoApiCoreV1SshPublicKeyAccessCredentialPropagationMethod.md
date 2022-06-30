# KubevirtIoApiCoreV1SshPublicKeyAccessCredentialPropagationMethod

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ConfigDrive** | [***KubevirtIoApiCoreV1ConfigDriveSshPublicKeyAccessCredentialPropagation**](kubevirt.io.api.core.v1.ConfigDriveSSHPublicKeyAccessCredentialPropagation.md) | ConfigDrivePropagation means that the ssh public keys are injected into the VM using metadata using the configDrive cloud-init provider | [optional] [default to null]
**QemuGuestAgent** | [***KubevirtIoApiCoreV1QemuGuestAgentSshPublicKeyAccessCredentialPropagation**](kubevirt.io.api.core.v1.QemuGuestAgentSSHPublicKeyAccessCredentialPropagation.md) | QemuGuestAgentAccessCredentailPropagation means ssh public keys are dynamically injected into the vm at runtime via the qemu guest agent. This feature requires the qemu guest agent to be running within the guest. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


