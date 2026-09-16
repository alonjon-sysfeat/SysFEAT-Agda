{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Logical Data Element: 
A Logical Data Element represents the logical structure of any kind of data that can be memorized by a Business Software System.A Logical Data Element is either a Logical Data Entity or a Logical Data Property.Only Logical Data Entitys can have identity and can be referenced by Logical Relationships. Logical Data Propertys only handle raw data.

Documentation : https://framework.sysfeat.com/pages/2b5858b85eec51d9.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.2b5858b85eec51d9 where -- ========== Logical Data Element

open import Agda.Primitive
open import SysFEAT.EA.fd1bf2a45fbc64fb public -- Logical Data Asset
open import SysFEAT.EA.6d2b7c935fbb6270 public -- Data Asset

LogicalDataElement : ClassOfClassOfBoundedIndividual
LogicalDataElement = ClassOfBoundedIndividual

--  LogicalDataElement is subTypeOf LogicalDataAsset
st-2b5858b85eec51d9-fd1bf2a45fbc64fb : LogicalDataElement ⊏ₑ LogicalDataAsset
st-2b5858b85eec51d9-fd1bf2a45fbc64fb = polySubTypeOf-identity

--  LogicalDataElement is subTypeOf DataAsset
st-2b5858b85eec51d9-6d2b7c935fbb6270 : LogicalDataElement ⊏ₑ DataAsset
st-2b5858b85eec51d9-6d2b7c935fbb6270 = polySubTypeOf-identity

-- == Relationships =======================

{- Logical Data Member: -}
-- Aggregate Member : Logical Data Member
LogicalDataMember : ClassOfClassOfIndividual
LogicalDataMember = ClassOfIndividual

-- Membership relation
membershipOfLogicalDataMember :  Linkage LogicalDataElement LogicalDataMember
membershipOfLogicalDataMember = make_upwardNestingRelation "logicalDataMember membership" "nested logicalDataMember"

-- Aggregation relation
aggregationOfLogicalDataElementLogicalDataMember :  Linkage LogicalDataMember LogicalDataElement
aggregationOfLogicalDataElementLogicalDataMember = make_Relation "LogicalDataElement aggregation" "aggregated LogicalDataElement"

{- logicalDataMember : derived relation obtained by composing
   membershipOfLogicalDataMember and aggregationOfLogicalDataElementLogicalDataMember
   It directly links an Logical Data Element to the final aggregated LogicalDataElement
   hiding the reifying LogicalDataMember
-}
logicalDataMember : Linkage LogicalDataElement LogicalDataElement
logicalDataMember = membershipOfLogicalDataMember  ∘  aggregationOfLogicalDataElementLogicalDataMember

postulate -- logicalDataMember is subTypeOf dataObjectMember
  st-e7e3fa0a5fbb0ddb-b6e3cdf35fbb6ad1  : logicalDataMember   ⊏⋆ᵣ  dataObjectMember 

