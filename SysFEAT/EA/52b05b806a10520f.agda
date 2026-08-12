{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Resource Level: 
The  Resource Level classifies Operating Assets describing resources used to implement the operating model of the enterprise.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.52b05b806a10520f where -- ========== Resource Level

open import Agda.Primitive
open import SysFEAT.SOF.52b05a616a104fab public -- Conceptualization Level

ResourceLevel : ∀ (u : Level) → MixedOrderMetaClass u
ResourceLevel u = ClassOfMixedOrderEntity u

postulate --  ResourceLevel is subTypeOf ConceptualizationLevel
  st-52b05b916a105276 : ∀ {u v} → (ResourceLevel u) ⊏⋆ₑ (ConceptualizationLevel v)

-- == Relationships =======================
