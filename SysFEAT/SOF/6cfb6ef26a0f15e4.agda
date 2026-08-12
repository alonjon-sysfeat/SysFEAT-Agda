{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Condition Category: 
A Condition Category is a class of  Condition Property Type.Example: Measurement Types (Performance, Security, Cost), PESTEL (political, economic, social, environmental, legal)It is used to group Condition Property Type(ies) by domain of concerns represented by Family of Measurement.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.6cfb6ef26a0f15e4 where -- ========== Condition Category

open import Agda.Primitive
open import SysFEAT.UpperOntology.f69619236a0f8dcd public -- Category
open import SysFEAT.SOF.0eb97aff6855cd23 public -- Model Property Block
open import SysFEAT.SOF.6f9c71356a0f3116 public -- Family of Measurement

ConditionCategory : ∀ (u : Level) → Set (lsuc (lsuc (lsuc u)))
ConditionCategory u = Category u

postulate --  ConditionCategory is subTypeOf Category
  st-6cfb6f166a0f166b : ∀ {u v} → (ConditionCategory u) ⊏⋆ₑ (Category v)

postulate --  ConditionCategory is subTypeOf ModelPropertyBlock
  st-c2f2a61c66ea3a14 : ∀ {u v} → (ConditionCategory u) ⊏⋆ₑ (ModelPropertyBlock v)

-- == Relationships =======================

{- Family of Measurement: -}
familyOfMeasurement : ∀ {u v} →  Linkage (ConditionCategory u) (FamilyOfMeasurement v)
familyOfMeasurement = make_classOfRelation "Family of Measurement" "familyOfMeasurement"

