{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Hardware Management Initiative: 


Documentation : https://framework.sysfeat.com/pages/24f8475766477e0a.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.24f8475766477e0a where -- ========== Hardware Management Initiative

open import Agda.Primitive
open import SysFEAT.EA.05201b936647570a public -- Management Initiative
open import SysFEAT.EA.9b089fb468a46506 public -- Physical Capability Map

HardwareManagementInitiative : ClassOfBoundedIndividual
HardwareManagementInitiative = BoundedIndividual

--  HardwareManagementInitiative is subTypeOf ManagementInitiative
st-24f8475766477e0a-05201b936647570a : HardwareManagementInitiative ⊏ₑ ManagementInitiative
st-24f8475766477e0a-05201b936647570a = polySubTypeOf-identity

-- == Relationships =======================

{- Porfolio Hardware Map: -}
porfolioHardwareMap :  Linkage HardwareManagementInitiative PhysicalCapabilityMap
porfolioHardwareMap = make_instanceOf "Porfolio Hardware Map" "Porfolio Hardware Map"

