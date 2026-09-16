{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Structured Field: 
A Structured Field is a NoSQL Field which is a combination of other NoSQL Fields.For instance, an address in composed of a street field, a city field and a country field.

Documentation : https://framework.sysfeat.com/pages/a80ddb0963d34800.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.a80ddb0963d34800 where -- ========== Structured Field

open import Agda.Primitive
open import SysFEAT.EA.254e4dd45f7f8749 public -- NoSQL Field

StructuredField : ClassOfClassOfBoundedIndividual
StructuredField = ClassOfBoundedIndividual

--  StructuredField is subTypeOf NoSQLField
st-a80ddb0963d34800-254e4dd45f7f8749 : StructuredField ⊏ₑ NoSQLField
st-a80ddb0963d34800-254e4dd45f7f8749 = polySubTypeOf-identity

-- == Relationships =======================

{- Sub-Field: 
A Sub-Field is a component of a Structured Field.
-}
-- Aggregate Member : Sub-Field
SubField : ClassOfClassOfIndividual
SubField = ClassOfIndividual

-- Membership relation
membershipOfSubField :  Linkage StructuredField SubField
membershipOfSubField = make_upwardNestingRelation "subField membership" "nested subField"

-- Aggregation relation
aggregationOfNoSQLFieldSubField :  Linkage SubField NoSQLField
aggregationOfNoSQLFieldSubField = make_Relation "NoSQLField aggregation" "aggregated NoSQLField"

{- subField : derived relation obtained by composing
   membershipOfSubField and aggregationOfNoSQLFieldSubField
   It directly links an Structured Field to the final aggregated NoSQLField
   hiding the reifying SubField
-}
subField : Linkage StructuredField NoSQLField
subField = membershipOfSubField  ∘  aggregationOfNoSQLFieldSubField

postulate -- subField is subTypeOf dataObjectMember
  st-086d16b85fd15793-b6e3cdf35fbb6ad1  : subField   ⊏⋆ᵣ  dataObjectMember 
postulate -- subField is subTypeOf metaDataObjectMember
  st-086d16b85fd15793-05b0b95c6006bc80  : subField   ⊏⋆ᵣ  metaDataObjectMember 
postulate -- subField is subTypeOf subPhysicalDataProperty
  st-086d16b85fd15793-82c3bbbb5fdcc433  : subField   ⊏⋆ᵣ  subPhysicalDataProperty 

