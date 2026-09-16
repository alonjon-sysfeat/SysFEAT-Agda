{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Logical Data Property: 
A Logical Data Property is an immutable type that is distinguishable only by the state of its properties. That is, unlike a Logical Data Entity, which has a unique identifier and remains distinct even if its properties are otherwise identical, two Value Objects with the exact same properties can be considered equal.

Documentation : https://framework.sysfeat.com/pages/7d5286635eae7273.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.7d5286635eae7273 where -- ========== Logical Data Property

open import Agda.Primitive
open import SysFEAT.EA.2b5858b85eec51d9 public -- Logical Data Element
open import SysFEAT.EA.8f1c991068ca8a23 public -- Data Property

LogicalDataProperty : ClassOfClassOfBoundedIndividual
LogicalDataProperty = ClassOfBoundedIndividual

--  LogicalDataProperty is subTypeOf LogicalDataElement
st-7d5286635eae7273-2b5858b85eec51d9 : LogicalDataProperty ⊏ₑ LogicalDataElement
st-7d5286635eae7273-2b5858b85eec51d9 = polySubTypeOf-identity

--  LogicalDataProperty is subTypeOf DataProperty
st-7d5286635eae7273-8f1c991068ca8a23 : LogicalDataProperty ⊏ₑ DataProperty
st-7d5286635eae7273-8f1c991068ca8a23 = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Logical Value: -}
specializedLogicalValue :  Linkage LogicalDataProperty LogicalDataProperty
specializedLogicalValue = make_subTypeOf "Specialized Logical Value" "Specialized Logical Value"

postulate -- specializedLogicalValue is subTypeOf specializedDataObject
  st-325a37b266f34974-325a380d66f3515e  : specializedLogicalValue   ⊏⋆ᵣ  specializedDataObject 

{- Data Value Member: -}
-- Aggregate Member : Data Value Member
DataValueMember : ClassOfClassOfIndividual
DataValueMember = ClassOfIndividual

-- Membership relation
membershipOfDataValueMember :  Linkage LogicalDataProperty DataValueMember
membershipOfDataValueMember = make_upwardNestingRelation "dataValueMember membership" "nested dataValueMember"

-- Aggregation relation
aggregationOfLogicalDataPropertyDataValueMember :  Linkage DataValueMember LogicalDataProperty
aggregationOfLogicalDataPropertyDataValueMember = make_Relation "LogicalDataProperty aggregation" "aggregated LogicalDataProperty"

{- dataValueMember : derived relation obtained by composing
   membershipOfDataValueMember and aggregationOfLogicalDataPropertyDataValueMember
   It directly links an Logical Data Property to the final aggregated LogicalDataProperty
   hiding the reifying DataValueMember
-}
dataValueMember : Linkage LogicalDataProperty LogicalDataProperty
dataValueMember = membershipOfDataValueMember  ∘  aggregationOfLogicalDataPropertyDataValueMember

postulate -- dataValueMember is subTypeOf logicalDataMember
  st-2b585ad05eec569f-e7e3fa0a5fbb0ddb  : dataValueMember   ⊏⋆ᵣ  logicalDataMember 
postulate -- dataValueMember is subTypeOf subDataProperty
  st-2b585ad05eec569f-8f1c9c3268ca90a3  : dataValueMember   ⊏⋆ᵣ  subDataProperty 
postulate -- dataValueMember is subTypeOf informationRelationship
  st-2b585ad05eec569f-dfa4e2305ebb4d2b  : dataValueMember   ⊏⋆ᵣ  informationRelationship 

