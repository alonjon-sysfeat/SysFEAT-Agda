{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Category Partition: 


Documentation : https://framework.sysfeat.com/pages/f696240c6a0f9ea4.htm

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
st-f696240c6a0f9ea4-8d1ceeab68f755a5 : ∀ {u v} → (CategoryPartition u) ⊏⋆ₑ (ClassPartition v)
st-f696240c6a0f9ea4-8d1ceeab68f755a5 = trivialPolySubTypeOfEntity

--  CategoryPartition is subTypeOf ModelPropertyBlock
st-f696240c6a0f9ea4-0eb97aff6855cd23 : ∀ {u v} → (CategoryPartition u) ⊏⋆ₑ (ModelPropertyBlock v)
st-f696240c6a0f9ea4-0eb97aff6855cd23 = trivialPolySubTypeOfEntity

--  CategoryPartition is subTypeOf Category
st-f696240c6a0f9ea4-f69619236a0f8dcd : ∀ {u v} → (CategoryPartition u) ⊏⋆ₑ (Category v)
st-f696240c6a0f9ea4-f69619236a0f8dcd = trivialPolySubTypeOfEntity

-- == Relationships =======================

{- Classifying Schema: -}
classifyingSchema : ∀ {u v} →  Linkage (CategoryPartition u) (FamilyOfCategory v)
classifyingSchema = make_classOfRelation "Classifying Schema" "Classifying Schema"

