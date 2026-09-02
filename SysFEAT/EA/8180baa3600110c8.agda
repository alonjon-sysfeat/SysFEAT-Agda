{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

NoSQL Element: 
A NoSQL Element is Physical Data Asset that represents an element of a physical schema as it will be stored in relational or non relational DBMS (NoSQL, triple store, document store, flat files, etc.).A NoSQL Element is either a NoSQL Dataset or a NoSQL Field.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.8180baa3600110c8 where -- ========== NoSQL Element

open import Agda.Primitive
open import SysFEAT.EA.77318c6c62167dd7 public -- NoSQL Data Asset
open import SysFEAT.EA.7d37d08d5fd07aaa public -- Physical Data Asset

NoSQLElement : ClassOfClassOfBoundedIndividual
NoSQLElement = ClassOfBoundedIndividual

--  NoSQLElement is subTypeOf NoSQLDataAsset
st-77318e3462168198 : NoSQLElement ⊏⋆ₑ NoSQLDataAsset
st-77318e3462168198 = polySubTypeOf-identity

--  NoSQLElement is subTypeOf PhysicalDataAsset
st-8180babc60011187 : NoSQLElement ⊏ₑ PhysicalDataAsset
st-8180babc60011187 = polySubTypeOf-identity

-- == Relationships =======================

{- MetaData Object Member: 
A MetaData Object Member is a characteristic of a NoSQL Element.It can be either an Identification MetaField or a Relationship MetaField or a Value MetaField.
-}
-- Aggregate Member : MetaData Object Member
MetaDataObjectMember : ClassOfClassOfIndividual
MetaDataObjectMember = ClassOfIndividual

-- Membership relation
membershipOfMetaDataObjectMember :  Linkage NoSQLElement MetaDataObjectMember
membershipOfMetaDataObjectMember = membershipOfAggregateMember

-- Aggregation relation
aggregationOfNoSQLElementMetaDataObjectMember :  Linkage MetaDataObjectMember NoSQLElement
aggregationOfNoSQLElementMetaDataObjectMember = aggregationOfBuildingBlock

{- metaDataObjectMember : derived relation obtained by composing
   membershipOfMetaDataObjectMember and aggregationOfNoSQLElementMetaDataObjectMember
   It directly links an NoSQL Element to the final aggregated NoSQLElement
   hiding the reifying MetaDataObjectMember
-}
metaDataObjectMember : Linkage NoSQLElement NoSQLElement
metaDataObjectMember = membershipOfMetaDataObjectMember  ∘  aggregationOfNoSQLElementMetaDataObjectMember
