{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Deployed Application: 
A Deployed Application offers a set of functionalities to users.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.56cd60a95c513aaf where -- ========== Deployed Application

open import Agda.Primitive
open import SysFEAT.EA.66f870ce620b2d8c public -- Individual Business Software System
open import SysFEAT.EA.56cd60c05c513ad9 public -- Deployed Software Technology
open import SysFEAT.EA.bcebd8e9549144db public -- Application

DeployedApplication : ClassOfBoundedIndividual
DeployedApplication = BoundedIndividual

--  DeployedApplication is subTypeOf IndividualBusinessSOftwareSystem
st-66f87217620b3317 : DeployedApplication ⊏ₑ IndividualBusinessSOftwareSystem
st-66f87217620b3317 = polySubTypeOf-identity

-- == Relationships =======================

{- Technology Installation Used: -}
technologyInstallationUsed :  Linkage DeployedApplication DeployedSOftwareTechnology
technologyInstallationUsed = make_holonymyRelation "Technology Installation Used" "technologyInstallationUsed"


{- Application Type: -}
applicationType :  Linkage DeployedApplication Application
applicationType = make_instanceOf "Application Type" "applicationType"

postulate -- applicationType is subTypeOf sOftwareSystemType
  st-e2dc054b66fd4a63-e2dc060266fd4c0c  : applicationType   ⊏⋆ᵣ  sOftwareSystemType 
