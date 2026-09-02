{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Concept Name: 
A Concept Name is a preferred Concept Designation for a Conceptual Element in a given Dictionary Vocabulary.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.4aebd8f5696419c9 where -- ========== Concept Name

open import Agda.Primitive
open import SysFEAT.EA.4aebd80e6964192e public -- Concept Designation
open import SysFEAT.EA.4aebd76d69641638 public -- Conceptual Element

ConceptName : ∀ (u : Level) → ClassOfMixedOrderEntity u
ConceptName u = MixedOrderEntity u

--  ConceptName is subTypeOf ConceptDesignation
st-4aebd93569641a60 : ∀ {u v} → (ConceptName u) ⊏⋆ₑ (ConceptDesignation v)
st-4aebd93569641a60 = trivialPolySubTypeOfEntity

-- == Relationships =======================

{- Named Element: -}
namedElement : ∀ {u v} →  Linkage (ConceptName u) (ConceptualElement v)
namedElement = make_Relation "Named Element" "namedElement"

postulate -- namedElement is subTypeOf designation
  st-4aebdcae69641fd4-4aebdcf669642033  : ∀ {u v} → namedElement {u} {v}  ⊏⋆ᵣ  designation {u} {v}
