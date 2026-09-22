{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Physical Data Map: 
A Physical Data Map is a top level grouping of Physical Data Domains.

Documentation : https://framework.sysfeat.com/pages/f4be4bb95ee18b51.htm

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
st-f4be4bb95ee18b51-6d2b80db5fbb700b : PhysicalDataMap ⊏ₑ DataMap
st-f4be4bb95ee18b51-6d2b80db5fbb700b = polySubTypeOf-identity

--  PhysicalDataMap withAspect PhysicalDataBlock
st-f4be4bb95ee18b51-8f1cad7d68ca9df0 : PhysicalDataMap ⊏ₐₑ (PhysicalDataBlock (lsuc(lzero)))
st-f4be4bb95ee18b51-8f1cad7d68ca9df0 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- External Physical Domain: -}
-- Aggregate Member : External Physical Domain
ExternalPhysicalDomain : ClassOfClassOfIndividual
ExternalPhysicalDomain = ClassOfIndividual


--  ExternalPhysicalDomain is subTypeOf externalInformationArea
st-4447473c5f4f6a69-dfa4e2b35ebb4ee8 : ExternalPhysicalDomain ⊏ₑ externalInformationArea
st-4447473c5f4f6a69-dfa4e2b35ebb4ee8 = polySubTypeOf-identity

--  ExternalPhysicalDomain is subTypeOf ExternalDataArea
st-4447473c5f4f6a69-fd1bf5b05fbc6c5a : ExternalPhysicalDomain ⊏ₑ ExternalDataArea
st-4447473c5f4f6a69-fd1bf5b05fbc6c5a = polySubTypeOf-identity

--  ExternalPhysicalDomain is subTypeOf PhysicalDataDomain
st-4447473c5f4f6a69-028f03ff5b4f55ee : ExternalPhysicalDomain ⊏ₑ PhysicalDataDomain
st-4447473c5f4f6a69-028f03ff5b4f55ee = polySubTypeOf-identity

-- Membership relation
membershipOfExternalPhysicalDomain :  Linkage PhysicalDataMap ExternalPhysicalDomain
membershipOfExternalPhysicalDomain = make_upwardNestingRelation "externalPhysicalDomain membership" "nested externalPhysicalDomain"

-- Aggregation relation
aggregationOfPhysicalDataDomainExternalPhysicalDomain :  Linkage ExternalPhysicalDomain PhysicalDataDomain
aggregationOfPhysicalDataDomainExternalPhysicalDomain = make_Relation "PhysicalDataDomain aggregation" "aggregated PhysicalDataDomain"

{- externalPhysicalDomain : derived relation obtained by composing
   membershipOfExternalPhysicalDomain and aggregationOfPhysicalDataDomainExternalPhysicalDomain
   It directly links an Physical Data Map to the final aggregated PhysicalDataDomain
   hiding the reifying ExternalPhysicalDomain
-}
externalPhysicalDomain : Linkage PhysicalDataMap PhysicalDataDomain
externalPhysicalDomain = membershipOfExternalPhysicalDomain  ∘  aggregationOfPhysicalDataDomainExternalPhysicalDomain



-- -------------------------------------------------------------------------------------------- 
{- Physical Domain Member: 
Physical Data Domain that is a part of a Physical Data Map.
-}
-- Aggregate Member : Physical Domain Member
PhysicalDomainMember : ClassOfClassOfIndividual
PhysicalDomainMember = ClassOfIndividual


--  PhysicalDomainMember is subTypeOf InformationDomainMember
st-f4be4c025ee18d1e-dfa4e2865ebb4e38 : PhysicalDomainMember ⊏ₑ InformationDomainMember
st-f4be4c025ee18d1e-dfa4e2865ebb4e38 = polySubTypeOf-identity

--  PhysicalDomainMember is subTypeOf DataDomainMember
st-f4be4c025ee18d1e-6d2b81965fbb71ad : PhysicalDomainMember ⊏ₑ DataDomainMember
st-f4be4c025ee18d1e-6d2b81965fbb71ad = polySubTypeOf-identity

--  PhysicalDomainMember is subTypeOf PhysicalDataDomain
st-f4be4c025ee18d1e-028f03ff5b4f55ee : PhysicalDomainMember ⊏ₑ PhysicalDataDomain
st-f4be4c025ee18d1e-028f03ff5b4f55ee = polySubTypeOf-identity

-- Membership relation
membershipOfPhysicalDomainMember :  Linkage PhysicalDataMap PhysicalDomainMember
membershipOfPhysicalDomainMember = make_upwardNestingRelation "physicalDomainMember membership" "nested physicalDomainMember"

-- Aggregation relation
aggregationOfPhysicalDataDomainPhysicalDomainMember :  Linkage PhysicalDomainMember PhysicalDataDomain
aggregationOfPhysicalDataDomainPhysicalDomainMember = make_Relation "PhysicalDataDomain aggregation" "aggregated PhysicalDataDomain"

{- physicalDomainMember : derived relation obtained by composing
   membershipOfPhysicalDomainMember and aggregationOfPhysicalDataDomainPhysicalDomainMember
   It directly links an Physical Data Map to the final aggregated PhysicalDataDomain
   hiding the reifying PhysicalDomainMember
-}
physicalDomainMember : Linkage PhysicalDataMap PhysicalDataDomain
physicalDomainMember = membershipOfPhysicalDomainMember  ∘  aggregationOfPhysicalDataDomainPhysicalDomainMember


