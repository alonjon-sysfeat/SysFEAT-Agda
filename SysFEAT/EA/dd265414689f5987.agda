{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Resource Capability: 
 Resource Capability belongs to the Resource Conceptualization Levels as opposed to Business Capability that belongs to the Conceptual .Resource Operating Asset is the supertype of all Capabilitys that are fufilled by Resource Operating Assets.is a Capability that is fullfiled by benefits to Customers (internal or external) of the enterprise. It expresses an ability to produce Resource Outcome Events.This includes; among others, Functionality, Skill and Technology Capability.

Documentation : https://framework.sysfeat.com/pages/dd265414689f5987.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.dd265414689f5987 where -- ========== Resource Capability

open import Agda.Primitive
open import SysFEAT.SOF.515c13db68953887 public -- Capability

ResourceCapability : PropertyType
ResourceCapability = ClassOfProperty

--  ResourceCapability is subTypeOf Capability
st-dd265414689f5987-515c13db68953887 : ResourceCapability ⊏ₑ Capability
st-dd265414689f5987-515c13db68953887 = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Resource Capability: -}
specializedResourceCapability :  Linkage ResourceCapability ResourceCapability
specializedResourceCapability = make_subTypeOf "Specialized Resource Capability" "Specialized Resource Capability"

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
membershipOfResourceCapabilityPart = make_upwardNestingRelation "resourceCapabilityPart membership" "nested resourceCapabilityPart"

-- Aggregation relation
aggregationOfResourceCapabilityResourceCapabilityPart :  Linkage ResourceCapabilityPart ResourceCapability
aggregationOfResourceCapabilityResourceCapabilityPart = make_Relation "ResourceCapability aggregation" "aggregated ResourceCapability"

{- resourceCapabilityPart : derived relation obtained by composing
   membershipOfResourceCapabilityPart and aggregationOfResourceCapabilityResourceCapabilityPart
   It directly links an Resource Capability to the final aggregated ResourceCapability
   hiding the reifying ResourceCapabilityPart
-}
resourceCapabilityPart : Linkage ResourceCapability ResourceCapability
resourceCapabilityPart = membershipOfResourceCapabilityPart  ∘  aggregationOfResourceCapabilityResourceCapabilityPart

postulate -- resourceCapabilityPart is subTypeOf capabilityPart
  st-dd262bf968a05e2c-01f11c59689b68fe  : resourceCapabilityPart   ⊏⋆ᵣ  capabilityPart 

