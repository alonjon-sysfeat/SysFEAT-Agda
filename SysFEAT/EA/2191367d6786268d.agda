{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Deployed Computer Device: 

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.2191367d6786268d where -- ========== Deployed Computer Device

open import Agda.Primitive
open import SysFEAT.EA.3642454f6007e80e public -- Deployed Business System
open import SysFEAT.EA.df118f995d5f65f1 public -- Computer Device

DeployedComputerDevice : ClassOfBoundedIndividual
DeployedComputerDevice = BoundedIndividual

--  DeployedComputerDevice is subTypeOf DeployedBusinessSystem
st-f603fdf267e47d20 : DeployedComputerDevice ⊏ₑ DeployedBusinessSystem
st-f603fdf267e47d20 = polySubTypeOf-identity

-- == Relationships =======================

{- Computer Type: -}
computerType :  Linkage DeployedComputerDevice ComputerDevice
computerType = make_instanceOf "Computer Type" "computerType"

postulate -- computerType is subTypeOf businessSystemType
  st-f603fd9467e47ae2-e2dc074666fd6d03  : computerType   ⊏⋆ᵣ  businessSystemType 
