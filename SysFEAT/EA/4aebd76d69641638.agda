{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Conceptual Element: 
A Conceptual Element is an Mixed-Order Entity that represents the naming aspect of  Conceptual Entity Assets and Concept Relationships.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.4aebd76d69641638 where -- ========== Conceptual Element

open import Agda.Primitive
open import SysFEAT.UpperOntology.6ef572f868f1366f public -- Mixed-Order Entity

ConceptualElement : ∀ (u : Level) → ClassOfMixedOrderEntity u
ConceptualElement u = MixedOrderEntity u

--  ConceptualElement is subTypeOf MixedOrderEntity
st-4aebd7c9696418a4 : ∀ {u v} → (ConceptualElement u) ⊏⋆ₑ (MixedOrderEntity v)
st-4aebd7c9696418a4 = trivialPolySubTypeOfEntity

-- == Relationships =======================
