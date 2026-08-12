{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Conceptualization Level: 

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.52b05a616a104fab where -- ========== Conceptualization Level

open import Agda.Primitive
open import SysFEAT.UpperOntology.308c3b3868e9141e public -- Class of Mixed-Order Entity

ConceptualizationLevel : ∀ (u : Level) → MixedOrderMetaClass u
ConceptualizationLevel u = ClassOfMixedOrderEntity u

postulate --  ConceptualizationLevel is subTypeOf ClassOfMixedOrderEntity
  st-52b05bd66a1052c2 : ∀ {u v} → (ConceptualizationLevel u) ⊏⋆ₑ (ClassOfMixedOrderEntity v)

-- == Relationships =======================
