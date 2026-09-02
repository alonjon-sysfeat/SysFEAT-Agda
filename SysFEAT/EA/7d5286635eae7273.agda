{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Logical Data Property: 
A Logical Data Property is an immutable type that is distinguishable only by the state of its properties. That is, unlike a Logical Data Entity, which has a unique identifier and remains distinct even if its properties are otherwise identical, two Value Objects with the exact same properties can be considered equal.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.7d5286635eae7273 where -- ========== Logical Data Property

open import Agda.Primitive
open import SysFEAT.EA.2b5858b85eec51d9 public -- Logical Data Element
open import SysFEAT.EA.8f1c991068ca8a23 public -- Data Property

LogicalDataProperty : ClassOfClassOfBoundedIndividual
LogicalDataProperty = ClassOfBoundedIndividual

--  LogicalDataProperty is subTypeOf LogicalDataElement
st-2b5859155eec536c : LogicalDataProperty ⊏ₑ LogicalDataElement
st-2b5859155eec536c = polySubTypeOf-identity

--  LogicalDataProperty is subTypeOf DataProperty
st-e7e3fb3b5fbb1173 : LogicalDataProperty ⊏ₑ DataProperty
st-e7e3fb3b5fbb1173 = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Logical Value: -}
specializedLogicalValue :  Linkage LogicalDataProperty LogicalDataProperty
specializedLogicalValue = make_subTypeOf "Specialized Logical Value" "specializedLogicalValue"

postulate -- specializedLogicalValue is subTypeOf specializedDataObject
  st-325a37b266f34974-325a380d66f3515e  : specializedLogicalValue   ⊏⋆ᵣ  specializedDataObject 

{- Data Value Member: -}
-- Aggregate Member : Data Value Member
DataValueMember : ClassOfClassOfIndividual
DataValueMember = ClassOfIndividual

-- Membership relation
membershipOfDataValueMember :  Linkage LogicalDataProperty DataValueMember
membershipOfDataValueMember = membershipOfAggregateMember

-- Aggregation relation
aggregationOfLogicalDataPropertyDataValueMember :  Linkage DataValueMember LogicalDataProperty
aggregationOfLogicalDataPropertyDataValueMember = aggregationOfBuildingBlock

{- dataValueMember : derived relation obtained by composing
   membershipOfDataValueMember and aggregationOfLogicalDataPropertyDataValueMember
   It directly links an Logical Data Property to the final aggregated LogicalDataProperty
   hiding the reifying DataValueMember
-}
dataValueMember : Linkage LogicalDataProperty LogicalDataProperty
dataValueMember = membershipOfDataValueMember  ∘  aggregationOfLogicalDataPropertyDataValueMember
