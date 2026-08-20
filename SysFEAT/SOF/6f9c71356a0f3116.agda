{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Family of Measurement: 
A Family of Measurement is a top level grouping of Condition Category(ies) that belong to a common domain.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.6f9c71356a0f3116 where -- ========== Family of Measurement

open import Agda.Primitive
open import SysFEAT.SOF.0eb97aff6855cd23 public -- Model Property Block
open import SysFEAT.UpperOntology.f69619236a0f8dcd public -- Category

FamilyOfMeasurement : ∀ (u : Level) → Set (lsuc (lsuc (lsuc u)))
FamilyOfMeasurement u = Category u

--  FamilyOfMeasurement is subTypeOf ModelPropertyBlock
st-c2f2a61766ea39ec : ∀ {u v} → (FamilyOfMeasurement u) ⊏⋆ₑ (ModelPropertyBlock v)
st-c2f2a61766ea39ec = trivialPolySubTypeOfEntity

--  FamilyOfMeasurement is subTypeOf Category
st-bb5dc52c6a0257db : ∀ {u v} → (FamilyOfMeasurement u) ⊏⋆ₑ (Category v)
st-bb5dc52c6a0257db = trivialPolySubTypeOfEntity

-- == Relationships =======================
