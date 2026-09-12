{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Language: 

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.4aebda1369641bea where -- ========== Language

open import Agda.Primitive
open import SysFEAT.UpperOntology.f41700e868ee0f29 public -- First Order Entity
open import SysFEAT.EA.3f066af36858706e public -- Vocabulary Block

Language : ∀ (u : Level) → ClassOfMixedOrderEntity u
Language u = MixedOrderEntity u

--  Language is subTypeOf FirstOrderEntity
st-4aebda3269641c51 : ∀ {u} → (Language u) ⊏ₘₑ FirstOrderEntity
st-4aebda3269641c51 = polySubTypeOf-identity

--  Language is subTypeOf VocabularyBlock
st-4aebdba469641e3c : ∀ {u v} → (Language u) ⊏⋆ₑ (VocabularyBlock v)
st-4aebdba469641e3c = trivialPolySubTypeOfEntity


