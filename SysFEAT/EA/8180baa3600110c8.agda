{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

NoSQL Element: 
A NoSQL Element is Physical Data Asset that represents an element of a physical schema as it will be stored in relational or non relational DBMS (NoSQL, triple store, document store, flat files, etc.).A NoSQL Element is either a NoSQL Dataset or a NoSQL Field.

Documentation : https://framework.sysfeat.com/pages/8180baa3600110c8.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.8180baa3600110c8 where -- ========== NoSQL Element

open import Agda.Primitive
open import SysFEAT.EA.77318c6c62167dd7 public -- NoSQL Data Asset
open import SysFEAT.EA.7d37d08d5fd07aaa public -- Physical Data Asset

NoSQLElement : ClassOfClassOfBoundedIndividual
NoSQLElement = ClassOfBoundedIndividual

--  NoSQLElement is subTypeOf NoSQLDataAsset
st-8180baa3600110c8-77318c6c62167dd7 : NoSQLElement ⊏⋆ₑ NoSQLDataAsset
st-8180baa3600110c8-77318c6c62167dd7 = polySubTypeOf-identity

--  NoSQLElement is subTypeOf PhysicalDataAsset
st-8180baa3600110c8-7d37d08d5fd07aaa : NoSQLElement ⊏ₑ PhysicalDataAsset
st-8180baa3600110c8-7d37d08d5fd07aaa = polySubTypeOf-identity

-- == Relationships =======================

{- MetaData Object Member: 
A MetaData Object Member is a characteristic of a NoSQL Element.It can be either an Identification MetaField or a Relationship MetaField or a Value MetaField.
-}
-- Aggregate Member : MetaData Object Member
MetaDataObjectMember : ClassOfClassOfIndividual
MetaDataObjectMember = ClassOfIndividual

-- Membership relation
membershipOfMetaDataObjectMember :  Linkage NoSQLElement MetaDataObjectMember
membershipOfMetaDataObjectMember = make_upwardNestingRelation "metaDataObjectMember membership" "nested metaDataObjectMember"

-- Aggregation relation
aggregationOfNoSQLElementMetaDataObjectMember :  Linkage MetaDataObjectMember NoSQLElement
aggregationOfNoSQLElementMetaDataObjectMember = make_Relation "NoSQLElement aggregation" "aggregated NoSQLElement"

{- metaDataObjectMember : derived relation obtained by composing
   membershipOfMetaDataObjectMember and aggregationOfNoSQLElementMetaDataObjectMember
   It directly links an NoSQL Element to the final aggregated NoSQLElement
   hiding the reifying MetaDataObjectMember
-}
metaDataObjectMember : Linkage NoSQLElement NoSQLElement
metaDataObjectMember = membershipOfMetaDataObjectMember  ∘  aggregationOfNoSQLElementMetaDataObjectMember

postulate -- metaDataObjectMember is subTypeOf physicalDataMember
  st-05b0b95c6006bc80-163c29e85fda678c  : metaDataObjectMember   ⊏⋆ᵣ  physicalDataMember 

