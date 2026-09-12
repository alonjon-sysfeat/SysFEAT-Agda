{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Deployed Hardware Configuration: 

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.c80a7d7a6785c1ff where -- ========== Deployed Hardware Configuration

open import Agda.Primitive
open import SysFEAT.EA.c80a7be56785c09b public -- Deployed Hardware System
open import SysFEAT.EA.9788a552661766c9 public -- Hardware Configuration

DeployedHardwareConfiguration : ClassOfBoundedIndividual
DeployedHardwareConfiguration = BoundedIndividual

--  DeployedHardwareConfiguration is subTypeOf DeployedHardwareSystem
st-c80a7d876785c26d : DeployedHardwareConfiguration ⊏ₑ DeployedHardwareSystem
st-c80a7d876785c26d = polySubTypeOf-identity

-- == Relationships =======================

{- Configuration Type: -}
configurationType :  Linkage DeployedHardwareConfiguration HardwareConfiguration
configurationType = make_instanceOf "Configuration Type" "configurationType"

postulate -- configurationType is subTypeOf hardwareType
  st-c80a7eb66785c342-c80a7d4f6785c18f  : configurationType   ⊏⋆ᵣ  hardwareType 
