{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Logical Data Map: 

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.325c30de5eb0244c where -- ========== Logical Data Map

open import Agda.Primitive
open import SysFEAT.EA.6d2b80db5fbb700b public -- Data Map
open import SysFEAT.EA.fd1bf2a45fbc64fb public -- Logical Data Asset
open import SysFEAT.EA.461950e9560d4461 public -- Logical Data Domain

LogicalDataMap : ClassOfClassOfBoundedIndividual
LogicalDataMap = ClassOfBoundedIndividual

--  LogicalDataMap is subTypeOf DataMap
st-137d21275ee2c50c : LogicalDataMap ⊏ₑ DataMap
st-137d21275ee2c50c = polySubTypeOf-identity

--  LogicalDataMap is subTypeOf LogicalDataAsset
st-fd1bf2e55fbc659b : LogicalDataMap ⊏ₑ LogicalDataAsset
st-fd1bf2e55fbc659b = polySubTypeOf-identity

-- == Relationships =======================

{- External Data Domain Part: -}
-- Aggregate Member : External Data Domain Part
ExternalDataDomainPart : ClassOfClassOfIndividual
ExternalDataDomainPart = ClassOfIndividual

-- Membership relation
membershipOfExternalDataDomainPart :  Linkage LogicalDataMap ExternalDataDomainPart
membershipOfExternalDataDomainPart = membershipOfAggregateMember

-- Aggregation relation
aggregationOfLogicalDataDomainExternalDataDomainPart :  Linkage ExternalDataDomainPart LogicalDataDomain
aggregationOfLogicalDataDomainExternalDataDomainPart = aggregationOfBuildingBlock

{- externalDataDomainPart : derived relation obtained by composing
   membershipOfExternalDataDomainPart and aggregationOfLogicalDataDomainExternalDataDomainPart
   It directly links an Logical Data Map to the final aggregated LogicalDataDomain
   hiding the reifying ExternalDataDomainPart
-}
externalDataDomainPart : Linkage LogicalDataMap LogicalDataDomain
externalDataDomainPart = membershipOfExternalDataDomainPart  ∘  aggregationOfLogicalDataDomainExternalDataDomainPart

{- Logical Data Area Member: -}
-- Aggregate Member : Logical Data Area Member
LogicalDataAreaMember : ClassOfClassOfIndividual
LogicalDataAreaMember = ClassOfIndividual

-- Membership relation
membershipOfLogicalDataAreaMember :  Linkage LogicalDataMap LogicalDataAreaMember
membershipOfLogicalDataAreaMember = membershipOfAggregateMember

-- Aggregation relation
aggregationOfLogicalDataDomainLogicalDataAreaMember :  Linkage LogicalDataAreaMember LogicalDataDomain
aggregationOfLogicalDataDomainLogicalDataAreaMember = aggregationOfBuildingBlock

{- logicalDataAreaMember : derived relation obtained by composing
   membershipOfLogicalDataAreaMember and aggregationOfLogicalDataDomainLogicalDataAreaMember
   It directly links an Logical Data Map to the final aggregated LogicalDataDomain
   hiding the reifying LogicalDataAreaMember
-}
logicalDataAreaMember : Linkage LogicalDataMap LogicalDataDomain
logicalDataAreaMember = membershipOfLogicalDataAreaMember  ∘  aggregationOfLogicalDataDomainLogicalDataAreaMember
