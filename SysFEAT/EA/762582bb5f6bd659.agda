{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Physical Data Entity: 
A Physical Data Entity is a representation the physical structure of a Data Entity as it will be stored in a DBMS.A Physical Data Entity has an independent existence and can be uniquely identified.A Physical Data Entity is characterized by Physical Relationships it has with other Physical Data Entity(ies) and by Physical Data Property(ies).

Documentation : https://framework.sysfeat.com/pages/762582bb5f6bd659.htm

External references:
  DDD - Glossary - Entity: https://www.dddcommunity.org/resources/ddd_terms?[entity]
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.762582bb5f6bd659 where -- ========== Physical Data Entity

open import Agda.Primitive
open import SysFEAT.EA.7d37d08d5fd07aaa public -- Physical Data Asset
open import SysFEAT.EA.325c32fc5eb02d02 public -- Data Entity
open import SysFEAT.EA.e6f220d45f771837 public -- Physical Data Property

PhysicalDataEntity : ClassOfClassOfBoundedIndividual
PhysicalDataEntity = ClassOfBoundedIndividual

--  PhysicalDataEntity is subTypeOf PhysicalDataAsset
st-762582bb5f6bd659-7d37d08d5fd07aaa : PhysicalDataEntity ⊏ₑ PhysicalDataAsset
st-762582bb5f6bd659-7d37d08d5fd07aaa = polySubTypeOf-identity

--  PhysicalDataEntity is subTypeOf DataEntity
st-762582bb5f6bd659-325c32fc5eb02d02 : PhysicalDataEntity ⊏ₑ DataEntity
st-762582bb5f6bd659-325c32fc5eb02d02 = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Physical Entity: -}
specializedPhysicalEntity :  Linkage PhysicalDataEntity PhysicalDataEntity
specializedPhysicalEntity = make_subTypeOf "Specialized Physical Entity" "Specialized Physical Entity"

postulate -- specializedPhysicalEntity is subTypeOf specializedDataEntity
  st-325a375866f33f11-325a380d66f350dd  : specializedPhysicalEntity   ⊏⋆ᵣ  specializedDataEntity 
postulate -- specializedPhysicalEntity is subTypeOf specializedPhysicalObject
  st-325a375866f33f11-325a375566f33e9b  : specializedPhysicalEntity   ⊏⋆ᵣ  specializedPhysicalObject 

{- Physical Data Slot: -}
-- Aggregate Member : Physical Data Slot
PhysicalDataSlot : ClassOfClassOfIndividual
PhysicalDataSlot = ClassOfIndividual

-- Membership relation
membershipOfPhysicalDataSlot :  Linkage PhysicalDataEntity PhysicalDataSlot
membershipOfPhysicalDataSlot = make_upwardNestingRelation "physicalDataSlot membership" "nested physicalDataSlot"

-- Aggregation relation
aggregationOfPhysicalDataPropertyPhysicalDataSlot :  Linkage PhysicalDataSlot PhysicalDataProperty
aggregationOfPhysicalDataPropertyPhysicalDataSlot = make_Relation "PhysicalDataProperty aggregation" "aggregated PhysicalDataProperty"

{- physicalDataSlot : derived relation obtained by composing
   membershipOfPhysicalDataSlot and aggregationOfPhysicalDataPropertyPhysicalDataSlot
   It directly links an Physical Data Entity to the final aggregated PhysicalDataProperty
   hiding the reifying PhysicalDataSlot
-}
physicalDataSlot : Linkage PhysicalDataEntity PhysicalDataProperty
physicalDataSlot = membershipOfPhysicalDataSlot  ∘  aggregationOfPhysicalDataPropertyPhysicalDataSlot

postulate -- physicalDataSlot is subTypeOf attribute
  st-e6f222845f771913-8f1c9ad668ca8db4  : physicalDataSlot   ⊏⋆ᵣ  attribute 


{- Physical Relationship: -}
-- Aggregate Member : Physical Relationship
PhysicalRelationship : ClassOfClassOfIndividual
PhysicalRelationship = ClassOfIndividual

-- Membership relation
membershipOfPhysicalRelationship :  Linkage PhysicalDataEntity PhysicalRelationship
membershipOfPhysicalRelationship = make_upwardNestingRelation "physicalRelationship membership" "nested physicalRelationship"

-- Aggregation relation
aggregationOfPhysicalDataEntityPhysicalRelationship :  Linkage PhysicalRelationship PhysicalDataEntity
aggregationOfPhysicalDataEntityPhysicalRelationship = make_Relation "PhysicalDataEntity aggregation" "aggregated PhysicalDataEntity"

{- physicalRelationship : derived relation obtained by composing
   membershipOfPhysicalRelationship and aggregationOfPhysicalDataEntityPhysicalRelationship
   It directly links an Physical Data Entity to the final aggregated PhysicalDataEntity
   hiding the reifying PhysicalRelationship
-}
physicalRelationship : Linkage PhysicalDataEntity PhysicalDataEntity
physicalRelationship = membershipOfPhysicalRelationship  ∘  aggregationOfPhysicalDataEntityPhysicalRelationship

postulate -- physicalRelationship is subTypeOf physicalDataMember
  st-b6e3df8e5fbb724d-163c29e85fda678c  : physicalRelationship   ⊏⋆ᵣ  physicalDataMember 
postulate -- physicalRelationship is subTypeOf relationship
  st-b6e3df8e5fbb724d-b6e3cc7a5fbb6878  : physicalRelationship   ⊏⋆ᵣ  relationship 

