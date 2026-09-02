{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Deployed Software Technology System: 

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.2c93304a6764424d where -- ========== Deployed Software Technology System

open import Agda.Primitive
open import SysFEAT.EA.c80a54ad6785a44d public -- Individual Technology System
open import SysFEAT.EA.0463ea9a63fd8b6c public -- Software Technology System

DeployedSOftwareTechnologySystem : ClassOfBoundedIndividual
DeployedSOftwareTechnologySystem = BoundedIndividual

--  DeployedSOftwareTechnologySystem is subTypeOf IndividualTechnologySystem
st-c80a5bf26785a8a4 : DeployedSOftwareTechnologySystem ⊏ₑ IndividualTechnologySystem
st-c80a5bf26785a8a4 = polySubTypeOf-identity

-- == Relationships =======================

{- Software Technology Type: -}
sOftwareTechnologyType :  Linkage DeployedSOftwareTechnologySystem SOftwareTechnologySystem
sOftwareTechnologyType = make_instanceOf "Software Technology Type" "sOftwareTechnologyType"

postulate -- sOftwareTechnologyType is subTypeOf systemType
  st-2c9330e06764470a-c80a5a2e6785a53e  : sOftwareTechnologyType   ⊏⋆ᵣ  systemType 
