{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Deployed Computer Device: 


Documentation : https://framework.sysfeat.com/pages/2191367d6786268d.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.2191367d6786268d where -- ========== Deployed Computer Device

open import Agda.Primitive
open import SysFEAT.EA.3642454f6007e80e public -- Deployed Business System
open import SysFEAT.EA.df118f995d5f65f1 public -- Computer Device

DeployedComputerDevice : ClassOfBoundedIndividual
DeployedComputerDevice = BoundedIndividual


--  DeployedComputerDevice is subTypeOf DeployedBusinessSystem
st-2191367d6786268d-3642454f6007e80e : DeployedComputerDevice ⊏ₑ DeployedBusinessSystem
st-2191367d6786268d-3642454f6007e80e = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Computer Type: -}
computerType :  Linkage DeployedComputerDevice ComputerDevice
computerType = make_instanceOf "Computer Type" "Computer Type"

postulate -- computerType is subTypeOf businessSystemType
  st-f603fd9467e47ae2-e2dc074666fd6d03  : computerType  ⊏⋆ᵣ  businessSystemType
