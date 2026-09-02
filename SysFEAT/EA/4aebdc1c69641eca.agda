{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Concept Synonym: 
A Concept Synonym  is an alternative Concept Designation for a given .
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.4aebdc1c69641eca where -- ========== Concept Synonym

open import Agda.Primitive
open import SysFEAT.EA.4aebd80e6964192e public -- Concept Designation
open import SysFEAT.EA.4aebd76d69641638 public -- Conceptual Element

ConceptSynonym : ∀ (u : Level) → ClassOfMixedOrderEntity u
ConceptSynonym u = MixedOrderEntity u

--  ConceptSynonym is subTypeOf ConceptDesignation
st-4aebdc2b69641f2f : ∀ {u v} → (ConceptSynonym u) ⊏⋆ₑ (ConceptDesignation v)
st-4aebdc2b69641f2f = trivialPolySubTypeOfEntity

-- == Relationships =======================

{- Synonym: -}
synonym : ∀ {u v} →  Linkage (ConceptSynonym u) (ConceptualElement v)
synonym = make_Relation "Synonym" "synonym"

postulate -- synonym is subTypeOf designation
  st-4aebdd71696420d6-4aebdcf669642033  : ∀ {u v} → synonym {u} {v}  ⊏⋆ᵣ  designation {u} {v}
