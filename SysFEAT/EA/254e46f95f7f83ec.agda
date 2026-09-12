{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

NoSQL Dataset: 
A NoSQL Dataset is a Physical Data Entity that represents the structure of a collection of related data held in a data source. The represented data structure can be relational (Table) or NoSQL (triple store, document store, flat files, etc.).A NoSQL Dataset consists of three types of NoSQL Field:1) An Identification MetaField, sometimes called  primary key .2) Relationship MetaFields used to represent relationships with other NoSQL Datasets.3) Value MetaFields used to store values in the NoSQL Dataset.NoSQL Datasets can be defined at design time in the context of data architecture activities. They can also be imported automatically through data discovery.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.254e46f95f7f83ec where -- ========== NoSQL Dataset

open import Agda.Primitive
open import SysFEAT.EA.762582bb5f6bd659 public -- Physical Data Entity
open import SysFEAT.EA.8180baa3600110c8 public -- NoSQL Element
open import SysFEAT.EA.254e4dd45f7f8749 public -- NoSQL Field

NoSQLDataset : ClassOfClassOfBoundedIndividual
NoSQLDataset = ClassOfBoundedIndividual

--  NoSQLDataset is subTypeOf PhysicalDataEntity
st-254e471e5f7f84b9 : NoSQLDataset ⊏ₑ PhysicalDataEntity
st-254e471e5f7f84b9 = polySubTypeOf-identity

--  NoSQLDataset is subTypeOf NoSQLElement
st-cd7a529e5ff3e61b : NoSQLDataset ⊏ₑ NoSQLElement
st-cd7a529e5ff3e61b = polySubTypeOf-identity

-- == Relationships =======================

{- Value MetaField: 
A Value MetaField is a NoSQL Field used to store data in a NoSQL Dataset. Each Value MetaField has a unique name. Its associated NoSQL Field specifies the kind of data that can be stored in it. For instance, a  Customer  
-}
-- Aggregate Member : Value MetaField
ValueMetaField : ClassOfClassOfIndividual
ValueMetaField = ClassOfIndividual

-- Membership relation
membershipOfValueMetaField :  Linkage NoSQLDataset ValueMetaField
membershipOfValueMetaField = membershipOfAggregateMember

-- Aggregation relation
aggregationOfNoSQLFieldValueMetaField :  Linkage ValueMetaField NoSQLField
aggregationOfNoSQLFieldValueMetaField = aggregationOfBuildingBlock

{- valueMetaField : derived relation obtained by composing
   membershipOfValueMetaField and aggregationOfNoSQLFieldValueMetaField
   It directly links an NoSQL Dataset to the final aggregated NoSQLField
   hiding the reifying ValueMetaField
-}
valueMetaField : Linkage NoSQLDataset NoSQLField
valueMetaField = membershipOfValueMetaField  ∘  aggregationOfNoSQLFieldValueMetaField

{- Relationship MetaField: 
A Relationship MetaField is a NoSQL Field used to establish a relationship with another NoSQL Dataset.
-}
-- Aggregate Member : Relationship MetaField
RelationshipMetaField : ClassOfClassOfIndividual
RelationshipMetaField = ClassOfIndividual

-- Membership relation
membershipOfRelationshipMetaField :  Linkage NoSQLDataset RelationshipMetaField
membershipOfRelationshipMetaField = membershipOfAggregateMember

-- Aggregation relation
aggregationOfNoSQLFieldRelationshipMetaField :  Linkage RelationshipMetaField NoSQLField
aggregationOfNoSQLFieldRelationshipMetaField = aggregationOfBuildingBlock

{- relationshipMetaField : derived relation obtained by composing
   membershipOfRelationshipMetaField and aggregationOfNoSQLFieldRelationshipMetaField
   It directly links an NoSQL Dataset to the final aggregated NoSQLField
   hiding the reifying RelationshipMetaField
-}
relationshipMetaField : Linkage NoSQLDataset NoSQLField
relationshipMetaField = membershipOfRelationshipMetaField  ∘  aggregationOfNoSQLFieldRelationshipMetaField

{- Identification MetaField: 
An Identification MetaField is a NoSQL Field that is is the identifier of a NoSQL Dataset.It is sometimes called the Primary Key of its NoSQL Dataset.A NoSQL Field can be the Identification MetaField of one and only one NoSQL Dataset.
-}
-- Aggregate Member : Identification MetaField
IdentificationMetaField : ClassOfClassOfIndividual
IdentificationMetaField = ClassOfIndividual

-- Membership relation
membershipOfIdentificationMetaField :  Linkage NoSQLDataset IdentificationMetaField
membershipOfIdentificationMetaField = membershipOfAggregateMember

-- Aggregation relation
aggregationOfNoSQLFieldIdentificationMetaField :  Linkage IdentificationMetaField NoSQLField
aggregationOfNoSQLFieldIdentificationMetaField = aggregationOfBuildingBlock

{- identificationMetaField : derived relation obtained by composing
   membershipOfIdentificationMetaField and aggregationOfNoSQLFieldIdentificationMetaField
   It directly links an NoSQL Dataset to the final aggregated NoSQLField
   hiding the reifying IdentificationMetaField
-}
identificationMetaField : Linkage NoSQLDataset NoSQLField
identificationMetaField = membershipOfIdentificationMetaField  ∘  aggregationOfNoSQLFieldIdentificationMetaField
