{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Individual System of Resources: 
A Individual System of Resources is a Mezzo Individual Capability Configuration that combines Org-Units, Hardware Systems and Software Systems to provide a Business Capability.Examples:- Factory (with workers), - Data center (with opetators)- Hospital (with doctors and nurses)- Configured aircraft carrier (with crew),- Configured rescue ship (with rescue team).
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.c80a41b7678595bb where -- ========== Individual System of Resources

open import Agda.Primitive
open import SysFEAT.EA.c80a3f9d67859211 public -- Individual Capability Configuration
open import SysFEAT.EA.f4be11b15ee1e0fa public -- System of Resources

IndividualSystemOfResources : ClassOfBoundedIndividual
IndividualSystemOfResources = BoundedIndividual

--  IndividualSystemOfResources is subTypeOf IndividualCapabilityConfiguration
st-c80a42be67859650 : IndividualSystemOfResources ⊏ₑ IndividualCapabilityConfiguration
st-c80a42be67859650 = polySubTypeOf-identity

-- == Relationships =======================

{- System of Resource Type: -}
systemOfResourceType :  Linkage IndividualSystemOfResources SystemOfResources
systemOfResourceType = make_instanceOf "System of Resource Type" "systemOfResourceType"

postulate -- systemOfResourceType is subTypeOf configurationType
  st-c80a436c67859774-c80a400d67859303  : systemOfResourceType   ⊏⋆ᵣ  configurationType 
