{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Capability Map: 
A Business Capability Map is a top level assembly of Business Capability(ies) and their dependencies that, together, provide a Business Capability scope for an Enterprise Initiative.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.c189f8c868ae5b73 where -- ========== Business Capability Map

open import Agda.Primitive
open import SysFEAT.SOF.01f12127689b6de2 public -- Capability Map
open import SysFEAT.EA.dd268f2868a08150 public -- Business Capability

BusinessCapabilityMap : PropertyType
BusinessCapabilityMap = ClassOfProperty

--  BusinessCapabilityMap is subTypeOf CapabilityMap
st-09d10e83679e4e15 : BusinessCapabilityMap ⊏ₑ CapabilityMap
st-09d10e83679e4e15 = polySubTypeOf-identity

-- == Relationships =======================

{- Member Business Capability: -}
-- Aggregate Member : Member Business Capability
MemberBusinessCapability : ClassOfClassOfIndividual
MemberBusinessCapability = ClassOfIndividual

-- Membership relation
membershipOfMemberBusinessCapability :  Linkage BusinessCapabilityMap MemberBusinessCapability
membershipOfMemberBusinessCapability = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessCapabilityMemberBusinessCapability :  Linkage MemberBusinessCapability BusinessCapability
aggregationOfBusinessCapabilityMemberBusinessCapability = aggregationOfBuildingBlock

{- memberBusinessCapability : derived relation obtained by composing
   membershipOfMemberBusinessCapability and aggregationOfBusinessCapabilityMemberBusinessCapability
   It directly links an Business Capability Map to the final aggregated BusinessCapability
   hiding the reifying MemberBusinessCapability
-}
memberBusinessCapability : Linkage BusinessCapabilityMap BusinessCapability
memberBusinessCapability = membershipOfMemberBusinessCapability  ∘  aggregationOfBusinessCapabilityMemberBusinessCapability
