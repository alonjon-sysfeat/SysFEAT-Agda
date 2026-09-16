{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Physical Capability Map: 


Documentation : https://framework.sysfeat.com/pages/9b089fb468a46506.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.9b089fb468a46506 where -- ========== Physical Capability Map

open import Agda.Primitive
open import SysFEAT..dd2638ba68a073a8 public -- Business Resource Capability Map
open import SysFEAT.EA.9b089d1868a45ed3 public -- Physical Capability

PhysicalCapabilityMap : PropertyType
PhysicalCapabilityMap = ClassOfProperty

--  PhysicalCapabilityMap is subTypeOf BusinessResourceCapabilityMap
st-9b089fb468a46506-dd2638ba68a073a8 : PhysicalCapabilityMap ⊏ₑ BusinessResourceCapabilityMap
st-9b089fb468a46506-dd2638ba68a073a8 = polySubTypeOf-identity

-- == Relationships =======================

{- Physical Map Member: -}
-- Aggregate Member : Physical Map Member
PhysicalMapMember : ClassOfClassOfIndividual
PhysicalMapMember = ClassOfIndividual

-- Membership relation
membershipOfPhysicalMapMember :  Linkage PhysicalCapabilityMap PhysicalMapMember
membershipOfPhysicalMapMember = make_upwardNestingRelation "physicalMapMember membership" "nested physicalMapMember"

-- Aggregation relation
aggregationOfPhysicalCapabilityPhysicalMapMember :  Linkage PhysicalMapMember PhysicalCapability
aggregationOfPhysicalCapabilityPhysicalMapMember = make_Relation "PhysicalCapability aggregation" "aggregated PhysicalCapability"

{- physicalMapMember : derived relation obtained by composing
   membershipOfPhysicalMapMember and aggregationOfPhysicalCapabilityPhysicalMapMember
   It directly links an Physical Capability Map to the final aggregated PhysicalCapability
   hiding the reifying PhysicalMapMember
-}
physicalMapMember : Linkage PhysicalCapabilityMap PhysicalCapability
physicalMapMember = membershipOfPhysicalMapMember  ∘  aggregationOfPhysicalCapabilityPhysicalMapMember

postulate -- physicalMapMember is subTypeOf businessResourceCapabilityMember
  st-9b08a0ba68a466b4-dd26a8b568a1f5be  : physicalMapMember   ⊏⋆ᵣ  businessResourceCapabilityMember 

