{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Individual Facility: 
An Individual Facility is an Individual System of Resources used to model factories, buildings, or outdoor constructions that provides a particular Business Capability or is used for a particular industry.Examples: - London Data Center- Frankfurt Factory- Milan Outlet

Documentation : https://framework.sysfeat.com/pages/c80a413e678594ec.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.c80a413e678594ec where -- ========== Individual Facility

open import Agda.Primitive
open import SysFEAT.EA.c80a41b7678595bb public -- Individual System of Resources
open import SysFEAT.EA.f4be0e865ee1d53b public -- Facility

IndividualFacility : ClassOfBoundedIndividual
IndividualFacility = BoundedIndividual


--  IndividualFacility is subTypeOf IndividualSystemOfResources
st-c80a413e678594ec-c80a41b7678595bb : IndividualFacility ⊏ₑ IndividualSystemOfResources
st-c80a413e678594ec-c80a41b7678595bb = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Facility Type: -}
facilityType :  Linkage IndividualFacility Facility
facilityType = make_instanceOf "Facility Type" "Facility Type"

postulate -- facilityType is subTypeOf systemOfResourceType
  st-c80a415e67859561-c80a436c67859774  : facilityType  ⊏⋆ᵣ  systemOfResourceType
