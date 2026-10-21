{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Data Entity: 
A Data Entity is an abstract structure of an Information Entity. It has an independent existence and can be uniquely identified.Data Entity is characterized by Relationships it has with other Data Entity(ies) and by Value Property(ies).

Documentation : https://framework.sysfeat.com/pages/325c32fc5eb02d02.htm

External references:
  DDD - Glossary - Entity: https://www.dddcommunity.org/resources/ddd_terms?[entity]
  OpenGroup - TOGAF - Definition - Data Element: https://pubs.opengroup.org/togaf-standard/introduction/apdxb.html#tag_06_10
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
st-325c32fc5eb02d02-6d2b7c935fbb6270 : DataEntity ⊏ₑ DataAsset
st-325c32fc5eb02d02-6d2b7c935fbb6270 = polySubTypeOf-identity

--  DataEntity is subTypeOf InformationEntity
st-325c32fc5eb02d02-d6cd2cea5ab98e5f : DataEntity ⊏ₑ InformationEntity
st-325c32fc5eb02d02-d6cd2cea5ab98e5f = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Specialized Data Entity: -}
specializedDataEntity :  Linkage DataEntity DataEntity
specializedDataEntity = make_subTypeOf "Specialized Data Entity" "Specialized Data Entity"

postulate -- specializedDataEntity is subTypeOf specializedInformationEntity
  st-325a380d66f350dd-325a37b966f34da2  : specializedDataEntity  ⊏⋆ᵣ  specializedInformationEntity
postulate -- specializedDataEntity is subTypeOf specializedDataObject
  st-325a380d66f350dd-325a380d66f3515e  : specializedDataEntity  ⊏⋆ᵣ  specializedDataObject

-- -------------------------------------------------------------------------------------------- 
{- Attribute: -}
-- Aggregate Member : Attribute
Attribute : ClassOfClassOfBoundedIndividual
Attribute = ClassOfBoundedIndividual



--  Attribute is subTypeOf DataObjectMember
st-8f1c9ad668ca8db4-b6e3cdf35fbb6ad1 : Attribute ⊏ₑ DataObjectMember
st-8f1c9ad668ca8db4-b6e3cdf35fbb6ad1 = polySubTypeOf-identity

--  Attribute is subTypeOf QualifyingInformationProperty
st-8f1c9ad668ca8db4-c189d89268ae51cd : Attribute ⊏ₑ QualifyingInformationProperty
st-8f1c9ad668ca8db4-c189d89268ae51cd = polySubTypeOf-identity

-- Membership relation
membershipOfAttribute :  Linkage DataEntity Attribute
membershipOfAttribute = make_upwardNestingRelation "attribute membership" "nested attribute"

-- Aggregation relation
aggregationOfDataPropertyAttribute :  Linkage Attribute DataProperty
aggregationOfDataPropertyAttribute = make_Relation "DataProperty aggregation" "aggregated DataProperty"

{- attribute : derived relation obtained by composing
   membershipOfAttribute and aggregationOfDataPropertyAttribute
   It directly links an Data Entity to the final aggregated DataProperty
   hiding the reifying Attribute
-}
attribute : Linkage DataEntity DataProperty
attribute = membershipOfAttribute  ∘  aggregationOfDataPropertyAttribute



-- -------------------------------------------------------------------------------------------- 
{- Relationship: 
Relationship between a source Data Entity and a target Data Entity.
-}
-- Aggregate Member : Relationship
Relationship : ClassOfClassOfBoundedIndividual
Relationship = ClassOfBoundedIndividual



--  Relationship is subTypeOf DataObjectMember
st-b6e3cc7a5fbb6878-b6e3cdf35fbb6ad1 : Relationship ⊏ₑ DataObjectMember
st-b6e3cc7a5fbb6878-b6e3cdf35fbb6ad1 = polySubTypeOf-identity

--  Relationship is subTypeOf InformationRelationship
st-b6e3cc7a5fbb6878-dfa4e2305ebb4d2b : Relationship ⊏ₑ InformationRelationship
st-b6e3cc7a5fbb6878-dfa4e2305ebb4d2b = polySubTypeOf-identity

--  Relationship is subTypeOf DataEntity
st-b6e3cc7a5fbb6878-325c32fc5eb02d02 : Relationship ⊏ₑ DataEntity
st-b6e3cc7a5fbb6878-325c32fc5eb02d02 = polySubTypeOf-identity

-- Membership relation
membershipOfRelationship :  Linkage DataEntity Relationship
membershipOfRelationship = make_upwardNestingRelation "relationship membership" "nested relationship"

-- Aggregation relation
aggregationOfDataEntityRelationship :  Linkage Relationship DataEntity
aggregationOfDataEntityRelationship = make_Relation "DataEntity aggregation" "aggregated DataEntity"

{- relationship : derived relation obtained by composing
   membershipOfRelationship and aggregationOfDataEntityRelationship
   It directly links an Data Entity to the final aggregated DataEntity
   hiding the reifying Relationship
-}
relationship : Linkage DataEntity DataEntity
relationship = membershipOfRelationship  ∘  aggregationOfDataEntityRelationship


