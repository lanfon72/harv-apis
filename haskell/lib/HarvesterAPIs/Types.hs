{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module HarvesterAPIs.Types (
  Harvesterhciiov1beta1BackupTarget (..),
  Harvesterhciiov1beta1Condition (..),
  Harvesterhciiov1beta1Error (..),
  Harvesterhciiov1beta1KeyPair (..),
  Harvesterhciiov1beta1KeyPairList (..),
  Harvesterhciiov1beta1KeyPairSpec (..),
  Harvesterhciiov1beta1KeyPairStatus (..),
  Harvesterhciiov1beta1NodeUpgradeStatus (..),
  Harvesterhciiov1beta1PersistentVolumeClaimSourceSpec (..),
  Harvesterhciiov1beta1SecretBackup (..),
  Harvesterhciiov1beta1SupportBundle (..),
  Harvesterhciiov1beta1SupportBundleList (..),
  Harvesterhciiov1beta1SupportBundleSpec (..),
  Harvesterhciiov1beta1SupportBundleStatus (..),
  Harvesterhciiov1beta1Upgrade (..),
  Harvesterhciiov1beta1UpgradeList (..),
  Harvesterhciiov1beta1UpgradeSpec (..),
  Harvesterhciiov1beta1UpgradeStatus (..),
  Harvesterhciiov1beta1VirtualMachineBackup (..),
  Harvesterhciiov1beta1VirtualMachineBackupList (..),
  Harvesterhciiov1beta1VirtualMachineBackupSpec (..),
  Harvesterhciiov1beta1VirtualMachineBackupStatus (..),
  Harvesterhciiov1beta1VirtualMachineImage (..),
  Harvesterhciiov1beta1VirtualMachineImageList (..),
  Harvesterhciiov1beta1VirtualMachineImageSpec (..),
  Harvesterhciiov1beta1VirtualMachineImageStatus (..),
  Harvesterhciiov1beta1VirtualMachineRestore (..),
  Harvesterhciiov1beta1VirtualMachineRestoreList (..),
  Harvesterhciiov1beta1VirtualMachineRestoreSpec (..),
  Harvesterhciiov1beta1VirtualMachineRestoreStatus (..),
  Harvesterhciiov1beta1VirtualMachineSourceSpec (..),
  Harvesterhciiov1beta1VirtualMachineTemplate (..),
  Harvesterhciiov1beta1VirtualMachineTemplateList (..),
  Harvesterhciiov1beta1VirtualMachineTemplateSpec (..),
  Harvesterhciiov1beta1VirtualMachineTemplateStatus (..),
  Harvesterhciiov1beta1VirtualMachineTemplateVersion (..),
  Harvesterhciiov1beta1VirtualMachineTemplateVersionList (..),
  Harvesterhciiov1beta1VirtualMachineTemplateVersionSpec (..),
  Harvesterhciiov1beta1VirtualMachineTemplateVersionStatus (..),
  Harvesterhciiov1beta1VolumeBackup (..),
  Harvesterhciiov1beta1VolumeRestore (..),
  K8scnicncfiov1NetworkAttachmentDefinition (..),
  K8scnicncfiov1NetworkAttachmentDefinitionList (..),
  K8scnicncfiov1NetworkAttachmentDefinitionSpec (..),
  K8sioapimachinerypkgapiresourceQuantity (..),
  K8sioapimachinerypkgutilintstrIntOrString (..),
  K8siov1Affinity (..),
  K8siov1DeleteOptions (..),
  K8siov1DownwardAPIVolumeFile (..),
  K8siov1ExecAction (..),
  K8siov1FieldsV1 (..),
  K8siov1HTTPGetAction (..),
  K8siov1HTTPHeader (..),
  K8siov1LabelSelector (..),
  K8siov1LabelSelectorRequirement (..),
  K8siov1ListMeta (..),
  K8siov1LocalObjectReference (..),
  K8siov1ManagedFieldsEntry (..),
  K8siov1NodeAffinity (..),
  K8siov1NodeSelector (..),
  K8siov1NodeSelectorRequirement (..),
  K8siov1NodeSelectorTerm (..),
  K8siov1ObjectFieldSelector (..),
  K8siov1ObjectMeta (..),
  K8siov1OwnerReference (..),
  K8siov1Patch (..),
  K8siov1PersistentVolumeClaim (..),
  K8siov1PersistentVolumeClaimCondition (..),
  K8siov1PersistentVolumeClaimList (..),
  K8siov1PersistentVolumeClaimSpec (..),
  K8siov1PersistentVolumeClaimStatus (..),
  K8siov1PersistentVolumeClaimVolumeSource (..),
  K8siov1PodAffinity (..),
  K8siov1PodAffinityTerm (..),
  K8siov1PodAntiAffinity (..),
  K8siov1PodDNSConfig (..),
  K8siov1PodDNSConfigOption (..),
  K8siov1Preconditions (..),
  K8siov1PreferredSchedulingTerm (..),
  K8siov1ResourceFieldSelector (..),
  K8siov1ResourceRequirements (..),
  K8siov1Status (..),
  K8siov1StatusCause (..),
  K8siov1StatusDetails (..),
  K8siov1TCPSocketAction (..),
  K8siov1Time (..),
  K8siov1Toleration (..),
  K8siov1TypedLocalObjectReference (..),
  K8siov1WeightedPodAffinityTerm (..),
  Kubevirtioapicorev1AccessCredential (..),
  Kubevirtioapicorev1AccessCredentialSecretSource (..),
  Kubevirtioapicorev1AddVolumeOptions (..),
  Kubevirtioapicorev1BIOS (..),
  Kubevirtioapicorev1BlockSize (..),
  Kubevirtioapicorev1Bootloader (..),
  Kubevirtioapicorev1CDRomTarget (..),
  Kubevirtioapicorev1CPU (..),
  Kubevirtioapicorev1CPUFeature (..),
  Kubevirtioapicorev1Chassis (..),
  Kubevirtioapicorev1ClientPassthroughDevices (..),
  Kubevirtioapicorev1Clock (..),
  Kubevirtioapicorev1ClockOffsetUTC (..),
  Kubevirtioapicorev1CloudInitConfigDriveSource (..),
  Kubevirtioapicorev1CloudInitNoCloudSource (..),
  Kubevirtioapicorev1ConfigDriveSSHPublicKeyAccessCredentialPropagation (..),
  Kubevirtioapicorev1ConfigMapVolumeSource (..),
  Kubevirtioapicorev1ContainerDiskSource (..),
  Kubevirtioapicorev1CustomBlockSize (..),
  Kubevirtioapicorev1DHCPOptions (..),
  Kubevirtioapicorev1DHCPPrivateOptions (..),
  Kubevirtioapicorev1DataVolumeSource (..),
  Kubevirtioapicorev1DataVolumeTemplateDummyStatus (..),
  Kubevirtioapicorev1DataVolumeTemplateSpec (..),
  Kubevirtioapicorev1Devices (..),
  Kubevirtioapicorev1Disk (..),
  Kubevirtioapicorev1DiskTarget (..),
  Kubevirtioapicorev1DomainSpec (..),
  Kubevirtioapicorev1DownwardAPIVolumeSource (..),
  Kubevirtioapicorev1DownwardMetricsVolumeSource (..),
  Kubevirtioapicorev1EFI (..),
  Kubevirtioapicorev1EmptyDiskSource (..),
  Kubevirtioapicorev1EphemeralVolumeSource (..),
  Kubevirtioapicorev1FeatureAPIC (..),
  Kubevirtioapicorev1FeatureHyperv (..),
  Kubevirtioapicorev1FeatureKVM (..),
  Kubevirtioapicorev1FeatureSpinlocks (..),
  Kubevirtioapicorev1FeatureState (..),
  Kubevirtioapicorev1FeatureVendorID (..),
  Kubevirtioapicorev1Features (..),
  Kubevirtioapicorev1Filesystem (..),
  Kubevirtioapicorev1FilesystemVirtiofs (..),
  Kubevirtioapicorev1Firmware (..),
  Kubevirtioapicorev1FlavorMatcher (..),
  Kubevirtioapicorev1GPU (..),
  Kubevirtioapicorev1GuestAgentPing (..),
  Kubevirtioapicorev1HPETTimer (..),
  Kubevirtioapicorev1HostDevice (..),
  Kubevirtioapicorev1HostDisk (..),
  Kubevirtioapicorev1HotplugVolumeSource (..),
  Kubevirtioapicorev1HotplugVolumeStatus (..),
  Kubevirtioapicorev1Hugepages (..),
  Kubevirtioapicorev1HypervTimer (..),
  Kubevirtioapicorev1I6300ESBWatchdog (..),
  Kubevirtioapicorev1Input (..),
  Kubevirtioapicorev1Interface (..),
  Kubevirtioapicorev1InterfaceBridge (..),
  Kubevirtioapicorev1InterfaceMacvtap (..),
  Kubevirtioapicorev1InterfaceMasquerade (..),
  Kubevirtioapicorev1InterfaceSRIOV (..),
  Kubevirtioapicorev1InterfaceSlirp (..),
  Kubevirtioapicorev1KVMTimer (..),
  Kubevirtioapicorev1KernelBoot (..),
  Kubevirtioapicorev1KernelBootContainer (..),
  Kubevirtioapicorev1LaunchSecurity (..),
  Kubevirtioapicorev1LunTarget (..),
  Kubevirtioapicorev1Machine (..),
  Kubevirtioapicorev1Memory (..),
  Kubevirtioapicorev1MigrationConfiguration (..),
  Kubevirtioapicorev1MultusNetwork (..),
  Kubevirtioapicorev1NUMA (..),
  Kubevirtioapicorev1NUMAGuestMappingPassthrough (..),
  Kubevirtioapicorev1Network (..),
  Kubevirtioapicorev1PITTimer (..),
  Kubevirtioapicorev1PersistentVolumeClaimInfo (..),
  Kubevirtioapicorev1PersistentVolumeClaimVolumeSource (..),
  Kubevirtioapicorev1PodNetwork (..),
  Kubevirtioapicorev1Port (..),
  Kubevirtioapicorev1Probe (..),
  Kubevirtioapicorev1QemuGuestAgentSSHPublicKeyAccessCredentialPropagation (..),
  Kubevirtioapicorev1QemuGuestAgentUserPasswordAccessCredentialPropagation (..),
  Kubevirtioapicorev1RTCTimer (..),
  Kubevirtioapicorev1Realtime (..),
  Kubevirtioapicorev1RemoveVolumeOptions (..),
  Kubevirtioapicorev1ResourceRequirements (..),
  Kubevirtioapicorev1Rng (..),
  Kubevirtioapicorev1SEV (..),
  Kubevirtioapicorev1SSHPublicKeyAccessCredential (..),
  Kubevirtioapicorev1SSHPublicKeyAccessCredentialPropagationMethod (..),
  Kubevirtioapicorev1SSHPublicKeyAccessCredentialSource (..),
  Kubevirtioapicorev1SecretVolumeSource (..),
  Kubevirtioapicorev1ServiceAccountVolumeSource (..),
  Kubevirtioapicorev1SoundDevice (..),
  Kubevirtioapicorev1SyNICTimer (..),
  Kubevirtioapicorev1SysprepSource (..),
  Kubevirtioapicorev1TPMDevice (..),
  Kubevirtioapicorev1Timer (..),
  Kubevirtioapicorev1TopologyHints (..),
  Kubevirtioapicorev1UserPasswordAccessCredential (..),
  Kubevirtioapicorev1UserPasswordAccessCredentialPropagationMethod (..),
  Kubevirtioapicorev1UserPasswordAccessCredentialSource (..),
  Kubevirtioapicorev1VGPUDisplayOptions (..),
  Kubevirtioapicorev1VGPUOptions (..),
  Kubevirtioapicorev1VirtualMachine (..),
  Kubevirtioapicorev1VirtualMachineCondition (..),
  Kubevirtioapicorev1VirtualMachineInstance (..),
  Kubevirtioapicorev1VirtualMachineInstanceCondition (..),
  Kubevirtioapicorev1VirtualMachineInstanceGuestOSInfo (..),
  Kubevirtioapicorev1VirtualMachineInstanceList (..),
  Kubevirtioapicorev1VirtualMachineInstanceMigration (..),
  Kubevirtioapicorev1VirtualMachineInstanceMigrationCondition (..),
  Kubevirtioapicorev1VirtualMachineInstanceMigrationList (..),
  Kubevirtioapicorev1VirtualMachineInstanceMigrationSpec (..),
  Kubevirtioapicorev1VirtualMachineInstanceMigrationState (..),
  Kubevirtioapicorev1VirtualMachineInstanceMigrationStatus (..),
  Kubevirtioapicorev1VirtualMachineInstanceNetworkInterface (..),
  Kubevirtioapicorev1VirtualMachineInstancePhaseTransitionTimestamp (..),
  Kubevirtioapicorev1VirtualMachineInstanceSpec (..),
  Kubevirtioapicorev1VirtualMachineInstanceStatus (..),
  Kubevirtioapicorev1VirtualMachineInstanceTemplateSpec (..),
  Kubevirtioapicorev1VirtualMachineList (..),
  Kubevirtioapicorev1VirtualMachineSpec (..),
  Kubevirtioapicorev1VirtualMachineStartFailure (..),
  Kubevirtioapicorev1VirtualMachineStateChangeRequest (..),
  Kubevirtioapicorev1VirtualMachineStatus (..),
  Kubevirtioapicorev1VirtualMachineVolumeRequest (..),
  Kubevirtioapicorev1Volume (..),
  Kubevirtioapicorev1VolumeSnapshotStatus (..),
  Kubevirtioapicorev1VolumeStatus (..),
  Kubevirtioapicorev1Watchdog (..),
  Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeBlankImage (..),
  Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeCheckpoint (..),
  Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSource (..),
  Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceHTTP (..),
  Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceImageIO (..),
  Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourcePVC (..),
  Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceRef (..),
  Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceRegistry (..),
  Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceS3 (..),
  Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceUpload (..),
  Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceVDDK (..),
  Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSpec (..),
  Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1StorageSpec (..),
  Networkharvesterhciiov1beta1ClusterNetwork (..),
  Networkharvesterhciiov1beta1ClusterNetworkList (..),
  Networkharvesterhciiov1beta1Condition (..),
  Networkharvesterhciiov1beta1LinkStatus (..),
  Networkharvesterhciiov1beta1NIC (..),
  Networkharvesterhciiov1beta1NodeNetwork (..),
  Networkharvesterhciiov1beta1NodeNetworkList (..),
  Networkharvesterhciiov1beta1NodeNetworkSpec (..),
  Networkharvesterhciiov1beta1NodeNetworkStatus (..),
  ) where

import Data.List (stripPrefix)
import Data.Maybe (fromMaybe)
import Data.Aeson (Value, FromJSON(..), ToJSON(..), genericToJSON, genericParseJSON)
import Data.Aeson.Types (Options(..), defaultOptions)
import Data.Text (Text)
import qualified Data.Text as T
import qualified Data.Map as Map
import GHC.Generics (Generic)
import Data.Function ((&))


-- | BackupTarget is where VM Backup stores
data Harvesterhciiov1beta1BackupTarget = Harvesterhciiov1beta1BackupTarget
  { harvesterhciiov1beta1BackupTargetBucketName :: Text -- ^ 
  , harvesterhciiov1beta1BackupTargetBucketRegion :: Text -- ^ 
  , harvesterhciiov1beta1BackupTargetEndpoint :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Harvesterhciiov1beta1BackupTarget where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "harvesterhciiov1beta1BackupTarget")
instance ToJSON Harvesterhciiov1beta1BackupTarget where
  toJSON = genericToJSON (removeFieldLabelPrefix False "harvesterhciiov1beta1BackupTarget")

-- | 
data Harvesterhciiov1beta1Condition = Harvesterhciiov1beta1Condition
  { harvesterhciiov1beta1ConditionLastTransitionTime :: Text -- ^ Last time the condition transitioned from one status to another.
  , harvesterhciiov1beta1ConditionLastUpdateTime :: Text -- ^ The last time this condition was updated.
  , harvesterhciiov1beta1ConditionMessage :: Text -- ^ Human-readable message indicating details about last transition
  , harvesterhciiov1beta1ConditionReason :: Text -- ^ The reason for the condition's last transition.
  , harvesterhciiov1beta1ConditionStatus :: Text -- ^ Status of the condition, one of True, False, Unknown.
  , harvesterhciiov1beta1ConditionType :: Text -- ^ Type of the condition.
  } deriving (Show, Eq, Generic)

instance FromJSON Harvesterhciiov1beta1Condition where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "harvesterhciiov1beta1Condition")
instance ToJSON Harvesterhciiov1beta1Condition where
  toJSON = genericToJSON (removeFieldLabelPrefix False "harvesterhciiov1beta1Condition")

-- | Error is the last error encountered during the snapshot/restore
data Harvesterhciiov1beta1Error = Harvesterhciiov1beta1Error
  { harvesterhciiov1beta1ErrorMessage :: Text -- ^ 
  , harvesterhciiov1beta1ErrorTime :: K8siov1Time -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Harvesterhciiov1beta1Error where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "harvesterhciiov1beta1Error")
instance ToJSON Harvesterhciiov1beta1Error where
  toJSON = genericToJSON (removeFieldLabelPrefix False "harvesterhciiov1beta1Error")

-- | 
data Harvesterhciiov1beta1KeyPair = Harvesterhciiov1beta1KeyPair
  { harvesterhciiov1beta1KeyPairApiVersion :: Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  , harvesterhciiov1beta1KeyPairKind :: Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  , harvesterhciiov1beta1KeyPairMetadata :: K8siov1ObjectMeta -- ^ 
  , harvesterhciiov1beta1KeyPairSpec :: Harvesterhciiov1beta1KeyPairSpec -- ^ 
  , harvesterhciiov1beta1KeyPairStatus :: Harvesterhciiov1beta1KeyPairStatus -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Harvesterhciiov1beta1KeyPair where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "harvesterhciiov1beta1KeyPair")
instance ToJSON Harvesterhciiov1beta1KeyPair where
  toJSON = genericToJSON (removeFieldLabelPrefix False "harvesterhciiov1beta1KeyPair")

-- | KeyPairList is a list of KeyPair resources
data Harvesterhciiov1beta1KeyPairList = Harvesterhciiov1beta1KeyPairList
  { harvesterhciiov1beta1KeyPairListApiVersion :: Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  , harvesterhciiov1beta1KeyPairListItems :: [Harvesterhciiov1beta1KeyPair] -- ^ 
  , harvesterhciiov1beta1KeyPairListKind :: Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  , harvesterhciiov1beta1KeyPairListMetadata :: K8siov1ListMeta -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Harvesterhciiov1beta1KeyPairList where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "harvesterhciiov1beta1KeyPairList")
instance ToJSON Harvesterhciiov1beta1KeyPairList where
  toJSON = genericToJSON (removeFieldLabelPrefix False "harvesterhciiov1beta1KeyPairList")

-- | 
data Harvesterhciiov1beta1KeyPairSpec = Harvesterhciiov1beta1KeyPairSpec
  { harvesterhciiov1beta1KeyPairSpecPublicKey :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Harvesterhciiov1beta1KeyPairSpec where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "harvesterhciiov1beta1KeyPairSpec")
instance ToJSON Harvesterhciiov1beta1KeyPairSpec where
  toJSON = genericToJSON (removeFieldLabelPrefix False "harvesterhciiov1beta1KeyPairSpec")

-- | 
data Harvesterhciiov1beta1KeyPairStatus = Harvesterhciiov1beta1KeyPairStatus
  { harvesterhciiov1beta1KeyPairStatusConditions :: [Harvesterhciiov1beta1Condition] -- ^ 
  , harvesterhciiov1beta1KeyPairStatusFingerPrint :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Harvesterhciiov1beta1KeyPairStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "harvesterhciiov1beta1KeyPairStatus")
instance ToJSON Harvesterhciiov1beta1KeyPairStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "harvesterhciiov1beta1KeyPairStatus")

-- | 
data Harvesterhciiov1beta1NodeUpgradeStatus = Harvesterhciiov1beta1NodeUpgradeStatus
  { harvesterhciiov1beta1NodeUpgradeStatusMessage :: Text -- ^ 
  , harvesterhciiov1beta1NodeUpgradeStatusReason :: Text -- ^ 
  , harvesterhciiov1beta1NodeUpgradeStatusState :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Harvesterhciiov1beta1NodeUpgradeStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "harvesterhciiov1beta1NodeUpgradeStatus")
instance ToJSON Harvesterhciiov1beta1NodeUpgradeStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "harvesterhciiov1beta1NodeUpgradeStatus")

-- | 
data Harvesterhciiov1beta1PersistentVolumeClaimSourceSpec = Harvesterhciiov1beta1PersistentVolumeClaimSourceSpec
  { harvesterhciiov1beta1PersistentVolumeClaimSourceSpecMetadata :: K8siov1ObjectMeta -- ^ 
  , harvesterhciiov1beta1PersistentVolumeClaimSourceSpecSpec :: K8siov1PersistentVolumeClaimSpec -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Harvesterhciiov1beta1PersistentVolumeClaimSourceSpec where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "harvesterhciiov1beta1PersistentVolumeClaimSourceSpec")
instance ToJSON Harvesterhciiov1beta1PersistentVolumeClaimSourceSpec where
  toJSON = genericToJSON (removeFieldLabelPrefix False "harvesterhciiov1beta1PersistentVolumeClaimSourceSpec")

-- | SecretBackup contains the secret data need to restore a secret referenced by the VM
data Harvesterhciiov1beta1SecretBackup = Harvesterhciiov1beta1SecretBackup
  { harvesterhciiov1beta1SecretBackupData :: Map.Map String Text -- ^ 
  , harvesterhciiov1beta1SecretBackupName :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Harvesterhciiov1beta1SecretBackup where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "harvesterhciiov1beta1SecretBackup")
instance ToJSON Harvesterhciiov1beta1SecretBackup where
  toJSON = genericToJSON (removeFieldLabelPrefix False "harvesterhciiov1beta1SecretBackup")

-- | 
data Harvesterhciiov1beta1SupportBundle = Harvesterhciiov1beta1SupportBundle
  { harvesterhciiov1beta1SupportBundleApiVersion :: Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  , harvesterhciiov1beta1SupportBundleKind :: Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  , harvesterhciiov1beta1SupportBundleMetadata :: K8siov1ObjectMeta -- ^ 
  , harvesterhciiov1beta1SupportBundleSpec :: Harvesterhciiov1beta1SupportBundleSpec -- ^ 
  , harvesterhciiov1beta1SupportBundleStatus :: Harvesterhciiov1beta1SupportBundleStatus -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Harvesterhciiov1beta1SupportBundle where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "harvesterhciiov1beta1SupportBundle")
instance ToJSON Harvesterhciiov1beta1SupportBundle where
  toJSON = genericToJSON (removeFieldLabelPrefix False "harvesterhciiov1beta1SupportBundle")

-- | SupportBundleList is a list of SupportBundle resources
data Harvesterhciiov1beta1SupportBundleList = Harvesterhciiov1beta1SupportBundleList
  { harvesterhciiov1beta1SupportBundleListApiVersion :: Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  , harvesterhciiov1beta1SupportBundleListItems :: [Harvesterhciiov1beta1SupportBundle] -- ^ 
  , harvesterhciiov1beta1SupportBundleListKind :: Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  , harvesterhciiov1beta1SupportBundleListMetadata :: K8siov1ListMeta -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Harvesterhciiov1beta1SupportBundleList where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "harvesterhciiov1beta1SupportBundleList")
instance ToJSON Harvesterhciiov1beta1SupportBundleList where
  toJSON = genericToJSON (removeFieldLabelPrefix False "harvesterhciiov1beta1SupportBundleList")

-- | 
data Harvesterhciiov1beta1SupportBundleSpec = Harvesterhciiov1beta1SupportBundleSpec
  { harvesterhciiov1beta1SupportBundleSpecDescription :: Text -- ^ 
  , harvesterhciiov1beta1SupportBundleSpecIssueURL :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Harvesterhciiov1beta1SupportBundleSpec where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "harvesterhciiov1beta1SupportBundleSpec")
instance ToJSON Harvesterhciiov1beta1SupportBundleSpec where
  toJSON = genericToJSON (removeFieldLabelPrefix False "harvesterhciiov1beta1SupportBundleSpec")

-- | 
data Harvesterhciiov1beta1SupportBundleStatus = Harvesterhciiov1beta1SupportBundleStatus
  { harvesterhciiov1beta1SupportBundleStatusConditions :: [Harvesterhciiov1beta1Condition] -- ^ 
  , harvesterhciiov1beta1SupportBundleStatusFilename :: Text -- ^ 
  , harvesterhciiov1beta1SupportBundleStatusFilesize :: Integer -- ^ 
  , harvesterhciiov1beta1SupportBundleStatusProgress :: Int -- ^ 
  , harvesterhciiov1beta1SupportBundleStatusState :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Harvesterhciiov1beta1SupportBundleStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "harvesterhciiov1beta1SupportBundleStatus")
instance ToJSON Harvesterhciiov1beta1SupportBundleStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "harvesterhciiov1beta1SupportBundleStatus")

-- | 
data Harvesterhciiov1beta1Upgrade = Harvesterhciiov1beta1Upgrade
  { harvesterhciiov1beta1UpgradeApiVersion :: Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  , harvesterhciiov1beta1UpgradeKind :: Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  , harvesterhciiov1beta1UpgradeMetadata :: K8siov1ObjectMeta -- ^ 
  , harvesterhciiov1beta1UpgradeSpec :: Harvesterhciiov1beta1UpgradeSpec -- ^ 
  , harvesterhciiov1beta1UpgradeStatus :: Harvesterhciiov1beta1UpgradeStatus -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Harvesterhciiov1beta1Upgrade where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "harvesterhciiov1beta1Upgrade")
instance ToJSON Harvesterhciiov1beta1Upgrade where
  toJSON = genericToJSON (removeFieldLabelPrefix False "harvesterhciiov1beta1Upgrade")

-- | UpgradeList is a list of Upgrade resources
data Harvesterhciiov1beta1UpgradeList = Harvesterhciiov1beta1UpgradeList
  { harvesterhciiov1beta1UpgradeListApiVersion :: Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  , harvesterhciiov1beta1UpgradeListItems :: [Harvesterhciiov1beta1Upgrade] -- ^ 
  , harvesterhciiov1beta1UpgradeListKind :: Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  , harvesterhciiov1beta1UpgradeListMetadata :: K8siov1ListMeta -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Harvesterhciiov1beta1UpgradeList where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "harvesterhciiov1beta1UpgradeList")
instance ToJSON Harvesterhciiov1beta1UpgradeList where
  toJSON = genericToJSON (removeFieldLabelPrefix False "harvesterhciiov1beta1UpgradeList")

-- | 
data Harvesterhciiov1beta1UpgradeSpec = Harvesterhciiov1beta1UpgradeSpec
  { harvesterhciiov1beta1UpgradeSpecImage :: Text -- ^ 
  , harvesterhciiov1beta1UpgradeSpecVersion :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Harvesterhciiov1beta1UpgradeSpec where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "harvesterhciiov1beta1UpgradeSpec")
instance ToJSON Harvesterhciiov1beta1UpgradeSpec where
  toJSON = genericToJSON (removeFieldLabelPrefix False "harvesterhciiov1beta1UpgradeSpec")

-- | 
data Harvesterhciiov1beta1UpgradeStatus = Harvesterhciiov1beta1UpgradeStatus
  { harvesterhciiov1beta1UpgradeStatusConditions :: [Harvesterhciiov1beta1Condition] -- ^ 
  , harvesterhciiov1beta1UpgradeStatusImageID :: Text -- ^ 
  , harvesterhciiov1beta1UpgradeStatusNodeStatuses :: Map.Map String Harvesterhciiov1beta1NodeUpgradeStatus -- ^ 
  , harvesterhciiov1beta1UpgradeStatusPreviousVersion :: Text -- ^ 
  , harvesterhciiov1beta1UpgradeStatusRepoInfo :: Text -- ^ 
  , harvesterhciiov1beta1UpgradeStatusSingleNode :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Harvesterhciiov1beta1UpgradeStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "harvesterhciiov1beta1UpgradeStatus")
instance ToJSON Harvesterhciiov1beta1UpgradeStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "harvesterhciiov1beta1UpgradeStatus")

-- | 
data Harvesterhciiov1beta1VirtualMachineBackup = Harvesterhciiov1beta1VirtualMachineBackup
  { harvesterhciiov1beta1VirtualMachineBackupApiVersion :: Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  , harvesterhciiov1beta1VirtualMachineBackupKind :: Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  , harvesterhciiov1beta1VirtualMachineBackupMetadata :: K8siov1ObjectMeta -- ^ 
  , harvesterhciiov1beta1VirtualMachineBackupSpec :: Harvesterhciiov1beta1VirtualMachineBackupSpec -- ^ 
  , harvesterhciiov1beta1VirtualMachineBackupStatus :: Harvesterhciiov1beta1VirtualMachineBackupStatus -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Harvesterhciiov1beta1VirtualMachineBackup where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "harvesterhciiov1beta1VirtualMachineBackup")
instance ToJSON Harvesterhciiov1beta1VirtualMachineBackup where
  toJSON = genericToJSON (removeFieldLabelPrefix False "harvesterhciiov1beta1VirtualMachineBackup")

-- | VirtualMachineBackupList is a list of VirtualMachineBackup resources
data Harvesterhciiov1beta1VirtualMachineBackupList = Harvesterhciiov1beta1VirtualMachineBackupList
  { harvesterhciiov1beta1VirtualMachineBackupListApiVersion :: Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  , harvesterhciiov1beta1VirtualMachineBackupListItems :: [Harvesterhciiov1beta1VirtualMachineBackup] -- ^ 
  , harvesterhciiov1beta1VirtualMachineBackupListKind :: Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  , harvesterhciiov1beta1VirtualMachineBackupListMetadata :: K8siov1ListMeta -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Harvesterhciiov1beta1VirtualMachineBackupList where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "harvesterhciiov1beta1VirtualMachineBackupList")
instance ToJSON Harvesterhciiov1beta1VirtualMachineBackupList where
  toJSON = genericToJSON (removeFieldLabelPrefix False "harvesterhciiov1beta1VirtualMachineBackupList")

-- | 
data Harvesterhciiov1beta1VirtualMachineBackupSpec = Harvesterhciiov1beta1VirtualMachineBackupSpec
  { harvesterhciiov1beta1VirtualMachineBackupSpecSource :: K8siov1TypedLocalObjectReference -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Harvesterhciiov1beta1VirtualMachineBackupSpec where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "harvesterhciiov1beta1VirtualMachineBackupSpec")
instance ToJSON Harvesterhciiov1beta1VirtualMachineBackupSpec where
  toJSON = genericToJSON (removeFieldLabelPrefix False "harvesterhciiov1beta1VirtualMachineBackupSpec")

-- | VirtualMachineBackupStatus is the status for a VirtualMachineBackup resource
data Harvesterhciiov1beta1VirtualMachineBackupStatus = Harvesterhciiov1beta1VirtualMachineBackupStatus
  { harvesterhciiov1beta1VirtualMachineBackupStatusBackupTarget :: Harvesterhciiov1beta1BackupTarget -- ^ 
  , harvesterhciiov1beta1VirtualMachineBackupStatusConditions :: [Harvesterhciiov1beta1Condition] -- ^ 
  , harvesterhciiov1beta1VirtualMachineBackupStatusCreationTime :: K8siov1Time -- ^ 
  , harvesterhciiov1beta1VirtualMachineBackupStatusError :: Harvesterhciiov1beta1Error -- ^ 
  , harvesterhciiov1beta1VirtualMachineBackupStatusReadyToUse :: Bool -- ^ 
  , harvesterhciiov1beta1VirtualMachineBackupStatusSecretBackups :: [Harvesterhciiov1beta1SecretBackup] -- ^ 
  , harvesterhciiov1beta1VirtualMachineBackupStatusSource :: Harvesterhciiov1beta1VirtualMachineSourceSpec -- ^ SourceSpec contains the vm spec source of the backup target
  , harvesterhciiov1beta1VirtualMachineBackupStatusSourceUID :: Text -- ^ 
  , harvesterhciiov1beta1VirtualMachineBackupStatusVolumeBackups :: [Harvesterhciiov1beta1VolumeBackup] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Harvesterhciiov1beta1VirtualMachineBackupStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "harvesterhciiov1beta1VirtualMachineBackupStatus")
instance ToJSON Harvesterhciiov1beta1VirtualMachineBackupStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "harvesterhciiov1beta1VirtualMachineBackupStatus")

-- | 
data Harvesterhciiov1beta1VirtualMachineImage = Harvesterhciiov1beta1VirtualMachineImage
  { harvesterhciiov1beta1VirtualMachineImageApiVersion :: Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  , harvesterhciiov1beta1VirtualMachineImageKind :: Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  , harvesterhciiov1beta1VirtualMachineImageMetadata :: K8siov1ObjectMeta -- ^ 
  , harvesterhciiov1beta1VirtualMachineImageSpec :: Harvesterhciiov1beta1VirtualMachineImageSpec -- ^ 
  , harvesterhciiov1beta1VirtualMachineImageStatus :: Harvesterhciiov1beta1VirtualMachineImageStatus -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Harvesterhciiov1beta1VirtualMachineImage where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "harvesterhciiov1beta1VirtualMachineImage")
instance ToJSON Harvesterhciiov1beta1VirtualMachineImage where
  toJSON = genericToJSON (removeFieldLabelPrefix False "harvesterhciiov1beta1VirtualMachineImage")

-- | VirtualMachineImageList is a list of VirtualMachineImage resources
data Harvesterhciiov1beta1VirtualMachineImageList = Harvesterhciiov1beta1VirtualMachineImageList
  { harvesterhciiov1beta1VirtualMachineImageListApiVersion :: Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  , harvesterhciiov1beta1VirtualMachineImageListItems :: [Harvesterhciiov1beta1VirtualMachineImage] -- ^ 
  , harvesterhciiov1beta1VirtualMachineImageListKind :: Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  , harvesterhciiov1beta1VirtualMachineImageListMetadata :: K8siov1ListMeta -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Harvesterhciiov1beta1VirtualMachineImageList where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "harvesterhciiov1beta1VirtualMachineImageList")
instance ToJSON Harvesterhciiov1beta1VirtualMachineImageList where
  toJSON = genericToJSON (removeFieldLabelPrefix False "harvesterhciiov1beta1VirtualMachineImageList")

-- | 
data Harvesterhciiov1beta1VirtualMachineImageSpec = Harvesterhciiov1beta1VirtualMachineImageSpec
  { harvesterhciiov1beta1VirtualMachineImageSpecChecksum :: Text -- ^ 
  , harvesterhciiov1beta1VirtualMachineImageSpecDescription :: Text -- ^ 
  , harvesterhciiov1beta1VirtualMachineImageSpecDisplayName :: Text -- ^ 
  , harvesterhciiov1beta1VirtualMachineImageSpecPvcName :: Text -- ^ 
  , harvesterhciiov1beta1VirtualMachineImageSpecPvcNamespace :: Text -- ^ 
  , harvesterhciiov1beta1VirtualMachineImageSpecSourceType :: Text -- ^ 
  , harvesterhciiov1beta1VirtualMachineImageSpecUrl :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Harvesterhciiov1beta1VirtualMachineImageSpec where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "harvesterhciiov1beta1VirtualMachineImageSpec")
instance ToJSON Harvesterhciiov1beta1VirtualMachineImageSpec where
  toJSON = genericToJSON (removeFieldLabelPrefix False "harvesterhciiov1beta1VirtualMachineImageSpec")

-- | 
data Harvesterhciiov1beta1VirtualMachineImageStatus = Harvesterhciiov1beta1VirtualMachineImageStatus
  { harvesterhciiov1beta1VirtualMachineImageStatusAppliedUrl :: Text -- ^ 
  , harvesterhciiov1beta1VirtualMachineImageStatusConditions :: [Harvesterhciiov1beta1Condition] -- ^ 
  , harvesterhciiov1beta1VirtualMachineImageStatusProgress :: Int -- ^ 
  , harvesterhciiov1beta1VirtualMachineImageStatusSize :: Integer -- ^ 
  , harvesterhciiov1beta1VirtualMachineImageStatusStorageClassName :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Harvesterhciiov1beta1VirtualMachineImageStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "harvesterhciiov1beta1VirtualMachineImageStatus")
instance ToJSON Harvesterhciiov1beta1VirtualMachineImageStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "harvesterhciiov1beta1VirtualMachineImageStatus")

-- | 
data Harvesterhciiov1beta1VirtualMachineRestore = Harvesterhciiov1beta1VirtualMachineRestore
  { harvesterhciiov1beta1VirtualMachineRestoreApiVersion :: Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  , harvesterhciiov1beta1VirtualMachineRestoreKind :: Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  , harvesterhciiov1beta1VirtualMachineRestoreMetadata :: K8siov1ObjectMeta -- ^ 
  , harvesterhciiov1beta1VirtualMachineRestoreSpec :: Harvesterhciiov1beta1VirtualMachineRestoreSpec -- ^ 
  , harvesterhciiov1beta1VirtualMachineRestoreStatus :: Harvesterhciiov1beta1VirtualMachineRestoreStatus -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Harvesterhciiov1beta1VirtualMachineRestore where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "harvesterhciiov1beta1VirtualMachineRestore")
instance ToJSON Harvesterhciiov1beta1VirtualMachineRestore where
  toJSON = genericToJSON (removeFieldLabelPrefix False "harvesterhciiov1beta1VirtualMachineRestore")

-- | VirtualMachineRestoreList is a list of VirtualMachineRestore resources
data Harvesterhciiov1beta1VirtualMachineRestoreList = Harvesterhciiov1beta1VirtualMachineRestoreList
  { harvesterhciiov1beta1VirtualMachineRestoreListApiVersion :: Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  , harvesterhciiov1beta1VirtualMachineRestoreListItems :: [Harvesterhciiov1beta1VirtualMachineRestore] -- ^ 
  , harvesterhciiov1beta1VirtualMachineRestoreListKind :: Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  , harvesterhciiov1beta1VirtualMachineRestoreListMetadata :: K8siov1ListMeta -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Harvesterhciiov1beta1VirtualMachineRestoreList where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "harvesterhciiov1beta1VirtualMachineRestoreList")
instance ToJSON Harvesterhciiov1beta1VirtualMachineRestoreList where
  toJSON = genericToJSON (removeFieldLabelPrefix False "harvesterhciiov1beta1VirtualMachineRestoreList")

-- | VirtualMachineRestoreSpec is the spec for a VirtualMachineRestore resource
data Harvesterhciiov1beta1VirtualMachineRestoreSpec = Harvesterhciiov1beta1VirtualMachineRestoreSpec
  { harvesterhciiov1beta1VirtualMachineRestoreSpecDeletionPolicy :: Text -- ^ 
  , harvesterhciiov1beta1VirtualMachineRestoreSpecNewVM :: Bool -- ^ 
  , harvesterhciiov1beta1VirtualMachineRestoreSpecTarget :: K8siov1TypedLocalObjectReference -- ^ initially only VirtualMachine type supported
  , harvesterhciiov1beta1VirtualMachineRestoreSpecVirtualMachineBackupName :: Text -- ^ 
  , harvesterhciiov1beta1VirtualMachineRestoreSpecVirtualMachineBackupNamespace :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Harvesterhciiov1beta1VirtualMachineRestoreSpec where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "harvesterhciiov1beta1VirtualMachineRestoreSpec")
instance ToJSON Harvesterhciiov1beta1VirtualMachineRestoreSpec where
  toJSON = genericToJSON (removeFieldLabelPrefix False "harvesterhciiov1beta1VirtualMachineRestoreSpec")

-- | VirtualMachineRestoreStatus is the spec for a VirtualMachineRestore resource
data Harvesterhciiov1beta1VirtualMachineRestoreStatus = Harvesterhciiov1beta1VirtualMachineRestoreStatus
  { harvesterhciiov1beta1VirtualMachineRestoreStatusComplete :: Bool -- ^ 
  , harvesterhciiov1beta1VirtualMachineRestoreStatusConditions :: [Harvesterhciiov1beta1Condition] -- ^ 
  , harvesterhciiov1beta1VirtualMachineRestoreStatusDeletedVolumes :: [Text] -- ^ 
  , harvesterhciiov1beta1VirtualMachineRestoreStatusRestoreTime :: K8siov1Time -- ^ 
  , harvesterhciiov1beta1VirtualMachineRestoreStatusRestores :: [Harvesterhciiov1beta1VolumeRestore] -- ^ 
  , harvesterhciiov1beta1VirtualMachineRestoreStatusTargetUID :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Harvesterhciiov1beta1VirtualMachineRestoreStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "harvesterhciiov1beta1VirtualMachineRestoreStatus")
instance ToJSON Harvesterhciiov1beta1VirtualMachineRestoreStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "harvesterhciiov1beta1VirtualMachineRestoreStatus")

-- | 
data Harvesterhciiov1beta1VirtualMachineSourceSpec = Harvesterhciiov1beta1VirtualMachineSourceSpec
  { harvesterhciiov1beta1VirtualMachineSourceSpecMetadata :: K8siov1ObjectMeta -- ^ 
  , harvesterhciiov1beta1VirtualMachineSourceSpecSpec :: Kubevirtioapicorev1VirtualMachineSpec -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Harvesterhciiov1beta1VirtualMachineSourceSpec where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "harvesterhciiov1beta1VirtualMachineSourceSpec")
instance ToJSON Harvesterhciiov1beta1VirtualMachineSourceSpec where
  toJSON = genericToJSON (removeFieldLabelPrefix False "harvesterhciiov1beta1VirtualMachineSourceSpec")

-- | 
data Harvesterhciiov1beta1VirtualMachineTemplate = Harvesterhciiov1beta1VirtualMachineTemplate
  { harvesterhciiov1beta1VirtualMachineTemplateApiVersion :: Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  , harvesterhciiov1beta1VirtualMachineTemplateKind :: Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  , harvesterhciiov1beta1VirtualMachineTemplateMetadata :: K8siov1ObjectMeta -- ^ 
  , harvesterhciiov1beta1VirtualMachineTemplateSpec :: Harvesterhciiov1beta1VirtualMachineTemplateSpec -- ^ 
  , harvesterhciiov1beta1VirtualMachineTemplateStatus :: Harvesterhciiov1beta1VirtualMachineTemplateStatus -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Harvesterhciiov1beta1VirtualMachineTemplate where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "harvesterhciiov1beta1VirtualMachineTemplate")
instance ToJSON Harvesterhciiov1beta1VirtualMachineTemplate where
  toJSON = genericToJSON (removeFieldLabelPrefix False "harvesterhciiov1beta1VirtualMachineTemplate")

-- | VirtualMachineTemplateList is a list of VirtualMachineTemplate resources
data Harvesterhciiov1beta1VirtualMachineTemplateList = Harvesterhciiov1beta1VirtualMachineTemplateList
  { harvesterhciiov1beta1VirtualMachineTemplateListApiVersion :: Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  , harvesterhciiov1beta1VirtualMachineTemplateListItems :: [Harvesterhciiov1beta1VirtualMachineTemplate] -- ^ 
  , harvesterhciiov1beta1VirtualMachineTemplateListKind :: Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  , harvesterhciiov1beta1VirtualMachineTemplateListMetadata :: K8siov1ListMeta -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Harvesterhciiov1beta1VirtualMachineTemplateList where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "harvesterhciiov1beta1VirtualMachineTemplateList")
instance ToJSON Harvesterhciiov1beta1VirtualMachineTemplateList where
  toJSON = genericToJSON (removeFieldLabelPrefix False "harvesterhciiov1beta1VirtualMachineTemplateList")

-- | 
data Harvesterhciiov1beta1VirtualMachineTemplateSpec = Harvesterhciiov1beta1VirtualMachineTemplateSpec
  { harvesterhciiov1beta1VirtualMachineTemplateSpecDefaultVersionId :: Text -- ^ 
  , harvesterhciiov1beta1VirtualMachineTemplateSpecDescription :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Harvesterhciiov1beta1VirtualMachineTemplateSpec where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "harvesterhciiov1beta1VirtualMachineTemplateSpec")
instance ToJSON Harvesterhciiov1beta1VirtualMachineTemplateSpec where
  toJSON = genericToJSON (removeFieldLabelPrefix False "harvesterhciiov1beta1VirtualMachineTemplateSpec")

-- | 
data Harvesterhciiov1beta1VirtualMachineTemplateStatus = Harvesterhciiov1beta1VirtualMachineTemplateStatus
  { harvesterhciiov1beta1VirtualMachineTemplateStatusDefaultVersion :: Int -- ^ 
  , harvesterhciiov1beta1VirtualMachineTemplateStatusLatestVersion :: Int -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Harvesterhciiov1beta1VirtualMachineTemplateStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "harvesterhciiov1beta1VirtualMachineTemplateStatus")
instance ToJSON Harvesterhciiov1beta1VirtualMachineTemplateStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "harvesterhciiov1beta1VirtualMachineTemplateStatus")

-- | 
data Harvesterhciiov1beta1VirtualMachineTemplateVersion = Harvesterhciiov1beta1VirtualMachineTemplateVersion
  { harvesterhciiov1beta1VirtualMachineTemplateVersionApiVersion :: Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  , harvesterhciiov1beta1VirtualMachineTemplateVersionKind :: Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  , harvesterhciiov1beta1VirtualMachineTemplateVersionMetadata :: K8siov1ObjectMeta -- ^ 
  , harvesterhciiov1beta1VirtualMachineTemplateVersionSpec :: Harvesterhciiov1beta1VirtualMachineTemplateVersionSpec -- ^ 
  , harvesterhciiov1beta1VirtualMachineTemplateVersionStatus :: Harvesterhciiov1beta1VirtualMachineTemplateVersionStatus -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Harvesterhciiov1beta1VirtualMachineTemplateVersion where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "harvesterhciiov1beta1VirtualMachineTemplateVersion")
instance ToJSON Harvesterhciiov1beta1VirtualMachineTemplateVersion where
  toJSON = genericToJSON (removeFieldLabelPrefix False "harvesterhciiov1beta1VirtualMachineTemplateVersion")

-- | VirtualMachineTemplateVersionList is a list of VirtualMachineTemplateVersion resources
data Harvesterhciiov1beta1VirtualMachineTemplateVersionList = Harvesterhciiov1beta1VirtualMachineTemplateVersionList
  { harvesterhciiov1beta1VirtualMachineTemplateVersionListApiVersion :: Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  , harvesterhciiov1beta1VirtualMachineTemplateVersionListItems :: [Harvesterhciiov1beta1VirtualMachineTemplateVersion] -- ^ 
  , harvesterhciiov1beta1VirtualMachineTemplateVersionListKind :: Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  , harvesterhciiov1beta1VirtualMachineTemplateVersionListMetadata :: K8siov1ListMeta -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Harvesterhciiov1beta1VirtualMachineTemplateVersionList where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "harvesterhciiov1beta1VirtualMachineTemplateVersionList")
instance ToJSON Harvesterhciiov1beta1VirtualMachineTemplateVersionList where
  toJSON = genericToJSON (removeFieldLabelPrefix False "harvesterhciiov1beta1VirtualMachineTemplateVersionList")

-- | 
data Harvesterhciiov1beta1VirtualMachineTemplateVersionSpec = Harvesterhciiov1beta1VirtualMachineTemplateVersionSpec
  { harvesterhciiov1beta1VirtualMachineTemplateVersionSpecDescription :: Text -- ^ 
  , harvesterhciiov1beta1VirtualMachineTemplateVersionSpecImageId :: Text -- ^ 
  , harvesterhciiov1beta1VirtualMachineTemplateVersionSpecKeyPairIds :: [Text] -- ^ 
  , harvesterhciiov1beta1VirtualMachineTemplateVersionSpecTemplateId :: Text -- ^ 
  , harvesterhciiov1beta1VirtualMachineTemplateVersionSpecVm :: Harvesterhciiov1beta1VirtualMachineSourceSpec -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Harvesterhciiov1beta1VirtualMachineTemplateVersionSpec where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "harvesterhciiov1beta1VirtualMachineTemplateVersionSpec")
instance ToJSON Harvesterhciiov1beta1VirtualMachineTemplateVersionSpec where
  toJSON = genericToJSON (removeFieldLabelPrefix False "harvesterhciiov1beta1VirtualMachineTemplateVersionSpec")

-- | 
data Harvesterhciiov1beta1VirtualMachineTemplateVersionStatus = Harvesterhciiov1beta1VirtualMachineTemplateVersionStatus
  { harvesterhciiov1beta1VirtualMachineTemplateVersionStatusConditions :: [Harvesterhciiov1beta1Condition] -- ^ 
  , harvesterhciiov1beta1VirtualMachineTemplateVersionStatusVersion :: Int -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Harvesterhciiov1beta1VirtualMachineTemplateVersionStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "harvesterhciiov1beta1VirtualMachineTemplateVersionStatus")
instance ToJSON Harvesterhciiov1beta1VirtualMachineTemplateVersionStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "harvesterhciiov1beta1VirtualMachineTemplateVersionStatus")

-- | VolumeBackup contains the volume data need to restore a PVC
data Harvesterhciiov1beta1VolumeBackup = Harvesterhciiov1beta1VolumeBackup
  { harvesterhciiov1beta1VolumeBackupCreationTime :: K8siov1Time -- ^ 
  , harvesterhciiov1beta1VolumeBackupError :: Harvesterhciiov1beta1Error -- ^ 
  , harvesterhciiov1beta1VolumeBackupLonghornBackupName :: Text -- ^ 
  , harvesterhciiov1beta1VolumeBackupName :: Text -- ^ 
  , harvesterhciiov1beta1VolumeBackupPersistentVolumeClaim :: Harvesterhciiov1beta1PersistentVolumeClaimSourceSpec -- ^ 
  , harvesterhciiov1beta1VolumeBackupReadyToUse :: Bool -- ^ 
  , harvesterhciiov1beta1VolumeBackupVolumeName :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Harvesterhciiov1beta1VolumeBackup where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "harvesterhciiov1beta1VolumeBackup")
instance ToJSON Harvesterhciiov1beta1VolumeBackup where
  toJSON = genericToJSON (removeFieldLabelPrefix False "harvesterhciiov1beta1VolumeBackup")

-- | VolumeRestore contains the volume data need to restore a PVC
data Harvesterhciiov1beta1VolumeRestore = Harvesterhciiov1beta1VolumeRestore
  { harvesterhciiov1beta1VolumeRestorePersistentVolumeClaimSpec :: Harvesterhciiov1beta1PersistentVolumeClaimSourceSpec -- ^ 
  , harvesterhciiov1beta1VolumeRestoreVolumeBackupName :: Text -- ^ 
  , harvesterhciiov1beta1VolumeRestoreVolumeName :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Harvesterhciiov1beta1VolumeRestore where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "harvesterhciiov1beta1VolumeRestore")
instance ToJSON Harvesterhciiov1beta1VolumeRestore where
  toJSON = genericToJSON (removeFieldLabelPrefix False "harvesterhciiov1beta1VolumeRestore")

-- | 
data K8scnicncfiov1NetworkAttachmentDefinition = K8scnicncfiov1NetworkAttachmentDefinition
  { k8scnicncfiov1NetworkAttachmentDefinitionApiVersion :: Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  , k8scnicncfiov1NetworkAttachmentDefinitionKind :: Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  , k8scnicncfiov1NetworkAttachmentDefinitionMetadata :: K8siov1ObjectMeta -- ^ 
  , k8scnicncfiov1NetworkAttachmentDefinitionSpec :: K8scnicncfiov1NetworkAttachmentDefinitionSpec -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON K8scnicncfiov1NetworkAttachmentDefinition where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "k8scnicncfiov1NetworkAttachmentDefinition")
instance ToJSON K8scnicncfiov1NetworkAttachmentDefinition where
  toJSON = genericToJSON (removeFieldLabelPrefix False "k8scnicncfiov1NetworkAttachmentDefinition")

-- | 
data K8scnicncfiov1NetworkAttachmentDefinitionList = K8scnicncfiov1NetworkAttachmentDefinitionList
  { k8scnicncfiov1NetworkAttachmentDefinitionListApiVersion :: Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  , k8scnicncfiov1NetworkAttachmentDefinitionListItems :: [K8scnicncfiov1NetworkAttachmentDefinition] -- ^ 
  , k8scnicncfiov1NetworkAttachmentDefinitionListKind :: Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  , k8scnicncfiov1NetworkAttachmentDefinitionListMetadata :: K8siov1ListMeta -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON K8scnicncfiov1NetworkAttachmentDefinitionList where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "k8scnicncfiov1NetworkAttachmentDefinitionList")
instance ToJSON K8scnicncfiov1NetworkAttachmentDefinitionList where
  toJSON = genericToJSON (removeFieldLabelPrefix False "k8scnicncfiov1NetworkAttachmentDefinitionList")

-- | 
data K8scnicncfiov1NetworkAttachmentDefinitionSpec = K8scnicncfiov1NetworkAttachmentDefinitionSpec
  { k8scnicncfiov1NetworkAttachmentDefinitionSpecConfig :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON K8scnicncfiov1NetworkAttachmentDefinitionSpec where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "k8scnicncfiov1NetworkAttachmentDefinitionSpec")
instance ToJSON K8scnicncfiov1NetworkAttachmentDefinitionSpec where
  toJSON = genericToJSON (removeFieldLabelPrefix False "k8scnicncfiov1NetworkAttachmentDefinitionSpec")

-- | Quantity is a fixed-point representation of a number. It provides convenient marshaling/unmarshaling in JSON and YAML, in addition to String() and AsInt64() accessors.  The serialization format is:  &lt;quantity&gt;        ::&#x3D; &lt;signedNumber&gt;&lt;suffix&gt;   (Note that &lt;suffix&gt; may be empty, from the \&quot;\&quot; case in &lt;decimalSI&gt;.) &lt;digit&gt;           ::&#x3D; 0 | 1 | ... | 9 &lt;digits&gt;          ::&#x3D; &lt;digit&gt; | &lt;digit&gt;&lt;digits&gt; &lt;number&gt;          ::&#x3D; &lt;digits&gt; | &lt;digits&gt;.&lt;digits&gt; | &lt;digits&gt;. | .&lt;digits&gt; &lt;sign&gt;            ::&#x3D; \&quot;+\&quot; | \&quot;-\&quot; &lt;signedNumber&gt;    ::&#x3D; &lt;number&gt; | &lt;sign&gt;&lt;number&gt; &lt;suffix&gt;          ::&#x3D; &lt;binarySI&gt; | &lt;decimalExponent&gt; | &lt;decimalSI&gt; &lt;binarySI&gt;        ::&#x3D; Ki | Mi | Gi | Ti | Pi | Ei   (International System of units; See: http://physics.nist.gov/cuu/Units/binary.html) &lt;decimalSI&gt;       ::&#x3D; m | \&quot;\&quot; | k | M | G | T | P | E   (Note that 1024 &#x3D; 1Ki but 1000 &#x3D; 1k; I didn&#39;t choose the capitalization.) &lt;decimalExponent&gt; ::&#x3D; \&quot;e\&quot; &lt;signedNumber&gt; | \&quot;E\&quot; &lt;signedNumber&gt;  No matter which of the three exponent forms is used, no quantity may represent a number greater than 2^63-1 in magnitude, nor may it have more than 3 decimal places. Numbers larger or more precise will be capped or rounded up. (E.g.: 0.1m will rounded up to 1m.) This may be extended in the future if we require larger or smaller quantities.  When a Quantity is parsed from a string, it will remember the type of suffix it had, and will use the same type again when it is serialized.  Before serializing, Quantity will be put in \&quot;canonical form\&quot;. This means that Exponent/suffix will be adjusted up or down (with a corresponding increase or decrease in Mantissa) such that:   a. No precision is lost   b. No fractional digits will be emitted   c. The exponent (or suffix) is as large as possible. The sign will be omitted unless the number is negative.  Examples:   1.5 will be serialized as \&quot;1500m\&quot;   1.5Gi will be serialized as \&quot;1536Mi\&quot;  Note that the quantity will NEVER be internally represented by a floating point number. That is the whole point of this exercise.  Non-canonical values will still parse as long as they are well formed, but will be re-emitted in their canonical form. (So always use canonical form, or don&#39;t diff.)  This format is intended to make it difficult to use these numbers without writing some sort of special handling code in the hopes that that will cause implementors to also use a fixed point implementation.
newtype K8sioapimachinerypkgapiresourceQuantity = K8sioapimachinerypkgapiresourceQuantity Text deriving (Show, Eq, FromJSON, ToJSON, Generic)

-- | IntOrString is a type that can hold an int32 or a string.  When used in JSON or YAML marshalling and unmarshalling, it produces or consumes the inner type.  This allows you to have, for example, a JSON field that can accept a name or number.
newtype K8sioapimachinerypkgutilintstrIntOrString = K8sioapimachinerypkgutilintstrIntOrString Text deriving (Show, Eq, FromJSON, ToJSON, Generic)

-- | Affinity is a group of affinity scheduling rules.
data K8siov1Affinity = K8siov1Affinity
  { k8siov1AffinityNodeAffinity :: K8siov1NodeAffinity -- ^ Describes node affinity scheduling rules for the pod.
  , k8siov1AffinityPodAffinity :: K8siov1PodAffinity -- ^ Describes pod affinity scheduling rules (e.g. co-locate this pod in the same node, zone, etc. as some other pod(s)).
  , k8siov1AffinityPodAntiAffinity :: K8siov1PodAntiAffinity -- ^ Describes pod anti-affinity scheduling rules (e.g. avoid putting this pod in the same node, zone, etc. as some other pod(s)).
  } deriving (Show, Eq, Generic)

instance FromJSON K8siov1Affinity where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "k8siov1Affinity")
instance ToJSON K8siov1Affinity where
  toJSON = genericToJSON (removeFieldLabelPrefix False "k8siov1Affinity")

-- | DeleteOptions may be provided when deleting an API object.
data K8siov1DeleteOptions = K8siov1DeleteOptions
  { k8siov1DeleteOptionsApiVersion :: Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  , k8siov1DeleteOptionsDryRun :: [Text] -- ^ When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  , k8siov1DeleteOptionsGracePeriodSeconds :: Integer -- ^ The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately.
  , k8siov1DeleteOptionsKind :: Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  , k8siov1DeleteOptionsOrphanDependents :: Bool -- ^ Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.
  , k8siov1DeleteOptionsPreconditions :: K8siov1Preconditions -- ^ Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict status will be returned.
  , k8siov1DeleteOptionsPropagationPolicy :: Text -- ^ Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground.
  } deriving (Show, Eq, Generic)

instance FromJSON K8siov1DeleteOptions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "k8siov1DeleteOptions")
instance ToJSON K8siov1DeleteOptions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "k8siov1DeleteOptions")

-- | DownwardAPIVolumeFile represents information to create the file containing the pod field
data K8siov1DownwardAPIVolumeFile = K8siov1DownwardAPIVolumeFile
  { k8siov1DownwardAPIVolumeFileFieldRef :: K8siov1ObjectFieldSelector -- ^ Required: Selects a field of the pod: only annotations, labels, name and namespace are supported.
  , k8siov1DownwardAPIVolumeFileMode :: Int -- ^ Optional: mode bits used to set permissions on this file, must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
  , k8siov1DownwardAPIVolumeFilePath :: Text -- ^ Required: Path is  the relative path name of the file to be created. Must not be absolute or contain the '..' path. Must be utf-8 encoded. The first item of the relative path must not start with '..'
  , k8siov1DownwardAPIVolumeFileResourceFieldRef :: K8siov1ResourceFieldSelector -- ^ Selects a resource of the container: only resources limits and requests (limits.cpu, limits.memory, requests.cpu and requests.memory) are currently supported.
  } deriving (Show, Eq, Generic)

instance FromJSON K8siov1DownwardAPIVolumeFile where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "k8siov1DownwardAPIVolumeFile")
instance ToJSON K8siov1DownwardAPIVolumeFile where
  toJSON = genericToJSON (removeFieldLabelPrefix False "k8siov1DownwardAPIVolumeFile")

-- | ExecAction describes a \&quot;run in container\&quot; action.
data K8siov1ExecAction = K8siov1ExecAction
  { k8siov1ExecActionCommand :: [Text] -- ^ Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy.
  } deriving (Show, Eq, Generic)

instance FromJSON K8siov1ExecAction where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "k8siov1ExecAction")
instance ToJSON K8siov1ExecAction where
  toJSON = genericToJSON (removeFieldLabelPrefix False "k8siov1ExecAction")

-- | FieldsV1 stores a set of fields in a data structure like a Trie, in JSON format.  Each key is either a &#39;.&#39; representing the field itself, and will always map to an empty set, or a string representing a sub-field or item. The string will follow one of these four formats: &#39;f:&lt;name&gt;&#39;, where &lt;name&gt; is the name of a field in a struct, or key in a map &#39;v:&lt;value&gt;&#39;, where &lt;value&gt; is the exact json formatted value of a list item &#39;i:&lt;index&gt;&#39;, where &lt;index&gt; is position of a item in a list &#39;k:&lt;keys&gt;&#39;, where &lt;keys&gt; is a map of  a list item&#39;s key fields to their unique values If a key maps to an empty Fields value, the field that key represents is part of the set.  The exact format is defined in sigs.k8s.io/structured-merge-diff
data K8siov1FieldsV1 = K8siov1FieldsV1
  { 
  } deriving (Show, Eq, Generic)

instance FromJSON K8siov1FieldsV1 where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "k8siov1FieldsV1")
instance ToJSON K8siov1FieldsV1 where
  toJSON = genericToJSON (removeFieldLabelPrefix False "k8siov1FieldsV1")

-- | HTTPGetAction describes an action based on HTTP Get requests.
data K8siov1HTTPGetAction = K8siov1HTTPGetAction
  { k8siov1HTTPGetActionHost :: Text -- ^ Host name to connect to, defaults to the pod IP. You probably want to set \"Host\" in httpHeaders instead.
  , k8siov1HTTPGetActionHttpHeaders :: [K8siov1HTTPHeader] -- ^ Custom headers to set in the request. HTTP allows repeated headers.
  , k8siov1HTTPGetActionPath :: Text -- ^ Path to access on the HTTP server.
  , k8siov1HTTPGetActionPort :: K8sioapimachinerypkgutilintstrIntOrString -- ^ Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME.
  , k8siov1HTTPGetActionScheme :: Text -- ^ Scheme to use for connecting to the host. Defaults to HTTP.  Possible enum values:  - `\"HTTP\"` means that the scheme used will be http://  - `\"HTTPS\"` means that the scheme used will be https://
  } deriving (Show, Eq, Generic)

instance FromJSON K8siov1HTTPGetAction where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "k8siov1HTTPGetAction")
instance ToJSON K8siov1HTTPGetAction where
  toJSON = genericToJSON (removeFieldLabelPrefix False "k8siov1HTTPGetAction")

-- | HTTPHeader describes a custom header to be used in HTTP probes
data K8siov1HTTPHeader = K8siov1HTTPHeader
  { k8siov1HTTPHeaderName :: Text -- ^ The header field name
  , k8siov1HTTPHeaderValue :: Text -- ^ The header field value
  } deriving (Show, Eq, Generic)

instance FromJSON K8siov1HTTPHeader where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "k8siov1HTTPHeader")
instance ToJSON K8siov1HTTPHeader where
  toJSON = genericToJSON (removeFieldLabelPrefix False "k8siov1HTTPHeader")

-- | A label selector is a label query over a set of resources. The result of matchLabels and matchExpressions are ANDed. An empty label selector matches all objects. A null label selector matches no objects.
data K8siov1LabelSelector = K8siov1LabelSelector
  { k8siov1LabelSelectorMatchExpressions :: [K8siov1LabelSelectorRequirement] -- ^ matchExpressions is a list of label selector requirements. The requirements are ANDed.
  , k8siov1LabelSelectorMatchLabels :: Map.Map String Text -- ^ matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.
  } deriving (Show, Eq, Generic)

instance FromJSON K8siov1LabelSelector where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "k8siov1LabelSelector")
instance ToJSON K8siov1LabelSelector where
  toJSON = genericToJSON (removeFieldLabelPrefix False "k8siov1LabelSelector")

-- | A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.
data K8siov1LabelSelectorRequirement = K8siov1LabelSelectorRequirement
  { k8siov1LabelSelectorRequirementKey :: Text -- ^ key is the label key that the selector applies to.
  , k8siov1LabelSelectorRequirementOperator :: Text -- ^ operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.
  , k8siov1LabelSelectorRequirementValues :: [Text] -- ^ values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.
  } deriving (Show, Eq, Generic)

instance FromJSON K8siov1LabelSelectorRequirement where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "k8siov1LabelSelectorRequirement")
instance ToJSON K8siov1LabelSelectorRequirement where
  toJSON = genericToJSON (removeFieldLabelPrefix False "k8siov1LabelSelectorRequirement")

-- | ListMeta describes metadata that synthetic resources must have, including lists and various status objects. A resource may have only one of {ObjectMeta, ListMeta}.
data K8siov1ListMeta = K8siov1ListMeta
  { k8siov1ListMetaContinue :: Text -- ^ continue may be set if the user set a limit on the number of items returned, and indicates that the server has more data available. The value is opaque and may be used to issue another request to the endpoint that served this list to retrieve the next set of available objects. Continuing a consistent list may not be possible if the server configuration has changed or more than a few minutes have passed. The resourceVersion field returned when using this continue value will be identical to the value in the first response, unless you have received this token from an error message.
  , k8siov1ListMetaRemainingItemCount :: Integer -- ^ remainingItemCount is the number of subsequent items in the list which are not included in this list response. If the list request contained label or field selectors, then the number of remaining items is unknown and the field will be left unset and omitted during serialization. If the list is complete (either because it is not chunking or because this is the last chunk), then there are no more remaining items and this field will be left unset and omitted during serialization. Servers older than v1.15 do not set this field. The intended use of the remainingItemCount is *estimating* the size of a collection. Clients should not rely on the remainingItemCount to be set or to be exact.
  , k8siov1ListMetaResourceVersion :: Text -- ^ String that identifies the server's internal version of this object that can be used by clients to determine when objects have changed. Value must be treated as opaque by clients and passed unmodified back to the server. Populated by the system. Read-only. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency
  , k8siov1ListMetaSelfLink :: Text -- ^ selfLink is a URL representing this object. Populated by the system. Read-only.  DEPRECATED Kubernetes will stop propagating this field in 1.20 release and the field is planned to be removed in 1.21 release.
  } deriving (Show, Eq, Generic)

instance FromJSON K8siov1ListMeta where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "k8siov1ListMeta")
instance ToJSON K8siov1ListMeta where
  toJSON = genericToJSON (removeFieldLabelPrefix False "k8siov1ListMeta")

-- | LocalObjectReference contains enough information to let you locate the referenced object inside the same namespace.
data K8siov1LocalObjectReference = K8siov1LocalObjectReference
  { k8siov1LocalObjectReferenceName :: Text -- ^ Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  } deriving (Show, Eq, Generic)

instance FromJSON K8siov1LocalObjectReference where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "k8siov1LocalObjectReference")
instance ToJSON K8siov1LocalObjectReference where
  toJSON = genericToJSON (removeFieldLabelPrefix False "k8siov1LocalObjectReference")

-- | ManagedFieldsEntry is a workflow-id, a FieldSet and the group version of the resource that the fieldset applies to.
data K8siov1ManagedFieldsEntry = K8siov1ManagedFieldsEntry
  { k8siov1ManagedFieldsEntryApiVersion :: Text -- ^ APIVersion defines the version of this resource that this field set applies to. The format is \"group/version\" just like the top-level APIVersion field. It is necessary to track the version of a field set because it cannot be automatically converted.
  , k8siov1ManagedFieldsEntryFieldsType :: Text -- ^ FieldsType is the discriminator for the different fields format and version. There is currently only one possible value: \"FieldsV1\"
  , k8siov1ManagedFieldsEntryFieldsV1 :: K8siov1FieldsV1 -- ^ FieldsV1 holds the first JSON version format as described in the \"FieldsV1\" type.
  , k8siov1ManagedFieldsEntryManager :: Text -- ^ Manager is an identifier of the workflow managing these fields.
  , k8siov1ManagedFieldsEntryOperation :: Text -- ^ Operation is the type of operation which lead to this ManagedFieldsEntry being created. The only valid values for this field are 'Apply' and 'Update'.
  , k8siov1ManagedFieldsEntrySubresource :: Text -- ^ Subresource is the name of the subresource used to update that object, or empty string if the object was updated through the main resource. The value of this field is used to distinguish between managers, even if they share the same name. For example, a status update will be distinct from a regular update using the same manager name. Note that the APIVersion field is not related to the Subresource field and it always corresponds to the version of the main resource.
  , k8siov1ManagedFieldsEntryTime :: K8siov1Time -- ^ Time is timestamp of when these fields were set. It should always be empty if Operation is 'Apply'
  } deriving (Show, Eq, Generic)

instance FromJSON K8siov1ManagedFieldsEntry where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "k8siov1ManagedFieldsEntry")
instance ToJSON K8siov1ManagedFieldsEntry where
  toJSON = genericToJSON (removeFieldLabelPrefix False "k8siov1ManagedFieldsEntry")

-- | Node affinity is a group of node affinity scheduling rules.
data K8siov1NodeAffinity = K8siov1NodeAffinity
  { k8siov1NodeAffinityPreferredDuringSchedulingIgnoredDuringExecution :: [K8siov1PreferredSchedulingTerm] -- ^ The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node matches the corresponding matchExpressions; the node(s) with the highest sum are the most preferred.
  , k8siov1NodeAffinityRequiredDuringSchedulingIgnoredDuringExecution :: K8siov1NodeSelector -- ^ If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to an update), the system may or may not try to eventually evict the pod from its node.
  } deriving (Show, Eq, Generic)

instance FromJSON K8siov1NodeAffinity where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "k8siov1NodeAffinity")
instance ToJSON K8siov1NodeAffinity where
  toJSON = genericToJSON (removeFieldLabelPrefix False "k8siov1NodeAffinity")

-- | A node selector represents the union of the results of one or more label queries over a set of nodes; that is, it represents the OR of the selectors represented by the node selector terms.
data K8siov1NodeSelector = K8siov1NodeSelector
  { k8siov1NodeSelectorNodeSelectorTerms :: [K8siov1NodeSelectorTerm] -- ^ Required. A list of node selector terms. The terms are ORed.
  } deriving (Show, Eq, Generic)

instance FromJSON K8siov1NodeSelector where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "k8siov1NodeSelector")
instance ToJSON K8siov1NodeSelector where
  toJSON = genericToJSON (removeFieldLabelPrefix False "k8siov1NodeSelector")

-- | A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.
data K8siov1NodeSelectorRequirement = K8siov1NodeSelectorRequirement
  { k8siov1NodeSelectorRequirementKey :: Text -- ^ The label key that the selector applies to.
  , k8siov1NodeSelectorRequirementOperator :: Text -- ^ Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.  Possible enum values:  - `\"DoesNotExist\"`  - `\"Exists\"`  - `\"Gt\"`  - `\"In\"`  - `\"Lt\"`  - `\"NotIn\"`
  , k8siov1NodeSelectorRequirementValues :: [Text] -- ^ An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.
  } deriving (Show, Eq, Generic)

instance FromJSON K8siov1NodeSelectorRequirement where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "k8siov1NodeSelectorRequirement")
instance ToJSON K8siov1NodeSelectorRequirement where
  toJSON = genericToJSON (removeFieldLabelPrefix False "k8siov1NodeSelectorRequirement")

-- | A null or empty node selector term matches no objects. The requirements of them are ANDed. The TopologySelectorTerm type implements a subset of the NodeSelectorTerm.
data K8siov1NodeSelectorTerm = K8siov1NodeSelectorTerm
  { k8siov1NodeSelectorTermMatchExpressions :: [K8siov1NodeSelectorRequirement] -- ^ A list of node selector requirements by node's labels.
  , k8siov1NodeSelectorTermMatchFields :: [K8siov1NodeSelectorRequirement] -- ^ A list of node selector requirements by node's fields.
  } deriving (Show, Eq, Generic)

instance FromJSON K8siov1NodeSelectorTerm where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "k8siov1NodeSelectorTerm")
instance ToJSON K8siov1NodeSelectorTerm where
  toJSON = genericToJSON (removeFieldLabelPrefix False "k8siov1NodeSelectorTerm")

-- | ObjectFieldSelector selects an APIVersioned field of an object.
data K8siov1ObjectFieldSelector = K8siov1ObjectFieldSelector
  { k8siov1ObjectFieldSelectorApiVersion :: Text -- ^ Version of the schema the FieldPath is written in terms of, defaults to \"v1\".
  , k8siov1ObjectFieldSelectorFieldPath :: Text -- ^ Path of the field to select in the specified API version.
  } deriving (Show, Eq, Generic)

instance FromJSON K8siov1ObjectFieldSelector where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "k8siov1ObjectFieldSelector")
instance ToJSON K8siov1ObjectFieldSelector where
  toJSON = genericToJSON (removeFieldLabelPrefix False "k8siov1ObjectFieldSelector")

-- | ObjectMeta is metadata that all persisted resources must have, which includes all objects users must create.
data K8siov1ObjectMeta = K8siov1ObjectMeta
  { k8siov1ObjectMetaAnnotations :: Map.Map String Text -- ^ Annotations is an unstructured key value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. More info: http://kubernetes.io/docs/user-guide/annotations
  , k8siov1ObjectMetaClusterName :: Text -- ^ The name of the cluster which the object belongs to. This is used to distinguish resources with same name and namespace in different clusters. This field is not set anywhere right now and apiserver is going to ignore it if set in create or update request.
  , k8siov1ObjectMetaCreationTimestamp :: K8siov1Time -- ^ CreationTimestamp is a timestamp representing the server time when this object was created. It is not guaranteed to be set in happens-before order across separate operations. Clients may not set this value. It is represented in RFC3339 form and is in UTC.  Populated by the system. Read-only. Null for lists. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  , k8siov1ObjectMetaDeletionGracePeriodSeconds :: Integer -- ^ Number of seconds allowed for this object to gracefully terminate before it will be removed from the system. Only set when deletionTimestamp is also set. May only be shortened. Read-only.
  , k8siov1ObjectMetaDeletionTimestamp :: K8siov1Time -- ^ DeletionTimestamp is RFC 3339 date and time at which this resource will be deleted. This field is set by the server when a graceful deletion is requested by the user, and is not directly settable by a client. The resource is expected to be deleted (no longer visible from resource lists, and not reachable by name) after the time in this field, once the finalizers list is empty. As long as the finalizers list contains items, deletion is blocked. Once the deletionTimestamp is set, this value may not be unset or be set further into the future, although it may be shortened or the resource may be deleted prior to this time. For example, a user may request that a pod is deleted in 30 seconds. The Kubelet will react by sending a graceful termination signal to the containers in the pod. After that 30 seconds, the Kubelet will send a hard termination signal (SIGKILL) to the container and after cleanup, remove the pod from the API. In the presence of network partitions, this object may still exist after this timestamp, until an administrator or automated process can determine the resource is fully terminated. If not set, graceful deletion of the object has not been requested.  Populated by the system when a graceful deletion is requested. Read-only. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  , k8siov1ObjectMetaFinalizers :: [Text] -- ^ Must be empty before the object is deleted from the registry. Each entry is an identifier for the responsible component that will remove the entry from the list. If the deletionTimestamp of the object is non-nil, entries in this list can only be removed. Finalizers may be processed and removed in any order.  Order is NOT enforced because it introduces significant risk of stuck finalizers. finalizers is a shared field, any actor with permission can reorder it. If the finalizer list is processed in order, then this can lead to a situation in which the component responsible for the first finalizer in the list is waiting for a signal (field value, external system, or other) produced by a component responsible for a finalizer later in the list, resulting in a deadlock. Without enforced ordering finalizers are free to order amongst themselves and are not vulnerable to ordering changes in the list.
  , k8siov1ObjectMetaGenerateName :: Text -- ^ GenerateName is an optional prefix, used by the server, to generate a unique name ONLY IF the Name field has not been provided. If this field is used, the name returned to the client will be different than the name passed. This value will also be combined with a unique suffix. The provided value has the same validation rules as the Name field, and may be truncated by the length of the suffix required to make the value unique on the server.  If this field is specified and the generated name exists, the server will NOT return a 409 - instead, it will either return 201 Created or 500 with Reason ServerTimeout indicating a unique name could not be found in the time allotted, and the client should retry (optionally after the time indicated in the Retry-After header).  Applied only if Name is not specified. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#idempotency
  , k8siov1ObjectMetaGeneration :: Integer -- ^ A sequence number representing a specific generation of the desired state. Populated by the system. Read-only.
  , k8siov1ObjectMetaLabels :: Map.Map String Text -- ^ Map of string keys and values that can be used to organize and categorize (scope and select) objects. May match selectors of replication controllers and services. More info: http://kubernetes.io/docs/user-guide/labels
  , k8siov1ObjectMetaManagedFields :: [K8siov1ManagedFieldsEntry] -- ^ ManagedFields maps workflow-id and version to the set of fields that are managed by that workflow. This is mostly for internal housekeeping, and users typically shouldn't need to set or understand this field. A workflow can be the user's name, a controller's name, or the name of a specific apply path like \"ci-cd\". The set of fields is always in the version that the workflow used when modifying the object.
  , k8siov1ObjectMetaName :: Text -- ^ Name must be unique within a namespace. Is required when creating resources, although some resources may allow a client to request the generation of an appropriate name automatically. Name is primarily intended for creation idempotence and configuration definition. Cannot be updated. More info: http://kubernetes.io/docs/user-guide/identifiers#names
  , k8siov1ObjectMetaNamespace :: Text -- ^ Namespace defines the space within which each name must be unique. An empty namespace is equivalent to the \"default\" namespace, but \"default\" is the canonical representation. Not all objects are required to be scoped to a namespace - the value of this field for those objects will be empty.  Must be a DNS_LABEL. Cannot be updated. More info: http://kubernetes.io/docs/user-guide/namespaces
  , k8siov1ObjectMetaOwnerReferences :: [K8siov1OwnerReference] -- ^ List of objects depended by this object. If ALL objects in the list have been deleted, this object will be garbage collected. If this object is managed by a controller, then an entry in this list will point to this controller, with the controller field set to true. There cannot be more than one managing controller.
  , k8siov1ObjectMetaResourceVersion :: Text -- ^ An opaque value that represents the internal version of this object that can be used by clients to determine when objects have changed. May be used for optimistic concurrency, change detection, and the watch operation on a resource or set of resources. Clients must treat these values as opaque and passed unmodified back to the server. They may only be valid for a particular resource or set of resources.  Populated by the system. Read-only. Value must be treated as opaque by clients and . More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency
  , k8siov1ObjectMetaSelfLink :: Text -- ^ SelfLink is a URL representing this object. Populated by the system. Read-only.  DEPRECATED Kubernetes will stop propagating this field in 1.20 release and the field is planned to be removed in 1.21 release.
  , k8siov1ObjectMetaUid :: Text -- ^ UID is the unique in time and space value for this object. It is typically generated by the server on successful creation of a resource and is not allowed to change on PUT operations.  Populated by the system. Read-only. More info: http://kubernetes.io/docs/user-guide/identifiers#uids
  } deriving (Show, Eq, Generic)

instance FromJSON K8siov1ObjectMeta where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "k8siov1ObjectMeta")
instance ToJSON K8siov1ObjectMeta where
  toJSON = genericToJSON (removeFieldLabelPrefix False "k8siov1ObjectMeta")

-- | OwnerReference contains enough information to let you identify an owning object. An owning object must be in the same namespace as the dependent, or be cluster-scoped, so there is no namespace field.
data K8siov1OwnerReference = K8siov1OwnerReference
  { k8siov1OwnerReferenceApiVersion :: Text -- ^ API version of the referent.
  , k8siov1OwnerReferenceBlockOwnerDeletion :: Bool -- ^ If true, AND if the owner has the \"foregroundDeletion\" finalizer, then the owner cannot be deleted from the key-value store until this reference is removed. Defaults to false. To set this field, a user needs \"delete\" permission of the owner, otherwise 422 (Unprocessable Entity) will be returned.
  , k8siov1OwnerReferenceController :: Bool -- ^ If true, this reference points to the managing controller.
  , k8siov1OwnerReferenceKind :: Text -- ^ Kind of the referent. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  , k8siov1OwnerReferenceName :: Text -- ^ Name of the referent. More info: http://kubernetes.io/docs/user-guide/identifiers#names
  , k8siov1OwnerReferenceUid :: Text -- ^ UID of the referent. More info: http://kubernetes.io/docs/user-guide/identifiers#uids
  } deriving (Show, Eq, Generic)

instance FromJSON K8siov1OwnerReference where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "k8siov1OwnerReference")
instance ToJSON K8siov1OwnerReference where
  toJSON = genericToJSON (removeFieldLabelPrefix False "k8siov1OwnerReference")

-- | Patch is provided to give a concrete name and type to the Kubernetes PATCH request body.
data K8siov1Patch = K8siov1Patch
  { 
  } deriving (Show, Eq, Generic)

instance FromJSON K8siov1Patch where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "k8siov1Patch")
instance ToJSON K8siov1Patch where
  toJSON = genericToJSON (removeFieldLabelPrefix False "k8siov1Patch")

-- | PersistentVolumeClaim is a user&#39;s request for and claim to a persistent volume
data K8siov1PersistentVolumeClaim = K8siov1PersistentVolumeClaim
  { k8siov1PersistentVolumeClaimApiVersion :: Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  , k8siov1PersistentVolumeClaimKind :: Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  , k8siov1PersistentVolumeClaimMetadata :: K8siov1ObjectMeta -- ^ Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  , k8siov1PersistentVolumeClaimSpec :: K8siov1PersistentVolumeClaimSpec -- ^ Spec defines the desired characteristics of a volume requested by a pod author. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims
  , k8siov1PersistentVolumeClaimStatus :: K8siov1PersistentVolumeClaimStatus -- ^ Status represents the current information/status of a persistent volume claim. Read-only. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims
  } deriving (Show, Eq, Generic)

instance FromJSON K8siov1PersistentVolumeClaim where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "k8siov1PersistentVolumeClaim")
instance ToJSON K8siov1PersistentVolumeClaim where
  toJSON = genericToJSON (removeFieldLabelPrefix False "k8siov1PersistentVolumeClaim")

-- | PersistentVolumeClaimCondition contails details about state of pvc
data K8siov1PersistentVolumeClaimCondition = K8siov1PersistentVolumeClaimCondition
  { k8siov1PersistentVolumeClaimConditionLastProbeTime :: K8siov1Time -- ^ Last time we probed the condition.
  , k8siov1PersistentVolumeClaimConditionLastTransitionTime :: K8siov1Time -- ^ Last time the condition transitioned from one status to another.
  , k8siov1PersistentVolumeClaimConditionMessage :: Text -- ^ Human-readable message indicating details about last transition.
  , k8siov1PersistentVolumeClaimConditionReason :: Text -- ^ Unique, this should be a short, machine understandable string that gives the reason for condition's last transition. If it reports \"ResizeStarted\" that means the underlying persistent volume is being resized.
  , k8siov1PersistentVolumeClaimConditionStatus :: Text -- ^ 
  , k8siov1PersistentVolumeClaimConditionType :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON K8siov1PersistentVolumeClaimCondition where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "k8siov1PersistentVolumeClaimCondition")
instance ToJSON K8siov1PersistentVolumeClaimCondition where
  toJSON = genericToJSON (removeFieldLabelPrefix False "k8siov1PersistentVolumeClaimCondition")

-- | PersistentVolumeClaimList is a list of PersistentVolumeClaim items.
data K8siov1PersistentVolumeClaimList = K8siov1PersistentVolumeClaimList
  { k8siov1PersistentVolumeClaimListApiVersion :: Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  , k8siov1PersistentVolumeClaimListItems :: [K8siov1PersistentVolumeClaim] -- ^ A list of persistent volume claims. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims
  , k8siov1PersistentVolumeClaimListKind :: Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  , k8siov1PersistentVolumeClaimListMetadata :: K8siov1ListMeta -- ^ Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  } deriving (Show, Eq, Generic)

instance FromJSON K8siov1PersistentVolumeClaimList where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "k8siov1PersistentVolumeClaimList")
instance ToJSON K8siov1PersistentVolumeClaimList where
  toJSON = genericToJSON (removeFieldLabelPrefix False "k8siov1PersistentVolumeClaimList")

-- | PersistentVolumeClaimSpec describes the common attributes of storage devices and allows a Source for provider-specific attributes
data K8siov1PersistentVolumeClaimSpec = K8siov1PersistentVolumeClaimSpec
  { k8siov1PersistentVolumeClaimSpecAccessModes :: [Text] -- ^ AccessModes contains the desired access modes the volume should have. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1
  , k8siov1PersistentVolumeClaimSpecDataSource :: K8siov1TypedLocalObjectReference -- ^ This field can be used to specify either: * An existing VolumeSnapshot object (snapshot.storage.k8s.io/VolumeSnapshot) * An existing PVC (PersistentVolumeClaim) If the provisioner or an external controller can support the specified data source, it will create a new volume based on the contents of the specified data source. If the AnyVolumeDataSource feature gate is enabled, this field will always have the same contents as the DataSourceRef field.
  , k8siov1PersistentVolumeClaimSpecDataSourceRef :: K8siov1TypedLocalObjectReference -- ^ Specifies the object from which to populate the volume with data, if a non-empty volume is desired. This may be any local object from a non-empty API group (non core object) or a PersistentVolumeClaim object. When this field is specified, volume binding will only succeed if the type of the specified object matches some installed volume populator or dynamic provisioner. This field will replace the functionality of the DataSource field and as such if both fields are non-empty, they must have the same value. For backwards compatibility, both fields (DataSource and DataSourceRef) will be set to the same value automatically if one of them is empty and the other is non-empty. There are two important differences between DataSource and DataSourceRef: * While DataSource only allows two specific types of objects, DataSourceRef   allows any non-core object, as well as PersistentVolumeClaim objects. * While DataSource ignores disallowed values (dropping them), DataSourceRef   preserves all values, and generates an error if a disallowed value is   specified. (Alpha) Using this field requires the AnyVolumeDataSource feature gate to be enabled.
  , k8siov1PersistentVolumeClaimSpecResources :: K8siov1ResourceRequirements -- ^ Resources represents the minimum resources the volume should have. If RecoverVolumeExpansionFailure feature is enabled users are allowed to specify resource requirements that are lower than previous value but must still be higher than capacity recorded in the status field of the claim. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources
  , k8siov1PersistentVolumeClaimSpecSelector :: K8siov1LabelSelector -- ^ A label query over volumes to consider for binding.
  , k8siov1PersistentVolumeClaimSpecStorageClassName :: Text -- ^ Name of the StorageClass required by the claim. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1
  , k8siov1PersistentVolumeClaimSpecVolumeMode :: Text -- ^ volumeMode defines what type of volume is required by the claim. Value of Filesystem is implied when not included in claim spec.
  , k8siov1PersistentVolumeClaimSpecVolumeName :: Text -- ^ VolumeName is the binding reference to the PersistentVolume backing this claim.
  } deriving (Show, Eq, Generic)

instance FromJSON K8siov1PersistentVolumeClaimSpec where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "k8siov1PersistentVolumeClaimSpec")
instance ToJSON K8siov1PersistentVolumeClaimSpec where
  toJSON = genericToJSON (removeFieldLabelPrefix False "k8siov1PersistentVolumeClaimSpec")

-- | PersistentVolumeClaimStatus is the current status of a persistent volume claim.
data K8siov1PersistentVolumeClaimStatus = K8siov1PersistentVolumeClaimStatus
  { k8siov1PersistentVolumeClaimStatusAccessModes :: [Text] -- ^ AccessModes contains the actual access modes the volume backing the PVC has. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1
  , k8siov1PersistentVolumeClaimStatusAllocatedResources :: Map.Map String K8sioapimachinerypkgapiresourceQuantity -- ^ The storage resource within AllocatedResources tracks the capacity allocated to a PVC. It may be larger than the actual capacity when a volume expansion operation is requested. For storage quota, the larger value from allocatedResources and PVC.spec.resources is used. If allocatedResources is not set, PVC.spec.resources alone is used for quota calculation. If a volume expansion capacity request is lowered, allocatedResources is only lowered if there are no expansion operations in progress and if the actual volume capacity is equal or lower than the requested capacity. This is an alpha field and requires enabling RecoverVolumeExpansionFailure feature.
  , k8siov1PersistentVolumeClaimStatusCapacity :: Map.Map String K8sioapimachinerypkgapiresourceQuantity -- ^ Represents the actual resources of the underlying volume.
  , k8siov1PersistentVolumeClaimStatusConditions :: [K8siov1PersistentVolumeClaimCondition] -- ^ Current Condition of persistent volume claim. If underlying persistent volume is being resized then the Condition will be set to 'ResizeStarted'.
  , k8siov1PersistentVolumeClaimStatusPhase :: Text -- ^ Phase represents the current phase of PersistentVolumeClaim.  Possible enum values:  - `\"Bound\"` used for PersistentVolumeClaims that are bound  - `\"Lost\"` used for PersistentVolumeClaims that lost their underlying PersistentVolume. The claim was bound to a PersistentVolume and this volume does not exist any longer and all data on it was lost.  - `\"Pending\"` used for PersistentVolumeClaims that are not yet bound
  , k8siov1PersistentVolumeClaimStatusResizeStatus :: Text -- ^ ResizeStatus stores status of resize operation. ResizeStatus is not set by default but when expansion is complete resizeStatus is set to empty string by resize controller or kubelet. This is an alpha field and requires enabling RecoverVolumeExpansionFailure feature.
  } deriving (Show, Eq, Generic)

instance FromJSON K8siov1PersistentVolumeClaimStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "k8siov1PersistentVolumeClaimStatus")
instance ToJSON K8siov1PersistentVolumeClaimStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "k8siov1PersistentVolumeClaimStatus")

-- | PersistentVolumeClaimVolumeSource references the user&#39;s PVC in the same namespace. This volume finds the bound PV and mounts that volume for the pod. A PersistentVolumeClaimVolumeSource is, essentially, a wrapper around another type of volume that is owned by someone else (the system).
data K8siov1PersistentVolumeClaimVolumeSource = K8siov1PersistentVolumeClaimVolumeSource
  { k8siov1PersistentVolumeClaimVolumeSourceClaimName :: Text -- ^ ClaimName is the name of a PersistentVolumeClaim in the same namespace as the pod using this volume. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims
  , k8siov1PersistentVolumeClaimVolumeSourceReadOnly :: Bool -- ^ Will force the ReadOnly setting in VolumeMounts. Default false.
  } deriving (Show, Eq, Generic)

instance FromJSON K8siov1PersistentVolumeClaimVolumeSource where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "k8siov1PersistentVolumeClaimVolumeSource")
instance ToJSON K8siov1PersistentVolumeClaimVolumeSource where
  toJSON = genericToJSON (removeFieldLabelPrefix False "k8siov1PersistentVolumeClaimVolumeSource")

-- | Pod affinity is a group of inter pod affinity scheduling rules.
data K8siov1PodAffinity = K8siov1PodAffinity
  { k8siov1PodAffinityPreferredDuringSchedulingIgnoredDuringExecution :: [K8siov1WeightedPodAffinityTerm] -- ^ The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred.
  , k8siov1PodAffinityRequiredDuringSchedulingIgnoredDuringExecution :: [K8siov1PodAffinityTerm] -- ^ If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied.
  } deriving (Show, Eq, Generic)

instance FromJSON K8siov1PodAffinity where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "k8siov1PodAffinity")
instance ToJSON K8siov1PodAffinity where
  toJSON = genericToJSON (removeFieldLabelPrefix False "k8siov1PodAffinity")

-- | Defines a set of pods (namely those matching the labelSelector relative to the given namespace(s)) that this pod should be co-located (affinity) or not co-located (anti-affinity) with, where co-located is defined as running on a node whose value of the label with key &lt;topologyKey&gt; matches that of any node on which a pod of the set of pods is running
data K8siov1PodAffinityTerm = K8siov1PodAffinityTerm
  { k8siov1PodAffinityTermLabelSelector :: K8siov1LabelSelector -- ^ A label query over a set of resources, in this case pods.
  , k8siov1PodAffinityTermNamespaceSelector :: K8siov1LabelSelector -- ^ A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means \"this pod's namespace\". An empty selector ({}) matches all namespaces. This field is beta-level and is only honored when PodAffinityNamespaceSelector feature is enabled.
  , k8siov1PodAffinityTermNamespaces :: [Text] -- ^ namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\"
  , k8siov1PodAffinityTermTopologyKey :: Text -- ^ This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.
  } deriving (Show, Eq, Generic)

instance FromJSON K8siov1PodAffinityTerm where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "k8siov1PodAffinityTerm")
instance ToJSON K8siov1PodAffinityTerm where
  toJSON = genericToJSON (removeFieldLabelPrefix False "k8siov1PodAffinityTerm")

-- | Pod anti affinity is a group of inter pod anti affinity scheduling rules.
data K8siov1PodAntiAffinity = K8siov1PodAntiAffinity
  { k8siov1PodAntiAffinityPreferredDuringSchedulingIgnoredDuringExecution :: [K8siov1WeightedPodAffinityTerm] -- ^ The scheduler will prefer to schedule pods to nodes that satisfy the anti-affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling anti-affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred.
  , k8siov1PodAntiAffinityRequiredDuringSchedulingIgnoredDuringExecution :: [K8siov1PodAffinityTerm] -- ^ If the anti-affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the anti-affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied.
  } deriving (Show, Eq, Generic)

instance FromJSON K8siov1PodAntiAffinity where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "k8siov1PodAntiAffinity")
instance ToJSON K8siov1PodAntiAffinity where
  toJSON = genericToJSON (removeFieldLabelPrefix False "k8siov1PodAntiAffinity")

-- | PodDNSConfig defines the DNS parameters of a pod in addition to those generated from DNSPolicy.
data K8siov1PodDNSConfig = K8siov1PodDNSConfig
  { k8siov1PodDNSConfigNameservers :: [Text] -- ^ A list of DNS name server IP addresses. This will be appended to the base nameservers generated from DNSPolicy. Duplicated nameservers will be removed.
  , k8siov1PodDNSConfigOptions :: [K8siov1PodDNSConfigOption] -- ^ A list of DNS resolver options. This will be merged with the base options generated from DNSPolicy. Duplicated entries will be removed. Resolution options given in Options will override those that appear in the base DNSPolicy.
  , k8siov1PodDNSConfigSearches :: [Text] -- ^ A list of DNS search domains for host-name lookup. This will be appended to the base search paths generated from DNSPolicy. Duplicated search paths will be removed.
  } deriving (Show, Eq, Generic)

instance FromJSON K8siov1PodDNSConfig where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "k8siov1PodDNSConfig")
instance ToJSON K8siov1PodDNSConfig where
  toJSON = genericToJSON (removeFieldLabelPrefix False "k8siov1PodDNSConfig")

-- | PodDNSConfigOption defines DNS resolver options of a pod.
data K8siov1PodDNSConfigOption = K8siov1PodDNSConfigOption
  { k8siov1PodDNSConfigOptionName :: Text -- ^ Required.
  , k8siov1PodDNSConfigOptionValue :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON K8siov1PodDNSConfigOption where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "k8siov1PodDNSConfigOption")
instance ToJSON K8siov1PodDNSConfigOption where
  toJSON = genericToJSON (removeFieldLabelPrefix False "k8siov1PodDNSConfigOption")

-- | Preconditions must be fulfilled before an operation (update, delete, etc.) is carried out.
data K8siov1Preconditions = K8siov1Preconditions
  { k8siov1PreconditionsResourceVersion :: Text -- ^ Specifies the target ResourceVersion
  , k8siov1PreconditionsUid :: Text -- ^ Specifies the target UID.
  } deriving (Show, Eq, Generic)

instance FromJSON K8siov1Preconditions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "k8siov1Preconditions")
instance ToJSON K8siov1Preconditions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "k8siov1Preconditions")

-- | An empty preferred scheduling term matches all objects with implicit weight 0 (i.e. it&#39;s a no-op). A null preferred scheduling term matches no objects (i.e. is also a no-op).
data K8siov1PreferredSchedulingTerm = K8siov1PreferredSchedulingTerm
  { k8siov1PreferredSchedulingTermPreference :: K8siov1NodeSelectorTerm -- ^ A node selector term, associated with the corresponding weight.
  , k8siov1PreferredSchedulingTermWeight :: Int -- ^ Weight associated with matching the corresponding nodeSelectorTerm, in the range 1-100.
  } deriving (Show, Eq, Generic)

instance FromJSON K8siov1PreferredSchedulingTerm where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "k8siov1PreferredSchedulingTerm")
instance ToJSON K8siov1PreferredSchedulingTerm where
  toJSON = genericToJSON (removeFieldLabelPrefix False "k8siov1PreferredSchedulingTerm")

-- | ResourceFieldSelector represents container resources (cpu, memory) and their output format
data K8siov1ResourceFieldSelector = K8siov1ResourceFieldSelector
  { k8siov1ResourceFieldSelectorContainerName :: Text -- ^ Container name: required for volumes, optional for env vars
  , k8siov1ResourceFieldSelectorDivisor :: K8sioapimachinerypkgapiresourceQuantity -- ^ Specifies the output format of the exposed resources, defaults to \"1\"
  , k8siov1ResourceFieldSelectorResource :: Text -- ^ Required: resource to select
  } deriving (Show, Eq, Generic)

instance FromJSON K8siov1ResourceFieldSelector where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "k8siov1ResourceFieldSelector")
instance ToJSON K8siov1ResourceFieldSelector where
  toJSON = genericToJSON (removeFieldLabelPrefix False "k8siov1ResourceFieldSelector")

-- | ResourceRequirements describes the compute resource requirements.
data K8siov1ResourceRequirements = K8siov1ResourceRequirements
  { k8siov1ResourceRequirementsLimits :: Map.Map String K8sioapimachinerypkgapiresourceQuantity -- ^ Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
  , k8siov1ResourceRequirementsRequests :: Map.Map String K8sioapimachinerypkgapiresourceQuantity -- ^ Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
  } deriving (Show, Eq, Generic)

instance FromJSON K8siov1ResourceRequirements where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "k8siov1ResourceRequirements")
instance ToJSON K8siov1ResourceRequirements where
  toJSON = genericToJSON (removeFieldLabelPrefix False "k8siov1ResourceRequirements")

-- | Status is a return value for calls that don&#39;t return other objects.
data K8siov1Status = K8siov1Status
  { k8siov1StatusApiVersion :: Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  , k8siov1StatusCode :: Int -- ^ Suggested HTTP return code for this status, 0 if not set.
  , k8siov1StatusDetails :: K8siov1StatusDetails -- ^ Extended data associated with the reason.  Each reason may define its own extended details. This field is optional and the data returned is not guaranteed to conform to any schema except that defined by the reason type.
  , k8siov1StatusKind :: Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  , k8siov1StatusMessage :: Text -- ^ A human-readable description of the status of this operation.
  , k8siov1StatusMetadata :: K8siov1ListMeta -- ^ Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  , k8siov1StatusReason :: Text -- ^ A machine-readable description of why this operation is in the \"Failure\" status. If this value is empty there is no information available. A Reason clarifies an HTTP status code but does not override it.
  , k8siov1StatusStatus :: Text -- ^ Status of the operation. One of: \"Success\" or \"Failure\". More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  } deriving (Show, Eq, Generic)

instance FromJSON K8siov1Status where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "k8siov1Status")
instance ToJSON K8siov1Status where
  toJSON = genericToJSON (removeFieldLabelPrefix False "k8siov1Status")

-- | StatusCause provides more information about an api.Status failure, including cases when multiple errors are encountered.
data K8siov1StatusCause = K8siov1StatusCause
  { k8siov1StatusCauseField :: Text -- ^ The field of the resource that has caused this error, as named by its JSON serialization. May include dot and postfix notation for nested attributes. Arrays are zero-indexed.  Fields may appear more than once in an array of causes due to fields having multiple errors. Optional.  Examples:   \"name\" - the field \"name\" on the current resource   \"items[0].name\" - the field \"name\" on the first array entry in \"items\"
  , k8siov1StatusCauseMessage :: Text -- ^ A human-readable description of the cause of the error.  This field may be presented as-is to a reader.
  , k8siov1StatusCauseReason :: Text -- ^ A machine-readable description of the cause of the error. If this value is empty there is no information available.
  } deriving (Show, Eq, Generic)

instance FromJSON K8siov1StatusCause where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "k8siov1StatusCause")
instance ToJSON K8siov1StatusCause where
  toJSON = genericToJSON (removeFieldLabelPrefix False "k8siov1StatusCause")

-- | StatusDetails is a set of additional properties that MAY be set by the server to provide additional information about a response. The Reason field of a Status object defines what attributes will be set. Clients must ignore fields that do not match the defined type of each attribute, and should assume that any attribute may be empty, invalid, or under defined.
data K8siov1StatusDetails = K8siov1StatusDetails
  { k8siov1StatusDetailsCauses :: [K8siov1StatusCause] -- ^ The Causes array includes more details associated with the StatusReason failure. Not all StatusReasons may provide detailed causes.
  , k8siov1StatusDetailsGroup :: Text -- ^ The group attribute of the resource associated with the status StatusReason.
  , k8siov1StatusDetailsKind :: Text -- ^ The kind attribute of the resource associated with the status StatusReason. On some operations may differ from the requested resource Kind. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  , k8siov1StatusDetailsName :: Text -- ^ The name attribute of the resource associated with the status StatusReason (when there is a single name which can be described).
  , k8siov1StatusDetailsRetryAfterSeconds :: Int -- ^ If specified, the time in seconds before the operation should be retried. Some errors may indicate the client must take an alternate action - for those errors this field may indicate how long to wait before taking the alternate action.
  , k8siov1StatusDetailsUid :: Text -- ^ UID of the resource. (when there is a single resource which can be described). More info: http://kubernetes.io/docs/user-guide/identifiers#uids
  } deriving (Show, Eq, Generic)

instance FromJSON K8siov1StatusDetails where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "k8siov1StatusDetails")
instance ToJSON K8siov1StatusDetails where
  toJSON = genericToJSON (removeFieldLabelPrefix False "k8siov1StatusDetails")

-- | TCPSocketAction describes an action based on opening a socket
data K8siov1TCPSocketAction = K8siov1TCPSocketAction
  { k8siov1TCPSocketActionHost :: Text -- ^ Optional: Host name to connect to, defaults to the pod IP.
  , k8siov1TCPSocketActionPort :: K8sioapimachinerypkgutilintstrIntOrString -- ^ Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME.
  } deriving (Show, Eq, Generic)

instance FromJSON K8siov1TCPSocketAction where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "k8siov1TCPSocketAction")
instance ToJSON K8siov1TCPSocketAction where
  toJSON = genericToJSON (removeFieldLabelPrefix False "k8siov1TCPSocketAction")

-- | Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
newtype K8siov1Time = K8siov1Time Text deriving (Show, Eq, FromJSON, ToJSON, Generic)

-- | The pod this Toleration is attached to tolerates any taint that matches the triple &lt;key,value,effect&gt; using the matching operator &lt;operator&gt;.
data K8siov1Toleration = K8siov1Toleration
  { k8siov1TolerationEffect :: Text -- ^ Effect indicates the taint effect to match. Empty means match all taint effects. When specified, allowed values are NoSchedule, PreferNoSchedule and NoExecute.  Possible enum values:  - `\"NoExecute\"` Evict any already-running pods that do not tolerate the taint. Currently enforced by NodeController.  - `\"NoSchedule\"` Do not allow new pods to schedule onto the node unless they tolerate the taint, but allow all pods submitted to Kubelet without going through the scheduler to start, and allow all already-running pods to continue running. Enforced by the scheduler.  - `\"PreferNoSchedule\"` Like TaintEffectNoSchedule, but the scheduler tries not to schedule new pods onto the node, rather than prohibiting new pods from scheduling onto the node entirely. Enforced by the scheduler.
  , k8siov1TolerationKey :: Text -- ^ Key is the taint key that the toleration applies to. Empty means match all taint keys. If the key is empty, operator must be Exists; this combination means to match all values and all keys.
  , k8siov1TolerationOperator :: Text -- ^ Operator represents a key's relationship to the value. Valid operators are Exists and Equal. Defaults to Equal. Exists is equivalent to wildcard for value, so that a pod can tolerate all taints of a particular category.  Possible enum values:  - `\"Equal\"`  - `\"Exists\"`
  , k8siov1TolerationTolerationSeconds :: Integer -- ^ TolerationSeconds represents the period of time the toleration (which must be of effect NoExecute, otherwise this field is ignored) tolerates the taint. By default, it is not set, which means tolerate the taint forever (do not evict). Zero and negative values will be treated as 0 (evict immediately) by the system.
  , k8siov1TolerationValue :: Text -- ^ Value is the taint value the toleration matches to. If the operator is Exists, the value should be empty, otherwise just a regular string.
  } deriving (Show, Eq, Generic)

instance FromJSON K8siov1Toleration where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "k8siov1Toleration")
instance ToJSON K8siov1Toleration where
  toJSON = genericToJSON (removeFieldLabelPrefix False "k8siov1Toleration")

-- | TypedLocalObjectReference contains enough information to let you locate the typed referenced object inside the same namespace.
data K8siov1TypedLocalObjectReference = K8siov1TypedLocalObjectReference
  { k8siov1TypedLocalObjectReferenceApiGroup :: Text -- ^ APIGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required.
  , k8siov1TypedLocalObjectReferenceKind :: Text -- ^ Kind is the type of resource being referenced
  , k8siov1TypedLocalObjectReferenceName :: Text -- ^ Name is the name of resource being referenced
  } deriving (Show, Eq, Generic)

instance FromJSON K8siov1TypedLocalObjectReference where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "k8siov1TypedLocalObjectReference")
instance ToJSON K8siov1TypedLocalObjectReference where
  toJSON = genericToJSON (removeFieldLabelPrefix False "k8siov1TypedLocalObjectReference")

-- | The weights of all of the matched WeightedPodAffinityTerm fields are added per-node to find the most preferred node(s)
data K8siov1WeightedPodAffinityTerm = K8siov1WeightedPodAffinityTerm
  { k8siov1WeightedPodAffinityTermPodAffinityTerm :: K8siov1PodAffinityTerm -- ^ Required. A pod affinity term, associated with the corresponding weight.
  , k8siov1WeightedPodAffinityTermWeight :: Int -- ^ weight associated with matching the corresponding podAffinityTerm, in the range 1-100.
  } deriving (Show, Eq, Generic)

instance FromJSON K8siov1WeightedPodAffinityTerm where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "k8siov1WeightedPodAffinityTerm")
instance ToJSON K8siov1WeightedPodAffinityTerm where
  toJSON = genericToJSON (removeFieldLabelPrefix False "k8siov1WeightedPodAffinityTerm")

-- | AccessCredential represents a credential source that can be used to authorize remote access to the vm guest Only one of its members may be specified.
data Kubevirtioapicorev1AccessCredential = Kubevirtioapicorev1AccessCredential
  { kubevirtioapicorev1AccessCredentialSshPublicKey :: Kubevirtioapicorev1SSHPublicKeyAccessCredential -- ^ SSHPublicKey represents the source and method of applying a ssh public key into a guest virtual machine.
  , kubevirtioapicorev1AccessCredentialUserPassword :: Kubevirtioapicorev1UserPasswordAccessCredential -- ^ UserPassword represents the source and method for applying a guest user's password
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1AccessCredential where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1AccessCredential")
instance ToJSON Kubevirtioapicorev1AccessCredential where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1AccessCredential")

-- | 
data Kubevirtioapicorev1AccessCredentialSecretSource = Kubevirtioapicorev1AccessCredentialSecretSource
  { kubevirtioapicorev1AccessCredentialSecretSourceSecretName :: Text -- ^ SecretName represents the name of the secret in the VMI's namespace
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1AccessCredentialSecretSource where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1AccessCredentialSecretSource")
instance ToJSON Kubevirtioapicorev1AccessCredentialSecretSource where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1AccessCredentialSecretSource")

-- | AddVolumeOptions is provided when dynamically hot plugging a volume and disk
data Kubevirtioapicorev1AddVolumeOptions = Kubevirtioapicorev1AddVolumeOptions
  { kubevirtioapicorev1AddVolumeOptionsDisk :: Kubevirtioapicorev1Disk -- ^ Disk represents the hotplug disk that will be plugged into the running VMI
  , kubevirtioapicorev1AddVolumeOptionsDryRun :: [Text] -- ^ When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  , kubevirtioapicorev1AddVolumeOptionsName :: Text -- ^ Name represents the name that will be used to map the disk to the corresponding volume. This overrides any name set inside the Disk struct itself.
  , kubevirtioapicorev1AddVolumeOptionsVolumeSource :: Kubevirtioapicorev1HotplugVolumeSource -- ^ VolumeSource represents the source of the volume to map to the disk.
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1AddVolumeOptions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1AddVolumeOptions")
instance ToJSON Kubevirtioapicorev1AddVolumeOptions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1AddVolumeOptions")

-- | If set (default), BIOS will be used.
data Kubevirtioapicorev1BIOS = Kubevirtioapicorev1BIOS
  { kubevirtioapicorev1BIOSUseSerial :: Bool -- ^ If set, the BIOS output will be transmitted over serial
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1BIOS where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1BIOS")
instance ToJSON Kubevirtioapicorev1BIOS where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1BIOS")

-- | BlockSize provides the option to change the block size presented to the VM for a disk. Only one of its members may be specified.
data Kubevirtioapicorev1BlockSize = Kubevirtioapicorev1BlockSize
  { kubevirtioapicorev1BlockSizeCustom :: Kubevirtioapicorev1CustomBlockSize -- ^ 
  , kubevirtioapicorev1BlockSizeMatchVolume :: Kubevirtioapicorev1FeatureState -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1BlockSize where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1BlockSize")
instance ToJSON Kubevirtioapicorev1BlockSize where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1BlockSize")

-- | Represents the firmware blob used to assist in the domain creation process. Used for setting the QEMU BIOS file path for the libvirt domain.
data Kubevirtioapicorev1Bootloader = Kubevirtioapicorev1Bootloader
  { kubevirtioapicorev1BootloaderBios :: Kubevirtioapicorev1BIOS -- ^ If set (default), BIOS will be used.
  , kubevirtioapicorev1BootloaderEfi :: Kubevirtioapicorev1EFI -- ^ If set, EFI will be used instead of BIOS.
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1Bootloader where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1Bootloader")
instance ToJSON Kubevirtioapicorev1Bootloader where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1Bootloader")

-- | 
data Kubevirtioapicorev1CDRomTarget = Kubevirtioapicorev1CDRomTarget
  { kubevirtioapicorev1CDRomTargetBus :: Text -- ^ Bus indicates the type of disk device to emulate. supported values: virtio, sata, scsi.
  , kubevirtioapicorev1CDRomTargetReadonly :: Bool -- ^ ReadOnly. Defaults to true.
  , kubevirtioapicorev1CDRomTargetTray :: Text -- ^ Tray indicates if the tray of the device is open or closed. Allowed values are \"open\" and \"closed\". Defaults to closed.
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1CDRomTarget where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1CDRomTarget")
instance ToJSON Kubevirtioapicorev1CDRomTarget where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1CDRomTarget")

-- | CPU allows specifying the CPU topology.
data Kubevirtioapicorev1CPU = Kubevirtioapicorev1CPU
  { kubevirtioapicorev1CPUCores :: Integer -- ^ Cores specifies the number of cores inside the vmi. Must be a value greater or equal 1.
  , kubevirtioapicorev1CPUDedicatedCpuPlacement :: Bool -- ^ DedicatedCPUPlacement requests the scheduler to place the VirtualMachineInstance on a node with enough dedicated pCPUs and pin the vCPUs to it.
  , kubevirtioapicorev1CPUFeatures :: [Kubevirtioapicorev1CPUFeature] -- ^ Features specifies the CPU features list inside the VMI.
  , kubevirtioapicorev1CPUIsolateEmulatorThread :: Bool -- ^ IsolateEmulatorThread requests one more dedicated pCPU to be allocated for the VMI to place the emulator thread on it.
  , kubevirtioapicorev1CPUModel :: Text -- ^ Model specifies the CPU model inside the VMI. List of available models https://github.com/libvirt/libvirt/tree/master/src/cpu_map. It is possible to specify special cases like \"host-passthrough\" to get the same CPU as the node and \"host-model\" to get CPU closest to the node one. Defaults to host-model.
  , kubevirtioapicorev1CPUNuma :: Kubevirtioapicorev1NUMA -- ^ NUMA allows specifying settings for the guest NUMA topology
  , kubevirtioapicorev1CPURealtime :: Kubevirtioapicorev1Realtime -- ^ Realtime instructs the virt-launcher to tune the VMI for lower latency, optional for real time workloads
  , kubevirtioapicorev1CPUSockets :: Integer -- ^ Sockets specifies the number of sockets inside the vmi. Must be a value greater or equal 1.
  , kubevirtioapicorev1CPUThreads :: Integer -- ^ Threads specifies the number of threads inside the vmi. Must be a value greater or equal 1.
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1CPU where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1CPU")
instance ToJSON Kubevirtioapicorev1CPU where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1CPU")

-- | CPUFeature allows specifying a CPU feature.
data Kubevirtioapicorev1CPUFeature = Kubevirtioapicorev1CPUFeature
  { kubevirtioapicorev1CPUFeatureName :: Text -- ^ Name of the CPU feature
  , kubevirtioapicorev1CPUFeaturePolicy :: Text -- ^ Policy is the CPU feature attribute which can have the following attributes: force    - The virtual CPU will claim the feature is supported regardless of it being supported by host CPU. require  - Guest creation will fail unless the feature is supported by the host CPU or the hypervisor is able to emulate it. optional - The feature will be supported by virtual CPU if and only if it is supported by host CPU. disable  - The feature will not be supported by virtual CPU. forbid   - Guest creation will fail if the feature is supported by host CPU. Defaults to require
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1CPUFeature where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1CPUFeature")
instance ToJSON Kubevirtioapicorev1CPUFeature where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1CPUFeature")

-- | Chassis specifies the chassis info passed to the domain.
data Kubevirtioapicorev1Chassis = Kubevirtioapicorev1Chassis
  { kubevirtioapicorev1ChassisAsset :: Text -- ^ 
  , kubevirtioapicorev1ChassisManufacturer :: Text -- ^ 
  , kubevirtioapicorev1ChassisSerial :: Text -- ^ 
  , kubevirtioapicorev1ChassisSku :: Text -- ^ 
  , kubevirtioapicorev1ChassisVersion :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1Chassis where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1Chassis")
instance ToJSON Kubevirtioapicorev1Chassis where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1Chassis")

-- | Represent a subset of client devices that can be accessed by VMI. At the moment only, USB devices using Usbredir&#39;s library and tooling. Another fit would be a smartcard with libcacard.  The struct is currently empty as there is no immediate request for user-facing APIs. This structure simply turns on USB redirection of UsbClientPassthroughMaxNumberOf devices.
data Kubevirtioapicorev1ClientPassthroughDevices = Kubevirtioapicorev1ClientPassthroughDevices
  { 
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1ClientPassthroughDevices where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1ClientPassthroughDevices")
instance ToJSON Kubevirtioapicorev1ClientPassthroughDevices where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1ClientPassthroughDevices")

-- | Represents the clock and timers of a vmi.
data Kubevirtioapicorev1Clock = Kubevirtioapicorev1Clock
  { kubevirtioapicorev1ClockTimer :: Kubevirtioapicorev1Timer -- ^ Timer specifies whih timers are attached to the vmi.
  , kubevirtioapicorev1ClockTimezone :: Text -- ^ Timezone sets the guest clock to the specified timezone. Zone name follows the TZ environment variable format (e.g. 'America/New_York').
  , kubevirtioapicorev1ClockUtc :: Kubevirtioapicorev1ClockOffsetUTC -- ^ UTC sets the guest clock to UTC on each boot. If an offset is specified, guest changes to the clock will be kept during reboots and are not reset.
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1Clock where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1Clock")
instance ToJSON Kubevirtioapicorev1Clock where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1Clock")

-- | UTC sets the guest clock to UTC on each boot.
data Kubevirtioapicorev1ClockOffsetUTC = Kubevirtioapicorev1ClockOffsetUTC
  { kubevirtioapicorev1ClockOffsetUTCOffsetSeconds :: Int -- ^ OffsetSeconds specifies an offset in seconds, relative to UTC. If set, guest changes to the clock will be kept during reboots and not reset.
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1ClockOffsetUTC where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1ClockOffsetUTC")
instance ToJSON Kubevirtioapicorev1ClockOffsetUTC where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1ClockOffsetUTC")

-- | Represents a cloud-init config drive user data source. More info: https://cloudinit.readthedocs.io/en/latest/topics/datasources/configdrive.html
data Kubevirtioapicorev1CloudInitConfigDriveSource = Kubevirtioapicorev1CloudInitConfigDriveSource
  { kubevirtioapicorev1CloudInitConfigDriveSourceNetworkData :: Text -- ^ NetworkData contains config drive inline cloud-init networkdata.
  , kubevirtioapicorev1CloudInitConfigDriveSourceNetworkDataBase64 :: Text -- ^ NetworkDataBase64 contains config drive cloud-init networkdata as a base64 encoded string.
  , kubevirtioapicorev1CloudInitConfigDriveSourceNetworkDataSecretRef :: K8siov1LocalObjectReference -- ^ NetworkDataSecretRef references a k8s secret that contains config drive networkdata.
  , kubevirtioapicorev1CloudInitConfigDriveSourceSecretRef :: K8siov1LocalObjectReference -- ^ UserDataSecretRef references a k8s secret that contains config drive userdata.
  , kubevirtioapicorev1CloudInitConfigDriveSourceUserData :: Text -- ^ UserData contains config drive inline cloud-init userdata.
  , kubevirtioapicorev1CloudInitConfigDriveSourceUserDataBase64 :: Text -- ^ UserDataBase64 contains config drive cloud-init userdata as a base64 encoded string.
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1CloudInitConfigDriveSource where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1CloudInitConfigDriveSource")
instance ToJSON Kubevirtioapicorev1CloudInitConfigDriveSource where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1CloudInitConfigDriveSource")

-- | Represents a cloud-init nocloud user data source. More info: http://cloudinit.readthedocs.io/en/latest/topics/datasources/nocloud.html
data Kubevirtioapicorev1CloudInitNoCloudSource = Kubevirtioapicorev1CloudInitNoCloudSource
  { kubevirtioapicorev1CloudInitNoCloudSourceNetworkData :: Text -- ^ NetworkData contains NoCloud inline cloud-init networkdata.
  , kubevirtioapicorev1CloudInitNoCloudSourceNetworkDataBase64 :: Text -- ^ NetworkDataBase64 contains NoCloud cloud-init networkdata as a base64 encoded string.
  , kubevirtioapicorev1CloudInitNoCloudSourceNetworkDataSecretRef :: K8siov1LocalObjectReference -- ^ NetworkDataSecretRef references a k8s secret that contains NoCloud networkdata.
  , kubevirtioapicorev1CloudInitNoCloudSourceSecretRef :: K8siov1LocalObjectReference -- ^ UserDataSecretRef references a k8s secret that contains NoCloud userdata.
  , kubevirtioapicorev1CloudInitNoCloudSourceUserData :: Text -- ^ UserData contains NoCloud inline cloud-init userdata.
  , kubevirtioapicorev1CloudInitNoCloudSourceUserDataBase64 :: Text -- ^ UserDataBase64 contains NoCloud cloud-init userdata as a base64 encoded string.
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1CloudInitNoCloudSource where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1CloudInitNoCloudSource")
instance ToJSON Kubevirtioapicorev1CloudInitNoCloudSource where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1CloudInitNoCloudSource")

-- | 
data Kubevirtioapicorev1ConfigDriveSSHPublicKeyAccessCredentialPropagation = Kubevirtioapicorev1ConfigDriveSSHPublicKeyAccessCredentialPropagation
  { 
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1ConfigDriveSSHPublicKeyAccessCredentialPropagation where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1ConfigDriveSSHPublicKeyAccessCredentialPropagation")
instance ToJSON Kubevirtioapicorev1ConfigDriveSSHPublicKeyAccessCredentialPropagation where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1ConfigDriveSSHPublicKeyAccessCredentialPropagation")

-- | ConfigMapVolumeSource adapts a ConfigMap into a volume. More info: https://kubernetes.io/docs/concepts/storage/volumes/#configmap
data Kubevirtioapicorev1ConfigMapVolumeSource = Kubevirtioapicorev1ConfigMapVolumeSource
  { kubevirtioapicorev1ConfigMapVolumeSourceName :: Text -- ^ Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  , kubevirtioapicorev1ConfigMapVolumeSourceOptional :: Bool -- ^ Specify whether the ConfigMap or it's keys must be defined
  , kubevirtioapicorev1ConfigMapVolumeSourceVolumeLabel :: Text -- ^ The volume label of the resulting disk inside the VMI. Different bootstrapping mechanisms require different values. Typical values are \"cidata\" (cloud-init), \"config-2\" (cloud-init) or \"OEMDRV\" (kickstart).
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1ConfigMapVolumeSource where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1ConfigMapVolumeSource")
instance ToJSON Kubevirtioapicorev1ConfigMapVolumeSource where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1ConfigMapVolumeSource")

-- | Represents a docker image with an embedded disk.
data Kubevirtioapicorev1ContainerDiskSource = Kubevirtioapicorev1ContainerDiskSource
  { kubevirtioapicorev1ContainerDiskSourceImage :: Text -- ^ Image is the name of the image with the embedded disk.
  , kubevirtioapicorev1ContainerDiskSourceImagePullPolicy :: Text -- ^ Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise. Cannot be updated. More info: https://kubernetes.io/docs/concepts/containers/images#updating-images  Possible enum values:  - `\"Always\"` means that kubelet always attempts to pull the latest image. Container will fail If the pull fails.  - `\"IfNotPresent\"` means that kubelet pulls if the image isn't present on disk. Container will fail if the image isn't present and the pull fails.  - `\"Never\"` means that kubelet never pulls an image, but only uses a local image. Container will fail if the image isn't present
  , kubevirtioapicorev1ContainerDiskSourceImagePullSecret :: Text -- ^ ImagePullSecret is the name of the Docker registry secret required to pull the image. The secret must already exist.
  , kubevirtioapicorev1ContainerDiskSourcePath :: Text -- ^ Path defines the path to disk file in the container
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1ContainerDiskSource where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1ContainerDiskSource")
instance ToJSON Kubevirtioapicorev1ContainerDiskSource where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1ContainerDiskSource")

-- | CustomBlockSize represents the desired logical and physical block size for a VM disk.
data Kubevirtioapicorev1CustomBlockSize = Kubevirtioapicorev1CustomBlockSize
  { kubevirtioapicorev1CustomBlockSizeLogical :: Int -- ^ 
  , kubevirtioapicorev1CustomBlockSizePhysical :: Int -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1CustomBlockSize where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1CustomBlockSize")
instance ToJSON Kubevirtioapicorev1CustomBlockSize where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1CustomBlockSize")

-- | Extra DHCP options to use in the interface.
data Kubevirtioapicorev1DHCPOptions = Kubevirtioapicorev1DHCPOptions
  { kubevirtioapicorev1DHCPOptionsBootFileName :: Text -- ^ If specified will pass option 67 to interface's DHCP server
  , kubevirtioapicorev1DHCPOptionsNtpServers :: [Text] -- ^ If specified will pass the configured NTP server to the VM via DHCP option 042.
  , kubevirtioapicorev1DHCPOptionsPrivateOptions :: [Kubevirtioapicorev1DHCPPrivateOptions] -- ^ If specified will pass extra DHCP options for private use, range: 224-254
  , kubevirtioapicorev1DHCPOptionsTftpServerName :: Text -- ^ If specified will pass option 66 to interface's DHCP server
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1DHCPOptions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1DHCPOptions")
instance ToJSON Kubevirtioapicorev1DHCPOptions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1DHCPOptions")

-- | DHCPExtraOptions defines Extra DHCP options for a VM.
data Kubevirtioapicorev1DHCPPrivateOptions = Kubevirtioapicorev1DHCPPrivateOptions
  { kubevirtioapicorev1DHCPPrivateOptionsOption :: Int -- ^ Option is an Integer value from 224-254 Required.
  , kubevirtioapicorev1DHCPPrivateOptionsValue :: Text -- ^ Value is a String value for the Option provided Required.
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1DHCPPrivateOptions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1DHCPPrivateOptions")
instance ToJSON Kubevirtioapicorev1DHCPPrivateOptions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1DHCPPrivateOptions")

-- | 
data Kubevirtioapicorev1DataVolumeSource = Kubevirtioapicorev1DataVolumeSource
  { kubevirtioapicorev1DataVolumeSourceHotpluggable :: Bool -- ^ Hotpluggable indicates whether the volume can be hotplugged and hotunplugged.
  , kubevirtioapicorev1DataVolumeSourceName :: Text -- ^ Name represents the name of the DataVolume in the same namespace
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1DataVolumeSource where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1DataVolumeSource")
instance ToJSON Kubevirtioapicorev1DataVolumeSource where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1DataVolumeSource")

-- | 
data Kubevirtioapicorev1DataVolumeTemplateDummyStatus = Kubevirtioapicorev1DataVolumeTemplateDummyStatus
  { 
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1DataVolumeTemplateDummyStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1DataVolumeTemplateDummyStatus")
instance ToJSON Kubevirtioapicorev1DataVolumeTemplateDummyStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1DataVolumeTemplateDummyStatus")

-- | 
data Kubevirtioapicorev1DataVolumeTemplateSpec = Kubevirtioapicorev1DataVolumeTemplateSpec
  { kubevirtioapicorev1DataVolumeTemplateSpecApiVersion :: Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  , kubevirtioapicorev1DataVolumeTemplateSpecKind :: Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  , kubevirtioapicorev1DataVolumeTemplateSpecMetadata :: K8siov1ObjectMeta -- ^ 
  , kubevirtioapicorev1DataVolumeTemplateSpecSpec :: Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSpec -- ^ DataVolumeSpec contains the DataVolume specification.
  , kubevirtioapicorev1DataVolumeTemplateSpecStatus :: Kubevirtioapicorev1DataVolumeTemplateDummyStatus -- ^ DataVolumeTemplateDummyStatus is here simply for backwards compatibility with a previous API.
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1DataVolumeTemplateSpec where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1DataVolumeTemplateSpec")
instance ToJSON Kubevirtioapicorev1DataVolumeTemplateSpec where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1DataVolumeTemplateSpec")

-- | 
data Kubevirtioapicorev1Devices = Kubevirtioapicorev1Devices
  { kubevirtioapicorev1DevicesAutoattachGraphicsDevice :: Bool -- ^ Whether to attach the default graphics device or not. VNC will not be available if set to false. Defaults to true.
  , kubevirtioapicorev1DevicesAutoattachMemBalloon :: Bool -- ^ Whether to attach the Memory balloon device with default period. Period can be adjusted in virt-config. Defaults to true.
  , kubevirtioapicorev1DevicesAutoattachPodInterface :: Bool -- ^ Whether to attach a pod network interface. Defaults to true.
  , kubevirtioapicorev1DevicesAutoattachSerialConsole :: Bool -- ^ Whether to attach the default serial console or not. Serial console access will not be available if set to false. Defaults to true.
  , kubevirtioapicorev1DevicesBlockMultiQueue :: Bool -- ^ Whether or not to enable virtio multi-queue for block devices. Defaults to false.
  , kubevirtioapicorev1DevicesClientPassthrough :: Kubevirtioapicorev1ClientPassthroughDevices -- ^ To configure and access client devices such as redirecting USB
  , kubevirtioapicorev1DevicesDisableHotplug :: Bool -- ^ DisableHotplug disabled the ability to hotplug disks.
  , kubevirtioapicorev1DevicesDisks :: [Kubevirtioapicorev1Disk] -- ^ Disks describes disks, cdroms and luns which are connected to the vmi.
  , kubevirtioapicorev1DevicesFilesystems :: [Kubevirtioapicorev1Filesystem] -- ^ Filesystems describes filesystem which is connected to the vmi.
  , kubevirtioapicorev1DevicesGpus :: [Kubevirtioapicorev1GPU] -- ^ Whether to attach a GPU device to the vmi.
  , kubevirtioapicorev1DevicesHostDevices :: [Kubevirtioapicorev1HostDevice] -- ^ Whether to attach a host device to the vmi.
  , kubevirtioapicorev1DevicesInputs :: [Kubevirtioapicorev1Input] -- ^ Inputs describe input devices
  , kubevirtioapicorev1DevicesInterfaces :: [Kubevirtioapicorev1Interface] -- ^ Interfaces describe network interfaces which are added to the vmi.
  , kubevirtioapicorev1DevicesNetworkInterfaceMultiqueue :: Bool -- ^ If specified, virtual network interfaces configured with a virtio bus will also enable the vhost multiqueue feature for network devices. The number of queues created depends on additional factors of the VirtualMachineInstance, like the number of guest CPUs.
  , kubevirtioapicorev1DevicesRng :: Kubevirtioapicorev1Rng -- ^ Whether to have random number generator from host
  , kubevirtioapicorev1DevicesSound :: Kubevirtioapicorev1SoundDevice -- ^ Whether to emulate a sound device.
  , kubevirtioapicorev1DevicesTpm :: Kubevirtioapicorev1TPMDevice -- ^ Whether to emulate a TPM device.
  , kubevirtioapicorev1DevicesUseVirtioTransitional :: Bool -- ^ Fall back to legacy virtio 0.9 support if virtio bus is selected on devices. This is helpful for old machines like CentOS6 or RHEL6 which do not understand virtio_non_transitional (virtio 1.0).
  , kubevirtioapicorev1DevicesWatchdog :: Kubevirtioapicorev1Watchdog -- ^ Watchdog describes a watchdog device which can be added to the vmi.
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1Devices where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1Devices")
instance ToJSON Kubevirtioapicorev1Devices where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1Devices")

-- | 
data Kubevirtioapicorev1Disk = Kubevirtioapicorev1Disk
  { kubevirtioapicorev1DiskBlockSize :: Kubevirtioapicorev1BlockSize -- ^ If specified, the virtual disk will be presented with the given block sizes.
  , kubevirtioapicorev1DiskBootOrder :: Int -- ^ BootOrder is an integer value > 0, used to determine ordering of boot devices. Lower values take precedence. Each disk or interface that has a boot order must have a unique value. Disks without a boot order are not tried if a disk with a boot order exists.
  , kubevirtioapicorev1DiskCache :: Text -- ^ Cache specifies which kvm disk cache mode should be used. Supported values are: CacheNone, CacheWriteThrough.
  , kubevirtioapicorev1DiskCdrom :: Kubevirtioapicorev1CDRomTarget -- ^ Attach a volume as a cdrom to the vmi.
  , kubevirtioapicorev1DiskDedicatedIOThread :: Bool -- ^ dedicatedIOThread indicates this disk should have an exclusive IO Thread. Enabling this implies useIOThreads = true. Defaults to false.
  , kubevirtioapicorev1DiskDisk :: Kubevirtioapicorev1DiskTarget -- ^ Attach a volume as a disk to the vmi.
  , kubevirtioapicorev1DiskIo :: Text -- ^ IO specifies which QEMU disk IO mode should be used. Supported values are: native, default, threads.
  , kubevirtioapicorev1DiskLun :: Kubevirtioapicorev1LunTarget -- ^ Attach a volume as a LUN to the vmi.
  , kubevirtioapicorev1DiskName :: Text -- ^ Name is the device name
  , kubevirtioapicorev1DiskSerial :: Text -- ^ Serial provides the ability to specify a serial number for the disk device.
  , kubevirtioapicorev1DiskShareable :: Bool -- ^ If specified the disk is made sharable and multiple write from different VMs are permitted
  , kubevirtioapicorev1DiskTag :: Text -- ^ If specified, disk address and its tag will be provided to the guest via config drive metadata
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1Disk where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1Disk")
instance ToJSON Kubevirtioapicorev1Disk where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1Disk")

-- | 
data Kubevirtioapicorev1DiskTarget = Kubevirtioapicorev1DiskTarget
  { kubevirtioapicorev1DiskTargetBus :: Text -- ^ Bus indicates the type of disk device to emulate. supported values: virtio, sata, scsi.
  , kubevirtioapicorev1DiskTargetPciAddress :: Text -- ^ If specified, the virtual disk will be placed on the guests pci address with the specified PCI address. For example: 0000:81:01.10
  , kubevirtioapicorev1DiskTargetReadonly :: Bool -- ^ ReadOnly. Defaults to false.
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1DiskTarget where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1DiskTarget")
instance ToJSON Kubevirtioapicorev1DiskTarget where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1DiskTarget")

-- | 
data Kubevirtioapicorev1DomainSpec = Kubevirtioapicorev1DomainSpec
  { kubevirtioapicorev1DomainSpecChassis :: Kubevirtioapicorev1Chassis -- ^ Chassis specifies the chassis info passed to the domain.
  , kubevirtioapicorev1DomainSpecClock :: Kubevirtioapicorev1Clock -- ^ Clock sets the clock and timers of the vmi.
  , kubevirtioapicorev1DomainSpecCpu :: Kubevirtioapicorev1CPU -- ^ CPU allow specified the detailed CPU topology inside the vmi.
  , kubevirtioapicorev1DomainSpecDevices :: Kubevirtioapicorev1Devices -- ^ Devices allows adding disks, network interfaces, and others
  , kubevirtioapicorev1DomainSpecFeatures :: Kubevirtioapicorev1Features -- ^ Features like acpi, apic, hyperv, smm.
  , kubevirtioapicorev1DomainSpecFirmware :: Kubevirtioapicorev1Firmware -- ^ Firmware.
  , kubevirtioapicorev1DomainSpecIoThreadsPolicy :: Text -- ^ Controls whether or not disks will share IOThreads. Omitting IOThreadsPolicy disables use of IOThreads. One of: shared, auto
  , kubevirtioapicorev1DomainSpecLaunchSecurity :: Kubevirtioapicorev1LaunchSecurity -- ^ Launch Security setting of the vmi.
  , kubevirtioapicorev1DomainSpecMachine :: Kubevirtioapicorev1Machine -- ^ Machine type.
  , kubevirtioapicorev1DomainSpecMemory :: Kubevirtioapicorev1Memory -- ^ Memory allow specifying the VMI memory features.
  , kubevirtioapicorev1DomainSpecResources :: Kubevirtioapicorev1ResourceRequirements -- ^ Resources describes the Compute Resources required by this vmi.
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1DomainSpec where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1DomainSpec")
instance ToJSON Kubevirtioapicorev1DomainSpec where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1DomainSpec")

-- | DownwardAPIVolumeSource represents a volume containing downward API info.
data Kubevirtioapicorev1DownwardAPIVolumeSource = Kubevirtioapicorev1DownwardAPIVolumeSource
  { kubevirtioapicorev1DownwardAPIVolumeSourceFields :: [K8siov1DownwardAPIVolumeFile] -- ^ Fields is a list of downward API volume file
  , kubevirtioapicorev1DownwardAPIVolumeSourceVolumeLabel :: Text -- ^ The volume label of the resulting disk inside the VMI. Different bootstrapping mechanisms require different values. Typical values are \"cidata\" (cloud-init), \"config-2\" (cloud-init) or \"OEMDRV\" (kickstart).
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1DownwardAPIVolumeSource where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1DownwardAPIVolumeSource")
instance ToJSON Kubevirtioapicorev1DownwardAPIVolumeSource where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1DownwardAPIVolumeSource")

-- | DownwardMetricsVolumeSource adds a very small disk to VMIs which contains a limited view of host and guest metrics. The disk content is compatible with vhostmd (https://github.com/vhostmd/vhostmd) and vm-dump-metrics.
data Kubevirtioapicorev1DownwardMetricsVolumeSource = Kubevirtioapicorev1DownwardMetricsVolumeSource
  { 
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1DownwardMetricsVolumeSource where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1DownwardMetricsVolumeSource")
instance ToJSON Kubevirtioapicorev1DownwardMetricsVolumeSource where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1DownwardMetricsVolumeSource")

-- | If set, EFI will be used instead of BIOS.
data Kubevirtioapicorev1EFI = Kubevirtioapicorev1EFI
  { kubevirtioapicorev1EFISecureBoot :: Bool -- ^ If set, SecureBoot will be enabled and the OVMF roms will be swapped for SecureBoot-enabled ones. Requires SMM to be enabled. Defaults to true
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1EFI where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1EFI")
instance ToJSON Kubevirtioapicorev1EFI where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1EFI")

-- | EmptyDisk represents a temporary disk which shares the vmis lifecycle.
data Kubevirtioapicorev1EmptyDiskSource = Kubevirtioapicorev1EmptyDiskSource
  { kubevirtioapicorev1EmptyDiskSourceCapacity :: K8sioapimachinerypkgapiresourceQuantity -- ^ Capacity of the sparse disk.
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1EmptyDiskSource where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1EmptyDiskSource")
instance ToJSON Kubevirtioapicorev1EmptyDiskSource where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1EmptyDiskSource")

-- | 
data Kubevirtioapicorev1EphemeralVolumeSource = Kubevirtioapicorev1EphemeralVolumeSource
  { kubevirtioapicorev1EphemeralVolumeSourcePersistentVolumeClaim :: K8siov1PersistentVolumeClaimVolumeSource -- ^ PersistentVolumeClaimVolumeSource represents a reference to a PersistentVolumeClaim in the same namespace. Directly attached to the vmi via qemu. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1EphemeralVolumeSource where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1EphemeralVolumeSource")
instance ToJSON Kubevirtioapicorev1EphemeralVolumeSource where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1EphemeralVolumeSource")

-- | 
data Kubevirtioapicorev1FeatureAPIC = Kubevirtioapicorev1FeatureAPIC
  { kubevirtioapicorev1FeatureAPICEnabled :: Bool -- ^ Enabled determines if the feature should be enabled or disabled on the guest. Defaults to true.
  , kubevirtioapicorev1FeatureAPICEndOfInterrupt :: Bool -- ^ EndOfInterrupt enables the end of interrupt notification in the guest. Defaults to false.
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1FeatureAPIC where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1FeatureAPIC")
instance ToJSON Kubevirtioapicorev1FeatureAPIC where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1FeatureAPIC")

-- | Hyperv specific features.
data Kubevirtioapicorev1FeatureHyperv = Kubevirtioapicorev1FeatureHyperv
  { kubevirtioapicorev1FeatureHypervEvmcs :: Kubevirtioapicorev1FeatureState -- ^ EVMCS Speeds up L2 vmexits, but disables other virtualization features. Requires vapic. Defaults to the machine type setting.
  , kubevirtioapicorev1FeatureHypervFrequencies :: Kubevirtioapicorev1FeatureState -- ^ Frequencies improves the TSC clock source handling for Hyper-V on KVM. Defaults to the machine type setting.
  , kubevirtioapicorev1FeatureHypervIpi :: Kubevirtioapicorev1FeatureState -- ^ IPI improves performances in overcommited environments. Requires vpindex. Defaults to the machine type setting.
  , kubevirtioapicorev1FeatureHypervReenlightenment :: Kubevirtioapicorev1FeatureState -- ^ Reenlightenment enables the notifications on TSC frequency changes. Defaults to the machine type setting.
  , kubevirtioapicorev1FeatureHypervRelaxed :: Kubevirtioapicorev1FeatureState -- ^ Relaxed instructs the guest OS to disable watchdog timeouts. Defaults to the machine type setting.
  , kubevirtioapicorev1FeatureHypervReset :: Kubevirtioapicorev1FeatureState -- ^ Reset enables Hyperv reboot/reset for the vmi. Requires synic. Defaults to the machine type setting.
  , kubevirtioapicorev1FeatureHypervRuntime :: Kubevirtioapicorev1FeatureState -- ^ Runtime improves the time accounting to improve scheduling in the guest. Defaults to the machine type setting.
  , kubevirtioapicorev1FeatureHypervSpinlocks :: Kubevirtioapicorev1FeatureSpinlocks -- ^ Spinlocks allows to configure the spinlock retry attempts.
  , kubevirtioapicorev1FeatureHypervSynic :: Kubevirtioapicorev1FeatureState -- ^ SyNIC enables the Synthetic Interrupt Controller. Defaults to the machine type setting.
  , kubevirtioapicorev1FeatureHypervSynictimer :: Kubevirtioapicorev1SyNICTimer -- ^ SyNICTimer enables Synthetic Interrupt Controller Timers, reducing CPU load. Defaults to the machine type setting.
  , kubevirtioapicorev1FeatureHypervTlbflush :: Kubevirtioapicorev1FeatureState -- ^ TLBFlush improves performances in overcommited environments. Requires vpindex. Defaults to the machine type setting.
  , kubevirtioapicorev1FeatureHypervVapic :: Kubevirtioapicorev1FeatureState -- ^ VAPIC improves the paravirtualized handling of interrupts. Defaults to the machine type setting.
  , kubevirtioapicorev1FeatureHypervVendorid :: Kubevirtioapicorev1FeatureVendorID -- ^ VendorID allows setting the hypervisor vendor id. Defaults to the machine type setting.
  , kubevirtioapicorev1FeatureHypervVpindex :: Kubevirtioapicorev1FeatureState -- ^ VPIndex enables the Virtual Processor Index to help windows identifying virtual processors. Defaults to the machine type setting.
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1FeatureHyperv where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1FeatureHyperv")
instance ToJSON Kubevirtioapicorev1FeatureHyperv where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1FeatureHyperv")

-- | 
data Kubevirtioapicorev1FeatureKVM = Kubevirtioapicorev1FeatureKVM
  { kubevirtioapicorev1FeatureKVMHidden :: Bool -- ^ Hide the KVM hypervisor from standard MSR based discovery. Defaults to false
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1FeatureKVM where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1FeatureKVM")
instance ToJSON Kubevirtioapicorev1FeatureKVM where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1FeatureKVM")

-- | 
data Kubevirtioapicorev1FeatureSpinlocks = Kubevirtioapicorev1FeatureSpinlocks
  { kubevirtioapicorev1FeatureSpinlocksEnabled :: Bool -- ^ Enabled determines if the feature should be enabled or disabled on the guest. Defaults to true.
  , kubevirtioapicorev1FeatureSpinlocksSpinlocks :: Integer -- ^ Retries indicates the number of retries. Must be a value greater or equal 4096. Defaults to 4096.
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1FeatureSpinlocks where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1FeatureSpinlocks")
instance ToJSON Kubevirtioapicorev1FeatureSpinlocks where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1FeatureSpinlocks")

-- | Represents if a feature is enabled or disabled.
data Kubevirtioapicorev1FeatureState = Kubevirtioapicorev1FeatureState
  { kubevirtioapicorev1FeatureStateEnabled :: Bool -- ^ Enabled determines if the feature should be enabled or disabled on the guest. Defaults to true.
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1FeatureState where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1FeatureState")
instance ToJSON Kubevirtioapicorev1FeatureState where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1FeatureState")

-- | 
data Kubevirtioapicorev1FeatureVendorID = Kubevirtioapicorev1FeatureVendorID
  { kubevirtioapicorev1FeatureVendorIDEnabled :: Bool -- ^ Enabled determines if the feature should be enabled or disabled on the guest. Defaults to true.
  , kubevirtioapicorev1FeatureVendorIDVendorid :: Text -- ^ VendorID sets the hypervisor vendor id, visible to the vmi. String up to twelve characters.
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1FeatureVendorID where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1FeatureVendorID")
instance ToJSON Kubevirtioapicorev1FeatureVendorID where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1FeatureVendorID")

-- | 
data Kubevirtioapicorev1Features = Kubevirtioapicorev1Features
  { kubevirtioapicorev1FeaturesAcpi :: Kubevirtioapicorev1FeatureState -- ^ ACPI enables/disables ACPI inside the guest. Defaults to enabled.
  , kubevirtioapicorev1FeaturesApic :: Kubevirtioapicorev1FeatureAPIC -- ^ Defaults to the machine type setting.
  , kubevirtioapicorev1FeaturesHyperv :: Kubevirtioapicorev1FeatureHyperv -- ^ Defaults to the machine type setting.
  , kubevirtioapicorev1FeaturesKvm :: Kubevirtioapicorev1FeatureKVM -- ^ Configure how KVM presence is exposed to the guest.
  , kubevirtioapicorev1FeaturesPvspinlock :: Kubevirtioapicorev1FeatureState -- ^ Notify the guest that the host supports paravirtual spinlocks. For older kernels this feature should be explicitly disabled.
  , kubevirtioapicorev1FeaturesSmm :: Kubevirtioapicorev1FeatureState -- ^ SMM enables/disables System Management Mode. TSEG not yet implemented.
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1Features where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1Features")
instance ToJSON Kubevirtioapicorev1Features where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1Features")

-- | 
data Kubevirtioapicorev1Filesystem = Kubevirtioapicorev1Filesystem
  { kubevirtioapicorev1FilesystemName :: Text -- ^ Name is the device name
  , kubevirtioapicorev1FilesystemVirtiofs :: Kubevirtioapicorev1FilesystemVirtiofs -- ^ Virtiofs is supported
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1Filesystem where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1Filesystem")
instance ToJSON Kubevirtioapicorev1Filesystem where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1Filesystem")

-- | 
data Kubevirtioapicorev1FilesystemVirtiofs = Kubevirtioapicorev1FilesystemVirtiofs
  { 
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1FilesystemVirtiofs where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1FilesystemVirtiofs")
instance ToJSON Kubevirtioapicorev1FilesystemVirtiofs where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1FilesystemVirtiofs")

-- | 
data Kubevirtioapicorev1Firmware = Kubevirtioapicorev1Firmware
  { kubevirtioapicorev1FirmwareBootloader :: Kubevirtioapicorev1Bootloader -- ^ Settings to control the bootloader that is used.
  , kubevirtioapicorev1FirmwareKernelBoot :: Kubevirtioapicorev1KernelBoot -- ^ Settings to set the kernel for booting.
  , kubevirtioapicorev1FirmwareSerial :: Text -- ^ The system-serial-number in SMBIOS
  , kubevirtioapicorev1FirmwareUuid :: Text -- ^ UUID reported by the vmi bios. Defaults to a random generated uid.
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1Firmware where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1Firmware")
instance ToJSON Kubevirtioapicorev1Firmware where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1Firmware")

-- | FlavorMatcher references a flavor that is used to fill fields in the VMI template.
data Kubevirtioapicorev1FlavorMatcher = Kubevirtioapicorev1FlavorMatcher
  { kubevirtioapicorev1FlavorMatcherKind :: Text -- ^ Kind specifies which flavor resource is referenced. Allowed values are: \"VirtualMachineFlavor\" and \"VirtualMachineClusterFlavor\". If not specified, \"VirtualMachineClusterFlavor\" is used by default.
  , kubevirtioapicorev1FlavorMatcherName :: Text -- ^ Name is the name of the VirtualMachineFlavor or VirtualMachineClusterFlavor
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1FlavorMatcher where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1FlavorMatcher")
instance ToJSON Kubevirtioapicorev1FlavorMatcher where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1FlavorMatcher")

-- | 
data Kubevirtioapicorev1GPU = Kubevirtioapicorev1GPU
  { kubevirtioapicorev1GPUDeviceName :: Text -- ^ 
  , kubevirtioapicorev1GPUName :: Text -- ^ Name of the GPU device as exposed by a device plugin
  , kubevirtioapicorev1GPUTag :: Text -- ^ If specified, the virtual network interface address and its tag will be provided to the guest via config drive
  , kubevirtioapicorev1GPUVirtualGPUOptions :: Kubevirtioapicorev1VGPUOptions -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1GPU where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1GPU")
instance ToJSON Kubevirtioapicorev1GPU where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1GPU")

-- | GuestAgentPing configures the guest-agent based ping probe
data Kubevirtioapicorev1GuestAgentPing = Kubevirtioapicorev1GuestAgentPing
  { 
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1GuestAgentPing where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1GuestAgentPing")
instance ToJSON Kubevirtioapicorev1GuestAgentPing where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1GuestAgentPing")

-- | 
data Kubevirtioapicorev1HPETTimer = Kubevirtioapicorev1HPETTimer
  { kubevirtioapicorev1HPETTimerPresent :: Bool -- ^ Enabled set to false makes sure that the machine type or a preset can't add the timer. Defaults to true.
  , kubevirtioapicorev1HPETTimerTickPolicy :: Text -- ^ TickPolicy determines what happens when QEMU misses a deadline for injecting a tick to the guest. One of \"delay\", \"catchup\", \"merge\", \"discard\".
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1HPETTimer where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1HPETTimer")
instance ToJSON Kubevirtioapicorev1HPETTimer where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1HPETTimer")

-- | 
data Kubevirtioapicorev1HostDevice = Kubevirtioapicorev1HostDevice
  { kubevirtioapicorev1HostDeviceDeviceName :: Text -- ^ DeviceName is the resource name of the host device exposed by a device plugin
  , kubevirtioapicorev1HostDeviceName :: Text -- ^ 
  , kubevirtioapicorev1HostDeviceTag :: Text -- ^ If specified, the virtual network interface address and its tag will be provided to the guest via config drive
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1HostDevice where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1HostDevice")
instance ToJSON Kubevirtioapicorev1HostDevice where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1HostDevice")

-- | Represents a disk created on the cluster level
data Kubevirtioapicorev1HostDisk = Kubevirtioapicorev1HostDisk
  { kubevirtioapicorev1HostDiskCapacity :: K8sioapimachinerypkgapiresourceQuantity -- ^ Capacity of the sparse disk
  , kubevirtioapicorev1HostDiskPath :: Text -- ^ The path to HostDisk image located on the cluster
  , kubevirtioapicorev1HostDiskShared :: Bool -- ^ Shared indicate whether the path is shared between nodes
  , kubevirtioapicorev1HostDiskType :: Text -- ^ Contains information if disk.img exists or should be created allowed options are 'Disk' and 'DiskOrCreate'
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1HostDisk where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1HostDisk")
instance ToJSON Kubevirtioapicorev1HostDisk where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1HostDisk")

-- | HotplugVolumeSource Represents the source of a volume to mount which are capable of being hotplugged on a live running VMI. Only one of its members may be specified.
data Kubevirtioapicorev1HotplugVolumeSource = Kubevirtioapicorev1HotplugVolumeSource
  { kubevirtioapicorev1HotplugVolumeSourceDataVolume :: Kubevirtioapicorev1DataVolumeSource -- ^ DataVolume represents the dynamic creation a PVC for this volume as well as the process of populating that PVC with a disk image.
  , kubevirtioapicorev1HotplugVolumeSourcePersistentVolumeClaim :: Kubevirtioapicorev1PersistentVolumeClaimVolumeSource -- ^ PersistentVolumeClaimVolumeSource represents a reference to a PersistentVolumeClaim in the same namespace. Directly attached to the vmi via qemu. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1HotplugVolumeSource where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1HotplugVolumeSource")
instance ToJSON Kubevirtioapicorev1HotplugVolumeSource where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1HotplugVolumeSource")

-- | HotplugVolumeStatus represents the hotplug status of the volume
data Kubevirtioapicorev1HotplugVolumeStatus = Kubevirtioapicorev1HotplugVolumeStatus
  { kubevirtioapicorev1HotplugVolumeStatusAttachPodName :: Text -- ^ AttachPodName is the name of the pod used to attach the volume to the node.
  , kubevirtioapicorev1HotplugVolumeStatusAttachPodUID :: Text -- ^ AttachPodUID is the UID of the pod used to attach the volume to the node.
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1HotplugVolumeStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1HotplugVolumeStatus")
instance ToJSON Kubevirtioapicorev1HotplugVolumeStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1HotplugVolumeStatus")

-- | Hugepages allow to use hugepages for the VirtualMachineInstance instead of regular memory.
data Kubevirtioapicorev1Hugepages = Kubevirtioapicorev1Hugepages
  { kubevirtioapicorev1HugepagesPageSize :: Text -- ^ PageSize specifies the hugepage size, for x86_64 architecture valid values are 1Gi and 2Mi.
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1Hugepages where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1Hugepages")
instance ToJSON Kubevirtioapicorev1Hugepages where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1Hugepages")

-- | 
data Kubevirtioapicorev1HypervTimer = Kubevirtioapicorev1HypervTimer
  { kubevirtioapicorev1HypervTimerPresent :: Bool -- ^ Enabled set to false makes sure that the machine type or a preset can't add the timer. Defaults to true.
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1HypervTimer where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1HypervTimer")
instance ToJSON Kubevirtioapicorev1HypervTimer where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1HypervTimer")

-- | i6300esb watchdog device.
data Kubevirtioapicorev1I6300ESBWatchdog = Kubevirtioapicorev1I6300ESBWatchdog
  { kubevirtioapicorev1I6300ESBWatchdogAction :: Text -- ^ The action to take. Valid values are poweroff, reset, shutdown. Defaults to reset.
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1I6300ESBWatchdog where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1I6300ESBWatchdog")
instance ToJSON Kubevirtioapicorev1I6300ESBWatchdog where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1I6300ESBWatchdog")

-- | 
data Kubevirtioapicorev1Input = Kubevirtioapicorev1Input
  { kubevirtioapicorev1InputBus :: Text -- ^ Bus indicates the bus of input device to emulate. Supported values: virtio, usb.
  , kubevirtioapicorev1InputName :: Text -- ^ Name is the device name
  , kubevirtioapicorev1InputType :: Text -- ^ Type indicated the type of input device. Supported values: tablet.
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1Input where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1Input")
instance ToJSON Kubevirtioapicorev1Input where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1Input")

-- | 
data Kubevirtioapicorev1Interface = Kubevirtioapicorev1Interface
  { kubevirtioapicorev1InterfaceBootOrder :: Int -- ^ BootOrder is an integer value > 0, used to determine ordering of boot devices. Lower values take precedence. Each interface or disk that has a boot order must have a unique value. Interfaces without a boot order are not tried.
  , kubevirtioapicorev1InterfaceBridge :: Kubevirtioapicorev1InterfaceBridge -- ^ 
  , kubevirtioapicorev1InterfaceDhcpOptions :: Kubevirtioapicorev1DHCPOptions -- ^ If specified the network interface will pass additional DHCP options to the VMI
  , kubevirtioapicorev1InterfaceMacAddress :: Text -- ^ Interface MAC address. For example: de:ad:00:00:be:af or DE-AD-00-00-BE-AF.
  , kubevirtioapicorev1InterfaceMacvtap :: Kubevirtioapicorev1InterfaceMacvtap -- ^ 
  , kubevirtioapicorev1InterfaceMasquerade :: Kubevirtioapicorev1InterfaceMasquerade -- ^ 
  , kubevirtioapicorev1InterfaceModel :: Text -- ^ Interface model. One of: e1000, e1000e, ne2k_pci, pcnet, rtl8139, virtio. Defaults to virtio.
  , kubevirtioapicorev1InterfaceName :: Text -- ^ Logical name of the interface as well as a reference to the associated networks. Must match the Name of a Network.
  , kubevirtioapicorev1InterfacePciAddress :: Text -- ^ If specified, the virtual network interface will be placed on the guests pci address with the specified PCI address. For example: 0000:81:01.10
  , kubevirtioapicorev1InterfacePorts :: [Kubevirtioapicorev1Port] -- ^ List of ports to be forwarded to the virtual machine.
  , kubevirtioapicorev1InterfaceSlirp :: Kubevirtioapicorev1InterfaceSlirp -- ^ 
  , kubevirtioapicorev1InterfaceSriov :: Kubevirtioapicorev1InterfaceSRIOV -- ^ 
  , kubevirtioapicorev1InterfaceTag :: Text -- ^ If specified, the virtual network interface address and its tag will be provided to the guest via config drive
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1Interface where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1Interface")
instance ToJSON Kubevirtioapicorev1Interface where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1Interface")

-- | InterfaceBridge connects to a given network via a linux bridge.
data Kubevirtioapicorev1InterfaceBridge = Kubevirtioapicorev1InterfaceBridge
  { 
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1InterfaceBridge where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1InterfaceBridge")
instance ToJSON Kubevirtioapicorev1InterfaceBridge where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1InterfaceBridge")

-- | InterfaceMacvtap connects to a given network by extending the Kubernetes node&#39;s L2 networks via a macvtap interface.
data Kubevirtioapicorev1InterfaceMacvtap = Kubevirtioapicorev1InterfaceMacvtap
  { 
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1InterfaceMacvtap where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1InterfaceMacvtap")
instance ToJSON Kubevirtioapicorev1InterfaceMacvtap where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1InterfaceMacvtap")

-- | InterfaceMasquerade connects to a given network using netfilter rules to nat the traffic.
data Kubevirtioapicorev1InterfaceMasquerade = Kubevirtioapicorev1InterfaceMasquerade
  { 
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1InterfaceMasquerade where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1InterfaceMasquerade")
instance ToJSON Kubevirtioapicorev1InterfaceMasquerade where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1InterfaceMasquerade")

-- | InterfaceSRIOV connects to a given network by passing-through an SR-IOV PCI device via vfio.
data Kubevirtioapicorev1InterfaceSRIOV = Kubevirtioapicorev1InterfaceSRIOV
  { 
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1InterfaceSRIOV where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1InterfaceSRIOV")
instance ToJSON Kubevirtioapicorev1InterfaceSRIOV where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1InterfaceSRIOV")

-- | InterfaceSlirp connects to a given network using QEMU user networking mode.
data Kubevirtioapicorev1InterfaceSlirp = Kubevirtioapicorev1InterfaceSlirp
  { 
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1InterfaceSlirp where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1InterfaceSlirp")
instance ToJSON Kubevirtioapicorev1InterfaceSlirp where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1InterfaceSlirp")

-- | 
data Kubevirtioapicorev1KVMTimer = Kubevirtioapicorev1KVMTimer
  { kubevirtioapicorev1KVMTimerPresent :: Bool -- ^ Enabled set to false makes sure that the machine type or a preset can't add the timer. Defaults to true.
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1KVMTimer where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1KVMTimer")
instance ToJSON Kubevirtioapicorev1KVMTimer where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1KVMTimer")

-- | Represents the firmware blob used to assist in the kernel boot process. Used for setting the kernel, initrd and command line arguments
data Kubevirtioapicorev1KernelBoot = Kubevirtioapicorev1KernelBoot
  { kubevirtioapicorev1KernelBootContainer :: Kubevirtioapicorev1KernelBootContainer -- ^ Container defines the container that containes kernel artifacts
  , kubevirtioapicorev1KernelBootKernelArgs :: Text -- ^ Arguments to be passed to the kernel at boot time
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1KernelBoot where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1KernelBoot")
instance ToJSON Kubevirtioapicorev1KernelBoot where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1KernelBoot")

-- | If set, the VM will be booted from the defined kernel / initrd.
data Kubevirtioapicorev1KernelBootContainer = Kubevirtioapicorev1KernelBootContainer
  { kubevirtioapicorev1KernelBootContainerImage :: Text -- ^ Image that contains initrd / kernel files.
  , kubevirtioapicorev1KernelBootContainerImagePullPolicy :: Text -- ^ Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise. Cannot be updated. More info: https://kubernetes.io/docs/concepts/containers/images#updating-images  Possible enum values:  - `\"Always\"` means that kubelet always attempts to pull the latest image. Container will fail If the pull fails.  - `\"IfNotPresent\"` means that kubelet pulls if the image isn't present on disk. Container will fail if the image isn't present and the pull fails.  - `\"Never\"` means that kubelet never pulls an image, but only uses a local image. Container will fail if the image isn't present
  , kubevirtioapicorev1KernelBootContainerImagePullSecret :: Text -- ^ ImagePullSecret is the name of the Docker registry secret required to pull the image. The secret must already exist.
  , kubevirtioapicorev1KernelBootContainerInitrdPath :: Text -- ^ the fully-qualified path to the ramdisk image in the host OS
  , kubevirtioapicorev1KernelBootContainerKernelPath :: Text -- ^ The fully-qualified path to the kernel image in the host OS
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1KernelBootContainer where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1KernelBootContainer")
instance ToJSON Kubevirtioapicorev1KernelBootContainer where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1KernelBootContainer")

-- | 
data Kubevirtioapicorev1LaunchSecurity = Kubevirtioapicorev1LaunchSecurity
  { kubevirtioapicorev1LaunchSecuritySev :: Kubevirtioapicorev1SEV -- ^ AMD Secure Encrypted Virtualization (SEV).
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1LaunchSecurity where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1LaunchSecurity")
instance ToJSON Kubevirtioapicorev1LaunchSecurity where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1LaunchSecurity")

-- | 
data Kubevirtioapicorev1LunTarget = Kubevirtioapicorev1LunTarget
  { kubevirtioapicorev1LunTargetBus :: Text -- ^ Bus indicates the type of disk device to emulate. supported values: virtio, sata, scsi.
  , kubevirtioapicorev1LunTargetReadonly :: Bool -- ^ ReadOnly. Defaults to false.
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1LunTarget where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1LunTarget")
instance ToJSON Kubevirtioapicorev1LunTarget where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1LunTarget")

-- | 
data Kubevirtioapicorev1Machine = Kubevirtioapicorev1Machine
  { kubevirtioapicorev1MachineType :: Text -- ^ QEMU machine type is the actual chipset of the VirtualMachineInstance.
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1Machine where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1Machine")
instance ToJSON Kubevirtioapicorev1Machine where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1Machine")

-- | Memory allows specifying the VirtualMachineInstance memory features.
data Kubevirtioapicorev1Memory = Kubevirtioapicorev1Memory
  { kubevirtioapicorev1MemoryGuest :: K8sioapimachinerypkgapiresourceQuantity -- ^ Guest allows to specifying the amount of memory which is visible inside the Guest OS. The Guest must lie between Requests and Limits from the resources section. Defaults to the requested memory in the resources section if not specified.
  , kubevirtioapicorev1MemoryHugepages :: Kubevirtioapicorev1Hugepages -- ^ Hugepages allow to use hugepages for the VirtualMachineInstance instead of regular memory.
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1Memory where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1Memory")
instance ToJSON Kubevirtioapicorev1Memory where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1Memory")

-- | MigrationConfiguration holds migration options
data Kubevirtioapicorev1MigrationConfiguration = Kubevirtioapicorev1MigrationConfiguration
  { kubevirtioapicorev1MigrationConfigurationAllowAutoConverge :: Bool -- ^ 
  , kubevirtioapicorev1MigrationConfigurationAllowPostCopy :: Bool -- ^ 
  , kubevirtioapicorev1MigrationConfigurationBandwidthPerMigration :: K8sioapimachinerypkgapiresourceQuantity -- ^ 
  , kubevirtioapicorev1MigrationConfigurationCompletionTimeoutPerGiB :: Integer -- ^ 
  , kubevirtioapicorev1MigrationConfigurationDisableTLS :: Bool -- ^ 
  , kubevirtioapicorev1MigrationConfigurationNetwork :: Text -- ^ 
  , kubevirtioapicorev1MigrationConfigurationNodeDrainTaintKey :: Text -- ^ 
  , kubevirtioapicorev1MigrationConfigurationParallelMigrationsPerCluster :: Integer -- ^ 
  , kubevirtioapicorev1MigrationConfigurationParallelOutboundMigrationsPerNode :: Integer -- ^ 
  , kubevirtioapicorev1MigrationConfigurationProgressTimeout :: Integer -- ^ 
  , kubevirtioapicorev1MigrationConfigurationUnsafeMigrationOverride :: Bool -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1MigrationConfiguration where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1MigrationConfiguration")
instance ToJSON Kubevirtioapicorev1MigrationConfiguration where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1MigrationConfiguration")

-- | Represents the multus cni network.
data Kubevirtioapicorev1MultusNetwork = Kubevirtioapicorev1MultusNetwork
  { kubevirtioapicorev1MultusNetworkDefault :: Bool -- ^ Select the default network and add it to the multus-cni.io/default-network annotation.
  , kubevirtioapicorev1MultusNetworkNetworkName :: Text -- ^ References to a NetworkAttachmentDefinition CRD object. Format: <networkName>, <namespace>/<networkName>. If namespace is not specified, VMI namespace is assumed.
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1MultusNetwork where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1MultusNetwork")
instance ToJSON Kubevirtioapicorev1MultusNetwork where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1MultusNetwork")

-- | 
data Kubevirtioapicorev1NUMA = Kubevirtioapicorev1NUMA
  { kubevirtioapicorev1NUMAGuestMappingPassthrough :: Kubevirtioapicorev1NUMAGuestMappingPassthrough -- ^ GuestMappingPassthrough will create an efficient guest topology based on host CPUs exclusively assigned to a pod. The created topology ensures that memory and CPUs on the virtual numa nodes never cross boundaries of host numa nodes.
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1NUMA where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1NUMA")
instance ToJSON Kubevirtioapicorev1NUMA where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1NUMA")

-- | NUMAGuestMappingPassthrough instructs kubevirt to model numa topology which is compatible with the CPU pinning on the guest. This will result in a subset of the node numa topology being passed through, ensuring that virtual numa nodes and their memory never cross boundaries coming from the node numa mapping.
data Kubevirtioapicorev1NUMAGuestMappingPassthrough = Kubevirtioapicorev1NUMAGuestMappingPassthrough
  { 
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1NUMAGuestMappingPassthrough where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1NUMAGuestMappingPassthrough")
instance ToJSON Kubevirtioapicorev1NUMAGuestMappingPassthrough where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1NUMAGuestMappingPassthrough")

-- | Network represents a network type and a resource that should be connected to the vm.
data Kubevirtioapicorev1Network = Kubevirtioapicorev1Network
  { kubevirtioapicorev1NetworkMultus :: Kubevirtioapicorev1MultusNetwork -- ^ 
  , kubevirtioapicorev1NetworkName :: Text -- ^ Network name. Must be a DNS_LABEL and unique within the vm. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  , kubevirtioapicorev1NetworkPod :: Kubevirtioapicorev1PodNetwork -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1Network where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1Network")
instance ToJSON Kubevirtioapicorev1Network where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1Network")

-- | 
data Kubevirtioapicorev1PITTimer = Kubevirtioapicorev1PITTimer
  { kubevirtioapicorev1PITTimerPresent :: Bool -- ^ Enabled set to false makes sure that the machine type or a preset can't add the timer. Defaults to true.
  , kubevirtioapicorev1PITTimerTickPolicy :: Text -- ^ TickPolicy determines what happens when QEMU misses a deadline for injecting a tick to the guest. One of \"delay\", \"catchup\", \"discard\".
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1PITTimer where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1PITTimer")
instance ToJSON Kubevirtioapicorev1PITTimer where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1PITTimer")

-- | PersistentVolumeClaimInfo contains the relavant information virt-handler needs cached about a PVC
data Kubevirtioapicorev1PersistentVolumeClaimInfo = Kubevirtioapicorev1PersistentVolumeClaimInfo
  { kubevirtioapicorev1PersistentVolumeClaimInfoAccessModes :: [Text] -- ^ AccessModes contains the desired access modes the volume should have. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1
  , kubevirtioapicorev1PersistentVolumeClaimInfoCapacity :: Map.Map String K8sioapimachinerypkgapiresourceQuantity -- ^ Capacity represents the capacity set on the corresponding PVC status
  , kubevirtioapicorev1PersistentVolumeClaimInfoFilesystemOverhead :: Text -- ^ Percentage of filesystem's size to be reserved when resizing the PVC
  , kubevirtioapicorev1PersistentVolumeClaimInfoPreallocated :: Bool -- ^ Preallocated indicates if the PVC's storage is preallocated or not
  , kubevirtioapicorev1PersistentVolumeClaimInfoRequests :: Map.Map String K8sioapimachinerypkgapiresourceQuantity -- ^ Requests represents the resources requested by the corresponding PVC spec
  , kubevirtioapicorev1PersistentVolumeClaimInfoVolumeMode :: Text -- ^ VolumeMode defines what type of volume is required by the claim. Value of Filesystem is implied when not included in claim spec.
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1PersistentVolumeClaimInfo where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1PersistentVolumeClaimInfo")
instance ToJSON Kubevirtioapicorev1PersistentVolumeClaimInfo where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1PersistentVolumeClaimInfo")

-- | PersistentVolumeClaimVolumeSource represents a reference to a PersistentVolumeClaim in the same namespace. Directly attached to the vmi via qemu. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims
data Kubevirtioapicorev1PersistentVolumeClaimVolumeSource = Kubevirtioapicorev1PersistentVolumeClaimVolumeSource
  { kubevirtioapicorev1PersistentVolumeClaimVolumeSourceClaimName :: Text -- ^ ClaimName is the name of a PersistentVolumeClaim in the same namespace as the pod using this volume. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims
  , kubevirtioapicorev1PersistentVolumeClaimVolumeSourceHotpluggable :: Bool -- ^ Hotpluggable indicates whether the volume can be hotplugged and hotunplugged.
  , kubevirtioapicorev1PersistentVolumeClaimVolumeSourceReadOnly :: Bool -- ^ Will force the ReadOnly setting in VolumeMounts. Default false.
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1PersistentVolumeClaimVolumeSource where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1PersistentVolumeClaimVolumeSource")
instance ToJSON Kubevirtioapicorev1PersistentVolumeClaimVolumeSource where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1PersistentVolumeClaimVolumeSource")

-- | Represents the stock pod network interface.
data Kubevirtioapicorev1PodNetwork = Kubevirtioapicorev1PodNetwork
  { kubevirtioapicorev1PodNetworkVmIPv6NetworkCIDR :: Text -- ^ IPv6 CIDR for the vm network. Defaults to fd10:0:2::/120 if not specified.
  , kubevirtioapicorev1PodNetworkVmNetworkCIDR :: Text -- ^ CIDR for vm network. Default 10.0.2.0/24 if not specified.
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1PodNetwork where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1PodNetwork")
instance ToJSON Kubevirtioapicorev1PodNetwork where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1PodNetwork")

-- | Port represents a port to expose from the virtual machine. Default protocol TCP. The port field is mandatory
data Kubevirtioapicorev1Port = Kubevirtioapicorev1Port
  { kubevirtioapicorev1PortName :: Text -- ^ If specified, this must be an IANA_SVC_NAME and unique within the pod. Each named port in a pod must have a unique name. Name for the port that can be referred to by services.
  , kubevirtioapicorev1PortPort :: Int -- ^ Number of port to expose for the virtual machine. This must be a valid port number, 0 < x < 65536.
  , kubevirtioapicorev1PortProtocol :: Text -- ^ Protocol for port. Must be UDP or TCP. Defaults to \"TCP\".
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1Port where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1Port")
instance ToJSON Kubevirtioapicorev1Port where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1Port")

-- | Probe describes a health check to be performed against a VirtualMachineInstance to determine whether it is alive or ready to receive traffic.
data Kubevirtioapicorev1Probe = Kubevirtioapicorev1Probe
  { kubevirtioapicorev1ProbeExec :: K8siov1ExecAction -- ^ One and only one of the following should be specified. Exec specifies the action to take, it will be executed on the guest through the qemu-guest-agent. If the guest agent is not available, this probe will fail.
  , kubevirtioapicorev1ProbeFailureThreshold :: Int -- ^ Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
  , kubevirtioapicorev1ProbeGuestAgentPing :: Kubevirtioapicorev1GuestAgentPing -- ^ GuestAgentPing contacts the qemu-guest-agent for availability checks.
  , kubevirtioapicorev1ProbeHttpGet :: K8siov1HTTPGetAction -- ^ HTTPGet specifies the http request to perform.
  , kubevirtioapicorev1ProbeInitialDelaySeconds :: Int -- ^ Number of seconds after the VirtualMachineInstance has started before liveness probes are initiated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  , kubevirtioapicorev1ProbePeriodSeconds :: Int -- ^ How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1.
  , kubevirtioapicorev1ProbeSuccessThreshold :: Int -- ^ Minimum consecutive successes for the probe to be considered successful after having failed. Defaults to 1. Must be 1 for liveness. Minimum value is 1.
  , kubevirtioapicorev1ProbeTcpSocket :: K8siov1TCPSocketAction -- ^ TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported
  , kubevirtioapicorev1ProbeTimeoutSeconds :: Int -- ^ Number of seconds after which the probe times out. For exec probes the timeout fails the probe but does not terminate the command running on the guest. This means a blocking command can result in an increasing load on the guest. A small buffer will be added to the resulting workload exec probe to compensate for delays caused by the qemu guest exec mechanism. Defaults to 1 second. Minimum value is 1. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1Probe where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1Probe")
instance ToJSON Kubevirtioapicorev1Probe where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1Probe")

-- | 
data Kubevirtioapicorev1QemuGuestAgentSSHPublicKeyAccessCredentialPropagation = Kubevirtioapicorev1QemuGuestAgentSSHPublicKeyAccessCredentialPropagation
  { kubevirtioapicorev1QemuGuestAgentSSHPublicKeyAccessCredentialPropagationUsers :: [Text] -- ^ Users represents a list of guest users that should have the ssh public keys added to their authorized_keys file.
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1QemuGuestAgentSSHPublicKeyAccessCredentialPropagation where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1QemuGuestAgentSSHPublicKeyAccessCredentialPropagation")
instance ToJSON Kubevirtioapicorev1QemuGuestAgentSSHPublicKeyAccessCredentialPropagation where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1QemuGuestAgentSSHPublicKeyAccessCredentialPropagation")

-- | 
data Kubevirtioapicorev1QemuGuestAgentUserPasswordAccessCredentialPropagation = Kubevirtioapicorev1QemuGuestAgentUserPasswordAccessCredentialPropagation
  { 
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1QemuGuestAgentUserPasswordAccessCredentialPropagation where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1QemuGuestAgentUserPasswordAccessCredentialPropagation")
instance ToJSON Kubevirtioapicorev1QemuGuestAgentUserPasswordAccessCredentialPropagation where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1QemuGuestAgentUserPasswordAccessCredentialPropagation")

-- | 
data Kubevirtioapicorev1RTCTimer = Kubevirtioapicorev1RTCTimer
  { kubevirtioapicorev1RTCTimerPresent :: Bool -- ^ Enabled set to false makes sure that the machine type or a preset can't add the timer. Defaults to true.
  , kubevirtioapicorev1RTCTimerTickPolicy :: Text -- ^ TickPolicy determines what happens when QEMU misses a deadline for injecting a tick to the guest. One of \"delay\", \"catchup\".
  , kubevirtioapicorev1RTCTimerTrack :: Text -- ^ Track the guest or the wall clock.
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1RTCTimer where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1RTCTimer")
instance ToJSON Kubevirtioapicorev1RTCTimer where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1RTCTimer")

-- | Realtime holds the tuning knobs specific for realtime workloads.
data Kubevirtioapicorev1Realtime = Kubevirtioapicorev1Realtime
  { kubevirtioapicorev1RealtimeMask :: Text -- ^ Mask defines the vcpu mask expression that defines which vcpus are used for realtime. Format matches libvirt's expressions. Example: \"0-3,^1\",\"0,2,3\",\"2-3\"
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1Realtime where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1Realtime")
instance ToJSON Kubevirtioapicorev1Realtime where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1Realtime")

-- | RemoveVolumeOptions is provided when dynamically hot unplugging volume and disk
data Kubevirtioapicorev1RemoveVolumeOptions = Kubevirtioapicorev1RemoveVolumeOptions
  { kubevirtioapicorev1RemoveVolumeOptionsDryRun :: [Text] -- ^ When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  , kubevirtioapicorev1RemoveVolumeOptionsName :: Text -- ^ Name represents the name that maps to both the disk and volume that should be removed
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1RemoveVolumeOptions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1RemoveVolumeOptions")
instance ToJSON Kubevirtioapicorev1RemoveVolumeOptions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1RemoveVolumeOptions")

-- | 
data Kubevirtioapicorev1ResourceRequirements = Kubevirtioapicorev1ResourceRequirements
  { kubevirtioapicorev1ResourceRequirementsLimits :: Map.Map String K8sioapimachinerypkgapiresourceQuantity -- ^ Limits describes the maximum amount of compute resources allowed. Valid resource keys are \"memory\" and \"cpu\".
  , kubevirtioapicorev1ResourceRequirementsOvercommitGuestOverhead :: Bool -- ^ Don't ask the scheduler to take the guest-management overhead into account. Instead put the overhead only into the container's memory limit. This can lead to crashes if all memory is in use on a node. Defaults to false.
  , kubevirtioapicorev1ResourceRequirementsRequests :: Map.Map String K8sioapimachinerypkgapiresourceQuantity -- ^ Requests is a description of the initial vmi resources. Valid resource keys are \"memory\" and \"cpu\".
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1ResourceRequirements where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1ResourceRequirements")
instance ToJSON Kubevirtioapicorev1ResourceRequirements where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1ResourceRequirements")

-- | Rng represents the random device passed from host
data Kubevirtioapicorev1Rng = Kubevirtioapicorev1Rng
  { 
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1Rng where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1Rng")
instance ToJSON Kubevirtioapicorev1Rng where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1Rng")

-- | 
data Kubevirtioapicorev1SEV = Kubevirtioapicorev1SEV
  { 
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1SEV where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1SEV")
instance ToJSON Kubevirtioapicorev1SEV where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1SEV")

-- | SSHPublicKeyAccessCredential represents a source and propagation method for injecting ssh public keys into a vm guest
data Kubevirtioapicorev1SSHPublicKeyAccessCredential = Kubevirtioapicorev1SSHPublicKeyAccessCredential
  { kubevirtioapicorev1SSHPublicKeyAccessCredentialPropagationMethod :: Kubevirtioapicorev1SSHPublicKeyAccessCredentialPropagationMethod -- ^ PropagationMethod represents how the public key is injected into the vm guest.
  , kubevirtioapicorev1SSHPublicKeyAccessCredentialSource :: Kubevirtioapicorev1SSHPublicKeyAccessCredentialSource -- ^ Source represents where the public keys are pulled from
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1SSHPublicKeyAccessCredential where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1SSHPublicKeyAccessCredential")
instance ToJSON Kubevirtioapicorev1SSHPublicKeyAccessCredential where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1SSHPublicKeyAccessCredential")

-- | SSHPublicKeyAccessCredentialPropagationMethod represents the method used to inject a ssh public key into the vm guest. Only one of its members may be specified.
data Kubevirtioapicorev1SSHPublicKeyAccessCredentialPropagationMethod = Kubevirtioapicorev1SSHPublicKeyAccessCredentialPropagationMethod
  { kubevirtioapicorev1SSHPublicKeyAccessCredentialPropagationMethodConfigDrive :: Kubevirtioapicorev1ConfigDriveSSHPublicKeyAccessCredentialPropagation -- ^ ConfigDrivePropagation means that the ssh public keys are injected into the VM using metadata using the configDrive cloud-init provider
  , kubevirtioapicorev1SSHPublicKeyAccessCredentialPropagationMethodQemuGuestAgent :: Kubevirtioapicorev1QemuGuestAgentSSHPublicKeyAccessCredentialPropagation -- ^ QemuGuestAgentAccessCredentailPropagation means ssh public keys are dynamically injected into the vm at runtime via the qemu guest agent. This feature requires the qemu guest agent to be running within the guest.
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1SSHPublicKeyAccessCredentialPropagationMethod where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1SSHPublicKeyAccessCredentialPropagationMethod")
instance ToJSON Kubevirtioapicorev1SSHPublicKeyAccessCredentialPropagationMethod where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1SSHPublicKeyAccessCredentialPropagationMethod")

-- | SSHPublicKeyAccessCredentialSource represents where to retrieve the ssh key credentials Only one of its members may be specified.
data Kubevirtioapicorev1SSHPublicKeyAccessCredentialSource = Kubevirtioapicorev1SSHPublicKeyAccessCredentialSource
  { kubevirtioapicorev1SSHPublicKeyAccessCredentialSourceSecret :: Kubevirtioapicorev1AccessCredentialSecretSource -- ^ Secret means that the access credential is pulled from a kubernetes secret
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1SSHPublicKeyAccessCredentialSource where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1SSHPublicKeyAccessCredentialSource")
instance ToJSON Kubevirtioapicorev1SSHPublicKeyAccessCredentialSource where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1SSHPublicKeyAccessCredentialSource")

-- | SecretVolumeSource adapts a Secret into a volume.
data Kubevirtioapicorev1SecretVolumeSource = Kubevirtioapicorev1SecretVolumeSource
  { kubevirtioapicorev1SecretVolumeSourceOptional :: Bool -- ^ Specify whether the Secret or it's keys must be defined
  , kubevirtioapicorev1SecretVolumeSourceSecretName :: Text -- ^ Name of the secret in the pod's namespace to use. More info: https://kubernetes.io/docs/concepts/storage/volumes#secret
  , kubevirtioapicorev1SecretVolumeSourceVolumeLabel :: Text -- ^ The volume label of the resulting disk inside the VMI. Different bootstrapping mechanisms require different values. Typical values are \"cidata\" (cloud-init), \"config-2\" (cloud-init) or \"OEMDRV\" (kickstart).
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1SecretVolumeSource where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1SecretVolumeSource")
instance ToJSON Kubevirtioapicorev1SecretVolumeSource where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1SecretVolumeSource")

-- | ServiceAccountVolumeSource adapts a ServiceAccount into a volume.
data Kubevirtioapicorev1ServiceAccountVolumeSource = Kubevirtioapicorev1ServiceAccountVolumeSource
  { kubevirtioapicorev1ServiceAccountVolumeSourceServiceAccountName :: Text -- ^ Name of the service account in the pod's namespace to use. More info: https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1ServiceAccountVolumeSource where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1ServiceAccountVolumeSource")
instance ToJSON Kubevirtioapicorev1ServiceAccountVolumeSource where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1ServiceAccountVolumeSource")

-- | Represents the user&#39;s configuration to emulate sound cards in the VMI.
data Kubevirtioapicorev1SoundDevice = Kubevirtioapicorev1SoundDevice
  { kubevirtioapicorev1SoundDeviceModel :: Text -- ^ We only support ich9 or ac97. If SoundDevice is not set: No sound card is emulated. If SoundDevice is set but Model is not: ich9
  , kubevirtioapicorev1SoundDeviceName :: Text -- ^ User's defined name for this sound device
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1SoundDevice where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1SoundDevice")
instance ToJSON Kubevirtioapicorev1SoundDevice where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1SoundDevice")

-- | 
data Kubevirtioapicorev1SyNICTimer = Kubevirtioapicorev1SyNICTimer
  { kubevirtioapicorev1SyNICTimerDirect :: Kubevirtioapicorev1FeatureState -- ^ 
  , kubevirtioapicorev1SyNICTimerEnabled :: Bool -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1SyNICTimer where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1SyNICTimer")
instance ToJSON Kubevirtioapicorev1SyNICTimer where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1SyNICTimer")

-- | Represents a Sysprep volume source.
data Kubevirtioapicorev1SysprepSource = Kubevirtioapicorev1SysprepSource
  { kubevirtioapicorev1SysprepSourceConfigMap :: K8siov1LocalObjectReference -- ^ ConfigMap references a ConfigMap that contains Sysprep answer file named autounattend.xml that should be attached as disk of CDROM type.
  , kubevirtioapicorev1SysprepSourceSecret :: K8siov1LocalObjectReference -- ^ Secret references a k8s Secret that contains Sysprep answer file named autounattend.xml that should be attached as disk of CDROM type.
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1SysprepSource where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1SysprepSource")
instance ToJSON Kubevirtioapicorev1SysprepSource where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1SysprepSource")

-- | 
data Kubevirtioapicorev1TPMDevice = Kubevirtioapicorev1TPMDevice
  { 
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1TPMDevice where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1TPMDevice")
instance ToJSON Kubevirtioapicorev1TPMDevice where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1TPMDevice")

-- | Represents all available timers in a vmi.
data Kubevirtioapicorev1Timer = Kubevirtioapicorev1Timer
  { kubevirtioapicorev1TimerHpet :: Kubevirtioapicorev1HPETTimer -- ^ HPET (High Precision Event Timer) - multiple timers with periodic interrupts.
  , kubevirtioapicorev1TimerHyperv :: Kubevirtioapicorev1HypervTimer -- ^ Hyperv (Hypervclock) - lets guests read the host’s wall clock time (paravirtualized). For windows guests.
  , kubevirtioapicorev1TimerKvm :: Kubevirtioapicorev1KVMTimer -- ^ KVM  (KVM clock) - lets guests read the host’s wall clock time (paravirtualized). For linux guests.
  , kubevirtioapicorev1TimerPit :: Kubevirtioapicorev1PITTimer -- ^ PIT (Programmable Interval Timer) - a timer with periodic interrupts.
  , kubevirtioapicorev1TimerRtc :: Kubevirtioapicorev1RTCTimer -- ^ RTC (Real Time Clock) - a continuously running timer with periodic interrupts.
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1Timer where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1Timer")
instance ToJSON Kubevirtioapicorev1Timer where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1Timer")

-- | 
data Kubevirtioapicorev1TopologyHints = Kubevirtioapicorev1TopologyHints
  { kubevirtioapicorev1TopologyHintsTscFrequency :: Integer -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1TopologyHints where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1TopologyHints")
instance ToJSON Kubevirtioapicorev1TopologyHints where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1TopologyHints")

-- | UserPasswordAccessCredential represents a source and propagation method for injecting user passwords into a vm guest Only one of its members may be specified.
data Kubevirtioapicorev1UserPasswordAccessCredential = Kubevirtioapicorev1UserPasswordAccessCredential
  { kubevirtioapicorev1UserPasswordAccessCredentialPropagationMethod :: Kubevirtioapicorev1UserPasswordAccessCredentialPropagationMethod -- ^ propagationMethod represents how the user passwords are injected into the vm guest.
  , kubevirtioapicorev1UserPasswordAccessCredentialSource :: Kubevirtioapicorev1UserPasswordAccessCredentialSource -- ^ Source represents where the user passwords are pulled from
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1UserPasswordAccessCredential where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1UserPasswordAccessCredential")
instance ToJSON Kubevirtioapicorev1UserPasswordAccessCredential where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1UserPasswordAccessCredential")

-- | UserPasswordAccessCredentialPropagationMethod represents the method used to inject a user passwords into the vm guest. Only one of its members may be specified.
data Kubevirtioapicorev1UserPasswordAccessCredentialPropagationMethod = Kubevirtioapicorev1UserPasswordAccessCredentialPropagationMethod
  { kubevirtioapicorev1UserPasswordAccessCredentialPropagationMethodQemuGuestAgent :: Kubevirtioapicorev1QemuGuestAgentUserPasswordAccessCredentialPropagation -- ^ QemuGuestAgentAccessCredentailPropagation means passwords are dynamically injected into the vm at runtime via the qemu guest agent. This feature requires the qemu guest agent to be running within the guest.
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1UserPasswordAccessCredentialPropagationMethod where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1UserPasswordAccessCredentialPropagationMethod")
instance ToJSON Kubevirtioapicorev1UserPasswordAccessCredentialPropagationMethod where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1UserPasswordAccessCredentialPropagationMethod")

-- | UserPasswordAccessCredentialSource represents where to retrieve the user password credentials Only one of its members may be specified.
data Kubevirtioapicorev1UserPasswordAccessCredentialSource = Kubevirtioapicorev1UserPasswordAccessCredentialSource
  { kubevirtioapicorev1UserPasswordAccessCredentialSourceSecret :: Kubevirtioapicorev1AccessCredentialSecretSource -- ^ Secret means that the access credential is pulled from a kubernetes secret
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1UserPasswordAccessCredentialSource where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1UserPasswordAccessCredentialSource")
instance ToJSON Kubevirtioapicorev1UserPasswordAccessCredentialSource where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1UserPasswordAccessCredentialSource")

-- | 
data Kubevirtioapicorev1VGPUDisplayOptions = Kubevirtioapicorev1VGPUDisplayOptions
  { kubevirtioapicorev1VGPUDisplayOptionsEnabled :: Bool -- ^ Enabled determines if a display addapter backed by a vGPU should be enabled or disabled on the guest. Defaults to true.
  , kubevirtioapicorev1VGPUDisplayOptionsRamFB :: Kubevirtioapicorev1FeatureState -- ^ Enables a boot framebuffer, until the guest OS loads a real GPU driver Defaults to true.
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1VGPUDisplayOptions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1VGPUDisplayOptions")
instance ToJSON Kubevirtioapicorev1VGPUDisplayOptions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1VGPUDisplayOptions")

-- | 
data Kubevirtioapicorev1VGPUOptions = Kubevirtioapicorev1VGPUOptions
  { kubevirtioapicorev1VGPUOptionsDisplay :: Kubevirtioapicorev1VGPUDisplayOptions -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1VGPUOptions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1VGPUOptions")
instance ToJSON Kubevirtioapicorev1VGPUOptions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1VGPUOptions")

-- | VirtualMachine handles the VirtualMachines that are not running or are in a stopped state The VirtualMachine contains the template to create the VirtualMachineInstance. It also mirrors the running state of the created VirtualMachineInstance in its status.
data Kubevirtioapicorev1VirtualMachine = Kubevirtioapicorev1VirtualMachine
  { kubevirtioapicorev1VirtualMachineApiVersion :: Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  , kubevirtioapicorev1VirtualMachineKind :: Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  , kubevirtioapicorev1VirtualMachineMetadata :: K8siov1ObjectMeta -- ^ 
  , kubevirtioapicorev1VirtualMachineSpec :: Kubevirtioapicorev1VirtualMachineSpec -- ^ Spec contains the specification of VirtualMachineInstance created
  , kubevirtioapicorev1VirtualMachineStatus :: Kubevirtioapicorev1VirtualMachineStatus -- ^ Status holds the current state of the controller and brief information about its associated VirtualMachineInstance
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1VirtualMachine where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1VirtualMachine")
instance ToJSON Kubevirtioapicorev1VirtualMachine where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1VirtualMachine")

-- | VirtualMachineCondition represents the state of VirtualMachine
data Kubevirtioapicorev1VirtualMachineCondition = Kubevirtioapicorev1VirtualMachineCondition
  { kubevirtioapicorev1VirtualMachineConditionLastProbeTime :: K8siov1Time -- ^ 
  , kubevirtioapicorev1VirtualMachineConditionLastTransitionTime :: K8siov1Time -- ^ 
  , kubevirtioapicorev1VirtualMachineConditionMessage :: Text -- ^ 
  , kubevirtioapicorev1VirtualMachineConditionReason :: Text -- ^ 
  , kubevirtioapicorev1VirtualMachineConditionStatus :: Text -- ^ 
  , kubevirtioapicorev1VirtualMachineConditionType :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1VirtualMachineCondition where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1VirtualMachineCondition")
instance ToJSON Kubevirtioapicorev1VirtualMachineCondition where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1VirtualMachineCondition")

-- | VirtualMachineInstance is *the* VirtualMachineInstance Definition. It represents a virtual machine in the runtime environment of kubernetes.
data Kubevirtioapicorev1VirtualMachineInstance = Kubevirtioapicorev1VirtualMachineInstance
  { kubevirtioapicorev1VirtualMachineInstanceApiVersion :: Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  , kubevirtioapicorev1VirtualMachineInstanceKind :: Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  , kubevirtioapicorev1VirtualMachineInstanceMetadata :: K8siov1ObjectMeta -- ^ 
  , kubevirtioapicorev1VirtualMachineInstanceSpec :: Kubevirtioapicorev1VirtualMachineInstanceSpec -- ^ VirtualMachineInstance Spec contains the VirtualMachineInstance specification.
  , kubevirtioapicorev1VirtualMachineInstanceStatus :: Kubevirtioapicorev1VirtualMachineInstanceStatus -- ^ Status is the high level overview of how the VirtualMachineInstance is doing. It contains information available to controllers and users.
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1VirtualMachineInstance where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1VirtualMachineInstance")
instance ToJSON Kubevirtioapicorev1VirtualMachineInstance where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1VirtualMachineInstance")

-- | 
data Kubevirtioapicorev1VirtualMachineInstanceCondition = Kubevirtioapicorev1VirtualMachineInstanceCondition
  { kubevirtioapicorev1VirtualMachineInstanceConditionLastProbeTime :: K8siov1Time -- ^ 
  , kubevirtioapicorev1VirtualMachineInstanceConditionLastTransitionTime :: K8siov1Time -- ^ 
  , kubevirtioapicorev1VirtualMachineInstanceConditionMessage :: Text -- ^ 
  , kubevirtioapicorev1VirtualMachineInstanceConditionReason :: Text -- ^ 
  , kubevirtioapicorev1VirtualMachineInstanceConditionStatus :: Text -- ^ 
  , kubevirtioapicorev1VirtualMachineInstanceConditionType :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1VirtualMachineInstanceCondition where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1VirtualMachineInstanceCondition")
instance ToJSON Kubevirtioapicorev1VirtualMachineInstanceCondition where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1VirtualMachineInstanceCondition")

-- | 
data Kubevirtioapicorev1VirtualMachineInstanceGuestOSInfo = Kubevirtioapicorev1VirtualMachineInstanceGuestOSInfo
  { kubevirtioapicorev1VirtualMachineInstanceGuestOSInfoId :: Text -- ^ Guest OS Id
  , kubevirtioapicorev1VirtualMachineInstanceGuestOSInfoKernelRelease :: Text -- ^ Guest OS Kernel Release
  , kubevirtioapicorev1VirtualMachineInstanceGuestOSInfoKernelVersion :: Text -- ^ Kernel version of the Guest OS
  , kubevirtioapicorev1VirtualMachineInstanceGuestOSInfoMachine :: Text -- ^ Machine type of the Guest OS
  , kubevirtioapicorev1VirtualMachineInstanceGuestOSInfoName :: Text -- ^ Name of the Guest OS
  , kubevirtioapicorev1VirtualMachineInstanceGuestOSInfoPrettyName :: Text -- ^ Guest OS Pretty Name
  , kubevirtioapicorev1VirtualMachineInstanceGuestOSInfoVersion :: Text -- ^ Guest OS Version
  , kubevirtioapicorev1VirtualMachineInstanceGuestOSInfoVersionId :: Text -- ^ Version ID of the Guest OS
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1VirtualMachineInstanceGuestOSInfo where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1VirtualMachineInstanceGuestOSInfo")
instance ToJSON Kubevirtioapicorev1VirtualMachineInstanceGuestOSInfo where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1VirtualMachineInstanceGuestOSInfo")

-- | VirtualMachineInstanceList is a list of VirtualMachines
data Kubevirtioapicorev1VirtualMachineInstanceList = Kubevirtioapicorev1VirtualMachineInstanceList
  { kubevirtioapicorev1VirtualMachineInstanceListApiVersion :: Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  , kubevirtioapicorev1VirtualMachineInstanceListItems :: [Kubevirtioapicorev1VirtualMachineInstance] -- ^ 
  , kubevirtioapicorev1VirtualMachineInstanceListKind :: Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  , kubevirtioapicorev1VirtualMachineInstanceListMetadata :: K8siov1ListMeta -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1VirtualMachineInstanceList where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1VirtualMachineInstanceList")
instance ToJSON Kubevirtioapicorev1VirtualMachineInstanceList where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1VirtualMachineInstanceList")

-- | VirtualMachineInstanceMigration represents the object tracking a VMI&#39;s migration to another host in the cluster
data Kubevirtioapicorev1VirtualMachineInstanceMigration = Kubevirtioapicorev1VirtualMachineInstanceMigration
  { kubevirtioapicorev1VirtualMachineInstanceMigrationApiVersion :: Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  , kubevirtioapicorev1VirtualMachineInstanceMigrationKind :: Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  , kubevirtioapicorev1VirtualMachineInstanceMigrationMetadata :: K8siov1ObjectMeta -- ^ 
  , kubevirtioapicorev1VirtualMachineInstanceMigrationSpec :: Kubevirtioapicorev1VirtualMachineInstanceMigrationSpec -- ^ 
  , kubevirtioapicorev1VirtualMachineInstanceMigrationStatus :: Kubevirtioapicorev1VirtualMachineInstanceMigrationStatus -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1VirtualMachineInstanceMigration where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1VirtualMachineInstanceMigration")
instance ToJSON Kubevirtioapicorev1VirtualMachineInstanceMigration where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1VirtualMachineInstanceMigration")

-- | 
data Kubevirtioapicorev1VirtualMachineInstanceMigrationCondition = Kubevirtioapicorev1VirtualMachineInstanceMigrationCondition
  { kubevirtioapicorev1VirtualMachineInstanceMigrationConditionLastProbeTime :: K8siov1Time -- ^ 
  , kubevirtioapicorev1VirtualMachineInstanceMigrationConditionLastTransitionTime :: K8siov1Time -- ^ 
  , kubevirtioapicorev1VirtualMachineInstanceMigrationConditionMessage :: Text -- ^ 
  , kubevirtioapicorev1VirtualMachineInstanceMigrationConditionReason :: Text -- ^ 
  , kubevirtioapicorev1VirtualMachineInstanceMigrationConditionStatus :: Text -- ^ 
  , kubevirtioapicorev1VirtualMachineInstanceMigrationConditionType :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1VirtualMachineInstanceMigrationCondition where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1VirtualMachineInstanceMigrationCondition")
instance ToJSON Kubevirtioapicorev1VirtualMachineInstanceMigrationCondition where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1VirtualMachineInstanceMigrationCondition")

-- | VirtualMachineInstanceMigrationList is a list of VirtualMachineMigrations
data Kubevirtioapicorev1VirtualMachineInstanceMigrationList = Kubevirtioapicorev1VirtualMachineInstanceMigrationList
  { kubevirtioapicorev1VirtualMachineInstanceMigrationListApiVersion :: Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  , kubevirtioapicorev1VirtualMachineInstanceMigrationListItems :: [Kubevirtioapicorev1VirtualMachineInstanceMigration] -- ^ 
  , kubevirtioapicorev1VirtualMachineInstanceMigrationListKind :: Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  , kubevirtioapicorev1VirtualMachineInstanceMigrationListMetadata :: K8siov1ListMeta -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1VirtualMachineInstanceMigrationList where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1VirtualMachineInstanceMigrationList")
instance ToJSON Kubevirtioapicorev1VirtualMachineInstanceMigrationList where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1VirtualMachineInstanceMigrationList")

-- | 
data Kubevirtioapicorev1VirtualMachineInstanceMigrationSpec = Kubevirtioapicorev1VirtualMachineInstanceMigrationSpec
  { kubevirtioapicorev1VirtualMachineInstanceMigrationSpecVmiName :: Text -- ^ The name of the VMI to perform the migration on. VMI must exist in the migration objects namespace
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1VirtualMachineInstanceMigrationSpec where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1VirtualMachineInstanceMigrationSpec")
instance ToJSON Kubevirtioapicorev1VirtualMachineInstanceMigrationSpec where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1VirtualMachineInstanceMigrationSpec")

-- | 
data Kubevirtioapicorev1VirtualMachineInstanceMigrationState = Kubevirtioapicorev1VirtualMachineInstanceMigrationState
  { kubevirtioapicorev1VirtualMachineInstanceMigrationStateAbortRequested :: Bool -- ^ Indicates that the migration has been requested to abort
  , kubevirtioapicorev1VirtualMachineInstanceMigrationStateAbortStatus :: Text -- ^ Indicates the final status of the live migration abortion
  , kubevirtioapicorev1VirtualMachineInstanceMigrationStateCompleted :: Bool -- ^ Indicates the migration completed
  , kubevirtioapicorev1VirtualMachineInstanceMigrationStateEndTimestamp :: K8siov1Time -- ^ The time the migration action ended
  , kubevirtioapicorev1VirtualMachineInstanceMigrationStateFailed :: Bool -- ^ Indicates that the migration failed
  , kubevirtioapicorev1VirtualMachineInstanceMigrationStateMigrationConfiguration :: Kubevirtioapicorev1MigrationConfiguration -- ^ Migration configurations to apply
  , kubevirtioapicorev1VirtualMachineInstanceMigrationStateMigrationPolicyName :: Text -- ^ Name of the migration policy. If string is empty, no policy is matched
  , kubevirtioapicorev1VirtualMachineInstanceMigrationStateMigrationUid :: Text -- ^ The VirtualMachineInstanceMigration object associated with this migration
  , kubevirtioapicorev1VirtualMachineInstanceMigrationStateMode :: Text -- ^ Lets us know if the vmi is currently running pre or post copy migration
  , kubevirtioapicorev1VirtualMachineInstanceMigrationStateSourceNode :: Text -- ^ The source node that the VMI originated on
  , kubevirtioapicorev1VirtualMachineInstanceMigrationStateStartTimestamp :: K8siov1Time -- ^ The time the migration action began
  , kubevirtioapicorev1VirtualMachineInstanceMigrationStateTargetAttachmentPodUID :: Text -- ^ The UID of the target attachment pod for hotplug volumes
  , kubevirtioapicorev1VirtualMachineInstanceMigrationStateTargetCPUSet :: [Int] -- ^ If the VMI requires dedicated CPUs, this field will hold the dedicated CPU set on the target node
  , kubevirtioapicorev1VirtualMachineInstanceMigrationStateTargetDirectMigrationNodePorts :: Map.Map String Int -- ^ The list of ports opened for live migration on the destination node
  , kubevirtioapicorev1VirtualMachineInstanceMigrationStateTargetNode :: Text -- ^ The target node that the VMI is moving to
  , kubevirtioapicorev1VirtualMachineInstanceMigrationStateTargetNodeAddress :: Text -- ^ The address of the target node to use for the migration
  , kubevirtioapicorev1VirtualMachineInstanceMigrationStateTargetNodeDomainDetected :: Bool -- ^ The Target Node has seen the Domain Start Event
  , kubevirtioapicorev1VirtualMachineInstanceMigrationStateTargetNodeTopology :: Text -- ^ If the VMI requires dedicated CPUs, this field will hold the numa topology on the target node
  , kubevirtioapicorev1VirtualMachineInstanceMigrationStateTargetPod :: Text -- ^ The target pod that the VMI is moving to
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1VirtualMachineInstanceMigrationState where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1VirtualMachineInstanceMigrationState")
instance ToJSON Kubevirtioapicorev1VirtualMachineInstanceMigrationState where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1VirtualMachineInstanceMigrationState")

-- | VirtualMachineInstanceMigration reprents information pertaining to a VMI&#39;s migration.
data Kubevirtioapicorev1VirtualMachineInstanceMigrationStatus = Kubevirtioapicorev1VirtualMachineInstanceMigrationStatus
  { kubevirtioapicorev1VirtualMachineInstanceMigrationStatusConditions :: [Kubevirtioapicorev1VirtualMachineInstanceMigrationCondition] -- ^ 
  , kubevirtioapicorev1VirtualMachineInstanceMigrationStatusPhase :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1VirtualMachineInstanceMigrationStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1VirtualMachineInstanceMigrationStatus")
instance ToJSON Kubevirtioapicorev1VirtualMachineInstanceMigrationStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1VirtualMachineInstanceMigrationStatus")

-- | 
data Kubevirtioapicorev1VirtualMachineInstanceNetworkInterface = Kubevirtioapicorev1VirtualMachineInstanceNetworkInterface
  { kubevirtioapicorev1VirtualMachineInstanceNetworkInterfaceInfoSource :: Text -- ^ Specifies the origin of the interface data collected. values: domain, guest-agent, or both
  , kubevirtioapicorev1VirtualMachineInstanceNetworkInterfaceInterfaceName :: Text -- ^ The interface name inside the Virtual Machine
  , kubevirtioapicorev1VirtualMachineInstanceNetworkInterfaceIpAddress :: Text -- ^ IP address of a Virtual Machine interface. It is always the first item of IPs
  , kubevirtioapicorev1VirtualMachineInstanceNetworkInterfaceIpAddresses :: [Text] -- ^ List of all IP addresses of a Virtual Machine interface
  , kubevirtioapicorev1VirtualMachineInstanceNetworkInterfaceMac :: Text -- ^ Hardware address of a Virtual Machine interface
  , kubevirtioapicorev1VirtualMachineInstanceNetworkInterfaceName :: Text -- ^ Name of the interface, corresponds to name of the network assigned to the interface
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1VirtualMachineInstanceNetworkInterface where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1VirtualMachineInstanceNetworkInterface")
instance ToJSON Kubevirtioapicorev1VirtualMachineInstanceNetworkInterface where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1VirtualMachineInstanceNetworkInterface")

-- | VirtualMachineInstancePhaseTransitionTimestamp gives a timestamp in relation to when a phase is set on a vmi
data Kubevirtioapicorev1VirtualMachineInstancePhaseTransitionTimestamp = Kubevirtioapicorev1VirtualMachineInstancePhaseTransitionTimestamp
  { kubevirtioapicorev1VirtualMachineInstancePhaseTransitionTimestampPhase :: Text -- ^ Phase is the status of the VirtualMachineInstance in kubernetes world. It is not the VirtualMachineInstance status, but partially correlates to it.
  , kubevirtioapicorev1VirtualMachineInstancePhaseTransitionTimestampPhaseTransitionTimestamp :: K8siov1Time -- ^ PhaseTransitionTimestamp is the timestamp of when the phase change occurred
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1VirtualMachineInstancePhaseTransitionTimestamp where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1VirtualMachineInstancePhaseTransitionTimestamp")
instance ToJSON Kubevirtioapicorev1VirtualMachineInstancePhaseTransitionTimestamp where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1VirtualMachineInstancePhaseTransitionTimestamp")

-- | VirtualMachineInstanceSpec is a description of a VirtualMachineInstance.
data Kubevirtioapicorev1VirtualMachineInstanceSpec = Kubevirtioapicorev1VirtualMachineInstanceSpec
  { kubevirtioapicorev1VirtualMachineInstanceSpecAccessCredentials :: [Kubevirtioapicorev1AccessCredential] -- ^ Specifies a set of public keys to inject into the vm guest
  , kubevirtioapicorev1VirtualMachineInstanceSpecAffinity :: K8siov1Affinity -- ^ If affinity is specifies, obey all the affinity rules
  , kubevirtioapicorev1VirtualMachineInstanceSpecDnsConfig :: K8siov1PodDNSConfig -- ^ Specifies the DNS parameters of a pod. Parameters specified here will be merged to the generated DNS configuration based on DNSPolicy.
  , kubevirtioapicorev1VirtualMachineInstanceSpecDnsPolicy :: Text -- ^ Set DNS policy for the pod. Defaults to \"ClusterFirst\". Valid values are 'ClusterFirstWithHostNet', 'ClusterFirst', 'Default' or 'None'. DNS parameters given in DNSConfig will be merged with the policy selected with DNSPolicy. To have DNS options set along with hostNetwork, you have to specify DNS policy explicitly to 'ClusterFirstWithHostNet'.  Possible enum values:  - `\"ClusterFirst\"` indicates that the pod should use cluster DNS first unless hostNetwork is true, if it is available, then fall back on the default (as determined by kubelet) DNS settings.  - `\"ClusterFirstWithHostNet\"` indicates that the pod should use cluster DNS first, if it is available, then fall back on the default (as determined by kubelet) DNS settings.  - `\"Default\"` indicates that the pod should use the default (as determined by kubelet) DNS settings.  - `\"None\"` indicates that the pod should use empty DNS settings. DNS parameters such as nameservers and search paths should be defined via DNSConfig.
  , kubevirtioapicorev1VirtualMachineInstanceSpecDomain :: Kubevirtioapicorev1DomainSpec -- ^ Specification of the desired behavior of the VirtualMachineInstance on the host.
  , kubevirtioapicorev1VirtualMachineInstanceSpecEvictionStrategy :: Text -- ^ EvictionStrategy can be set to \"LiveMigrate\" if the VirtualMachineInstance should be migrated instead of shut-off in case of a node drain.
  , kubevirtioapicorev1VirtualMachineInstanceSpecHostname :: Text -- ^ Specifies the hostname of the vmi If not specified, the hostname will be set to the name of the vmi, if dhcp or cloud-init is configured properly.
  , kubevirtioapicorev1VirtualMachineInstanceSpecLivenessProbe :: Kubevirtioapicorev1Probe -- ^ Periodic probe of VirtualMachineInstance liveness. VirtualmachineInstances will be stopped if the probe fails. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  , kubevirtioapicorev1VirtualMachineInstanceSpecNetworks :: [Kubevirtioapicorev1Network] -- ^ List of networks that can be attached to a vm's virtual interface.
  , kubevirtioapicorev1VirtualMachineInstanceSpecNodeSelector :: Map.Map String Text -- ^ NodeSelector is a selector which must be true for the vmi to fit on a node. Selector which must match a node's labels for the vmi to be scheduled on that node. More info: https://kubernetes.io/docs/concepts/configuration/assign-pod-node/
  , kubevirtioapicorev1VirtualMachineInstanceSpecPriorityClassName :: Text -- ^ If specified, indicates the pod's priority. If not specified, the pod priority will be default or zero if there is no default.
  , kubevirtioapicorev1VirtualMachineInstanceSpecReadinessProbe :: Kubevirtioapicorev1Probe -- ^ Periodic probe of VirtualMachineInstance service readiness. VirtualmachineInstances will be removed from service endpoints if the probe fails. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  , kubevirtioapicorev1VirtualMachineInstanceSpecSchedulerName :: Text -- ^ If specified, the VMI will be dispatched by specified scheduler. If not specified, the VMI will be dispatched by default scheduler.
  , kubevirtioapicorev1VirtualMachineInstanceSpecStartStrategy :: Text -- ^ StartStrategy can be set to \"Paused\" if Virtual Machine should be started in paused state.
  , kubevirtioapicorev1VirtualMachineInstanceSpecSubdomain :: Text -- ^ If specified, the fully qualified vmi hostname will be \"<hostname>.<subdomain>.<pod namespace>.svc.<cluster domain>\". If not specified, the vmi will not have a domainname at all. The DNS entry will resolve to the vmi, no matter if the vmi itself can pick up a hostname.
  , kubevirtioapicorev1VirtualMachineInstanceSpecTerminationGracePeriodSeconds :: Integer -- ^ Grace period observed after signalling a VirtualMachineInstance to stop after which the VirtualMachineInstance is force terminated.
  , kubevirtioapicorev1VirtualMachineInstanceSpecTolerations :: [K8siov1Toleration] -- ^ If toleration is specified, obey all the toleration rules.
  , kubevirtioapicorev1VirtualMachineInstanceSpecVolumes :: [Kubevirtioapicorev1Volume] -- ^ List of volumes that can be mounted by disks belonging to the vmi.
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1VirtualMachineInstanceSpec where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1VirtualMachineInstanceSpec")
instance ToJSON Kubevirtioapicorev1VirtualMachineInstanceSpec where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1VirtualMachineInstanceSpec")

-- | VirtualMachineInstanceStatus represents information about the status of a VirtualMachineInstance. Status may trail the actual state of a system.
data Kubevirtioapicorev1VirtualMachineInstanceStatus = Kubevirtioapicorev1VirtualMachineInstanceStatus
  { kubevirtioapicorev1VirtualMachineInstanceStatusActivePods :: Map.Map String Text -- ^ ActivePods is a mapping of pod UID to node name. It is possible for multiple pods to be running for a single VMI during migration.
  , kubevirtioapicorev1VirtualMachineInstanceStatusConditions :: [Kubevirtioapicorev1VirtualMachineInstanceCondition] -- ^ Conditions are specific points in VirtualMachineInstance's pod runtime.
  , kubevirtioapicorev1VirtualMachineInstanceStatusEvacuationNodeName :: Text -- ^ EvacuationNodeName is used to track the eviction process of a VMI. It stores the name of the node that we want to evacuate. It is meant to be used by KubeVirt core components only and can't be set or modified by users.
  , kubevirtioapicorev1VirtualMachineInstanceStatusFsFreezeStatus :: Text -- ^ FSFreezeStatus is the state of the fs of the guest it can be either frozen or thawed
  , kubevirtioapicorev1VirtualMachineInstanceStatusGuestOSInfo :: Kubevirtioapicorev1VirtualMachineInstanceGuestOSInfo -- ^ Guest OS Information
  , kubevirtioapicorev1VirtualMachineInstanceStatusInterfaces :: [Kubevirtioapicorev1VirtualMachineInstanceNetworkInterface] -- ^ Interfaces represent the details of available network interfaces.
  , kubevirtioapicorev1VirtualMachineInstanceStatusLauncherContainerImageVersion :: Text -- ^ LauncherContainerImageVersion indicates what container image is currently active for the vmi.
  , kubevirtioapicorev1VirtualMachineInstanceStatusMigrationMethod :: Text -- ^ Represents the method using which the vmi can be migrated: live migration or block migration
  , kubevirtioapicorev1VirtualMachineInstanceStatusMigrationState :: Kubevirtioapicorev1VirtualMachineInstanceMigrationState -- ^ Represents the status of a live migration
  , kubevirtioapicorev1VirtualMachineInstanceStatusMigrationTransport :: Text -- ^ This represents the migration transport
  , kubevirtioapicorev1VirtualMachineInstanceStatusNodeName :: Text -- ^ NodeName is the name where the VirtualMachineInstance is currently running.
  , kubevirtioapicorev1VirtualMachineInstanceStatusPhase :: Text -- ^ Phase is the status of the VirtualMachineInstance in kubernetes world. It is not the VirtualMachineInstance status, but partially correlates to it.
  , kubevirtioapicorev1VirtualMachineInstanceStatusPhaseTransitionTimestamps :: [Kubevirtioapicorev1VirtualMachineInstancePhaseTransitionTimestamp] -- ^ PhaseTransitionTimestamp is the timestamp of when the last phase change occurred
  , kubevirtioapicorev1VirtualMachineInstanceStatusQosClass :: Text -- ^ The Quality of Service (QOS) classification assigned to the virtual machine instance based on resource requirements See PodQOSClass type for available QOS classes More info: https://git.k8s.io/community/contributors/design-proposals/node/resource-qos.md
  , kubevirtioapicorev1VirtualMachineInstanceStatusReason :: Text -- ^ A brief CamelCase message indicating details about why the VMI is in this state. e.g. 'NodeUnresponsive'
  , kubevirtioapicorev1VirtualMachineInstanceStatusRuntimeUser :: Integer -- ^ RuntimeUser is used to determine what user will be used in launcher
  , kubevirtioapicorev1VirtualMachineInstanceStatusTopologyHints :: Kubevirtioapicorev1TopologyHints -- ^ 
  , kubevirtioapicorev1VirtualMachineInstanceStatusVirtualMachineRevisionName :: Text -- ^ VirtualMachineRevisionName is used to get the vm revision of the vmi when doing an online vm snapshot
  , kubevirtioapicorev1VirtualMachineInstanceStatusVolumeStatus :: [Kubevirtioapicorev1VolumeStatus] -- ^ VolumeStatus contains the statuses of all the volumes
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1VirtualMachineInstanceStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1VirtualMachineInstanceStatus")
instance ToJSON Kubevirtioapicorev1VirtualMachineInstanceStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1VirtualMachineInstanceStatus")

-- | 
data Kubevirtioapicorev1VirtualMachineInstanceTemplateSpec = Kubevirtioapicorev1VirtualMachineInstanceTemplateSpec
  { kubevirtioapicorev1VirtualMachineInstanceTemplateSpecMetadata :: K8siov1ObjectMeta -- ^ 
  , kubevirtioapicorev1VirtualMachineInstanceTemplateSpecSpec :: Kubevirtioapicorev1VirtualMachineInstanceSpec -- ^ VirtualMachineInstance Spec contains the VirtualMachineInstance specification.
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1VirtualMachineInstanceTemplateSpec where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1VirtualMachineInstanceTemplateSpec")
instance ToJSON Kubevirtioapicorev1VirtualMachineInstanceTemplateSpec where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1VirtualMachineInstanceTemplateSpec")

-- | VirtualMachineList is a list of virtualmachines
data Kubevirtioapicorev1VirtualMachineList = Kubevirtioapicorev1VirtualMachineList
  { kubevirtioapicorev1VirtualMachineListApiVersion :: Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  , kubevirtioapicorev1VirtualMachineListItems :: [Kubevirtioapicorev1VirtualMachine] -- ^ 
  , kubevirtioapicorev1VirtualMachineListKind :: Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  , kubevirtioapicorev1VirtualMachineListMetadata :: K8siov1ListMeta -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1VirtualMachineList where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1VirtualMachineList")
instance ToJSON Kubevirtioapicorev1VirtualMachineList where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1VirtualMachineList")

-- | VirtualMachineSpec describes how the proper VirtualMachine should look like
data Kubevirtioapicorev1VirtualMachineSpec = Kubevirtioapicorev1VirtualMachineSpec
  { kubevirtioapicorev1VirtualMachineSpecDataVolumeTemplates :: [Kubevirtioapicorev1DataVolumeTemplateSpec] -- ^ dataVolumeTemplates is a list of dataVolumes that the VirtualMachineInstance template can reference. DataVolumes in this list are dynamically created for the VirtualMachine and are tied to the VirtualMachine's life-cycle.
  , kubevirtioapicorev1VirtualMachineSpecFlavor :: Kubevirtioapicorev1FlavorMatcher -- ^ FlavorMatcher references a flavor that is used to fill fields in Template
  , kubevirtioapicorev1VirtualMachineSpecRunStrategy :: Text -- ^ Running state indicates the requested running state of the VirtualMachineInstance mutually exclusive with Running
  , kubevirtioapicorev1VirtualMachineSpecRunning :: Bool -- ^ Running controls whether the associatied VirtualMachineInstance is created or not Mutually exclusive with RunStrategy
  , kubevirtioapicorev1VirtualMachineSpecTemplate :: Kubevirtioapicorev1VirtualMachineInstanceTemplateSpec -- ^ Template is the direct specification of VirtualMachineInstance
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1VirtualMachineSpec where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1VirtualMachineSpec")
instance ToJSON Kubevirtioapicorev1VirtualMachineSpec where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1VirtualMachineSpec")

-- | VirtualMachineStartFailure tracks VMIs which failed to transition successfully to running using the VM status
data Kubevirtioapicorev1VirtualMachineStartFailure = Kubevirtioapicorev1VirtualMachineStartFailure
  { kubevirtioapicorev1VirtualMachineStartFailureConsecutiveFailCount :: Int -- ^ 
  , kubevirtioapicorev1VirtualMachineStartFailureLastFailedVMIUID :: Text -- ^ 
  , kubevirtioapicorev1VirtualMachineStartFailureRetryAfterTimestamp :: K8siov1Time -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1VirtualMachineStartFailure where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1VirtualMachineStartFailure")
instance ToJSON Kubevirtioapicorev1VirtualMachineStartFailure where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1VirtualMachineStartFailure")

-- | 
data Kubevirtioapicorev1VirtualMachineStateChangeRequest = Kubevirtioapicorev1VirtualMachineStateChangeRequest
  { kubevirtioapicorev1VirtualMachineStateChangeRequestAction :: Text -- ^ Indicates the type of action that is requested. e.g. Start or Stop
  , kubevirtioapicorev1VirtualMachineStateChangeRequestData :: Map.Map String Text -- ^ Provides additional data in order to perform the Action
  , kubevirtioapicorev1VirtualMachineStateChangeRequestUid :: Text -- ^ Indicates the UUID of an existing Virtual Machine Instance that this change request applies to -- if applicable
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1VirtualMachineStateChangeRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1VirtualMachineStateChangeRequest")
instance ToJSON Kubevirtioapicorev1VirtualMachineStateChangeRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1VirtualMachineStateChangeRequest")

-- | VirtualMachineStatus represents the status returned by the controller to describe how the VirtualMachine is doing
data Kubevirtioapicorev1VirtualMachineStatus = Kubevirtioapicorev1VirtualMachineStatus
  { kubevirtioapicorev1VirtualMachineStatusConditions :: [Kubevirtioapicorev1VirtualMachineCondition] -- ^ Hold the state information of the VirtualMachine and its VirtualMachineInstance
  , kubevirtioapicorev1VirtualMachineStatusCreated :: Bool -- ^ Created indicates if the virtual machine is created in the cluster
  , kubevirtioapicorev1VirtualMachineStatusPrintableStatus :: Text -- ^ PrintableStatus is a human readable, high-level representation of the status of the virtual machine
  , kubevirtioapicorev1VirtualMachineStatusReady :: Bool -- ^ Ready indicates if the virtual machine is running and ready
  , kubevirtioapicorev1VirtualMachineStatusRestoreInProgress :: Text -- ^ RestoreInProgress is the name of the VirtualMachineRestore currently executing
  , kubevirtioapicorev1VirtualMachineStatusSnapshotInProgress :: Text -- ^ SnapshotInProgress is the name of the VirtualMachineSnapshot currently executing
  , kubevirtioapicorev1VirtualMachineStatusStartFailure :: Kubevirtioapicorev1VirtualMachineStartFailure -- ^ StartFailure tracks consecutive VMI startup failures for the purposes of crash loop backoffs
  , kubevirtioapicorev1VirtualMachineStatusStateChangeRequests :: [Kubevirtioapicorev1VirtualMachineStateChangeRequest] -- ^ StateChangeRequests indicates a list of actions that should be taken on a VMI e.g. stop a specific VMI then start a new one.
  , kubevirtioapicorev1VirtualMachineStatusVolumeRequests :: [Kubevirtioapicorev1VirtualMachineVolumeRequest] -- ^ VolumeRequests indicates a list of volumes add or remove from the VMI template and hotplug on an active running VMI.
  , kubevirtioapicorev1VirtualMachineStatusVolumeSnapshotStatuses :: [Kubevirtioapicorev1VolumeSnapshotStatus] -- ^ VolumeSnapshotStatuses indicates a list of statuses whether snapshotting is supported by each volume.
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1VirtualMachineStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1VirtualMachineStatus")
instance ToJSON Kubevirtioapicorev1VirtualMachineStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1VirtualMachineStatus")

-- | 
data Kubevirtioapicorev1VirtualMachineVolumeRequest = Kubevirtioapicorev1VirtualMachineVolumeRequest
  { kubevirtioapicorev1VirtualMachineVolumeRequestAddVolumeOptions :: Kubevirtioapicorev1AddVolumeOptions -- ^ AddVolumeOptions when set indicates a volume should be added. The details within this field specify how to add the volume
  , kubevirtioapicorev1VirtualMachineVolumeRequestRemoveVolumeOptions :: Kubevirtioapicorev1RemoveVolumeOptions -- ^ RemoveVolumeOptions when set indicates a volume should be removed. The details within this field specify how to add the volume
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1VirtualMachineVolumeRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1VirtualMachineVolumeRequest")
instance ToJSON Kubevirtioapicorev1VirtualMachineVolumeRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1VirtualMachineVolumeRequest")

-- | Volume represents a named volume in a vmi.
data Kubevirtioapicorev1Volume = Kubevirtioapicorev1Volume
  { kubevirtioapicorev1VolumeCloudInitConfigDrive :: Kubevirtioapicorev1CloudInitConfigDriveSource -- ^ CloudInitConfigDrive represents a cloud-init Config Drive user-data source. The Config Drive data will be added as a disk to the vmi. A proper cloud-init installation is required inside the guest. More info: https://cloudinit.readthedocs.io/en/latest/topics/datasources/configdrive.html
  , kubevirtioapicorev1VolumeCloudInitNoCloud :: Kubevirtioapicorev1CloudInitNoCloudSource -- ^ CloudInitNoCloud represents a cloud-init NoCloud user-data source. The NoCloud data will be added as a disk to the vmi. A proper cloud-init installation is required inside the guest. More info: http://cloudinit.readthedocs.io/en/latest/topics/datasources/nocloud.html
  , kubevirtioapicorev1VolumeConfigMap :: Kubevirtioapicorev1ConfigMapVolumeSource -- ^ ConfigMapSource represents a reference to a ConfigMap in the same namespace. More info: https://kubernetes.io/docs/tasks/configure-pod-container/configure-pod-configmap/
  , kubevirtioapicorev1VolumeContainerDisk :: Kubevirtioapicorev1ContainerDiskSource -- ^ ContainerDisk references a docker image, embedding a qcow or raw disk. More info: https://kubevirt.gitbooks.io/user-guide/registry-disk.html
  , kubevirtioapicorev1VolumeDataVolume :: Kubevirtioapicorev1DataVolumeSource -- ^ DataVolume represents the dynamic creation a PVC for this volume as well as the process of populating that PVC with a disk image.
  , kubevirtioapicorev1VolumeDownwardAPI :: Kubevirtioapicorev1DownwardAPIVolumeSource -- ^ DownwardAPI represents downward API about the pod that should populate this volume
  , kubevirtioapicorev1VolumeDownwardMetrics :: Kubevirtioapicorev1DownwardMetricsVolumeSource -- ^ DownwardMetrics adds a very small disk to VMIs which contains a limited view of host and guest metrics. The disk content is compatible with vhostmd (https://github.com/vhostmd/vhostmd) and vm-dump-metrics.
  , kubevirtioapicorev1VolumeEmptyDisk :: Kubevirtioapicorev1EmptyDiskSource -- ^ EmptyDisk represents a temporary disk which shares the vmis lifecycle. More info: https://kubevirt.gitbooks.io/user-guide/disks-and-volumes.html
  , kubevirtioapicorev1VolumeEphemeral :: Kubevirtioapicorev1EphemeralVolumeSource -- ^ Ephemeral is a special volume source that \"wraps\" specified source and provides copy-on-write image on top of it.
  , kubevirtioapicorev1VolumeHostDisk :: Kubevirtioapicorev1HostDisk -- ^ HostDisk represents a disk created on the cluster level
  , kubevirtioapicorev1VolumeName :: Text -- ^ Volume's name. Must be a DNS_LABEL and unique within the vmi. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  , kubevirtioapicorev1VolumePersistentVolumeClaim :: Kubevirtioapicorev1PersistentVolumeClaimVolumeSource -- ^ PersistentVolumeClaimVolumeSource represents a reference to a PersistentVolumeClaim in the same namespace. Directly attached to the vmi via qemu. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims
  , kubevirtioapicorev1VolumeSecret :: Kubevirtioapicorev1SecretVolumeSource -- ^ SecretVolumeSource represents a reference to a secret data in the same namespace. More info: https://kubernetes.io/docs/concepts/configuration/secret/
  , kubevirtioapicorev1VolumeServiceAccount :: Kubevirtioapicorev1ServiceAccountVolumeSource -- ^ ServiceAccountVolumeSource represents a reference to a service account. There can only be one volume of this type! More info: https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/
  , kubevirtioapicorev1VolumeSysprep :: Kubevirtioapicorev1SysprepSource -- ^ Represents a Sysprep volume source.
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1Volume where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1Volume")
instance ToJSON Kubevirtioapicorev1Volume where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1Volume")

-- | 
data Kubevirtioapicorev1VolumeSnapshotStatus = Kubevirtioapicorev1VolumeSnapshotStatus
  { kubevirtioapicorev1VolumeSnapshotStatusEnabled :: Bool -- ^ True if the volume supports snapshotting
  , kubevirtioapicorev1VolumeSnapshotStatusName :: Text -- ^ Volume name
  , kubevirtioapicorev1VolumeSnapshotStatusReason :: Text -- ^ Empty if snapshotting is enabled, contains reason otherwise
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1VolumeSnapshotStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1VolumeSnapshotStatus")
instance ToJSON Kubevirtioapicorev1VolumeSnapshotStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1VolumeSnapshotStatus")

-- | VolumeStatus represents information about the status of volumes attached to the VirtualMachineInstance.
data Kubevirtioapicorev1VolumeStatus = Kubevirtioapicorev1VolumeStatus
  { kubevirtioapicorev1VolumeStatusHotplugVolume :: Kubevirtioapicorev1HotplugVolumeStatus -- ^ If the volume is hotplug, this will contain the hotplug status.
  , kubevirtioapicorev1VolumeStatusMessage :: Text -- ^ Message is a detailed message about the current hotplug volume phase
  , kubevirtioapicorev1VolumeStatusName :: Text -- ^ Name is the name of the volume
  , kubevirtioapicorev1VolumeStatusPersistentVolumeClaimInfo :: Kubevirtioapicorev1PersistentVolumeClaimInfo -- ^ PersistentVolumeClaimInfo is information about the PVC that handler requires during start flow
  , kubevirtioapicorev1VolumeStatusPhase :: Text -- ^ Phase is the phase
  , kubevirtioapicorev1VolumeStatusReason :: Text -- ^ Reason is a brief description of why we are in the current hotplug volume phase
  , kubevirtioapicorev1VolumeStatusSize :: Integer -- ^ Represents the size of the volume
  , kubevirtioapicorev1VolumeStatusTarget :: Text -- ^ Target is the target name used when adding the volume to the VM, eg: vda
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1VolumeStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1VolumeStatus")
instance ToJSON Kubevirtioapicorev1VolumeStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1VolumeStatus")

-- | Named watchdog device.
data Kubevirtioapicorev1Watchdog = Kubevirtioapicorev1Watchdog
  { kubevirtioapicorev1WatchdogI6300esb :: Kubevirtioapicorev1I6300ESBWatchdog -- ^ i6300esb watchdog device.
  , kubevirtioapicorev1WatchdogName :: Text -- ^ Name of the watchdog.
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtioapicorev1Watchdog where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtioapicorev1Watchdog")
instance ToJSON Kubevirtioapicorev1Watchdog where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtioapicorev1Watchdog")

-- | DataVolumeBlankImage provides the parameters to create a new raw blank image for the PVC
data Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeBlankImage = Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeBlankImage
  { 
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeBlankImage where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeBlankImage")
instance ToJSON Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeBlankImage where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeBlankImage")

-- | DataVolumeCheckpoint defines a stage in a warm migration.
data Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeCheckpoint = Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeCheckpoint
  { kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeCheckpointCurrent :: Text -- ^ Current is the identifier of the snapshot created for this checkpoint.
  , kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeCheckpointPrevious :: Text -- ^ Previous is the identifier of the snapshot from the previous checkpoint.
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeCheckpoint where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeCheckpoint")
instance ToJSON Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeCheckpoint where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeCheckpoint")

-- | DataVolumeSource represents the source for our Data Volume, this can be HTTP, Imageio, S3, Registry or an existing PVC
data Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSource = Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSource
  { kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceBlank :: Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeBlankImage -- ^ 
  , kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceHttp :: Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceHTTP -- ^ 
  , kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceImageio :: Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceImageIO -- ^ 
  , kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourcePvc :: Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourcePVC -- ^ 
  , kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceRegistry :: Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceRegistry -- ^ 
  , kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceS3 :: Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceS3 -- ^ 
  , kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceUpload :: Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceUpload -- ^ 
  , kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceVddk :: Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceVDDK -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSource where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSource")
instance ToJSON Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSource where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSource")

-- | DataVolumeSourceHTTP can be either an http or https endpoint, with an optional basic auth user name and password, and an optional configmap containing additional CAs
data Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceHTTP = Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceHTTP
  { kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceHTTPCertConfigMap :: Text -- ^ CertConfigMap is a configmap reference, containing a Certificate Authority(CA) public key, and a base64 encoded pem certificate
  , kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceHTTPExtraHeaders :: [Text] -- ^ ExtraHeaders is a list of strings containing extra headers to include with HTTP transfer requests
  , kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceHTTPSecretExtraHeaders :: [Text] -- ^ SecretExtraHeaders is a list of Secret references, each containing an extra HTTP header that may include sensitive information
  , kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceHTTPSecretRef :: Text -- ^ SecretRef A Secret reference, the secret should contain accessKeyId (user name) base64 encoded, and secretKey (password) also base64 encoded
  , kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceHTTPUrl :: Text -- ^ URL is the URL of the http(s) endpoint
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceHTTP where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceHTTP")
instance ToJSON Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceHTTP where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceHTTP")

-- | DataVolumeSourceImageIO provides the parameters to create a Data Volume from an imageio source
data Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceImageIO = Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceImageIO
  { kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceImageIOCertConfigMap :: Text -- ^ CertConfigMap provides a reference to the CA cert
  , kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceImageIODiskId :: Text -- ^ DiskID provides id of a disk to be imported
  , kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceImageIOSecretRef :: Text -- ^ SecretRef provides the secret reference needed to access the ovirt-engine
  , kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceImageIOUrl :: Text -- ^ URL is the URL of the ovirt-engine
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceImageIO where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceImageIO")
instance ToJSON Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceImageIO where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceImageIO")

-- | DataVolumeSourcePVC provides the parameters to create a Data Volume from an existing PVC
data Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourcePVC = Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourcePVC
  { kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourcePVCName :: Text -- ^ The name of the source PVC
  , kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourcePVCNamespace :: Text -- ^ The namespace of the source PVC
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourcePVC where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourcePVC")
instance ToJSON Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourcePVC where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourcePVC")

-- | DataVolumeSourceRef defines an indirect reference to the source of data for the DataVolume
data Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceRef = Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceRef
  { kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceRefKind :: Text -- ^ The kind of the source reference, currently only \"DataSource\" is supported
  , kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceRefName :: Text -- ^ The name of the source reference
  , kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceRefNamespace :: Text -- ^ The namespace of the source reference, defaults to the DataVolume namespace
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceRef where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceRef")
instance ToJSON Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceRef where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceRef")

-- | DataVolumeSourceRegistry provides the parameters to create a Data Volume from an registry source
data Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceRegistry = Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceRegistry
  { kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceRegistryCertConfigMap :: Text -- ^ CertConfigMap provides a reference to the Registry certs
  , kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceRegistryImageStream :: Text -- ^ ImageStream is the name of image stream for import
  , kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceRegistryPullMethod :: Text -- ^ PullMethod can be either \"pod\" (default import), or \"node\" (node docker cache based import)
  , kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceRegistrySecretRef :: Text -- ^ SecretRef provides the secret reference needed to access the Registry source
  , kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceRegistryUrl :: Text -- ^ URL is the url of the registry source (starting with the scheme: docker, oci-archive)
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceRegistry where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceRegistry")
instance ToJSON Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceRegistry where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceRegistry")

-- | DataVolumeSourceS3 provides the parameters to create a Data Volume from an S3 source
data Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceS3 = Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceS3
  { kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceS3CertConfigMap :: Text -- ^ CertConfigMap is a configmap reference, containing a Certificate Authority(CA) public key, and a base64 encoded pem certificate
  , kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceS3SecretRef :: Text -- ^ SecretRef provides the secret reference needed to access the S3 source
  , kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceS3Url :: Text -- ^ URL is the url of the S3 source
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceS3 where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceS3")
instance ToJSON Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceS3 where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceS3")

-- | DataVolumeSourceUpload provides the parameters to create a Data Volume by uploading the source
data Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceUpload = Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceUpload
  { 
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceUpload where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceUpload")
instance ToJSON Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceUpload where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceUpload")

-- | DataVolumeSourceVDDK provides the parameters to create a Data Volume from a Vmware source
data Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceVDDK = Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceVDDK
  { kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceVDDKBackingFile :: Text -- ^ BackingFile is the path to the virtual hard disk to migrate from vCenter/ESXi
  , kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceVDDKInitImageURL :: Text -- ^ InitImageURL is an optional URL to an image containing an extracted VDDK library, overrides v2v-vmware config map
  , kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceVDDKSecretRef :: Text -- ^ SecretRef provides a reference to a secret containing the username and password needed to access the vCenter or ESXi host
  , kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceVDDKThumbprint :: Text -- ^ Thumbprint is the certificate thumbprint of the vCenter or ESXi host
  , kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceVDDKUrl :: Text -- ^ URL is the URL of the vCenter or ESXi host with the VM to migrate
  , kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceVDDKUuid :: Text -- ^ UUID is the UUID of the virtual machine that the backing file is attached to in vCenter/ESXi
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceVDDK where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceVDDK")
instance ToJSON Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceVDDK where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceVDDK")

-- | DataVolumeSpec defines the DataVolume type specification
data Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSpec = Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSpec
  { kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSpecCheckpoints :: [Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeCheckpoint] -- ^ Checkpoints is a list of DataVolumeCheckpoints, representing stages in a multistage import.
  , kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSpecContentType :: Text -- ^ DataVolumeContentType options: \"kubevirt\", \"archive\"
  , kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSpecFinalCheckpoint :: Bool -- ^ FinalCheckpoint indicates whether the current DataVolumeCheckpoint is the final checkpoint.
  , kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSpecPreallocation :: Bool -- ^ Preallocation controls whether storage for DataVolumes should be allocated in advance.
  , kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSpecPriorityClassName :: Text -- ^ PriorityClassName for Importer, Cloner and Uploader pod
  , kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSpecPvc :: K8siov1PersistentVolumeClaimSpec -- ^ PVC is the PVC specification
  , kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSpecSource :: Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSource -- ^ Source is the src of the data for the requested DataVolume
  , kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSpecSourceRef :: Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSourceRef -- ^ SourceRef is an indirect reference to the source of data for the requested DataVolume
  , kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSpecStorage :: Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1StorageSpec -- ^ Storage is the requested storage specification
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSpec where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSpec")
instance ToJSON Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSpec where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1DataVolumeSpec")

-- | StorageSpec defines the Storage type specification
data Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1StorageSpec = Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1StorageSpec
  { kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1StorageSpecAccessModes :: [Text] -- ^ AccessModes contains the desired access modes the volume should have. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1
  , kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1StorageSpecDataSource :: K8siov1TypedLocalObjectReference -- ^ This field can be used to specify either: * An existing VolumeSnapshot object (snapshot.storage.k8s.io/VolumeSnapshot) * An existing PVC (PersistentVolumeClaim) * An existing custom resource that implements data population (Alpha) In order to use custom resource types that implement data population, the AnyVolumeDataSource feature gate must be enabled. If the provisioner or an external controller can support the specified data source, it will create a new volume based on the contents of the specified data source.
  , kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1StorageSpecResources :: K8siov1ResourceRequirements -- ^ Resources represents the minimum resources the volume should have. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources
  , kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1StorageSpecSelector :: K8siov1LabelSelector -- ^ A label query over volumes to consider for binding.
  , kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1StorageSpecStorageClassName :: Text -- ^ Name of the StorageClass required by the claim. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1
  , kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1StorageSpecVolumeMode :: Text -- ^ volumeMode defines what type of volume is required by the claim. Value of Filesystem is implied when not included in claim spec.
  , kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1StorageSpecVolumeName :: Text -- ^ VolumeName is the binding reference to the PersistentVolume backing this claim.
  } deriving (Show, Eq, Generic)

instance FromJSON Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1StorageSpec where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1StorageSpec")
instance ToJSON Kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1StorageSpec where
  toJSON = genericToJSON (removeFieldLabelPrefix False "kubevirtiocontainerizeddataimporterapipkgapiscorev1beta1StorageSpec")

-- | 
data Networkharvesterhciiov1beta1ClusterNetwork = Networkharvesterhciiov1beta1ClusterNetwork
  { networkharvesterhciiov1beta1ClusterNetworkApiVersion :: Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  , networkharvesterhciiov1beta1ClusterNetworkConfig :: Map.Map String Text -- ^ 
  , networkharvesterhciiov1beta1ClusterNetworkDescription :: Text -- ^ 
  , networkharvesterhciiov1beta1ClusterNetworkEnable :: Bool -- ^ 
  , networkharvesterhciiov1beta1ClusterNetworkKind :: Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  , networkharvesterhciiov1beta1ClusterNetworkMetadata :: K8siov1ObjectMeta -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Networkharvesterhciiov1beta1ClusterNetwork where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "networkharvesterhciiov1beta1ClusterNetwork")
instance ToJSON Networkharvesterhciiov1beta1ClusterNetwork where
  toJSON = genericToJSON (removeFieldLabelPrefix False "networkharvesterhciiov1beta1ClusterNetwork")

-- | ClusterNetworkList is a list of ClusterNetwork resources
data Networkharvesterhciiov1beta1ClusterNetworkList = Networkharvesterhciiov1beta1ClusterNetworkList
  { networkharvesterhciiov1beta1ClusterNetworkListApiVersion :: Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  , networkharvesterhciiov1beta1ClusterNetworkListItems :: [Networkharvesterhciiov1beta1ClusterNetwork] -- ^ 
  , networkharvesterhciiov1beta1ClusterNetworkListKind :: Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  , networkharvesterhciiov1beta1ClusterNetworkListMetadata :: K8siov1ListMeta -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Networkharvesterhciiov1beta1ClusterNetworkList where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "networkharvesterhciiov1beta1ClusterNetworkList")
instance ToJSON Networkharvesterhciiov1beta1ClusterNetworkList where
  toJSON = genericToJSON (removeFieldLabelPrefix False "networkharvesterhciiov1beta1ClusterNetworkList")

-- | 
data Networkharvesterhciiov1beta1Condition = Networkharvesterhciiov1beta1Condition
  { networkharvesterhciiov1beta1ConditionLastTransitionTime :: Text -- ^ Last time the condition transitioned from one status to another.
  , networkharvesterhciiov1beta1ConditionLastUpdateTime :: Text -- ^ The last time this condition was updated.
  , networkharvesterhciiov1beta1ConditionMessage :: Text -- ^ Human-readable message indicating details about last transition
  , networkharvesterhciiov1beta1ConditionReason :: Text -- ^ The reason for the condition's last transition.
  , networkharvesterhciiov1beta1ConditionStatus :: Text -- ^ Status of the condition, one of True, False, Unknown.
  , networkharvesterhciiov1beta1ConditionType :: Text -- ^ Type of the condition.
  } deriving (Show, Eq, Generic)

instance FromJSON Networkharvesterhciiov1beta1Condition where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "networkharvesterhciiov1beta1Condition")
instance ToJSON Networkharvesterhciiov1beta1Condition where
  toJSON = genericToJSON (removeFieldLabelPrefix False "networkharvesterhciiov1beta1Condition")

-- | 
data Networkharvesterhciiov1beta1LinkStatus = Networkharvesterhciiov1beta1LinkStatus
  { networkharvesterhciiov1beta1LinkStatusConditions :: [Networkharvesterhciiov1beta1Condition] -- ^ 
  , networkharvesterhciiov1beta1LinkStatusIndex :: Int -- ^ 
  , networkharvesterhciiov1beta1LinkStatusIpv4Address :: [Text] -- ^ 
  , networkharvesterhciiov1beta1LinkStatusMac :: Text -- ^ 
  , networkharvesterhciiov1beta1LinkStatusMasterIndex :: Int -- ^ 
  , networkharvesterhciiov1beta1LinkStatusPromiscuous :: Bool -- ^ 
  , networkharvesterhciiov1beta1LinkStatusRoutes :: [Text] -- ^ 
  , networkharvesterhciiov1beta1LinkStatusState :: Text -- ^ 
  , networkharvesterhciiov1beta1LinkStatusType :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Networkharvesterhciiov1beta1LinkStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "networkharvesterhciiov1beta1LinkStatus")
instance ToJSON Networkharvesterhciiov1beta1LinkStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "networkharvesterhciiov1beta1LinkStatus")

-- | 
data Networkharvesterhciiov1beta1NIC = Networkharvesterhciiov1beta1NIC
  { networkharvesterhciiov1beta1NICIndex :: Int -- ^ Index of the NIC
  , networkharvesterhciiov1beta1NICMasterIndex :: Int -- ^ Index of the NIC's master
  , networkharvesterhciiov1beta1NICName :: Text -- ^ Name of the NIC
  , networkharvesterhciiov1beta1NICState :: Text -- ^ State of the NIC, up/down/unknown
  , networkharvesterhciiov1beta1NICType :: Text -- ^ Interface type of the NIC
  , networkharvesterhciiov1beta1NICUsedByManagementNetwork :: Bool -- ^ Specify whether used by management network or not
  } deriving (Show, Eq, Generic)

instance FromJSON Networkharvesterhciiov1beta1NIC where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "networkharvesterhciiov1beta1NIC")
instance ToJSON Networkharvesterhciiov1beta1NIC where
  toJSON = genericToJSON (removeFieldLabelPrefix False "networkharvesterhciiov1beta1NIC")

-- | 
data Networkharvesterhciiov1beta1NodeNetwork = Networkharvesterhciiov1beta1NodeNetwork
  { networkharvesterhciiov1beta1NodeNetworkApiVersion :: Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  , networkharvesterhciiov1beta1NodeNetworkKind :: Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  , networkharvesterhciiov1beta1NodeNetworkMetadata :: K8siov1ObjectMeta -- ^ 
  , networkharvesterhciiov1beta1NodeNetworkSpec :: Networkharvesterhciiov1beta1NodeNetworkSpec -- ^ 
  , networkharvesterhciiov1beta1NodeNetworkStatus :: Networkharvesterhciiov1beta1NodeNetworkStatus -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Networkharvesterhciiov1beta1NodeNetwork where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "networkharvesterhciiov1beta1NodeNetwork")
instance ToJSON Networkharvesterhciiov1beta1NodeNetwork where
  toJSON = genericToJSON (removeFieldLabelPrefix False "networkharvesterhciiov1beta1NodeNetwork")

-- | NodeNetworkList is a list of NodeNetwork resources
data Networkharvesterhciiov1beta1NodeNetworkList = Networkharvesterhciiov1beta1NodeNetworkList
  { networkharvesterhciiov1beta1NodeNetworkListApiVersion :: Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  , networkharvesterhciiov1beta1NodeNetworkListItems :: [Networkharvesterhciiov1beta1NodeNetwork] -- ^ 
  , networkharvesterhciiov1beta1NodeNetworkListKind :: Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  , networkharvesterhciiov1beta1NodeNetworkListMetadata :: K8siov1ListMeta -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Networkharvesterhciiov1beta1NodeNetworkList where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "networkharvesterhciiov1beta1NodeNetworkList")
instance ToJSON Networkharvesterhciiov1beta1NodeNetworkList where
  toJSON = genericToJSON (removeFieldLabelPrefix False "networkharvesterhciiov1beta1NodeNetworkList")

-- | 
data Networkharvesterhciiov1beta1NodeNetworkSpec = Networkharvesterhciiov1beta1NodeNetworkSpec
  { networkharvesterhciiov1beta1NodeNetworkSpecDescription :: Text -- ^ 
  , networkharvesterhciiov1beta1NodeNetworkSpecNic :: Text -- ^ 
  , networkharvesterhciiov1beta1NodeNetworkSpecNodeName :: Text -- ^ 
  , networkharvesterhciiov1beta1NodeNetworkSpecType :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Networkharvesterhciiov1beta1NodeNetworkSpec where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "networkharvesterhciiov1beta1NodeNetworkSpec")
instance ToJSON Networkharvesterhciiov1beta1NodeNetworkSpec where
  toJSON = genericToJSON (removeFieldLabelPrefix False "networkharvesterhciiov1beta1NodeNetworkSpec")

-- | 
data Networkharvesterhciiov1beta1NodeNetworkStatus = Networkharvesterhciiov1beta1NodeNetworkStatus
  { networkharvesterhciiov1beta1NodeNetworkStatusConditions :: [Networkharvesterhciiov1beta1Condition] -- ^ 
  , networkharvesterhciiov1beta1NodeNetworkStatusNetworkIDs :: [Int] -- ^ 
  , networkharvesterhciiov1beta1NodeNetworkStatusNetworkLinkStatus :: Map.Map String Networkharvesterhciiov1beta1LinkStatus -- ^ 
  , networkharvesterhciiov1beta1NodeNetworkStatusNics :: [Networkharvesterhciiov1beta1NIC] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Networkharvesterhciiov1beta1NodeNetworkStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "networkharvesterhciiov1beta1NodeNetworkStatus")
instance ToJSON Networkharvesterhciiov1beta1NodeNetworkStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "networkharvesterhciiov1beta1NodeNetworkStatus")

-- Remove a field label prefix during JSON parsing.
-- Also perform any replacements for special characters.
removeFieldLabelPrefix :: Bool -> String -> Options
removeFieldLabelPrefix forParsing prefix =
  defaultOptions
  {fieldLabelModifier = fromMaybe (error ("did not find prefix " ++ prefix)) . stripPrefix prefix . replaceSpecialChars}
  where
    replaceSpecialChars field = foldl (&) field (map mkCharReplacement specialChars)
    specialChars =
      [ ("@", "'At")
      , ("\\", "'Back_Slash")
      , ("<=", "'Less_Than_Or_Equal_To")
      , ("\"", "'Double_Quote")
      , ("[", "'Left_Square_Bracket")
      , ("]", "'Right_Square_Bracket")
      , ("^", "'Caret")
      , ("_", "'Underscore")
      , ("`", "'Backtick")
      , ("!", "'Exclamation")
      , ("#", "'Hash")
      , ("$", "'Dollar")
      , ("%", "'Percent")
      , ("&", "'Ampersand")
      , ("'", "'Quote")
      , ("(", "'Left_Parenthesis")
      , (")", "'Right_Parenthesis")
      , ("*", "'Star")
      , ("+", "'Plus")
      , (",", "'Comma")
      , ("-", "'Dash")
      , (".", "'Period")
      , ("/", "'Slash")
      , (":", "'Colon")
      , ("{", "'Left_Curly_Bracket")
      , ("|", "'Pipe")
      , ("<", "'LessThan")
      , ("!=", "'Not_Equal")
      , ("=", "'Equal")
      , ("}", "'Right_Curly_Bracket")
      , (">", "'GreaterThan")
      , ("~", "'Tilde")
      , ("?", "'Question_Mark")
      , (">=", "'Greater_Than_Or_Equal_To")
      ]
    mkCharReplacement (replaceStr, searchStr) = T.unpack . replacer (T.pack searchStr) (T.pack replaceStr) . T.pack
    replacer =
      if forParsing
        then flip T.replace
        else T.replace
