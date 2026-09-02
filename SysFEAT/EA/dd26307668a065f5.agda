{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Resource Capability Map: 
Top level assembly of Resource Capabilitys and their dependencies which, together, provide a scope of added value (Outcomes) pursued by Asset Management Initiatives.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.dd26307668a065f5 where -- ========== Resource Capability Map

open import Agda.Primitive
open import SysFEAT.SOF.01f12127689b6de2 public -- Capability Map
open import SysFEAT.EA.dd265414689f5987 public -- Resource Capability

ResourceCapabilityMap : PropertyType
ResourceCapabilityMap = ClassOfProperty

--  ResourceCapabilityMap is subTypeOf CapabilityMap
st-09d10a07679e4626 : ResourceCapabilityMap ⊏ₑ CapabilityMap
st-09d10a07679e4626 = polySubTypeOf-identity

-- == Relationships =======================

{- Resource Capability Member: -}
-- Aggregate Member : Resource Capability Member
ResourceCapabilityMember : ClassOfClassOfIndividual
ResourceCapabilityMember = ClassOfIndividual

-- Membership relation
membershipOfResourceCapabilityMember :  Linkage ResourceCapabilityMap ResourceCapabilityMember
membershipOfResourceCapabilityMember = membershipOfAggregateMember

-- Aggregation relation
aggregationOfResourceCapabilityResourceCapabilityMember :  Linkage ResourceCapabilityMember ResourceCapability
aggregationOfResourceCapabilityResourceCapabilityMember = aggregationOfBuildingBlock

{- resourceCapabilityMember : derived relation obtained by composing
   membershipOfResourceCapabilityMember and aggregationOfResourceCapabilityResourceCapabilityMember
   It directly links an Resource Capability Map to the final aggregated ResourceCapability
   hiding the reifying ResourceCapabilityMember
-}
resourceCapabilityMember : Linkage ResourceCapabilityMap ResourceCapability
resourceCapabilityMember = membershipOfResourceCapabilityMember  ∘  aggregationOfResourceCapabilityResourceCapabilityMember
