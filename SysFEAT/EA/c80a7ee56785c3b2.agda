{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Deployed Hardware Equipment: 

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.c80a7ee56785c3b2 where -- ========== Deployed Hardware Equipment

open import Agda.Primitive
open import SysFEAT.EA.c80a7be56785c09b public -- Deployed Hardware System
open import SysFEAT.EA.9788a1fe661765ee public -- Hardware Equipment

DeployedHardwareEquipment : ClassOfBoundedIndividual
DeployedHardwareEquipment = BoundedIndividual

--  DeployedHardwareEquipment is subTypeOf DeployedHardwareSystem
st-c80a83506785c556 : DeployedHardwareEquipment ⊏ₑ DeployedHardwareSystem
st-c80a83506785c556 = polySubTypeOf-identity

-- == Relationships =======================

{- Hardware Equipment: -}
hardwareEquipment :  Linkage DeployedHardwareEquipment HardwareEquipment
hardwareEquipment = make_instanceOf "Hardware Equipment" "hardwareEquipment"

postulate -- hardwareEquipment is subTypeOf hardwareType
  st-c80a83856785c5ac-c80a7d4f6785c18f  : hardwareEquipment   ⊏⋆ᵣ  hardwareType 
