{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DeriveTraversable #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE ViewPatterns #-}
{-# OPTIONS_GHC
-fno-warn-unused-binds -fno-warn-unused-imports -fcontext-stack=328 #-}

module HarvesterAPIs.API
  -- * Client and Server
  ( ServerConfig(..)
  , HarvesterAPIsBackend
  , createHarvesterAPIsClient
  , runHarvesterAPIsServer
  , runHarvesterAPIsClient
  , runHarvesterAPIsClientWithManager
  , HarvesterAPIsClient
  -- ** Servant
  , HarvesterAPIsAPI
  ) where

import HarvesterAPIs.Types

import Control.Monad.Except (ExceptT)
import Control.Monad.IO.Class
import Data.Aeson (Value)
import Data.Coerce (coerce)
import Data.Function ((&))
import qualified Data.Map as Map
import Data.Monoid ((<>))
import Data.Proxy (Proxy(..))
import Data.Text (Text)
import qualified Data.Text as T
import GHC.Exts (IsString(..))
import GHC.Generics (Generic)
import Network.HTTP.Client (Manager, defaultManagerSettings, newManager)
import Network.HTTP.Types.Method (methodOptions)
import qualified Network.Wai.Handler.Warp as Warp
import Servant (ServantErr, serve)
import Servant.API
import Servant.API.Verbs (StdMethod(..), Verb)
import Servant.Client (Scheme(Http), ServantError, client)
import Servant.Common.BaseUrl (BaseUrl(..))
import Web.HttpApiData




-- For the form data code generation.
lookupEither :: FromHttpApiData b => Text -> [(Text, Text)] -> Either String b
lookupEither key assocs =
  case lookup key assocs of
    Nothing -> Left $ "Could not find parameter " <> (T.unpack key) <> " in form data"
    Just value ->
      case parseQueryParam value of
        Left result -> Left $ T.unpack result
        Right result -> Right $ result

-- | Servant type-level API, generated from the Swagger spec for HarvesterAPIs.
type HarvesterAPIsAPI
    =    "apis" :> "harvesterhci.io" :> "v1beta1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "virtualmachinebackups" :> ReqBody '[JSON] Harvesterhciiov1beta1VirtualMachineBackup :> Verb 'POST 200 '[JSON] Harvesterhciiov1beta1VirtualMachineBackup -- 'createNamespacedVirtualMachineBackup' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "virtualmachinebackups" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> QueryParam "gracePeriodSeconds" Int :> QueryParam "orphanDependents" Bool :> QueryParam "propagationPolicy" Text :> ReqBody '[JSON] K8siov1DeleteOptions :> Verb 'DELETE 200 '[JSON] K8siov1Status -- 'deleteNamespacedVirtualMachineBackup' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "virtualmachinebackups" :> QueryParam "continue" Text :> QueryParam "fieldSelector" Text :> QueryParam "includeUninitialized" Bool :> QueryParam "labelSelector" Text :> QueryParam "limit" Int :> QueryParam "resourceVersion" Text :> QueryParam "timeoutSeconds" Int :> QueryParam "watch" Bool :> Verb 'GET 200 '[JSON] Harvesterhciiov1beta1VirtualMachineBackupList -- 'listNamespacedVirtualMachineBackup' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "virtualmachinebackups" :> QueryParam "continue" Text :> QueryParam "fieldSelector" Text :> QueryParam "includeUninitialized" Bool :> QueryParam "labelSelector" Text :> QueryParam "limit" Int :> QueryParam "resourceVersion" Text :> QueryParam "timeoutSeconds" Int :> QueryParam "watch" Bool :> Verb 'GET 200 '[JSON] Harvesterhciiov1beta1VirtualMachineBackupList -- 'listVirtualMachineBackupForAllNamespaces' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "virtualmachinebackups" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> ReqBody '[JSON] K8siov1Patch :> Verb 'PATCH 200 '[JSON] Harvesterhciiov1beta1VirtualMachineBackup -- 'patchNamespacedVirtualMachineBackup' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "virtualmachinebackups" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> QueryParam "exact" Bool :> QueryParam "export" Bool :> Verb 'GET 200 '[JSON] Harvesterhciiov1beta1VirtualMachineBackup -- 'readNamespacedVirtualMachineBackup' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "virtualmachinebackups" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> ReqBody '[JSON] Harvesterhciiov1beta1VirtualMachineBackup :> Verb 'PUT 200 '[JSON] Harvesterhciiov1beta1VirtualMachineBackup -- 'replaceNamespacedVirtualMachineBackup' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "virtualmachineimages" :> ReqBody '[JSON] Harvesterhciiov1beta1VirtualMachineImage :> Verb 'POST 200 '[JSON] Harvesterhciiov1beta1VirtualMachineImage -- 'createNamespacedVirtualMachineImage' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "virtualmachineimages" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> QueryParam "gracePeriodSeconds" Int :> QueryParam "orphanDependents" Bool :> QueryParam "propagationPolicy" Text :> ReqBody '[JSON] K8siov1DeleteOptions :> Verb 'DELETE 200 '[JSON] K8siov1Status -- 'deleteNamespacedVirtualMachineImage' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "virtualmachineimages" :> QueryParam "continue" Text :> QueryParam "fieldSelector" Text :> QueryParam "includeUninitialized" Bool :> QueryParam "labelSelector" Text :> QueryParam "limit" Int :> QueryParam "resourceVersion" Text :> QueryParam "timeoutSeconds" Int :> QueryParam "watch" Bool :> Verb 'GET 200 '[JSON] Harvesterhciiov1beta1VirtualMachineImageList -- 'listNamespacedVirtualMachineImage' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "virtualmachineimages" :> QueryParam "continue" Text :> QueryParam "fieldSelector" Text :> QueryParam "includeUninitialized" Bool :> QueryParam "labelSelector" Text :> QueryParam "limit" Int :> QueryParam "resourceVersion" Text :> QueryParam "timeoutSeconds" Int :> QueryParam "watch" Bool :> Verb 'GET 200 '[JSON] Harvesterhciiov1beta1VirtualMachineImageList -- 'listVirtualMachineImageForAllNamespaces' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "virtualmachineimages" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> ReqBody '[JSON] K8siov1Patch :> Verb 'PATCH 200 '[JSON] Harvesterhciiov1beta1VirtualMachineImage -- 'patchNamespacedVirtualMachineImage' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "virtualmachineimages" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> QueryParam "exact" Bool :> QueryParam "export" Bool :> Verb 'GET 200 '[JSON] Harvesterhciiov1beta1VirtualMachineImage -- 'readNamespacedVirtualMachineImage' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "virtualmachineimages" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> ReqBody '[JSON] Harvesterhciiov1beta1VirtualMachineImage :> Verb 'PUT 200 '[JSON] Harvesterhciiov1beta1VirtualMachineImage -- 'replaceNamespacedVirtualMachineImage' route
    :<|> "apis" :> "kubevirt.io" :> "v1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "virtualmachineinstancemigrations" :> ReqBody '[JSON] Kubevirtioapicorev1VirtualMachineInstanceMigration :> Verb 'POST 200 '[JSON] Kubevirtioapicorev1VirtualMachineInstanceMigration -- 'createNamespacedVirtualMachineInstanceMigration' route
    :<|> "apis" :> "kubevirt.io" :> "v1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "virtualmachineinstancemigrations" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> QueryParam "gracePeriodSeconds" Int :> QueryParam "orphanDependents" Bool :> QueryParam "propagationPolicy" Text :> ReqBody '[JSON] K8siov1DeleteOptions :> Verb 'DELETE 200 '[JSON] K8siov1Status -- 'deleteNamespacedVirtualMachineInstanceMigration' route
    :<|> "apis" :> "kubevirt.io" :> "v1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "virtualmachineinstancemigrations" :> QueryParam "continue" Text :> QueryParam "fieldSelector" Text :> QueryParam "includeUninitialized" Bool :> QueryParam "labelSelector" Text :> QueryParam "limit" Int :> QueryParam "resourceVersion" Text :> QueryParam "timeoutSeconds" Int :> QueryParam "watch" Bool :> Verb 'GET 200 '[JSON] Kubevirtioapicorev1VirtualMachineInstanceMigrationList -- 'listNamespacedVirtualMachineInstanceMigration' route
    :<|> "apis" :> "kubevirt.io" :> "v1" :> "virtualmachineinstancemigrations" :> QueryParam "continue" Text :> QueryParam "fieldSelector" Text :> QueryParam "includeUninitialized" Bool :> QueryParam "labelSelector" Text :> QueryParam "limit" Int :> QueryParam "resourceVersion" Text :> QueryParam "timeoutSeconds" Int :> QueryParam "watch" Bool :> Verb 'GET 200 '[JSON] Kubevirtioapicorev1VirtualMachineInstanceMigrationList -- 'listVirtualMachineInstanceMigrationForAllNamespaces' route
    :<|> "apis" :> "kubevirt.io" :> "v1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "virtualmachineinstancemigrations" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> ReqBody '[JSON] K8siov1Patch :> Verb 'PATCH 200 '[JSON] Kubevirtioapicorev1VirtualMachineInstanceMigration -- 'patchNamespacedVirtualMachineInstanceMigration' route
    :<|> "apis" :> "kubevirt.io" :> "v1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "virtualmachineinstancemigrations" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> QueryParam "exact" Bool :> QueryParam "export" Bool :> Verb 'GET 200 '[JSON] Kubevirtioapicorev1VirtualMachineInstanceMigration -- 'readNamespacedVirtualMachineInstanceMigration' route
    :<|> "apis" :> "kubevirt.io" :> "v1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "virtualmachineinstancemigrations" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> ReqBody '[JSON] Kubevirtioapicorev1VirtualMachineInstanceMigration :> Verb 'PUT 200 '[JSON] Kubevirtioapicorev1VirtualMachineInstanceMigration -- 'replaceNamespacedVirtualMachineInstanceMigration' route
    :<|> "apis" :> "network.harvesterhci.io" :> "v1beta1" :> "clusternetworks" :> ReqBody '[JSON] Networkharvesterhciiov1beta1ClusterNetwork :> Verb 'POST 200 '[JSON] Networkharvesterhciiov1beta1ClusterNetwork -- 'createNamespacedClusterNetwork' route
    :<|> "apis" :> "k8s.cni.cncf.io" :> "v1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "network-attachment-definitions" :> ReqBody '[JSON] K8scnicncfiov1NetworkAttachmentDefinition :> Verb 'POST 200 '[JSON] K8scnicncfiov1NetworkAttachmentDefinition -- 'createNamespacedNetworkAttachmentDefinition' route
    :<|> "apis" :> "network.harvesterhci.io" :> "v1beta1" :> "nodenetworks" :> ReqBody '[JSON] Networkharvesterhciiov1beta1NodeNetwork :> Verb 'POST 200 '[JSON] Networkharvesterhciiov1beta1NodeNetwork -- 'createNamespacedNodeNetwork' route
    :<|> "apis" :> "network.harvesterhci.io" :> "v1beta1" :> "clusternetworks" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> QueryParam "gracePeriodSeconds" Int :> QueryParam "orphanDependents" Bool :> QueryParam "propagationPolicy" Text :> ReqBody '[JSON] K8siov1DeleteOptions :> Verb 'DELETE 200 '[JSON] K8siov1Status -- 'deleteNamespacedClusterNetwork' route
    :<|> "apis" :> "k8s.cni.cncf.io" :> "v1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "network-attachment-definitions" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> QueryParam "gracePeriodSeconds" Int :> QueryParam "orphanDependents" Bool :> QueryParam "propagationPolicy" Text :> ReqBody '[JSON] K8siov1DeleteOptions :> Verb 'DELETE 200 '[JSON] K8siov1Status -- 'deleteNamespacedNetworkAttachmentDefinition' route
    :<|> "apis" :> "network.harvesterhci.io" :> "v1beta1" :> "nodenetworks" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> QueryParam "gracePeriodSeconds" Int :> QueryParam "orphanDependents" Bool :> QueryParam "propagationPolicy" Text :> ReqBody '[JSON] K8siov1DeleteOptions :> Verb 'DELETE 200 '[JSON] K8siov1Status -- 'deleteNamespacedNodeNetwork' route
    :<|> "apis" :> "network.harvesterhci.io" :> "v1beta1" :> "clusternetworks" :> QueryParam "continue" Text :> QueryParam "fieldSelector" Text :> QueryParam "includeUninitialized" Bool :> QueryParam "labelSelector" Text :> QueryParam "limit" Int :> QueryParam "resourceVersion" Text :> QueryParam "timeoutSeconds" Int :> QueryParam "watch" Bool :> Verb 'GET 200 '[JSON] Networkharvesterhciiov1beta1ClusterNetworkList -- 'listNamespacedClusterNetwork' route
    :<|> "apis" :> "k8s.cni.cncf.io" :> "v1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "network-attachment-definitions" :> QueryParam "continue" Text :> QueryParam "fieldSelector" Text :> QueryParam "includeUninitialized" Bool :> QueryParam "labelSelector" Text :> QueryParam "limit" Int :> QueryParam "resourceVersion" Text :> QueryParam "timeoutSeconds" Int :> QueryParam "watch" Bool :> Verb 'GET 200 '[JSON] K8scnicncfiov1NetworkAttachmentDefinitionList -- 'listNamespacedNetworkAttachmentDefinition' route
    :<|> "apis" :> "network.harvesterhci.io" :> "v1beta1" :> "nodenetworks" :> QueryParam "continue" Text :> QueryParam "fieldSelector" Text :> QueryParam "includeUninitialized" Bool :> QueryParam "labelSelector" Text :> QueryParam "limit" Int :> QueryParam "resourceVersion" Text :> QueryParam "timeoutSeconds" Int :> QueryParam "watch" Bool :> Verb 'GET 200 '[JSON] Networkharvesterhciiov1beta1NodeNetworkList -- 'listNamespacedNodeNetwork' route
    :<|> "apis" :> "k8s.cni.cncf.io" :> "v1" :> "network-attachment-definitions" :> QueryParam "continue" Text :> QueryParam "fieldSelector" Text :> QueryParam "includeUninitialized" Bool :> QueryParam "labelSelector" Text :> QueryParam "limit" Int :> QueryParam "resourceVersion" Text :> QueryParam "timeoutSeconds" Int :> QueryParam "watch" Bool :> Verb 'GET 200 '[JSON] K8scnicncfiov1NetworkAttachmentDefinitionList -- 'listNetworkAttachmentDefinitionForAllNamespaces' route
    :<|> "apis" :> "network.harvesterhci.io" :> "v1beta1" :> "clusternetworks" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> ReqBody '[JSON] K8siov1Patch :> Verb 'PATCH 200 '[JSON] Networkharvesterhciiov1beta1ClusterNetwork -- 'patchNamespacedClusterNetwork' route
    :<|> "apis" :> "k8s.cni.cncf.io" :> "v1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "network-attachment-definitions" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> ReqBody '[JSON] K8siov1Patch :> Verb 'PATCH 200 '[JSON] K8scnicncfiov1NetworkAttachmentDefinition -- 'patchNamespacedNetworkAttachmentDefinition' route
    :<|> "apis" :> "network.harvesterhci.io" :> "v1beta1" :> "nodenetworks" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> ReqBody '[JSON] K8siov1Patch :> Verb 'PATCH 200 '[JSON] Networkharvesterhciiov1beta1NodeNetwork -- 'patchNamespacedNodeNetwork' route
    :<|> "apis" :> "network.harvesterhci.io" :> "v1beta1" :> "clusternetworks" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> QueryParam "exact" Bool :> QueryParam "export" Bool :> Verb 'GET 200 '[JSON] Networkharvesterhciiov1beta1ClusterNetwork -- 'readNamespacedClusterNetwork' route
    :<|> "apis" :> "k8s.cni.cncf.io" :> "v1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "network-attachment-definitions" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> QueryParam "exact" Bool :> QueryParam "export" Bool :> Verb 'GET 200 '[JSON] K8scnicncfiov1NetworkAttachmentDefinition -- 'readNamespacedNetworkAttachmentDefinition' route
    :<|> "apis" :> "network.harvesterhci.io" :> "v1beta1" :> "nodenetworks" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> QueryParam "exact" Bool :> QueryParam "export" Bool :> Verb 'GET 200 '[JSON] Networkharvesterhciiov1beta1NodeNetwork -- 'readNamespacedNodeNetwork' route
    :<|> "apis" :> "network.harvesterhci.io" :> "v1beta1" :> "clusternetworks" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> ReqBody '[JSON] Networkharvesterhciiov1beta1ClusterNetwork :> Verb 'PUT 200 '[JSON] Networkharvesterhciiov1beta1ClusterNetwork -- 'replaceNamespacedClusterNetwork' route
    :<|> "apis" :> "k8s.cni.cncf.io" :> "v1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "network-attachment-definitions" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> ReqBody '[JSON] K8scnicncfiov1NetworkAttachmentDefinition :> Verb 'PUT 200 '[JSON] K8scnicncfiov1NetworkAttachmentDefinition -- 'replaceNamespacedNetworkAttachmentDefinition' route
    :<|> "apis" :> "network.harvesterhci.io" :> "v1beta1" :> "nodenetworks" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> ReqBody '[JSON] Networkharvesterhciiov1beta1NodeNetwork :> Verb 'PUT 200 '[JSON] Networkharvesterhciiov1beta1NodeNetwork -- 'replaceNamespacedNodeNetwork' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "virtualmachinerestores" :> ReqBody '[JSON] Harvesterhciiov1beta1VirtualMachineRestore :> Verb 'POST 200 '[JSON] Harvesterhciiov1beta1VirtualMachineRestore -- 'createNamespacedVirtualMachineRestore' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "virtualmachinerestores" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> QueryParam "gracePeriodSeconds" Int :> QueryParam "orphanDependents" Bool :> QueryParam "propagationPolicy" Text :> ReqBody '[JSON] K8siov1DeleteOptions :> Verb 'DELETE 200 '[JSON] K8siov1Status -- 'deleteNamespacedVirtualMachineRestore' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "virtualmachinerestores" :> QueryParam "continue" Text :> QueryParam "fieldSelector" Text :> QueryParam "includeUninitialized" Bool :> QueryParam "labelSelector" Text :> QueryParam "limit" Int :> QueryParam "resourceVersion" Text :> QueryParam "timeoutSeconds" Int :> QueryParam "watch" Bool :> Verb 'GET 200 '[JSON] Harvesterhciiov1beta1VirtualMachineRestoreList -- 'listNamespacedVirtualMachineRestore' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "virtualmachinerestores" :> QueryParam "continue" Text :> QueryParam "fieldSelector" Text :> QueryParam "includeUninitialized" Bool :> QueryParam "labelSelector" Text :> QueryParam "limit" Int :> QueryParam "resourceVersion" Text :> QueryParam "timeoutSeconds" Int :> QueryParam "watch" Bool :> Verb 'GET 200 '[JSON] Harvesterhciiov1beta1VirtualMachineRestoreList -- 'listVirtualMachineRestoreForAllNamespaces' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "virtualmachinerestores" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> ReqBody '[JSON] K8siov1Patch :> Verb 'PATCH 200 '[JSON] Harvesterhciiov1beta1VirtualMachineRestore -- 'patchNamespacedVirtualMachineRestore' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "virtualmachinerestores" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> QueryParam "exact" Bool :> QueryParam "export" Bool :> Verb 'GET 200 '[JSON] Harvesterhciiov1beta1VirtualMachineRestore -- 'readNamespacedVirtualMachineRestore' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "virtualmachinerestores" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> ReqBody '[JSON] Harvesterhciiov1beta1VirtualMachineRestore :> Verb 'PUT 200 '[JSON] Harvesterhciiov1beta1VirtualMachineRestore -- 'replaceNamespacedVirtualMachineRestore' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "keypairs" :> ReqBody '[JSON] Harvesterhciiov1beta1KeyPair :> Verb 'POST 200 '[JSON] Harvesterhciiov1beta1KeyPair -- 'createNamespacedKeyPair' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "keypairs" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> QueryParam "gracePeriodSeconds" Int :> QueryParam "orphanDependents" Bool :> QueryParam "propagationPolicy" Text :> ReqBody '[JSON] K8siov1DeleteOptions :> Verb 'DELETE 200 '[JSON] K8siov1Status -- 'deleteNamespacedKeyPair' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "keypairs" :> QueryParam "continue" Text :> QueryParam "fieldSelector" Text :> QueryParam "includeUninitialized" Bool :> QueryParam "labelSelector" Text :> QueryParam "limit" Int :> QueryParam "resourceVersion" Text :> QueryParam "timeoutSeconds" Int :> QueryParam "watch" Bool :> Verb 'GET 200 '[JSON] Harvesterhciiov1beta1KeyPairList -- 'listKeyPairForAllNamespaces' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "keypairs" :> QueryParam "continue" Text :> QueryParam "fieldSelector" Text :> QueryParam "includeUninitialized" Bool :> QueryParam "labelSelector" Text :> QueryParam "limit" Int :> QueryParam "resourceVersion" Text :> QueryParam "timeoutSeconds" Int :> QueryParam "watch" Bool :> Verb 'GET 200 '[JSON] Harvesterhciiov1beta1KeyPairList -- 'listNamespacedKeyPair' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "keypairs" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> ReqBody '[JSON] K8siov1Patch :> Verb 'PATCH 200 '[JSON] Harvesterhciiov1beta1KeyPair -- 'patchNamespacedKeyPair' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "keypairs" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> QueryParam "exact" Bool :> QueryParam "export" Bool :> Verb 'GET 200 '[JSON] Harvesterhciiov1beta1KeyPair -- 'readNamespacedKeyPair' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "keypairs" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> ReqBody '[JSON] Harvesterhciiov1beta1KeyPair :> Verb 'PUT 200 '[JSON] Harvesterhciiov1beta1KeyPair -- 'replaceNamespacedKeyPair' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "supportbundles" :> ReqBody '[JSON] Harvesterhciiov1beta1SupportBundle :> Verb 'POST 200 '[JSON] Harvesterhciiov1beta1SupportBundle -- 'createNamespacedSupportBundle' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "supportbundles" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> QueryParam "gracePeriodSeconds" Int :> QueryParam "orphanDependents" Bool :> QueryParam "propagationPolicy" Text :> ReqBody '[JSON] K8siov1DeleteOptions :> Verb 'DELETE 200 '[JSON] K8siov1Status -- 'deleteNamespacedSupportBundle' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "supportbundles" :> QueryParam "continue" Text :> QueryParam "fieldSelector" Text :> QueryParam "includeUninitialized" Bool :> QueryParam "labelSelector" Text :> QueryParam "limit" Int :> QueryParam "resourceVersion" Text :> QueryParam "timeoutSeconds" Int :> QueryParam "watch" Bool :> Verb 'GET 200 '[JSON] Harvesterhciiov1beta1SupportBundleList -- 'listNamespacedSupportBundle' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "supportbundles" :> QueryParam "continue" Text :> QueryParam "fieldSelector" Text :> QueryParam "includeUninitialized" Bool :> QueryParam "labelSelector" Text :> QueryParam "limit" Int :> QueryParam "resourceVersion" Text :> QueryParam "timeoutSeconds" Int :> QueryParam "watch" Bool :> Verb 'GET 200 '[JSON] Harvesterhciiov1beta1SupportBundleList -- 'listSupportBundleForAllNamespaces' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "supportbundles" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> ReqBody '[JSON] K8siov1Patch :> Verb 'PATCH 200 '[JSON] Harvesterhciiov1beta1SupportBundle -- 'patchNamespacedSupportBundle' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "supportbundles" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> QueryParam "exact" Bool :> QueryParam "export" Bool :> Verb 'GET 200 '[JSON] Harvesterhciiov1beta1SupportBundle -- 'readNamespacedSupportBundle' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "supportbundles" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> ReqBody '[JSON] Harvesterhciiov1beta1SupportBundle :> Verb 'PUT 200 '[JSON] Harvesterhciiov1beta1SupportBundle -- 'replaceNamespacedSupportBundle' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "upgrades" :> ReqBody '[JSON] Harvesterhciiov1beta1Upgrade :> Verb 'POST 200 '[JSON] Harvesterhciiov1beta1Upgrade -- 'createNamespacedUpgrade' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "upgrades" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> QueryParam "gracePeriodSeconds" Int :> QueryParam "orphanDependents" Bool :> QueryParam "propagationPolicy" Text :> ReqBody '[JSON] K8siov1DeleteOptions :> Verb 'DELETE 200 '[JSON] K8siov1Status -- 'deleteNamespacedUpgrade' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "upgrades" :> QueryParam "continue" Text :> QueryParam "fieldSelector" Text :> QueryParam "includeUninitialized" Bool :> QueryParam "labelSelector" Text :> QueryParam "limit" Int :> QueryParam "resourceVersion" Text :> QueryParam "timeoutSeconds" Int :> QueryParam "watch" Bool :> Verb 'GET 200 '[JSON] Harvesterhciiov1beta1UpgradeList -- 'listNamespacedUpgrade' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "upgrades" :> QueryParam "continue" Text :> QueryParam "fieldSelector" Text :> QueryParam "includeUninitialized" Bool :> QueryParam "labelSelector" Text :> QueryParam "limit" Int :> QueryParam "resourceVersion" Text :> QueryParam "timeoutSeconds" Int :> QueryParam "watch" Bool :> Verb 'GET 200 '[JSON] Harvesterhciiov1beta1UpgradeList -- 'listUpgradeForAllNamespaces' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "upgrades" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> ReqBody '[JSON] K8siov1Patch :> Verb 'PATCH 200 '[JSON] Harvesterhciiov1beta1Upgrade -- 'patchNamespacedUpgrade' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "upgrades" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> QueryParam "exact" Bool :> QueryParam "export" Bool :> Verb 'GET 200 '[JSON] Harvesterhciiov1beta1Upgrade -- 'readNamespacedUpgrade' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "upgrades" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> ReqBody '[JSON] Harvesterhciiov1beta1Upgrade :> Verb 'PUT 200 '[JSON] Harvesterhciiov1beta1Upgrade -- 'replaceNamespacedUpgrade' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "virtualmachinetemplates" :> ReqBody '[JSON] Harvesterhciiov1beta1VirtualMachineTemplate :> Verb 'POST 200 '[JSON] Harvesterhciiov1beta1VirtualMachineTemplate -- 'createNamespacedVirtualMachineTemplate' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "virtualmachinetemplateversions" :> ReqBody '[JSON] Harvesterhciiov1beta1VirtualMachineTemplateVersion :> Verb 'POST 200 '[JSON] Harvesterhciiov1beta1VirtualMachineTemplateVersion -- 'createNamespacedVirtualMachineTemplateVersion' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "virtualmachinetemplates" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> QueryParam "gracePeriodSeconds" Int :> QueryParam "orphanDependents" Bool :> QueryParam "propagationPolicy" Text :> ReqBody '[JSON] K8siov1DeleteOptions :> Verb 'DELETE 200 '[JSON] K8siov1Status -- 'deleteNamespacedVirtualMachineTemplate' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "virtualmachinetemplateversions" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> QueryParam "gracePeriodSeconds" Int :> QueryParam "orphanDependents" Bool :> QueryParam "propagationPolicy" Text :> ReqBody '[JSON] K8siov1DeleteOptions :> Verb 'DELETE 200 '[JSON] K8siov1Status -- 'deleteNamespacedVirtualMachineTemplateVersion' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "virtualmachinetemplates" :> QueryParam "continue" Text :> QueryParam "fieldSelector" Text :> QueryParam "includeUninitialized" Bool :> QueryParam "labelSelector" Text :> QueryParam "limit" Int :> QueryParam "resourceVersion" Text :> QueryParam "timeoutSeconds" Int :> QueryParam "watch" Bool :> Verb 'GET 200 '[JSON] Harvesterhciiov1beta1VirtualMachineTemplateList -- 'listNamespacedVirtualMachineTemplate' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "virtualmachinetemplateversions" :> QueryParam "continue" Text :> QueryParam "fieldSelector" Text :> QueryParam "includeUninitialized" Bool :> QueryParam "labelSelector" Text :> QueryParam "limit" Int :> QueryParam "resourceVersion" Text :> QueryParam "timeoutSeconds" Int :> QueryParam "watch" Bool :> Verb 'GET 200 '[JSON] Harvesterhciiov1beta1VirtualMachineTemplateVersionList -- 'listNamespacedVirtualMachineTemplateVersion' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "virtualmachinetemplates" :> QueryParam "continue" Text :> QueryParam "fieldSelector" Text :> QueryParam "includeUninitialized" Bool :> QueryParam "labelSelector" Text :> QueryParam "limit" Int :> QueryParam "resourceVersion" Text :> QueryParam "timeoutSeconds" Int :> QueryParam "watch" Bool :> Verb 'GET 200 '[JSON] Harvesterhciiov1beta1VirtualMachineTemplateList -- 'listVirtualMachineTemplateForAllNamespaces' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "virtualmachinetemplateversions" :> QueryParam "continue" Text :> QueryParam "fieldSelector" Text :> QueryParam "includeUninitialized" Bool :> QueryParam "labelSelector" Text :> QueryParam "limit" Int :> QueryParam "resourceVersion" Text :> QueryParam "timeoutSeconds" Int :> QueryParam "watch" Bool :> Verb 'GET 200 '[JSON] Harvesterhciiov1beta1VirtualMachineTemplateVersionList -- 'listVirtualMachineTemplateVersionForAllNamespaces' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "virtualmachinetemplates" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> ReqBody '[JSON] K8siov1Patch :> Verb 'PATCH 200 '[JSON] Harvesterhciiov1beta1VirtualMachineTemplate -- 'patchNamespacedVirtualMachineTemplate' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "virtualmachinetemplateversions" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> ReqBody '[JSON] K8siov1Patch :> Verb 'PATCH 200 '[JSON] Harvesterhciiov1beta1VirtualMachineTemplateVersion -- 'patchNamespacedVirtualMachineTemplateVersion' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "virtualmachinetemplates" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> QueryParam "exact" Bool :> QueryParam "export" Bool :> Verb 'GET 200 '[JSON] Harvesterhciiov1beta1VirtualMachineTemplate -- 'readNamespacedVirtualMachineTemplate' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "virtualmachinetemplateversions" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> QueryParam "exact" Bool :> QueryParam "export" Bool :> Verb 'GET 200 '[JSON] Harvesterhciiov1beta1VirtualMachineTemplateVersion -- 'readNamespacedVirtualMachineTemplateVersion' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "virtualmachinetemplates" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> ReqBody '[JSON] Harvesterhciiov1beta1VirtualMachineTemplate :> Verb 'PUT 200 '[JSON] Harvesterhciiov1beta1VirtualMachineTemplate -- 'replaceNamespacedVirtualMachineTemplate' route
    :<|> "apis" :> "harvesterhci.io" :> "v1beta1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "virtualmachinetemplateversions" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> ReqBody '[JSON] Harvesterhciiov1beta1VirtualMachineTemplateVersion :> Verb 'PUT 200 '[JSON] Harvesterhciiov1beta1VirtualMachineTemplateVersion -- 'replaceNamespacedVirtualMachineTemplateVersion' route
    :<|> "apis" :> "kubevirt.io" :> "v1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "virtualmachines" :> ReqBody '[JSON] Kubevirtioapicorev1VirtualMachine :> Verb 'POST 200 '[JSON] Kubevirtioapicorev1VirtualMachine -- 'createNamespacedVirtualMachine' route
    :<|> "apis" :> "kubevirt.io" :> "v1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "virtualmachines" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> QueryParam "gracePeriodSeconds" Int :> QueryParam "orphanDependents" Bool :> QueryParam "propagationPolicy" Text :> ReqBody '[JSON] K8siov1DeleteOptions :> Verb 'DELETE 200 '[JSON] K8siov1Status -- 'deleteNamespacedVirtualMachine' route
    :<|> "apis" :> "kubevirt.io" :> "v1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "virtualmachines" :> QueryParam "continue" Text :> QueryParam "fieldSelector" Text :> QueryParam "includeUninitialized" Bool :> QueryParam "labelSelector" Text :> QueryParam "limit" Int :> QueryParam "resourceVersion" Text :> QueryParam "timeoutSeconds" Int :> QueryParam "watch" Bool :> Verb 'GET 200 '[JSON] Kubevirtioapicorev1VirtualMachineList -- 'listNamespacedVirtualMachine' route
    :<|> "apis" :> "kubevirt.io" :> "v1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "virtualmachineinstances" :> QueryParam "continue" Text :> QueryParam "fieldSelector" Text :> QueryParam "includeUninitialized" Bool :> QueryParam "labelSelector" Text :> QueryParam "limit" Int :> QueryParam "resourceVersion" Text :> QueryParam "timeoutSeconds" Int :> QueryParam "watch" Bool :> Verb 'GET 200 '[JSON] Kubevirtioapicorev1VirtualMachineInstanceList -- 'listNamespacedVirtualMachineInstance' route
    :<|> "apis" :> "kubevirt.io" :> "v1" :> "virtualmachines" :> QueryParam "continue" Text :> QueryParam "fieldSelector" Text :> QueryParam "includeUninitialized" Bool :> QueryParam "labelSelector" Text :> QueryParam "limit" Int :> QueryParam "resourceVersion" Text :> QueryParam "timeoutSeconds" Int :> QueryParam "watch" Bool :> Verb 'GET 200 '[JSON] Kubevirtioapicorev1VirtualMachineList -- 'listVirtualMachineForAllNamespaces' route
    :<|> "apis" :> "kubevirt.io" :> "v1" :> "virtualmachineinstances" :> QueryParam "continue" Text :> QueryParam "fieldSelector" Text :> QueryParam "includeUninitialized" Bool :> QueryParam "labelSelector" Text :> QueryParam "limit" Int :> QueryParam "resourceVersion" Text :> QueryParam "timeoutSeconds" Int :> QueryParam "watch" Bool :> Verb 'GET 200 '[JSON] Kubevirtioapicorev1VirtualMachineInstanceList -- 'listVirtualMachineInstanceForAllNamespaces' route
    :<|> "apis" :> "kubevirt.io" :> "v1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "virtualmachines" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> ReqBody '[JSON] K8siov1Patch :> Verb 'PATCH 200 '[JSON] Kubevirtioapicorev1VirtualMachine -- 'patchNamespacedVirtualMachine' route
    :<|> "apis" :> "kubevirt.io" :> "v1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "virtualmachines" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> QueryParam "exact" Bool :> QueryParam "export" Bool :> Verb 'GET 200 '[JSON] Kubevirtioapicorev1VirtualMachine -- 'readNamespacedVirtualMachine' route
    :<|> "apis" :> "kubevirt.io" :> "v1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "virtualmachineinstances" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> QueryParam "exact" Bool :> QueryParam "export" Bool :> Verb 'GET 200 '[JSON] Kubevirtioapicorev1VirtualMachineInstance -- 'readNamespacedVirtualMachineInstance' route
    :<|> "apis" :> "kubevirt.io" :> "v1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "virtualmachines" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> ReqBody '[JSON] Kubevirtioapicorev1VirtualMachine :> Verb 'PUT 200 '[JSON] Kubevirtioapicorev1VirtualMachine -- 'replaceNamespacedVirtualMachine' route
    :<|> "api" :> "v1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "persistentvolumeclaims" :> ReqBody '[JSON] K8siov1PersistentVolumeClaim :> Verb 'POST 200 '[JSON] K8siov1PersistentVolumeClaim -- 'createNamespacedPersistentVolumeClaim' route
    :<|> "api" :> "v1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "persistentvolumeclaims" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> QueryParam "gracePeriodSeconds" Int :> QueryParam "orphanDependents" Bool :> QueryParam "propagationPolicy" Text :> ReqBody '[JSON] K8siov1DeleteOptions :> Verb 'DELETE 200 '[JSON] K8siov1Status -- 'deleteNamespacedPersistentVolumeClaim' route
    :<|> "api" :> "v1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "persistentvolumeclaims" :> QueryParam "continue" Text :> QueryParam "fieldSelector" Text :> QueryParam "includeUninitialized" Bool :> QueryParam "labelSelector" Text :> QueryParam "limit" Int :> QueryParam "resourceVersion" Text :> QueryParam "timeoutSeconds" Int :> QueryParam "watch" Bool :> Verb 'GET 200 '[JSON] K8siov1PersistentVolumeClaimList -- 'listNamespacedPersistentVolumeClaim' route
    :<|> "api" :> "v1" :> "persistentvolumeclaims" :> QueryParam "continue" Text :> QueryParam "fieldSelector" Text :> QueryParam "includeUninitialized" Bool :> QueryParam "labelSelector" Text :> QueryParam "limit" Int :> QueryParam "resourceVersion" Text :> QueryParam "timeoutSeconds" Int :> QueryParam "watch" Bool :> Verb 'GET 200 '[JSON] K8siov1PersistentVolumeClaimList -- 'listPersistentVolumeClaimForAllNamespaces' route
    :<|> "api" :> "v1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "persistentvolumeclaims" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> ReqBody '[JSON] K8siov1Patch :> Verb 'PATCH 200 '[JSON] K8siov1PersistentVolumeClaim -- 'patchNamespacedPersistentVolumeClaim' route
    :<|> "api" :> "v1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "persistentvolumeclaims" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> QueryParam "exact" Bool :> QueryParam "export" Bool :> Verb 'GET 200 '[JSON] K8siov1PersistentVolumeClaim -- 'readNamespacedPersistentVolumeClaim' route
    :<|> "api" :> "v1" :> "namespaces" :> Capture "namespace:[a-z0-9][a-z0-9\-]*" null :> "persistentvolumeclaims" :> Capture "name:[a-z0-9][a-z0-9\-]*" null :> ReqBody '[JSON] K8siov1PersistentVolumeClaim :> Verb 'PUT 200 '[JSON] K8siov1PersistentVolumeClaim -- 'replaceNamespacedPersistentVolumeClaim' route

-- | Server or client configuration, specifying the host and port to query or serve on.
data ServerConfig = ServerConfig
  { configHost :: String  -- ^ Hostname to serve on, e.g. "127.0.0.1"
  , configPort :: Int      -- ^ Port to serve on, e.g. 8080
  } deriving (Eq, Ord, Show, Read)

-- | List of elements parsed from a query.
newtype QueryList (p :: CollectionFormat) a = QueryList
  { fromQueryList :: [a]
  } deriving (Functor, Applicative, Monad, Foldable, Traversable)

-- | Formats in which a list can be encoded into a HTTP path.
data CollectionFormat
  = CommaSeparated -- ^ CSV format for multiple parameters.
  | SpaceSeparated -- ^ Also called "SSV"
  | TabSeparated -- ^ Also called "TSV"
  | PipeSeparated -- ^ `value1|value2|value2`
  | MultiParamArray -- ^ Using multiple GET parameters, e.g. `foo=bar&foo=baz`. Only for GET params.

instance FromHttpApiData a => FromHttpApiData (QueryList 'CommaSeparated a) where
  parseQueryParam = parseSeparatedQueryList ','

instance FromHttpApiData a => FromHttpApiData (QueryList 'TabSeparated a) where
  parseQueryParam = parseSeparatedQueryList '\t'

instance FromHttpApiData a => FromHttpApiData (QueryList 'SpaceSeparated a) where
  parseQueryParam = parseSeparatedQueryList ' '

instance FromHttpApiData a => FromHttpApiData (QueryList 'PipeSeparated a) where
  parseQueryParam = parseSeparatedQueryList '|'

instance FromHttpApiData a => FromHttpApiData (QueryList 'MultiParamArray a) where
  parseQueryParam = error "unimplemented FromHttpApiData for MultiParamArray collection format"

parseSeparatedQueryList :: FromHttpApiData a => Char -> Text -> Either Text (QueryList p a)
parseSeparatedQueryList char = fmap QueryList . mapM parseQueryParam . T.split (== char)

instance ToHttpApiData a => ToHttpApiData (QueryList 'CommaSeparated a) where
  toQueryParam = formatSeparatedQueryList ','

instance ToHttpApiData a => ToHttpApiData (QueryList 'TabSeparated a) where
  toQueryParam = formatSeparatedQueryList '\t'

instance ToHttpApiData a => ToHttpApiData (QueryList 'SpaceSeparated a) where
  toQueryParam = formatSeparatedQueryList ' '

instance ToHttpApiData a => ToHttpApiData (QueryList 'PipeSeparated a) where
  toQueryParam = formatSeparatedQueryList '|'

instance ToHttpApiData a => ToHttpApiData (QueryList 'MultiParamArray a) where
  toQueryParam = error "unimplemented ToHttpApiData for MultiParamArray collection format"

formatSeparatedQueryList :: ToHttpApiData a => Char ->  QueryList p a -> Text
formatSeparatedQueryList char = T.intercalate (T.singleton char) . map toQueryParam . fromQueryList


-- | Backend for HarvesterAPIs.
-- The backend can be used both for the client and the server. The client generated from the HarvesterAPIs Swagger spec
-- is a backend that executes actions by sending HTTP requests (see @createHarvesterAPIsClient@). Alternatively, provided
-- a backend, the API can be served using @runHarvesterAPIsServer@.
data HarvesterAPIsBackend m = HarvesterAPIsBackend
  { createNamespacedVirtualMachineBackup :: null -> Harvesterhciiov1beta1VirtualMachineBackup -> m Harvesterhciiov1beta1VirtualMachineBackup{- ^ Create a VirtualMachineBackup object. -}
  , deleteNamespacedVirtualMachineBackup :: null -> null -> Maybe Int -> Maybe Bool -> Maybe Text -> K8siov1DeleteOptions -> m K8siov1Status{- ^ Delete a VirtualMachineBackup object. -}
  , listNamespacedVirtualMachineBackup :: null -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Int -> Maybe Text -> Maybe Int -> Maybe Bool -> m Harvesterhciiov1beta1VirtualMachineBackupList{- ^ Get a list of VirtualMachineBackup objects in a namespace. -}
  , listVirtualMachineBackupForAllNamespaces :: Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Int -> Maybe Text -> Maybe Int -> Maybe Bool -> m Harvesterhciiov1beta1VirtualMachineBackupList{- ^ Get a list of all VirtualMachineBackup objects. -}
  , patchNamespacedVirtualMachineBackup :: null -> null -> K8siov1Patch -> m Harvesterhciiov1beta1VirtualMachineBackup{- ^ Patch a VirtualMachineBackup object. -}
  , readNamespacedVirtualMachineBackup :: null -> null -> Maybe Bool -> Maybe Bool -> m Harvesterhciiov1beta1VirtualMachineBackup{- ^ Get a VirtualMachineBackup object. -}
  , replaceNamespacedVirtualMachineBackup :: null -> null -> Harvesterhciiov1beta1VirtualMachineBackup -> m Harvesterhciiov1beta1VirtualMachineBackup{- ^ Update a VirtualMachineBackup object. -}
  , createNamespacedVirtualMachineImage :: null -> Harvesterhciiov1beta1VirtualMachineImage -> m Harvesterhciiov1beta1VirtualMachineImage{- ^ Create a VirtualMachineImage object. -}
  , deleteNamespacedVirtualMachineImage :: null -> null -> Maybe Int -> Maybe Bool -> Maybe Text -> K8siov1DeleteOptions -> m K8siov1Status{- ^ Delete a VirtualMachineImage object. -}
  , listNamespacedVirtualMachineImage :: null -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Int -> Maybe Text -> Maybe Int -> Maybe Bool -> m Harvesterhciiov1beta1VirtualMachineImageList{- ^ Get a list of VirtualMachineImage objects in a namespace. -}
  , listVirtualMachineImageForAllNamespaces :: Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Int -> Maybe Text -> Maybe Int -> Maybe Bool -> m Harvesterhciiov1beta1VirtualMachineImageList{- ^ Get a list of all VirtualMachineImage objects. -}
  , patchNamespacedVirtualMachineImage :: null -> null -> K8siov1Patch -> m Harvesterhciiov1beta1VirtualMachineImage{- ^ Patch a VirtualMachineImage object. -}
  , readNamespacedVirtualMachineImage :: null -> null -> Maybe Bool -> Maybe Bool -> m Harvesterhciiov1beta1VirtualMachineImage{- ^ Get a VirtualMachineImage object. -}
  , replaceNamespacedVirtualMachineImage :: null -> null -> Harvesterhciiov1beta1VirtualMachineImage -> m Harvesterhciiov1beta1VirtualMachineImage{- ^ Update a VirtualMachineImage object. -}
  , createNamespacedVirtualMachineInstanceMigration :: null -> Kubevirtioapicorev1VirtualMachineInstanceMigration -> m Kubevirtioapicorev1VirtualMachineInstanceMigration{- ^ Create a VirtualMachineInstanceMigration object. -}
  , deleteNamespacedVirtualMachineInstanceMigration :: null -> null -> Maybe Int -> Maybe Bool -> Maybe Text -> K8siov1DeleteOptions -> m K8siov1Status{- ^ Delete a VirtualMachineInstanceMigration object. -}
  , listNamespacedVirtualMachineInstanceMigration :: null -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Int -> Maybe Text -> Maybe Int -> Maybe Bool -> m Kubevirtioapicorev1VirtualMachineInstanceMigrationList{- ^ Get a list of VirtualMachineInstanceMigration objects in a namespace. -}
  , listVirtualMachineInstanceMigrationForAllNamespaces :: Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Int -> Maybe Text -> Maybe Int -> Maybe Bool -> m Kubevirtioapicorev1VirtualMachineInstanceMigrationList{- ^ Get a list of all VirtualMachineInstanceMigration objects. -}
  , patchNamespacedVirtualMachineInstanceMigration :: null -> null -> K8siov1Patch -> m Kubevirtioapicorev1VirtualMachineInstanceMigration{- ^ Patch a VirtualMachineInstanceMigration object. -}
  , readNamespacedVirtualMachineInstanceMigration :: null -> null -> Maybe Bool -> Maybe Bool -> m Kubevirtioapicorev1VirtualMachineInstanceMigration{- ^ Get a VirtualMachineInstanceMigration object. -}
  , replaceNamespacedVirtualMachineInstanceMigration :: null -> null -> Kubevirtioapicorev1VirtualMachineInstanceMigration -> m Kubevirtioapicorev1VirtualMachineInstanceMigration{- ^ Update a VirtualMachineInstanceMigration object. -}
  , createNamespacedClusterNetwork :: Networkharvesterhciiov1beta1ClusterNetwork -> m Networkharvesterhciiov1beta1ClusterNetwork{- ^ Create a ClusterNetwork object. -}
  , createNamespacedNetworkAttachmentDefinition :: null -> K8scnicncfiov1NetworkAttachmentDefinition -> m K8scnicncfiov1NetworkAttachmentDefinition{- ^ Create a NetworkAttachmentDefinition object. -}
  , createNamespacedNodeNetwork :: Networkharvesterhciiov1beta1NodeNetwork -> m Networkharvesterhciiov1beta1NodeNetwork{- ^ Create a NodeNetwork object. -}
  , deleteNamespacedClusterNetwork :: null -> Maybe Int -> Maybe Bool -> Maybe Text -> K8siov1DeleteOptions -> m K8siov1Status{- ^ Delete a ClusterNetwork object. -}
  , deleteNamespacedNetworkAttachmentDefinition :: null -> null -> Maybe Int -> Maybe Bool -> Maybe Text -> K8siov1DeleteOptions -> m K8siov1Status{- ^ Delete a NetworkAttachmentDefinition object. -}
  , deleteNamespacedNodeNetwork :: null -> Maybe Int -> Maybe Bool -> Maybe Text -> K8siov1DeleteOptions -> m K8siov1Status{- ^ Delete a NodeNetwork object. -}
  , listNamespacedClusterNetwork :: Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Int -> Maybe Text -> Maybe Int -> Maybe Bool -> m Networkharvesterhciiov1beta1ClusterNetworkList{- ^ Get a list of ClusterNetwork objects in a namespace. -}
  , listNamespacedNetworkAttachmentDefinition :: null -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Int -> Maybe Text -> Maybe Int -> Maybe Bool -> m K8scnicncfiov1NetworkAttachmentDefinitionList{- ^ Get a list of NetworkAttachmentDefinition objects in a namespace. -}
  , listNamespacedNodeNetwork :: Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Int -> Maybe Text -> Maybe Int -> Maybe Bool -> m Networkharvesterhciiov1beta1NodeNetworkList{- ^ Get a list of NodeNetwork objects in a namespace. -}
  , listNetworkAttachmentDefinitionForAllNamespaces :: Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Int -> Maybe Text -> Maybe Int -> Maybe Bool -> m K8scnicncfiov1NetworkAttachmentDefinitionList{- ^ Get a list of all NetworkAttachmentDefinition objects. -}
  , patchNamespacedClusterNetwork :: null -> K8siov1Patch -> m Networkharvesterhciiov1beta1ClusterNetwork{- ^ Patch a ClusterNetwork object. -}
  , patchNamespacedNetworkAttachmentDefinition :: null -> null -> K8siov1Patch -> m K8scnicncfiov1NetworkAttachmentDefinition{- ^ Patch a NetworkAttachmentDefinition object. -}
  , patchNamespacedNodeNetwork :: null -> K8siov1Patch -> m Networkharvesterhciiov1beta1NodeNetwork{- ^ Patch a NodeNetwork object. -}
  , readNamespacedClusterNetwork :: null -> Maybe Bool -> Maybe Bool -> m Networkharvesterhciiov1beta1ClusterNetwork{- ^ Get a ClusterNetwork object. -}
  , readNamespacedNetworkAttachmentDefinition :: null -> null -> Maybe Bool -> Maybe Bool -> m K8scnicncfiov1NetworkAttachmentDefinition{- ^ Get a NetworkAttachmentDefinition object. -}
  , readNamespacedNodeNetwork :: null -> Maybe Bool -> Maybe Bool -> m Networkharvesterhciiov1beta1NodeNetwork{- ^ Get a NodeNetwork object. -}
  , replaceNamespacedClusterNetwork :: null -> Networkharvesterhciiov1beta1ClusterNetwork -> m Networkharvesterhciiov1beta1ClusterNetwork{- ^ Update a ClusterNetwork object. -}
  , replaceNamespacedNetworkAttachmentDefinition :: null -> null -> K8scnicncfiov1NetworkAttachmentDefinition -> m K8scnicncfiov1NetworkAttachmentDefinition{- ^ Update a NetworkAttachmentDefinition object. -}
  , replaceNamespacedNodeNetwork :: null -> Networkharvesterhciiov1beta1NodeNetwork -> m Networkharvesterhciiov1beta1NodeNetwork{- ^ Update a NodeNetwork object. -}
  , createNamespacedVirtualMachineRestore :: null -> Harvesterhciiov1beta1VirtualMachineRestore -> m Harvesterhciiov1beta1VirtualMachineRestore{- ^ Create a VirtualMachineRestore object. -}
  , deleteNamespacedVirtualMachineRestore :: null -> null -> Maybe Int -> Maybe Bool -> Maybe Text -> K8siov1DeleteOptions -> m K8siov1Status{- ^ Delete a VirtualMachineRestore object. -}
  , listNamespacedVirtualMachineRestore :: null -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Int -> Maybe Text -> Maybe Int -> Maybe Bool -> m Harvesterhciiov1beta1VirtualMachineRestoreList{- ^ Get a list of VirtualMachineRestore objects in a namespace. -}
  , listVirtualMachineRestoreForAllNamespaces :: Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Int -> Maybe Text -> Maybe Int -> Maybe Bool -> m Harvesterhciiov1beta1VirtualMachineRestoreList{- ^ Get a list of all VirtualMachineRestore objects. -}
  , patchNamespacedVirtualMachineRestore :: null -> null -> K8siov1Patch -> m Harvesterhciiov1beta1VirtualMachineRestore{- ^ Patch a VirtualMachineRestore object. -}
  , readNamespacedVirtualMachineRestore :: null -> null -> Maybe Bool -> Maybe Bool -> m Harvesterhciiov1beta1VirtualMachineRestore{- ^ Get a VirtualMachineRestore object. -}
  , replaceNamespacedVirtualMachineRestore :: null -> null -> Harvesterhciiov1beta1VirtualMachineRestore -> m Harvesterhciiov1beta1VirtualMachineRestore{- ^ Update a VirtualMachineRestore object. -}
  , createNamespacedKeyPair :: null -> Harvesterhciiov1beta1KeyPair -> m Harvesterhciiov1beta1KeyPair{- ^ Create a KeyPair object. -}
  , deleteNamespacedKeyPair :: null -> null -> Maybe Int -> Maybe Bool -> Maybe Text -> K8siov1DeleteOptions -> m K8siov1Status{- ^ Delete a KeyPair object. -}
  , listKeyPairForAllNamespaces :: Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Int -> Maybe Text -> Maybe Int -> Maybe Bool -> m Harvesterhciiov1beta1KeyPairList{- ^ Get a list of all KeyPair objects. -}
  , listNamespacedKeyPair :: null -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Int -> Maybe Text -> Maybe Int -> Maybe Bool -> m Harvesterhciiov1beta1KeyPairList{- ^ Get a list of KeyPair objects in a namespace. -}
  , patchNamespacedKeyPair :: null -> null -> K8siov1Patch -> m Harvesterhciiov1beta1KeyPair{- ^ Patch a KeyPair object. -}
  , readNamespacedKeyPair :: null -> null -> Maybe Bool -> Maybe Bool -> m Harvesterhciiov1beta1KeyPair{- ^ Get a KeyPair object. -}
  , replaceNamespacedKeyPair :: null -> null -> Harvesterhciiov1beta1KeyPair -> m Harvesterhciiov1beta1KeyPair{- ^ Update a KeyPair object. -}
  , createNamespacedSupportBundle :: null -> Harvesterhciiov1beta1SupportBundle -> m Harvesterhciiov1beta1SupportBundle{- ^ Create a SupportBundle object. -}
  , deleteNamespacedSupportBundle :: null -> null -> Maybe Int -> Maybe Bool -> Maybe Text -> K8siov1DeleteOptions -> m K8siov1Status{- ^ Delete a SupportBundle object. -}
  , listNamespacedSupportBundle :: null -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Int -> Maybe Text -> Maybe Int -> Maybe Bool -> m Harvesterhciiov1beta1SupportBundleList{- ^ Get a list of SupportBundle objects in a namespace. -}
  , listSupportBundleForAllNamespaces :: Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Int -> Maybe Text -> Maybe Int -> Maybe Bool -> m Harvesterhciiov1beta1SupportBundleList{- ^ Get a list of all SupportBundle objects. -}
  , patchNamespacedSupportBundle :: null -> null -> K8siov1Patch -> m Harvesterhciiov1beta1SupportBundle{- ^ Patch a SupportBundle object. -}
  , readNamespacedSupportBundle :: null -> null -> Maybe Bool -> Maybe Bool -> m Harvesterhciiov1beta1SupportBundle{- ^ Get a SupportBundle object. -}
  , replaceNamespacedSupportBundle :: null -> null -> Harvesterhciiov1beta1SupportBundle -> m Harvesterhciiov1beta1SupportBundle{- ^ Update a SupportBundle object. -}
  , createNamespacedUpgrade :: null -> Harvesterhciiov1beta1Upgrade -> m Harvesterhciiov1beta1Upgrade{- ^ Create a Upgrade object. -}
  , deleteNamespacedUpgrade :: null -> null -> Maybe Int -> Maybe Bool -> Maybe Text -> K8siov1DeleteOptions -> m K8siov1Status{- ^ Delete a Upgrade object. -}
  , listNamespacedUpgrade :: null -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Int -> Maybe Text -> Maybe Int -> Maybe Bool -> m Harvesterhciiov1beta1UpgradeList{- ^ Get a list of Upgrade objects in a namespace. -}
  , listUpgradeForAllNamespaces :: Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Int -> Maybe Text -> Maybe Int -> Maybe Bool -> m Harvesterhciiov1beta1UpgradeList{- ^ Get a list of all Upgrade objects. -}
  , patchNamespacedUpgrade :: null -> null -> K8siov1Patch -> m Harvesterhciiov1beta1Upgrade{- ^ Patch a Upgrade object. -}
  , readNamespacedUpgrade :: null -> null -> Maybe Bool -> Maybe Bool -> m Harvesterhciiov1beta1Upgrade{- ^ Get a Upgrade object. -}
  , replaceNamespacedUpgrade :: null -> null -> Harvesterhciiov1beta1Upgrade -> m Harvesterhciiov1beta1Upgrade{- ^ Update a Upgrade object. -}
  , createNamespacedVirtualMachineTemplate :: null -> Harvesterhciiov1beta1VirtualMachineTemplate -> m Harvesterhciiov1beta1VirtualMachineTemplate{- ^ Create a VirtualMachineTemplate object. -}
  , createNamespacedVirtualMachineTemplateVersion :: null -> Harvesterhciiov1beta1VirtualMachineTemplateVersion -> m Harvesterhciiov1beta1VirtualMachineTemplateVersion{- ^ Create a VirtualMachineTemplateVersion object. -}
  , deleteNamespacedVirtualMachineTemplate :: null -> null -> Maybe Int -> Maybe Bool -> Maybe Text -> K8siov1DeleteOptions -> m K8siov1Status{- ^ Delete a VirtualMachineTemplate object. -}
  , deleteNamespacedVirtualMachineTemplateVersion :: null -> null -> Maybe Int -> Maybe Bool -> Maybe Text -> K8siov1DeleteOptions -> m K8siov1Status{- ^ Delete a VirtualMachineTemplateVersion object. -}
  , listNamespacedVirtualMachineTemplate :: null -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Int -> Maybe Text -> Maybe Int -> Maybe Bool -> m Harvesterhciiov1beta1VirtualMachineTemplateList{- ^ Get a list of VirtualMachineTemplate objects in a namespace. -}
  , listNamespacedVirtualMachineTemplateVersion :: null -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Int -> Maybe Text -> Maybe Int -> Maybe Bool -> m Harvesterhciiov1beta1VirtualMachineTemplateVersionList{- ^ Get a list of VirtualMachineTemplateVersion objects in a namespace. -}
  , listVirtualMachineTemplateForAllNamespaces :: Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Int -> Maybe Text -> Maybe Int -> Maybe Bool -> m Harvesterhciiov1beta1VirtualMachineTemplateList{- ^ Get a list of all VirtualMachineTemplate objects. -}
  , listVirtualMachineTemplateVersionForAllNamespaces :: Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Int -> Maybe Text -> Maybe Int -> Maybe Bool -> m Harvesterhciiov1beta1VirtualMachineTemplateVersionList{- ^ Get a list of all VirtualMachineTemplateVersion objects. -}
  , patchNamespacedVirtualMachineTemplate :: null -> null -> K8siov1Patch -> m Harvesterhciiov1beta1VirtualMachineTemplate{- ^ Patch a VirtualMachineTemplate object. -}
  , patchNamespacedVirtualMachineTemplateVersion :: null -> null -> K8siov1Patch -> m Harvesterhciiov1beta1VirtualMachineTemplateVersion{- ^ Patch a VirtualMachineTemplateVersion object. -}
  , readNamespacedVirtualMachineTemplate :: null -> null -> Maybe Bool -> Maybe Bool -> m Harvesterhciiov1beta1VirtualMachineTemplate{- ^ Get a VirtualMachineTemplate object. -}
  , readNamespacedVirtualMachineTemplateVersion :: null -> null -> Maybe Bool -> Maybe Bool -> m Harvesterhciiov1beta1VirtualMachineTemplateVersion{- ^ Get a VirtualMachineTemplateVersion object. -}
  , replaceNamespacedVirtualMachineTemplate :: null -> null -> Harvesterhciiov1beta1VirtualMachineTemplate -> m Harvesterhciiov1beta1VirtualMachineTemplate{- ^ Update a VirtualMachineTemplate object. -}
  , replaceNamespacedVirtualMachineTemplateVersion :: null -> null -> Harvesterhciiov1beta1VirtualMachineTemplateVersion -> m Harvesterhciiov1beta1VirtualMachineTemplateVersion{- ^ Update a VirtualMachineTemplateVersion object. -}
  , createNamespacedVirtualMachine :: null -> Kubevirtioapicorev1VirtualMachine -> m Kubevirtioapicorev1VirtualMachine{- ^ Create a VirtualMachine object. -}
  , deleteNamespacedVirtualMachine :: null -> null -> Maybe Int -> Maybe Bool -> Maybe Text -> K8siov1DeleteOptions -> m K8siov1Status{- ^ Delete a VirtualMachine object. -}
  , listNamespacedVirtualMachine :: null -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Int -> Maybe Text -> Maybe Int -> Maybe Bool -> m Kubevirtioapicorev1VirtualMachineList{- ^ Get a list of VirtualMachine objects in a namespace. -}
  , listNamespacedVirtualMachineInstance :: null -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Int -> Maybe Text -> Maybe Int -> Maybe Bool -> m Kubevirtioapicorev1VirtualMachineInstanceList{- ^ Get a list of VirtualMachineInstance objects in a namespace. -}
  , listVirtualMachineForAllNamespaces :: Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Int -> Maybe Text -> Maybe Int -> Maybe Bool -> m Kubevirtioapicorev1VirtualMachineList{- ^ Get a list of all VirtualMachine objects. -}
  , listVirtualMachineInstanceForAllNamespaces :: Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Int -> Maybe Text -> Maybe Int -> Maybe Bool -> m Kubevirtioapicorev1VirtualMachineInstanceList{- ^ Get a list of all VirtualMachineInstance objects. -}
  , patchNamespacedVirtualMachine :: null -> null -> K8siov1Patch -> m Kubevirtioapicorev1VirtualMachine{- ^ Patch a VirtualMachine object. -}
  , readNamespacedVirtualMachine :: null -> null -> Maybe Bool -> Maybe Bool -> m Kubevirtioapicorev1VirtualMachine{- ^ Get a VirtualMachine object. -}
  , readNamespacedVirtualMachineInstance :: null -> null -> Maybe Bool -> Maybe Bool -> m Kubevirtioapicorev1VirtualMachineInstance{- ^ Get a VirtualMachineInstance object. -}
  , replaceNamespacedVirtualMachine :: null -> null -> Kubevirtioapicorev1VirtualMachine -> m Kubevirtioapicorev1VirtualMachine{- ^ Update a VirtualMachine object. -}
  , createNamespacedPersistentVolumeClaim :: null -> K8siov1PersistentVolumeClaim -> m K8siov1PersistentVolumeClaim{- ^ Create a PersistentVolumeClaim object. -}
  , deleteNamespacedPersistentVolumeClaim :: null -> null -> Maybe Int -> Maybe Bool -> Maybe Text -> K8siov1DeleteOptions -> m K8siov1Status{- ^ Delete a PersistentVolumeClaim object. -}
  , listNamespacedPersistentVolumeClaim :: null -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Int -> Maybe Text -> Maybe Int -> Maybe Bool -> m K8siov1PersistentVolumeClaimList{- ^ Get a list of PersistentVolumeClaim objects in a namespace. -}
  , listPersistentVolumeClaimForAllNamespaces :: Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Int -> Maybe Text -> Maybe Int -> Maybe Bool -> m K8siov1PersistentVolumeClaimList{- ^ Get a list of all PersistentVolumeClaim objects. -}
  , patchNamespacedPersistentVolumeClaim :: null -> null -> K8siov1Patch -> m K8siov1PersistentVolumeClaim{- ^ Patch a PersistentVolumeClaim object. -}
  , readNamespacedPersistentVolumeClaim :: null -> null -> Maybe Bool -> Maybe Bool -> m K8siov1PersistentVolumeClaim{- ^ Get a PersistentVolumeClaim object. -}
  , replaceNamespacedPersistentVolumeClaim :: null -> null -> K8siov1PersistentVolumeClaim -> m K8siov1PersistentVolumeClaim{- ^ Update a PersistentVolumeClaim object. -}
  }

newtype HarvesterAPIsClient a = HarvesterAPIsClient
  { runClient :: Manager -> BaseUrl -> ExceptT ServantError IO a
  } deriving Functor

instance Applicative HarvesterAPIsClient where
  pure x = HarvesterAPIsClient (\_ _ -> pure x)
  (HarvesterAPIsClient f) <*> (HarvesterAPIsClient x) =
    HarvesterAPIsClient (\manager url -> f manager url <*> x manager url)

instance Monad HarvesterAPIsClient where
  (HarvesterAPIsClient a) >>= f =
    HarvesterAPIsClient (\manager url -> do
      value <- a manager url
      runClient (f value) manager url)

instance MonadIO HarvesterAPIsClient where
  liftIO io = HarvesterAPIsClient (\_ _ -> liftIO io)

createHarvesterAPIsClient :: HarvesterAPIsBackend HarvesterAPIsClient
createHarvesterAPIsClient = HarvesterAPIsBackend{..}
  where
    ((coerce -> createNamespacedVirtualMachineBackup) :<|>
     (coerce -> deleteNamespacedVirtualMachineBackup) :<|>
     (coerce -> listNamespacedVirtualMachineBackup) :<|>
     (coerce -> listVirtualMachineBackupForAllNamespaces) :<|>
     (coerce -> patchNamespacedVirtualMachineBackup) :<|>
     (coerce -> readNamespacedVirtualMachineBackup) :<|>
     (coerce -> replaceNamespacedVirtualMachineBackup) :<|>
     (coerce -> createNamespacedVirtualMachineImage) :<|>
     (coerce -> deleteNamespacedVirtualMachineImage) :<|>
     (coerce -> listNamespacedVirtualMachineImage) :<|>
     (coerce -> listVirtualMachineImageForAllNamespaces) :<|>
     (coerce -> patchNamespacedVirtualMachineImage) :<|>
     (coerce -> readNamespacedVirtualMachineImage) :<|>
     (coerce -> replaceNamespacedVirtualMachineImage) :<|>
     (coerce -> createNamespacedVirtualMachineInstanceMigration) :<|>
     (coerce -> deleteNamespacedVirtualMachineInstanceMigration) :<|>
     (coerce -> listNamespacedVirtualMachineInstanceMigration) :<|>
     (coerce -> listVirtualMachineInstanceMigrationForAllNamespaces) :<|>
     (coerce -> patchNamespacedVirtualMachineInstanceMigration) :<|>
     (coerce -> readNamespacedVirtualMachineInstanceMigration) :<|>
     (coerce -> replaceNamespacedVirtualMachineInstanceMigration) :<|>
     (coerce -> createNamespacedClusterNetwork) :<|>
     (coerce -> createNamespacedNetworkAttachmentDefinition) :<|>
     (coerce -> createNamespacedNodeNetwork) :<|>
     (coerce -> deleteNamespacedClusterNetwork) :<|>
     (coerce -> deleteNamespacedNetworkAttachmentDefinition) :<|>
     (coerce -> deleteNamespacedNodeNetwork) :<|>
     (coerce -> listNamespacedClusterNetwork) :<|>
     (coerce -> listNamespacedNetworkAttachmentDefinition) :<|>
     (coerce -> listNamespacedNodeNetwork) :<|>
     (coerce -> listNetworkAttachmentDefinitionForAllNamespaces) :<|>
     (coerce -> patchNamespacedClusterNetwork) :<|>
     (coerce -> patchNamespacedNetworkAttachmentDefinition) :<|>
     (coerce -> patchNamespacedNodeNetwork) :<|>
     (coerce -> readNamespacedClusterNetwork) :<|>
     (coerce -> readNamespacedNetworkAttachmentDefinition) :<|>
     (coerce -> readNamespacedNodeNetwork) :<|>
     (coerce -> replaceNamespacedClusterNetwork) :<|>
     (coerce -> replaceNamespacedNetworkAttachmentDefinition) :<|>
     (coerce -> replaceNamespacedNodeNetwork) :<|>
     (coerce -> createNamespacedVirtualMachineRestore) :<|>
     (coerce -> deleteNamespacedVirtualMachineRestore) :<|>
     (coerce -> listNamespacedVirtualMachineRestore) :<|>
     (coerce -> listVirtualMachineRestoreForAllNamespaces) :<|>
     (coerce -> patchNamespacedVirtualMachineRestore) :<|>
     (coerce -> readNamespacedVirtualMachineRestore) :<|>
     (coerce -> replaceNamespacedVirtualMachineRestore) :<|>
     (coerce -> createNamespacedKeyPair) :<|>
     (coerce -> deleteNamespacedKeyPair) :<|>
     (coerce -> listKeyPairForAllNamespaces) :<|>
     (coerce -> listNamespacedKeyPair) :<|>
     (coerce -> patchNamespacedKeyPair) :<|>
     (coerce -> readNamespacedKeyPair) :<|>
     (coerce -> replaceNamespacedKeyPair) :<|>
     (coerce -> createNamespacedSupportBundle) :<|>
     (coerce -> deleteNamespacedSupportBundle) :<|>
     (coerce -> listNamespacedSupportBundle) :<|>
     (coerce -> listSupportBundleForAllNamespaces) :<|>
     (coerce -> patchNamespacedSupportBundle) :<|>
     (coerce -> readNamespacedSupportBundle) :<|>
     (coerce -> replaceNamespacedSupportBundle) :<|>
     (coerce -> createNamespacedUpgrade) :<|>
     (coerce -> deleteNamespacedUpgrade) :<|>
     (coerce -> listNamespacedUpgrade) :<|>
     (coerce -> listUpgradeForAllNamespaces) :<|>
     (coerce -> patchNamespacedUpgrade) :<|>
     (coerce -> readNamespacedUpgrade) :<|>
     (coerce -> replaceNamespacedUpgrade) :<|>
     (coerce -> createNamespacedVirtualMachineTemplate) :<|>
     (coerce -> createNamespacedVirtualMachineTemplateVersion) :<|>
     (coerce -> deleteNamespacedVirtualMachineTemplate) :<|>
     (coerce -> deleteNamespacedVirtualMachineTemplateVersion) :<|>
     (coerce -> listNamespacedVirtualMachineTemplate) :<|>
     (coerce -> listNamespacedVirtualMachineTemplateVersion) :<|>
     (coerce -> listVirtualMachineTemplateForAllNamespaces) :<|>
     (coerce -> listVirtualMachineTemplateVersionForAllNamespaces) :<|>
     (coerce -> patchNamespacedVirtualMachineTemplate) :<|>
     (coerce -> patchNamespacedVirtualMachineTemplateVersion) :<|>
     (coerce -> readNamespacedVirtualMachineTemplate) :<|>
     (coerce -> readNamespacedVirtualMachineTemplateVersion) :<|>
     (coerce -> replaceNamespacedVirtualMachineTemplate) :<|>
     (coerce -> replaceNamespacedVirtualMachineTemplateVersion) :<|>
     (coerce -> createNamespacedVirtualMachine) :<|>
     (coerce -> deleteNamespacedVirtualMachine) :<|>
     (coerce -> listNamespacedVirtualMachine) :<|>
     (coerce -> listNamespacedVirtualMachineInstance) :<|>
     (coerce -> listVirtualMachineForAllNamespaces) :<|>
     (coerce -> listVirtualMachineInstanceForAllNamespaces) :<|>
     (coerce -> patchNamespacedVirtualMachine) :<|>
     (coerce -> readNamespacedVirtualMachine) :<|>
     (coerce -> readNamespacedVirtualMachineInstance) :<|>
     (coerce -> replaceNamespacedVirtualMachine) :<|>
     (coerce -> createNamespacedPersistentVolumeClaim) :<|>
     (coerce -> deleteNamespacedPersistentVolumeClaim) :<|>
     (coerce -> listNamespacedPersistentVolumeClaim) :<|>
     (coerce -> listPersistentVolumeClaimForAllNamespaces) :<|>
     (coerce -> patchNamespacedPersistentVolumeClaim) :<|>
     (coerce -> readNamespacedPersistentVolumeClaim) :<|>
     (coerce -> replaceNamespacedPersistentVolumeClaim)) = client (Proxy :: Proxy HarvesterAPIsAPI)

-- | Run requests in the HarvesterAPIsClient monad.
runHarvesterAPIsClient :: ServerConfig -> HarvesterAPIsClient a -> ExceptT ServantError IO a
runHarvesterAPIsClient clientConfig cl = do
  manager <- liftIO $ newManager defaultManagerSettings
  runHarvesterAPIsClientWithManager manager clientConfig cl

-- | Run requests in the HarvesterAPIsClient monad using a custom manager.
runHarvesterAPIsClientWithManager :: Manager -> ServerConfig -> HarvesterAPIsClient a -> ExceptT ServantError IO a
runHarvesterAPIsClientWithManager manager clientConfig cl =
  runClient cl manager $ BaseUrl Http (configHost clientConfig) (configPort clientConfig) ""

-- | Run the HarvesterAPIs server at the provided host and port.
runHarvesterAPIsServer :: MonadIO m => ServerConfig -> HarvesterAPIsBackend (ExceptT ServantErr IO)  -> m ()
runHarvesterAPIsServer ServerConfig{..} backend =
  liftIO $ Warp.runSettings warpSettings $ serve (Proxy :: Proxy HarvesterAPIsAPI) (serverFromBackend backend)
  where
    warpSettings = Warp.defaultSettings & Warp.setPort configPort & Warp.setHost (fromString configHost)
    serverFromBackend HarvesterAPIsBackend{..} =
      (coerce createNamespacedVirtualMachineBackup :<|>
       coerce deleteNamespacedVirtualMachineBackup :<|>
       coerce listNamespacedVirtualMachineBackup :<|>
       coerce listVirtualMachineBackupForAllNamespaces :<|>
       coerce patchNamespacedVirtualMachineBackup :<|>
       coerce readNamespacedVirtualMachineBackup :<|>
       coerce replaceNamespacedVirtualMachineBackup :<|>
       coerce createNamespacedVirtualMachineImage :<|>
       coerce deleteNamespacedVirtualMachineImage :<|>
       coerce listNamespacedVirtualMachineImage :<|>
       coerce listVirtualMachineImageForAllNamespaces :<|>
       coerce patchNamespacedVirtualMachineImage :<|>
       coerce readNamespacedVirtualMachineImage :<|>
       coerce replaceNamespacedVirtualMachineImage :<|>
       coerce createNamespacedVirtualMachineInstanceMigration :<|>
       coerce deleteNamespacedVirtualMachineInstanceMigration :<|>
       coerce listNamespacedVirtualMachineInstanceMigration :<|>
       coerce listVirtualMachineInstanceMigrationForAllNamespaces :<|>
       coerce patchNamespacedVirtualMachineInstanceMigration :<|>
       coerce readNamespacedVirtualMachineInstanceMigration :<|>
       coerce replaceNamespacedVirtualMachineInstanceMigration :<|>
       coerce createNamespacedClusterNetwork :<|>
       coerce createNamespacedNetworkAttachmentDefinition :<|>
       coerce createNamespacedNodeNetwork :<|>
       coerce deleteNamespacedClusterNetwork :<|>
       coerce deleteNamespacedNetworkAttachmentDefinition :<|>
       coerce deleteNamespacedNodeNetwork :<|>
       coerce listNamespacedClusterNetwork :<|>
       coerce listNamespacedNetworkAttachmentDefinition :<|>
       coerce listNamespacedNodeNetwork :<|>
       coerce listNetworkAttachmentDefinitionForAllNamespaces :<|>
       coerce patchNamespacedClusterNetwork :<|>
       coerce patchNamespacedNetworkAttachmentDefinition :<|>
       coerce patchNamespacedNodeNetwork :<|>
       coerce readNamespacedClusterNetwork :<|>
       coerce readNamespacedNetworkAttachmentDefinition :<|>
       coerce readNamespacedNodeNetwork :<|>
       coerce replaceNamespacedClusterNetwork :<|>
       coerce replaceNamespacedNetworkAttachmentDefinition :<|>
       coerce replaceNamespacedNodeNetwork :<|>
       coerce createNamespacedVirtualMachineRestore :<|>
       coerce deleteNamespacedVirtualMachineRestore :<|>
       coerce listNamespacedVirtualMachineRestore :<|>
       coerce listVirtualMachineRestoreForAllNamespaces :<|>
       coerce patchNamespacedVirtualMachineRestore :<|>
       coerce readNamespacedVirtualMachineRestore :<|>
       coerce replaceNamespacedVirtualMachineRestore :<|>
       coerce createNamespacedKeyPair :<|>
       coerce deleteNamespacedKeyPair :<|>
       coerce listKeyPairForAllNamespaces :<|>
       coerce listNamespacedKeyPair :<|>
       coerce patchNamespacedKeyPair :<|>
       coerce readNamespacedKeyPair :<|>
       coerce replaceNamespacedKeyPair :<|>
       coerce createNamespacedSupportBundle :<|>
       coerce deleteNamespacedSupportBundle :<|>
       coerce listNamespacedSupportBundle :<|>
       coerce listSupportBundleForAllNamespaces :<|>
       coerce patchNamespacedSupportBundle :<|>
       coerce readNamespacedSupportBundle :<|>
       coerce replaceNamespacedSupportBundle :<|>
       coerce createNamespacedUpgrade :<|>
       coerce deleteNamespacedUpgrade :<|>
       coerce listNamespacedUpgrade :<|>
       coerce listUpgradeForAllNamespaces :<|>
       coerce patchNamespacedUpgrade :<|>
       coerce readNamespacedUpgrade :<|>
       coerce replaceNamespacedUpgrade :<|>
       coerce createNamespacedVirtualMachineTemplate :<|>
       coerce createNamespacedVirtualMachineTemplateVersion :<|>
       coerce deleteNamespacedVirtualMachineTemplate :<|>
       coerce deleteNamespacedVirtualMachineTemplateVersion :<|>
       coerce listNamespacedVirtualMachineTemplate :<|>
       coerce listNamespacedVirtualMachineTemplateVersion :<|>
       coerce listVirtualMachineTemplateForAllNamespaces :<|>
       coerce listVirtualMachineTemplateVersionForAllNamespaces :<|>
       coerce patchNamespacedVirtualMachineTemplate :<|>
       coerce patchNamespacedVirtualMachineTemplateVersion :<|>
       coerce readNamespacedVirtualMachineTemplate :<|>
       coerce readNamespacedVirtualMachineTemplateVersion :<|>
       coerce replaceNamespacedVirtualMachineTemplate :<|>
       coerce replaceNamespacedVirtualMachineTemplateVersion :<|>
       coerce createNamespacedVirtualMachine :<|>
       coerce deleteNamespacedVirtualMachine :<|>
       coerce listNamespacedVirtualMachine :<|>
       coerce listNamespacedVirtualMachineInstance :<|>
       coerce listVirtualMachineForAllNamespaces :<|>
       coerce listVirtualMachineInstanceForAllNamespaces :<|>
       coerce patchNamespacedVirtualMachine :<|>
       coerce readNamespacedVirtualMachine :<|>
       coerce readNamespacedVirtualMachineInstance :<|>
       coerce replaceNamespacedVirtualMachine :<|>
       coerce createNamespacedPersistentVolumeClaim :<|>
       coerce deleteNamespacedPersistentVolumeClaim :<|>
       coerce listNamespacedPersistentVolumeClaim :<|>
       coerce listPersistentVolumeClaimForAllNamespaces :<|>
       coerce patchNamespacedPersistentVolumeClaim :<|>
       coerce readNamespacedPersistentVolumeClaim :<|>
       coerce replaceNamespacedPersistentVolumeClaim)
