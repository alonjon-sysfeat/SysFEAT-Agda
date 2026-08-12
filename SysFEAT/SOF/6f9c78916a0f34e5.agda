{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Environmental Condition Type: 
An Environmental Condition Type is a class of  Environmental Property Type.Example: PESTEL (political, economic, social, environmental, legal),  physical conditions (weather conditions, terrain conditions,)It is used to group Environmental Property Type(ies) by domain of concerns represented by Schema of Measurement.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.6f9c78916a0f34e5 where -- ========== Environmental Condition Type

open import Agda.Primitive
open import SysFEAT.SOF.6cfb6ef26a0f15e4 public -- Condition Category

EnvironmentalConditionType : ∀ (u : Level) → Set (lsuc (lsuc (lsuc u)))
EnvironmentalConditionType u = Category u

postulate --  EnvironmentalConditionType is subTypeOf ConditionCategory
  st-c2f29bad66ea2947 : ∀ {u v} → (EnvironmentalConditionType u) ⊏⋆ₑ (ConditionCategory v)

-- == Relationships =======================
