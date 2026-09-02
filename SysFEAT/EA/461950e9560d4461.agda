{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Logical Data Domain: 
A Logical Data Domain is used to define a logical data structure made up of Logical Data Entity(ies) and data views.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.461950e9560d4461 where -- ========== Logical Data Domain

open import Agda.Primitive
open import SysFEAT.EA.325c32165eb02a4a public -- Data Domain
open import SysFEAT.EA.fd1bf2a45fbc64fb public -- Logical Data Asset
open import SysFEAT.EA.2b5858b85eec51d9 public -- Logical Data Element

LogicalDataDomain : ClassOfClassOfBoundedIndividual
LogicalDataDomain = ClassOfBoundedIndividual

--  LogicalDataDomain is subTypeOf DataDomain
st-6d2b80465fbb6d89 : LogicalDataDomain ⊏ₑ DataDomain
st-6d2b80465fbb6d89 = polySubTypeOf-identity

--  LogicalDataDomain is subTypeOf LogicalDataAsset
st-fd1bf2ed5fbc65e1 : LogicalDataDomain ⊏ₑ LogicalDataAsset
st-fd1bf2ed5fbc65e1 = polySubTypeOf-identity

-- == Relationships =======================

{- Logical Domain Object: -}
-- Aggregate Member : Logical Domain Object
LogicalDomainObject : ClassOfClassOfIndividual
LogicalDomainObject = ClassOfIndividual

-- Membership relation
membershipOfLogicalDomainObject :  Linkage LogicalDataDomain LogicalDomainObject
membershipOfLogicalDomainObject = membershipOfAggregateMember

-- Aggregation relation
aggregationOfLogicalDataElementLogicalDomainObject :  Linkage LogicalDomainObject LogicalDataElement
aggregationOfLogicalDataElementLogicalDomainObject = aggregationOfBuildingBlock

{- logicalDomainObject : derived relation obtained by composing
   membershipOfLogicalDomainObject and aggregationOfLogicalDataElementLogicalDomainObject
   It directly links an Logical Data Domain to the final aggregated LogicalDataElement
   hiding the reifying LogicalDomainObject
-}
logicalDomainObject : Linkage LogicalDataDomain LogicalDataElement
logicalDomainObject = membershipOfLogicalDomainObject  ∘  aggregationOfLogicalDataElementLogicalDomainObject

{- Logical Data Domain Member: -}
-- Aggregate Member : Logical Data Domain Member
LogicalDataDomainMember : ClassOfClassOfIndividual
LogicalDataDomainMember = ClassOfIndividual

-- Membership relation
membershipOfLogicalDataDomainMember :  Linkage LogicalDataDomain LogicalDataDomainMember
membershipOfLogicalDataDomainMember = membershipOfAggregateMember

-- Aggregation relation
aggregationOfLogicalDataDomainLogicalDataDomainMember :  Linkage LogicalDataDomainMember LogicalDataDomain
aggregationOfLogicalDataDomainLogicalDataDomainMember = aggregationOfBuildingBlock

{- logicalDataDomainMember : derived relation obtained by composing
   membershipOfLogicalDataDomainMember and aggregationOfLogicalDataDomainLogicalDataDomainMember
   It directly links an Logical Data Domain to the final aggregated LogicalDataDomain
   hiding the reifying LogicalDataDomainMember
-}
logicalDataDomainMember : Linkage LogicalDataDomain LogicalDataDomain
logicalDataDomainMember = membershipOfLogicalDataDomainMember  ∘  aggregationOfLogicalDataDomainLogicalDataDomainMember
