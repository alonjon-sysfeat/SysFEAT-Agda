{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Resource Capability: 
A Business Resource Capability is a Resource Capability provided by Business Agents, that benefits to Customers (internal or external) of the enterprise. It expresses an ability to produce Business Outcome Events.This includes Functionality, Physical Capability and Skill.

Documentation : https://framework.sysfeat.com/pages/dd26288968a05d00.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.dd26288968a05d00 where -- ========== Business Resource Capability

open import Agda.Primitive
open import SysFEAT.EA.dd265414689f5987 public -- Resource Capability
open import SysFEAT.EA.dd268f2868a08150 public -- Business Capability

BusinessResourceCapability : PropertyType
BusinessResourceCapability = ClassOfProperty

--  BusinessResourceCapability is subTypeOf ResourceCapability
st-dd26288968a05d00-dd265414689f5987 : BusinessResourceCapability ⊏ₑ ResourceCapability
st-dd26288968a05d00-dd265414689f5987 = polySubTypeOf-identity

-- == Relationships =======================

{- Realized Business Capability: -}
realizedBusinessCapability :  Linkage BusinessResourceCapability BusinessCapability
realizedBusinessCapability = make_subTypeOf "Realized Business Capability" "Realized Business Capability"

postulate -- realizedBusinessCapability is subTypeOf specializedProperty
  st-dd2682fc68a1bb2d-1662112a68925f90  : realizedBusinessCapability   ⊏⋆ᵣ  specializedProperty 

{- Specialized Business Resource Capability: -}
specializedBusinessResourceCapability :  Linkage BusinessResourceCapability BusinessResourceCapability
specializedBusinessResourceCapability = make_subTypeOf "Specialized Business Resource Capability" "Specialized Business Resource Capability"

postulate -- specializedBusinessResourceCapability is subTypeOf specializedResourceCapability
  st-dd2683b668a1bbb3-dd262de168a05f19  : specializedBusinessResourceCapability   ⊏⋆ᵣ  specializedResourceCapability 

{- Business Resource Capability Part: -}
-- Aggregate Member : Business Resource Capability Part
BusinessResourceCapabilityPart : ClassOfClassOfIndividual
BusinessResourceCapabilityPart = ClassOfIndividual

-- Membership relation
membershipOfBusinessResourceCapabilityPart :  Linkage BusinessResourceCapability BusinessResourceCapabilityPart
membershipOfBusinessResourceCapabilityPart = make_upwardNestingRelation "businessResourceCapabilityPart membership" "nested businessResourceCapabilityPart"

-- Aggregation relation
aggregationOfBusinessResourceCapabilityBusinessResourceCapabilityPart :  Linkage BusinessResourceCapabilityPart BusinessResourceCapability
aggregationOfBusinessResourceCapabilityBusinessResourceCapabilityPart = make_Relation "BusinessResourceCapability aggregation" "aggregated BusinessResourceCapability"

{- businessResourceCapabilityPart : derived relation obtained by composing
   membershipOfBusinessResourceCapabilityPart and aggregationOfBusinessResourceCapabilityBusinessResourceCapabilityPart
   It directly links an Business Resource Capability to the final aggregated BusinessResourceCapability
   hiding the reifying BusinessResourceCapabilityPart
-}
businessResourceCapabilityPart : Linkage BusinessResourceCapability BusinessResourceCapability
businessResourceCapabilityPart = membershipOfBusinessResourceCapabilityPart  ∘  aggregationOfBusinessResourceCapabilityBusinessResourceCapabilityPart

postulate -- businessResourceCapabilityPart is subTypeOf resourceCapabilityPart
  st-dd27af0168a10530-dd262bf968a05e2c  : businessResourceCapabilityPart   ⊏⋆ᵣ  resourceCapabilityPart 

