{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Family of Measurement: 
A Family of Measurement is a top level grouping of Condition Category(ies) that belong to a common domain.

Documentation : https://framework.sysfeat.com/pages/6f9c71356a0f3116.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.6f9c71356a0f3116 where -- ========== Family of Measurement

open import Agda.Primitive
open import SysFEAT.SOF.0eb97aff6855cd23 public -- Model Property Block
open import SysFEAT.UpperOntology.f69619236a0f8dcd public -- Category

FamilyOfMeasurement : ∀ (u : Level) → Set (lsuc (lsuc (lsuc u)))
FamilyOfMeasurement u = Category u

--  FamilyOfMeasurement is subTypeOf ModelPropertyBlock
st-6f9c71356a0f3116-0eb97aff6855cd23 : ∀ {u v} → (FamilyOfMeasurement u) ⊏⋆ₑ (ModelPropertyBlock v)
st-6f9c71356a0f3116-0eb97aff6855cd23 = trivialPolySubTypeOfEntity

--  FamilyOfMeasurement is subTypeOf Category
st-6f9c71356a0f3116-f69619236a0f8dcd : ∀ {u v} → (FamilyOfMeasurement u) ⊏⋆ₑ (Category v)
st-6f9c71356a0f3116-f69619236a0f8dcd = trivialPolySubTypeOfEntity

-- == Relationships =======================
