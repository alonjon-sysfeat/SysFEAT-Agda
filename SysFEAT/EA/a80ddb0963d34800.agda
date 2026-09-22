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


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Sub-Field: 
A Sub-Field is a component of a Structured Field.
-}
-- Aggregate Member : Sub-Field
SubField : ClassOfClassOfBoundedIndividual
SubField = ClassOfBoundedIndividual



--  SubField is subTypeOf DataObjectMember
st-086d16b85fd15793-b6e3cdf35fbb6ad1 : SubField ⊏ₑ DataObjectMember
st-086d16b85fd15793-b6e3cdf35fbb6ad1 = polySubTypeOf-identity

--  SubField is subTypeOf MetaDataObjectMember
st-086d16b85fd15793-05b0b95c6006bc80 : SubField ⊏ₑ MetaDataObjectMember
st-086d16b85fd15793-05b0b95c6006bc80 = polySubTypeOf-identity

--  SubField is subTypeOf SubPhysicalDataProperty
st-086d16b85fd15793-82c3bbbb5fdcc433 : SubField ⊏ₑ SubPhysicalDataProperty
st-086d16b85fd15793-82c3bbbb5fdcc433 = polySubTypeOf-identity

--  SubField is subTypeOf NoSQLField
st-086d16b85fd15793-254e4dd45f7f8749 : SubField ⊏ₑ NoSQLField
st-086d16b85fd15793-254e4dd45f7f8749 = polySubTypeOf-identity

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


