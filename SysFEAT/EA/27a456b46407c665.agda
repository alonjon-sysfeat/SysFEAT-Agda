{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Configured Technology System: 
A Configured Technology System is a Technology System that is a combination of Networking Systems and Computing Systems.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.27a456b46407c665 where -- ========== Configured Technology System

open import Agda.Primitive
open import SysFEAT.EA.0cbd1fa663fe18ac public -- Technology System

ConfiguredTechnologySystem : ClassOfClassOfBoundedIndividual
ConfiguredTechnologySystem = ClassOfBoundedIndividual

--  ConfiguredTechnologySystem is subTypeOf TechnologySystem
st-27a456dd6407c6d1 : ConfiguredTechnologySystem ⊏ₑ TechnologySystem
st-27a456dd6407c6d1 = polySubTypeOf-identity

-- == Relationships =======================
