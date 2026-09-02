{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Resource Capability: 
 Resource Capability belongs to the Resource Conceptualization Levels as opposed to Business Capability that belongs to the Conceptual .Resource Operating Asset is the supertype of all Capabilitys that are fufilled by Resource Operating Assets.is a Capability that is fullfiled by benefits to Customers (internal or external) of the enterprise. It expresses an ability to produce Resource Outcome Events.This includes; among others, Functionality, Skill and Technology Capability.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.dd265414689f5987 where -- ========== Resource Capability

open import Agda.Primitive
open import SysFEAT.SOF.515c13db68953887 public -- Capability

ResourceCapability : PropertyType
ResourceCapability = ClassOfProperty

--  ResourceCapability is subTypeOf Capability
st-6a70be6867876885 : ResourceCapability ⊏ₑ Capability
st-6a70be6867876885 = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Resource Capability: -}
specializedResourceCapability :  Linkage ResourceCapability ResourceCapability
specializedResourceCapability = make_subTypeOf "Specialized Resource Capability" "specializedResourceCapability"

postulate -- specializedResourceCapability is subTypeOf specializedCapability
  st-dd262de168a05f19-01f11e77689b6b10  : specializedResourceCapability   ⊏⋆ᵣ  specializedCapability 

{- Resource Capability Part: 
Aggregate Composition of a Resource Capability.
-}
-- Aggregate Member : Resource Capability Part
ResourceCapabilityPart : ClassOfClassOfIndividual
ResourceCapabilityPart = ClassOfIndividual

-- Membership relation
membershipOfResourceCapabilityPart :  Linkage ResourceCapability ResourceCapabilityPart
membershipOfResourceCapabilityPart = membershipOfAggregateMember

-- Aggregation relation
aggregationOfResourceCapabilityResourceCapabilityPart :  Linkage ResourceCapabilityPart ResourceCapability
aggregationOfResourceCapabilityResourceCapabilityPart = aggregationOfBuildingBlock

{- resourceCapabilityPart : derived relation obtained by composing
   membershipOfResourceCapabilityPart and aggregationOfResourceCapabilityResourceCapabilityPart
   It directly links an Resource Capability to the final aggregated ResourceCapability
   hiding the reifying ResourceCapabilityPart
-}
resourceCapabilityPart : Linkage ResourceCapability ResourceCapability
resourceCapabilityPart = membershipOfResourceCapabilityPart  ∘  aggregationOfResourceCapabilityResourceCapabilityPart
