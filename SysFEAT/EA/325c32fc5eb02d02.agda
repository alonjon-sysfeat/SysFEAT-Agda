{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Data Entity: 
A Data Entity is an abstract structure of an Information Entity. It has an independent existence and can be uniquely identified.Data Entity is characterized by Relationships it has with other Data Entity(ies) and by Value Property(ies).
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.325c32fc5eb02d02 where -- ========== Data Entity

open import Agda.Primitive
open import SysFEAT.EA.6d2b7c935fbb6270 public -- Data Asset
open import SysFEAT.SOF.d6cd2cea5ab98e5f public -- Information Entity
open import SysFEAT.EA.8f1c991068ca8a23 public -- Data Property

DataEntity : ClassOfClassOfBoundedIndividual
DataEntity = ClassOfBoundedIndividual

--  DataEntity is subTypeOf DataAsset
st-402017145fdb1341 : DataEntity ⊏ₑ DataAsset
st-402017145fdb1341 = polySubTypeOf-identity

--  DataEntity is subTypeOf InformationEntity
st-cbd9df575fb7db97 : DataEntity ⊏ₑ InformationEntity
st-cbd9df575fb7db97 = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Data Entity: -}
specializedDataEntity :  Linkage DataEntity DataEntity
specializedDataEntity = make_subTypeOf "Specialized Data Entity" "specializedDataEntity"

postulate -- specializedDataEntity is subTypeOf specializedInformationEntity
  st-325a380d66f350dd-325a37b966f34da2  : specializedDataEntity   ⊏⋆ᵣ  specializedInformationEntity 
postulate -- specializedDataEntity is subTypeOf specializedDataObject
  st-325a380d66f350dd-325a380d66f3515e  : specializedDataEntity   ⊏⋆ᵣ  specializedDataObject 

{- Attribute: -}
-- Aggregate Member : Attribute
Attribute : ClassOfClassOfIndividual
Attribute = ClassOfIndividual

-- Membership relation
membershipOfAttribute :  Linkage DataEntity Attribute
membershipOfAttribute = membershipOfAggregateMember

-- Aggregation relation
aggregationOfDataPropertyAttribute :  Linkage Attribute DataProperty
aggregationOfDataPropertyAttribute = aggregationOfBuildingBlock

{- attribute : derived relation obtained by composing
   membershipOfAttribute and aggregationOfDataPropertyAttribute
   It directly links an Data Entity to the final aggregated DataProperty
   hiding the reifying Attribute
-}
attribute : Linkage DataEntity DataProperty
attribute = membershipOfAttribute  ∘  aggregationOfDataPropertyAttribute

{- Relationship: 
Relationship between a source Data Entity and a target Data Entity.
-}
-- Aggregate Member : Relationship
Relationship : ClassOfClassOfIndividual
Relationship = ClassOfIndividual

-- Membership relation
membershipOfRelationship :  Linkage DataEntity Relationship
membershipOfRelationship = membershipOfAggregateMember

-- Aggregation relation
aggregationOfDataEntityRelationship :  Linkage Relationship DataEntity
aggregationOfDataEntityRelationship = aggregationOfBuildingBlock

{- relationship : derived relation obtained by composing
   membershipOfRelationship and aggregationOfDataEntityRelationship
   It directly links an Data Entity to the final aggregated DataEntity
   hiding the reifying Relationship
-}
relationship : Linkage DataEntity DataEntity
relationship = membershipOfRelationship  ∘  aggregationOfDataEntityRelationship
