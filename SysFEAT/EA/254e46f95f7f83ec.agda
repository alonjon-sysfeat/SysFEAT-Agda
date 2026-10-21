{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

NoSQL Dataset: 
A NoSQL Dataset is a Physical Data Entity that represents the structure of a collection of related data held in a data source. The represented data structure can be relational (Table) or NoSQL (triple store, document store, flat files, etc.).A NoSQL Dataset consists of three types of NoSQL Field:1) An Identification MetaField, sometimes called  primary key .2) Relationship MetaFields used to represent relationships with other NoSQL Datasets.3) Value MetaFields used to store values in the NoSQL Dataset.NoSQL Datasets can be defined at design time in the context of data architecture activities. They can also be imported automatically through data discovery.

Documentation : https://framework.sysfeat.com/pages/254e46f95f7f83ec.htm

External references:
  DDD - Glossary - Entity: https://www.dddcommunity.org/resources/ddd_terms?[entity]
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
st-254e46f95f7f83ec-762582bb5f6bd659 : NoSQLDataset ⊏ₑ PhysicalDataEntity
st-254e46f95f7f83ec-762582bb5f6bd659 = polySubTypeOf-identity

--  NoSQLDataset is subTypeOf NoSQLElement
st-254e46f95f7f83ec-8180baa3600110c8 : NoSQLDataset ⊏ₑ NoSQLElement
st-254e46f95f7f83ec-8180baa3600110c8 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Value MetaField: 
A Value MetaField is a NoSQL Field used to store data in a NoSQL Dataset. Each Value MetaField has a unique name. Its associated NoSQL Field specifies the kind of data that can be stored in it. For instance, a  Customer  
-}
-- Aggregate Member : Value MetaField
ValueMetaField : ClassOfClassOfBoundedIndividual
ValueMetaField = ClassOfBoundedIndividual



--  ValueMetaField is subTypeOf PhysicalDataSlot
st-254e1b8d5f809015-e6f222845f771913 : ValueMetaField ⊏ₑ PhysicalDataSlot
st-254e1b8d5f809015-e6f222845f771913 = polySubTypeOf-identity

--  ValueMetaField is subTypeOf MetaDatasetMember
st-254e1b8d5f809015-a80dfa5063d34f48 : ValueMetaField ⊏ₑ MetaDatasetMember
st-254e1b8d5f809015-a80dfa5063d34f48 = polySubTypeOf-identity

--  ValueMetaField is subTypeOf NoSQLField
st-254e1b8d5f809015-254e4dd45f7f8749 : ValueMetaField ⊏ₑ NoSQLField
st-254e1b8d5f809015-254e4dd45f7f8749 = polySubTypeOf-identity

-- Membership relation
membershipOfValueMetaField :  Linkage NoSQLDataset ValueMetaField
membershipOfValueMetaField = make_upwardNestingRelation "valueMetaField membership" "nested valueMetaField"

-- Aggregation relation
aggregationOfNoSQLFieldValueMetaField :  Linkage ValueMetaField NoSQLField
aggregationOfNoSQLFieldValueMetaField = make_Relation "NoSQLField aggregation" "aggregated NoSQLField"

{- valueMetaField : derived relation obtained by composing
   membershipOfValueMetaField and aggregationOfNoSQLFieldValueMetaField
   It directly links an NoSQL Dataset to the final aggregated NoSQLField
   hiding the reifying ValueMetaField
-}
valueMetaField : Linkage NoSQLDataset NoSQLField
valueMetaField = membershipOfValueMetaField  ∘  aggregationOfNoSQLFieldValueMetaField



-- -------------------------------------------------------------------------------------------- 
{- Relationship MetaField: 
A Relationship MetaField is a NoSQL Field used to establish a relationship with another NoSQL Dataset.
-}
-- Aggregate Member : Relationship MetaField
RelationshipMetaField : ClassOfClassOfBoundedIndividual
RelationshipMetaField = ClassOfBoundedIndividual



--  RelationshipMetaField is subTypeOf PhysicalRelationship
st-254e1c7e5f8090eb-b6e3df8e5fbb724d : RelationshipMetaField ⊏ₑ PhysicalRelationship
st-254e1c7e5f8090eb-b6e3df8e5fbb724d = polySubTypeOf-identity

--  RelationshipMetaField is subTypeOf MetaDatasetMember
st-254e1c7e5f8090eb-a80dfa5063d34f48 : RelationshipMetaField ⊏ₑ MetaDatasetMember
st-254e1c7e5f8090eb-a80dfa5063d34f48 = polySubTypeOf-identity

--  RelationshipMetaField is subTypeOf NoSQLField
st-254e1c7e5f8090eb-254e4dd45f7f8749 : RelationshipMetaField ⊏ₑ NoSQLField
st-254e1c7e5f8090eb-254e4dd45f7f8749 = polySubTypeOf-identity

-- Membership relation
membershipOfRelationshipMetaField :  Linkage NoSQLDataset RelationshipMetaField
membershipOfRelationshipMetaField = make_upwardNestingRelation "relationshipMetaField membership" "nested relationshipMetaField"

-- Aggregation relation
aggregationOfNoSQLFieldRelationshipMetaField :  Linkage RelationshipMetaField NoSQLField
aggregationOfNoSQLFieldRelationshipMetaField = make_Relation "NoSQLField aggregation" "aggregated NoSQLField"

{- relationshipMetaField : derived relation obtained by composing
   membershipOfRelationshipMetaField and aggregationOfNoSQLFieldRelationshipMetaField
   It directly links an NoSQL Dataset to the final aggregated NoSQLField
   hiding the reifying RelationshipMetaField
-}
relationshipMetaField : Linkage NoSQLDataset NoSQLField
relationshipMetaField = membershipOfRelationshipMetaField  ∘  aggregationOfNoSQLFieldRelationshipMetaField



-- -------------------------------------------------------------------------------------------- 
{- Identification MetaField: 
An Identification MetaField is a NoSQL Field that is is the identifier of a NoSQL Dataset.It is sometimes called the Primary Key of its NoSQL Dataset.A NoSQL Field can be the Identification MetaField of one and only one NoSQL Dataset.
-}
-- Aggregate Member : Identification MetaField
IdentificationMetaField : ClassOfClassOfBoundedIndividual
IdentificationMetaField = ClassOfBoundedIndividual



--  IdentificationMetaField is subTypeOf MetaDatasetMember
st-a80df86163d34c47-a80dfa5063d34f48 : IdentificationMetaField ⊏ₑ MetaDatasetMember
st-a80df86163d34c47-a80dfa5063d34f48 = polySubTypeOf-identity

--  IdentificationMetaField is subTypeOf NoSQLField
st-a80df86163d34c47-254e4dd45f7f8749 : IdentificationMetaField ⊏ₑ NoSQLField
st-a80df86163d34c47-254e4dd45f7f8749 = polySubTypeOf-identity

-- Membership relation
membershipOfIdentificationMetaField :  Linkage NoSQLDataset IdentificationMetaField
membershipOfIdentificationMetaField = make_upwardNestingRelation "identificationMetaField membership" "nested identificationMetaField"

-- Aggregation relation
aggregationOfNoSQLFieldIdentificationMetaField :  Linkage IdentificationMetaField NoSQLField
aggregationOfNoSQLFieldIdentificationMetaField = make_Relation "NoSQLField aggregation" "aggregated NoSQLField"

{- identificationMetaField : derived relation obtained by composing
   membershipOfIdentificationMetaField and aggregationOfNoSQLFieldIdentificationMetaField
   It directly links an NoSQL Dataset to the final aggregated NoSQLField
   hiding the reifying IdentificationMetaField
-}
identificationMetaField : Linkage NoSQLDataset NoSQLField
identificationMetaField = membershipOfIdentificationMetaField  ∘  aggregationOfNoSQLFieldIdentificationMetaField


