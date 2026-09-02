{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Physical Data Map: 
A Physical Data Map is a top level grouping of Physical Data Domains.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.f4be4bb95ee18b51 where -- ========== Physical Data Map

open import Agda.Primitive
open import SysFEAT.EA.6d2b80db5fbb700b public -- Data Map
open import SysFEAT.EA.8f1cad7d68ca9df0 public -- Physical Data Block
open import SysFEAT.EA.028f03ff5b4f55ee public -- Physical Data Domain

PhysicalDataMap : ClassOfClassOfBoundedIndividual
PhysicalDataMap = ClassOfBoundedIndividual

--  PhysicalDataMap is subTypeOf DataMap
st-f4be4bcc5ee18c2a : PhysicalDataMap ⊏ₑ DataMap
st-f4be4bcc5ee18c2a = polySubTypeOf-identity

--  PhysicalDataMap withAspect PhysicalDataBlock
st-8f1cb92b68cab152 : PhysicalDataMap ⊏ₐₑ (PhysicalDataBlock (lsuc(lzero)))
st-8f1cb92b68cab152 = polySubTypeOf-identity

-- == Relationships =======================

{- External Physical Domain: -}
-- Aggregate Member : External Physical Domain
ExternalPhysicalDomain : ClassOfClassOfIndividual
ExternalPhysicalDomain = ClassOfIndividual

-- Membership relation
membershipOfExternalPhysicalDomain :  Linkage PhysicalDataMap ExternalPhysicalDomain
membershipOfExternalPhysicalDomain = membershipOfAggregateMember

-- Aggregation relation
aggregationOfPhysicalDataDomainExternalPhysicalDomain :  Linkage ExternalPhysicalDomain PhysicalDataDomain
aggregationOfPhysicalDataDomainExternalPhysicalDomain = aggregationOfBuildingBlock

{- externalPhysicalDomain : derived relation obtained by composing
   membershipOfExternalPhysicalDomain and aggregationOfPhysicalDataDomainExternalPhysicalDomain
   It directly links an Physical Data Map to the final aggregated PhysicalDataDomain
   hiding the reifying ExternalPhysicalDomain
-}
externalPhysicalDomain : Linkage PhysicalDataMap PhysicalDataDomain
externalPhysicalDomain = membershipOfExternalPhysicalDomain  ∘  aggregationOfPhysicalDataDomainExternalPhysicalDomain

{- Physical Domain Member: 
Physical Data Domain that is a part of a Physical Data Map.
-}
-- Aggregate Member : Physical Domain Member
PhysicalDomainMember : ClassOfClassOfIndividual
PhysicalDomainMember = ClassOfIndividual

-- Membership relation
membershipOfPhysicalDomainMember :  Linkage PhysicalDataMap PhysicalDomainMember
membershipOfPhysicalDomainMember = membershipOfAggregateMember

-- Aggregation relation
aggregationOfPhysicalDataDomainPhysicalDomainMember :  Linkage PhysicalDomainMember PhysicalDataDomain
aggregationOfPhysicalDataDomainPhysicalDomainMember = aggregationOfBuildingBlock

{- physicalDomainMember : derived relation obtained by composing
   membershipOfPhysicalDomainMember and aggregationOfPhysicalDataDomainPhysicalDomainMember
   It directly links an Physical Data Map to the final aggregated PhysicalDataDomain
   hiding the reifying PhysicalDomainMember
-}
physicalDomainMember : Linkage PhysicalDataMap PhysicalDataDomain
physicalDomainMember = membershipOfPhysicalDomainMember  ∘  aggregationOfPhysicalDataDomainPhysicalDomainMember
