{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Measurement Type: 
A Measurement Type is a class of  measurement.Example: Performance, Security, Cost.It is used to group Measure Property Type(ies) by domain of concerns represented by Family of Measurements.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.6f9c701b6a0f2d87 where -- ========== Measurement Type

open import Agda.Primitive
open import SysFEAT.SOF.6cfb6ef26a0f15e4 public -- Condition Category

MeasurementType : ∀ (u : Level) → Set (lsuc (lsuc (lsuc u)))
MeasurementType u = Category u

--  MeasurementType is subTypeOf ConditionCategory
st-c2f2914166ea2626 : ∀ {u v} → (MeasurementType u) ⊏⋆ₑ (ConditionCategory v)
st-c2f2914166ea2626 = trivialPolySubTypeOfEntity

-- == Relationships =======================
