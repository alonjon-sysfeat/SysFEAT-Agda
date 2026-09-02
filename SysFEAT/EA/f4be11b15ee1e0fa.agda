{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

System of Resources: 
A System of Resources is a Mezzo Capability Configuration that combines Org-Unit Types, Concrete Hardware Systems and Business Software Systems to provide a Business Capability.Examples:- Factory (with workers), - Data center (with opetators)- Hospital (with doctors and nurses)- Configured aircraft carrier (with crew),- Configured rescue ship (with rescue team).
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.f4be11b15ee1e0fa where -- ========== System of Resources

open import Agda.Primitive
open import SysFEAT.EA.d1600c7062e093eb public -- Capability Configuration

SystemOfResources : ClassOfClassOfBoundedIndividual
SystemOfResources = ClassOfBoundedIndividual

--  SystemOfResources is subTypeOf CapabilityConfiguration
st-d1600d4462e09513 : SystemOfResources ⊏ₑ CapabilityConfiguration
st-d1600d4462e09513 = polySubTypeOf-identity

-- == Relationships =======================
