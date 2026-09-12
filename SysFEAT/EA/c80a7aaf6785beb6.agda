{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Deployed Cloud Service: 

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.c80a7aaf6785beb6 where -- ========== Deployed Cloud Service

open import Agda.Primitive
open import SysFEAT.EA.2c93304a6764424d public -- Deployed Software Technology System
open import SysFEAT.EA.02f515ba641c82e4 public -- Cloud Service

DeployedCloudService : ClassOfBoundedIndividual
DeployedCloudService = BoundedIndividual

--  DeployedCloudService is subTypeOf DeployedSOftwareTechnologySystem
st-c80a7ac26785bf29 : DeployedCloudService ⊏ₑ DeployedSOftwareTechnologySystem
st-c80a7ac26785bf29 = polySubTypeOf-identity

-- == Relationships =======================

{- Cloud Service Type: -}
cloudServiceType :  Linkage DeployedCloudService CloudService
cloudServiceType = make_instanceOf "Cloud Service Type" "cloudServiceType"

postulate -- cloudServiceType is subTypeOf sOftwareTechnologyType
  st-219134a867862275-2c9330e06764470a  : cloudServiceType   ⊏⋆ᵣ  sOftwareTechnologyType 
