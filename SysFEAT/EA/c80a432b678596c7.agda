{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Individual Resource Configuration: 
An Individual Resource Configuration is a generic Individual System of Resources that represents Individual System of Resources that are not Individual Facilitys.(Data centers, Factories, Outlets).Examples: - The configured nuclear power plant of (with operating teams),  - The configured aircraft carrier number 3424 (with crew#1) on flight 2501 to LA.When specific characteristics need to be considered for a given type of Individual Resource Configuration, it is recommended to create a new sub-type of Individual System of Resources to capture these characteristics.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.c80a432b678596c7 where -- ========== Individual Resource Configuration

open import Agda.Primitive
open import SysFEAT.EA.c80a41b7678595bb public -- Individual System of Resources
open import SysFEAT.EA.f4be14d25ee1eaff public -- Resource Configuration

IndividualResourceConfiguration : ClassOfBoundedIndividual
IndividualResourceConfiguration = BoundedIndividual

--  IndividualResourceConfiguration is subTypeOf IndividualSystemOfResources
st-c80a43386785970f : IndividualResourceConfiguration ⊏ₑ IndividualSystemOfResources
st-c80a43386785970f = polySubTypeOf-identity

-- == Relationships =======================

{- Resource Configuration: -}
resourceConfiguration :  Linkage IndividualResourceConfiguration ResourceConfiguration
resourceConfiguration = make_instanceOf "Resource Configuration" "resourceConfiguration"

postulate -- resourceConfiguration is subTypeOf systemOfResourceType
  st-c80a43566785973a-c80a436c67859774  : resourceConfiguration   ⊏⋆ᵣ  systemOfResourceType 
