{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Data Map: 
A Data Map is an urbanization tool for Data Asset. It represents a set of Data Domains in a particular context.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.6d2b80db5fbb700b where -- ========== Data Map

open import Agda.Primitive
open import SysFEAT.SOF.d6cd2d8e5ab98edc public -- Information Map
open import SysFEAT.EA.8f1c937168ca8195 public -- Data Block
open import SysFEAT.EA.325c32165eb02a4a public -- Data Domain

DataMap : ClassOfClassOfBoundedIndividual
DataMap = ClassOfBoundedIndividual

--  DataMap is subTypeOf InformationMap
st-6d2b80ed5fbb7082 : DataMap ⊏ₑ InformationMap
st-6d2b80ed5fbb7082 = polySubTypeOf-identity

--  DataMap withAspect DataBlock
st-30efb3d161f37d79 : DataMap ⊏ₐₑ (DataBlock (lsuc(lzero)))
st-30efb3d161f37d79 = polySubTypeOf-identity

-- == Relationships =======================

{- Data Domain Member: 
Data Domain that isa component of a Data Map.
-}
-- Aggregate Member : Data Domain Member
DataDomainMember : ClassOfClassOfIndividual
DataDomainMember = ClassOfIndividual

-- Membership relation
membershipOfDataDomainMember :  Linkage DataMap DataDomainMember
membershipOfDataDomainMember = membershipOfAggregateMember

-- Aggregation relation
aggregationOfDataDomainDataDomainMember :  Linkage DataDomainMember DataDomain
aggregationOfDataDomainDataDomainMember = aggregationOfBuildingBlock

{- dataDomainMember : derived relation obtained by composing
   membershipOfDataDomainMember and aggregationOfDataDomainDataDomainMember
   It directly links an Data Map to the final aggregated DataDomain
   hiding the reifying DataDomainMember
-}
dataDomainMember : Linkage DataMap DataDomain
dataDomainMember = membershipOfDataDomainMember  ∘  aggregationOfDataDomainDataDomainMember

{- External Data Area: -}
-- Aggregate Member : External Data Area
ExternalDataArea : ClassOfClassOfIndividual
ExternalDataArea = ClassOfIndividual

-- Membership relation
membershipOfExternalDataArea :  Linkage DataMap ExternalDataArea
membershipOfExternalDataArea = membershipOfAggregateMember

-- Aggregation relation
aggregationOfDataDomainExternalDataArea :  Linkage ExternalDataArea DataDomain
aggregationOfDataDomainExternalDataArea = aggregationOfBuildingBlock

{- externalDataArea : derived relation obtained by composing
   membershipOfExternalDataArea and aggregationOfDataDomainExternalDataArea
   It directly links an Data Map to the final aggregated DataDomain
   hiding the reifying ExternalDataArea
-}
externalDataArea : Linkage DataMap DataDomain
externalDataArea = membershipOfExternalDataArea  ∘  aggregationOfDataDomainExternalDataArea
