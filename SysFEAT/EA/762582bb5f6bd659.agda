{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Physical Data Entity: 
A Physical Data Entity is a representation the physical structure of a Data Entity as it will be stored in a DBMS.A Physical Data Entity has an independent existence and can be uniquely identified.A Physical Data Entity is characterized by Physical Relationships it has with other Physical Data Entity(ies) and by Physical Data Property(ies).
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
st-e6f230fb5f777969 : PhysicalDataEntity ⊏ₑ PhysicalDataAsset
st-e6f230fb5f777969 = polySubTypeOf-identity

--  PhysicalDataEntity is subTypeOf DataEntity
st-b6e3df105fbb719d : PhysicalDataEntity ⊏ₑ DataEntity
st-b6e3df105fbb719d = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Physical Entity: -}
specializedPhysicalEntity :  Linkage PhysicalDataEntity PhysicalDataEntity
specializedPhysicalEntity = make_subTypeOf "Specialized Physical Entity" "specializedPhysicalEntity"

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
membershipOfPhysicalDataSlot = membershipOfAggregateMember

-- Aggregation relation
aggregationOfPhysicalDataPropertyPhysicalDataSlot :  Linkage PhysicalDataSlot PhysicalDataProperty
aggregationOfPhysicalDataPropertyPhysicalDataSlot = aggregationOfBuildingBlock

{- physicalDataSlot : derived relation obtained by composing
   membershipOfPhysicalDataSlot and aggregationOfPhysicalDataPropertyPhysicalDataSlot
   It directly links an Physical Data Entity to the final aggregated PhysicalDataProperty
   hiding the reifying PhysicalDataSlot
-}
physicalDataSlot : Linkage PhysicalDataEntity PhysicalDataProperty
physicalDataSlot = membershipOfPhysicalDataSlot  ∘  aggregationOfPhysicalDataPropertyPhysicalDataSlot

{- Physical Relationship: -}
-- Aggregate Member : Physical Relationship
PhysicalRelationship : ClassOfClassOfIndividual
PhysicalRelationship = ClassOfIndividual

-- Membership relation
membershipOfPhysicalRelationship :  Linkage PhysicalDataEntity PhysicalRelationship
membershipOfPhysicalRelationship = membershipOfAggregateMember

-- Aggregation relation
aggregationOfPhysicalDataEntityPhysicalRelationship :  Linkage PhysicalRelationship PhysicalDataEntity
aggregationOfPhysicalDataEntityPhysicalRelationship = aggregationOfBuildingBlock

{- physicalRelationship : derived relation obtained by composing
   membershipOfPhysicalRelationship and aggregationOfPhysicalDataEntityPhysicalRelationship
   It directly links an Physical Data Entity to the final aggregated PhysicalDataEntity
   hiding the reifying PhysicalRelationship
-}
physicalRelationship : Linkage PhysicalDataEntity PhysicalDataEntity
physicalRelationship = membershipOfPhysicalRelationship  ∘  aggregationOfPhysicalDataEntityPhysicalRelationship
