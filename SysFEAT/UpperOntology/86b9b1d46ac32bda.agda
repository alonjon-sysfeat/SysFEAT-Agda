{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Aspect of Entity: 


Documentation : https://framework.sysfeat.com/pages/86b9b1d46ac32bda.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.86b9b1d46ac32bda where -- ========== Aspect of Entity

open import Agda.Primitive
open import SysFEAT.UpperOntology.6ef572f868f1366f public -- Mixed-Order Entity

AspectOfEntity : ∀ (u : Level) → ClassOfMixedOrderEntity u 
AspectOfEntity u  = MixedOrderEntity u 


--  AspectOfEntity is subTypeOf MixedOrderEntity
st-86b9b1d46ac32bda-6ef572f868f1366f : ∀ {u v} → (AspectOfEntity u) ⊏⋆ₑ (MixedOrderEntity v)
st-86b9b1d46ac32bda-6ef572f868f1366f = trivialPolySubTypeOfEntity


-- == Relations =======================
