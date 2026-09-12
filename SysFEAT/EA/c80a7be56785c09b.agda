{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Deployed Hardware System: 
An Deployed Hardware System is a man made tangible artifact which exposes Physical Resource Capability(ies) and can produce Physical Outcome Events.An Deployed Hardware System can embed Computing Systems. Together with its embedded Computing Systems, an Deployed Hardware System can also deliver Information Outcomes.An Deployed Hardware System may be based on a set of Hardware Technology(ies).Examples:- The Connected Drone number 234 with Online Payment App.- The 3D printer in Paris Fablab.- Roberts automated guided vehicles (AGVs)- The Production equipment of the assembly line in the factory of Shenzhen.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.c80a7be56785c09b where -- ========== Deployed Hardware System

open import Agda.Primitive
open import SysFEAT.EA.3642454f6007e80e public -- Deployed Business System
open import SysFEAT.EA.c30bf4015a5da72b public -- Concrete Hardware System

DeployedHardwareSystem : ClassOfBoundedIndividual
DeployedHardwareSystem = BoundedIndividual

--  DeployedHardwareSystem is subTypeOf DeployedBusinessSystem
st-c80a82846785c408 : DeployedHardwareSystem ⊏ₑ DeployedBusinessSystem
st-c80a82846785c408 = polySubTypeOf-identity

-- == Relationships =======================

{- Hardware Type: -}
hardwareType :  Linkage DeployedHardwareSystem ConcreteHardwareSystem
hardwareType = make_instanceOf "Hardware Type" "hardwareType"

postulate -- hardwareType is subTypeOf businessSystemType
  st-c80a7d4f6785c18f-e2dc074666fd6d03  : hardwareType   ⊏⋆ᵣ  businessSystemType 
