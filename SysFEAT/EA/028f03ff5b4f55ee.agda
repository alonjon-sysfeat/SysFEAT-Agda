{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Physical Data Domain: 
A Physical Data Domain is subset of the metadata of an enterprises data store.For instance, a  Sales  Physical Data Domain contains a  Client  Table and a  Order  Table.Each Physical Data Entity in a Physical Data Domain has CRUD characteristics. For instance, the  Client  Table in the  Sales  Physical Data Domain, has all CRUD characteristics.Physical Data Domains define functional data boundaries used both for Data Allocation to Business Systems (see Resource Agent Store) and data governance for data stewardship (see Data Catalog).
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.028f03ff5b4f55ee where -- ========== Physical Data Domain

open import Agda.Primitive
open import SysFEAT.EA.325c32165eb02a4a public -- Data Domain
open import SysFEAT.EA.8f1cad7d68ca9df0 public -- Physical Data Block
open import SysFEAT.EA.7d37d08d5fd07aaa public -- Physical Data Asset

PhysicalDataDomain : ClassOfClassOfBoundedIndividual
PhysicalDataDomain = ClassOfBoundedIndividual

--  PhysicalDataDomain is subTypeOf DataDomain
st-f4be48c55ee18226 : PhysicalDataDomain ⊏ₑ DataDomain
st-f4be48c55ee18226 = polySubTypeOf-identity

--  PhysicalDataDomain withAspect PhysicalDataBlock
st-8f1cb95668cab189 : PhysicalDataDomain ⊏ₐₑ (PhysicalDataBlock (lsuc(lzero)))
st-8f1cb95668cab189 = polySubTypeOf-identity

-- == Relationships =======================

{- Physical Domain Object: -}
-- Aggregate Member : Physical Domain Object
PhysicalDomainObject : ClassOfClassOfIndividual
PhysicalDomainObject = ClassOfIndividual

-- Membership relation
membershipOfPhysicalDomainObject :  Linkage PhysicalDataDomain PhysicalDomainObject
membershipOfPhysicalDomainObject = membershipOfAggregateMember

-- Aggregation relation
aggregationOfPhysicalDataAssetPhysicalDomainObject :  Linkage PhysicalDomainObject PhysicalDataAsset
aggregationOfPhysicalDataAssetPhysicalDomainObject = aggregationOfBuildingBlock

{- physicalDomainObject : derived relation obtained by composing
   membershipOfPhysicalDomainObject and aggregationOfPhysicalDataAssetPhysicalDomainObject
   It directly links an Physical Data Domain to the final aggregated PhysicalDataAsset
   hiding the reifying PhysicalDomainObject
-}
physicalDomainObject : Linkage PhysicalDataDomain PhysicalDataAsset
physicalDomainObject = membershipOfPhysicalDomainObject  ∘  aggregationOfPhysicalDataAssetPhysicalDomainObject
