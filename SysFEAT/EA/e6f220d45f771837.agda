{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Physical Data Property: 
A Physical Data Property is a Physical Data Asset that is fundamentally defined by its value. It doesnt evolve over time is thereby immutable.It represents a data structure that is stored in any kind of data store: databases, data files.For instance an  address  or a  customer name  are usually considered as Physical Data Property(ies).

Documentation : https://framework.sysfeat.com/pages/e6f220d45f771837.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.e6f220d45f771837 where -- ========== Physical Data Property

open import Agda.Primitive
open import SysFEAT.EA.8f1c991068ca8a23 public -- Data Property
open import SysFEAT.EA.7d37d08d5fd07aaa public -- Physical Data Asset

PhysicalDataProperty : ClassOfClassOfBoundedIndividual
PhysicalDataProperty = ClassOfBoundedIndividual

--  PhysicalDataProperty is subTypeOf DataProperty
st-e6f220d45f771837-8f1c991068ca8a23 : PhysicalDataProperty ⊏ₑ DataProperty
st-e6f220d45f771837-8f1c991068ca8a23 = polySubTypeOf-identity

--  PhysicalDataProperty is subTypeOf PhysicalDataAsset
st-e6f220d45f771837-7d37d08d5fd07aaa : PhysicalDataProperty ⊏ₑ PhysicalDataAsset
st-e6f220d45f771837-7d37d08d5fd07aaa = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Physical Value Object: -}
specializedPhysicalValueObject :  Linkage PhysicalDataProperty PhysicalDataProperty
specializedPhysicalValueObject = make_subTypeOf "Specialized Physical Value Object" "Specialized Physical Value Object"

postulate -- specializedPhysicalValueObject is subTypeOf specializedPhysicalObject
  st-325a376f66f3464b-325a375566f33e9b  : specializedPhysicalValueObject   ⊏⋆ᵣ  specializedPhysicalObject 

{- Sub Physical Data Property: -}
-- Aggregate Member : Sub Physical Data Property
SubPhysicalDataProperty : ClassOfClassOfIndividual
SubPhysicalDataProperty = ClassOfIndividual

-- Membership relation
membershipOfSubPhysicalDataProperty :  Linkage PhysicalDataProperty SubPhysicalDataProperty
membershipOfSubPhysicalDataProperty = make_upwardNestingRelation "subPhysicalDataProperty membership" "nested subPhysicalDataProperty"

-- Aggregation relation
aggregationOfPhysicalDataPropertySubPhysicalDataProperty :  Linkage SubPhysicalDataProperty PhysicalDataProperty
aggregationOfPhysicalDataPropertySubPhysicalDataProperty = make_Relation "PhysicalDataProperty aggregation" "aggregated PhysicalDataProperty"

{- subPhysicalDataProperty : derived relation obtained by composing
   membershipOfSubPhysicalDataProperty and aggregationOfPhysicalDataPropertySubPhysicalDataProperty
   It directly links an Physical Data Property to the final aggregated PhysicalDataProperty
   hiding the reifying SubPhysicalDataProperty
-}
subPhysicalDataProperty : Linkage PhysicalDataProperty PhysicalDataProperty
subPhysicalDataProperty = membershipOfSubPhysicalDataProperty  ∘  aggregationOfPhysicalDataPropertySubPhysicalDataProperty

postulate -- subPhysicalDataProperty is subTypeOf physicalDataMember
  st-82c3bbbb5fdcc433-163c29e85fda678c  : subPhysicalDataProperty   ⊏⋆ᵣ  physicalDataMember 
postulate -- subPhysicalDataProperty is subTypeOf subDataProperty
  st-82c3bbbb5fdcc433-8f1c9c3268ca90a3  : subPhysicalDataProperty   ⊏⋆ᵣ  subDataProperty 

