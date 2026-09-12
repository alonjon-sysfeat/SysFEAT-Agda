{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Logical Data Element: 
A Logical Data Element represents the logical structure of any kind of data that can be memorized by a Business Software System.A Logical Data Element is either a Logical Data Entity or a Logical Data Property.Only Logical Data Entitys can have identity and can be referenced by Logical Relationships. Logical Data Propertys only handle raw data.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.2b5858b85eec51d9 where -- ========== Logical Data Element

open import Agda.Primitive
open import SysFEAT.EA.fd1bf2a45fbc64fb public -- Logical Data Asset
open import SysFEAT.EA.6d2b7c935fbb6270 public -- Data Asset

LogicalDataElement : ClassOfClassOfBoundedIndividual
LogicalDataElement = ClassOfBoundedIndividual

--  LogicalDataElement is subTypeOf LogicalDataAsset
st-2b5858d65eec52b9 : LogicalDataElement ⊏ₑ LogicalDataAsset
st-2b5858d65eec52b9 = polySubTypeOf-identity

--  LogicalDataElement is subTypeOf DataAsset
st-2b5862455eec6147 : LogicalDataElement ⊏ₑ DataAsset
st-2b5862455eec6147 = polySubTypeOf-identity

-- == Relationships =======================

{- Logical Data Member: -}
-- Aggregate Member : Logical Data Member
LogicalDataMember : ClassOfClassOfIndividual
LogicalDataMember = ClassOfIndividual

-- Membership relation
membershipOfLogicalDataMember :  Linkage LogicalDataElement LogicalDataMember
membershipOfLogicalDataMember = membershipOfAggregateMember

-- Aggregation relation
aggregationOfLogicalDataElementLogicalDataMember :  Linkage LogicalDataMember LogicalDataElement
aggregationOfLogicalDataElementLogicalDataMember = aggregationOfBuildingBlock

{- logicalDataMember : derived relation obtained by composing
   membershipOfLogicalDataMember and aggregationOfLogicalDataElementLogicalDataMember
   It directly links an Logical Data Element to the final aggregated LogicalDataElement
   hiding the reifying LogicalDataMember
-}
logicalDataMember : Linkage LogicalDataElement LogicalDataElement
logicalDataMember = membershipOfLogicalDataMember  ∘  aggregationOfLogicalDataElementLogicalDataMember
