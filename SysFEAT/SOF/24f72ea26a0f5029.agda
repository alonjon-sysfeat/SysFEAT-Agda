{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Family of Category: 
A Family of Category is a Top level group of categories that belong to a common domain.For instance, the GDPR categorization schema groups all categories relevant to GDPR such as data categories, sensitive activities.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.24f72ea26a0f5029 where -- ========== Family of Category

open import Agda.Primitive
open import SysFEAT.UpperOntology.f69619236a0f8dcd public -- Category
open import SysFEAT.SOF.0eb97aff6855cd23 public -- Model Property Block

FamilyOfCategory : ∀ (u : Level) → Set (lsuc (lsuc (lsuc u)))
FamilyOfCategory u = Category u

postulate --  FamilyOfCategory is subTypeOf Category
  st-435650496a110c3e : ∀ {u v} → (FamilyOfCategory u) ⊏⋆ₑ (Category v)

postulate --  FamilyOfCategory is subTypeOf ModelPropertyBlock
  st-c2f2a60666ea3974 : ∀ {u v} → (FamilyOfCategory u) ⊏⋆ₑ (ModelPropertyBlock v)

-- == Relationships =======================
