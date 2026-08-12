{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Capability Map: 
Top level assembly of Capabilitys and their dependencies which, together, provide a scope of added value (Outcome Events) pursued by Operational Transformations.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.01f12127689b6de2 where -- ========== Capability Map

open import Agda.Primitive
open import SysFEAT.UpperOntology.06710aeb68ed2d29 public -- Meta Family of Class
open import SysFEAT.UpperOntology.8cfa942f68527849 public -- Unbounded Aggregate
open import SysFEAT.SOF.515c13db68953887 public -- Capability

CapabilityMap : PropertyType
CapabilityMap = ClassOfProperty

postulate --  CapabilityMap withAspect MetaFamilyOfClass
  st-299e33c5684864b3 : CapabilityMap ⊏ₐₑ (MetaFamilyOfClass (lsuc(lzero)))

postulate --  CapabilityMap withAspect UnboundedAggregate
  st-299e556b6848808c : CapabilityMap ⊏ₐₑ (UnboundedAggregate (lsuc(lzero)))

-- == Relationships =======================

{- Capability Member: 
Aggregate Composition of a Capability.
-}
-- Aggregate Member : Capability Member
CapabilityMember : ClassOfClassOfIndividual
CapabilityMember = ClassOfIndividual

-- Membership relation
membershipOfCapabilityMember :  Linkage CapabilityMap CapabilityMember
membershipOfCapabilityMember = membershipOfAggregateMember

-- Aggregation relation
aggregationOfCapabilityCapabilityMember :  Linkage CapabilityMember Capability
aggregationOfCapabilityCapabilityMember = aggregationOfBuildingBlock

{- capabilityMember : derived relation obtained by composing
   membershipOfCapabilityMember and aggregationOfCapabilityCapabilityMember
   It directly links an Capability Map to the final aggregated Capability
   hiding the reifying CapabilityMember
-}
capabilityMember : Linkage CapabilityMap Capability
capabilityMember = membershipOfCapabilityMember  ∘  aggregationOfCapabilityCapabilityMember
