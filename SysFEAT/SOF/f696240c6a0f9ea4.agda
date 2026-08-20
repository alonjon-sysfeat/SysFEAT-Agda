{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Category Partition: 

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.f696240c6a0f9ea4 where -- ========== Category Partition

open import Agda.Primitive
open import SysFEAT.UpperOntology.8d1ceeab68f755a5 public -- Class Partition
open import SysFEAT.SOF.0eb97aff6855cd23 public -- Model Property Block
open import SysFEAT.UpperOntology.f69619236a0f8dcd public -- Category
open import SysFEAT.SOF.24f72ea26a0f5029 public -- Family of Category

CategoryPartition : ∀ (u : Level) → Set (lsuc (lsuc (lsuc u)))
CategoryPartition u = Category u

--  CategoryPartition is subTypeOf ClassPartition
st-24f72e4d6a0f4fa3 : ∀ {u v} → (CategoryPartition u) ⊏⋆ₑ (ClassPartition v)
st-24f72e4d6a0f4fa3 = trivialPolySubTypeOfEntity

--  CategoryPartition is subTypeOf ModelPropertyBlock
st-c2f2a60166ea394c : ∀ {u v} → (CategoryPartition u) ⊏⋆ₑ (ModelPropertyBlock v)
st-c2f2a60166ea394c = trivialPolySubTypeOfEntity

--  CategoryPartition is subTypeOf Category
st-e15be9376a10fadc : ∀ {u v} → (CategoryPartition u) ⊏⋆ₑ (Category v)
st-e15be9376a10fadc = trivialPolySubTypeOfEntity

-- == Relationships =======================

{- Classifying Schema: -}
classifyingSchema : ∀ {u v} →  Linkage (CategoryPartition u) (FamilyOfCategory v)
classifyingSchema = make_classOfRelation "Classifying Schema" "classifyingSchema"

