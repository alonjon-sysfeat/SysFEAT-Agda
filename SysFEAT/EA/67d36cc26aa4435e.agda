{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Concept Name: 
A Concept Name is a preferred Concept Designation for a Conceptual Element in a given Dictionary Vocabulary.

Documentation : https://framework.sysfeat.com/pages/67d36cc26aa4435e.htm

External references:
  OMG - SBVR - Name: https://www.omg.org/spec/SBVR/1.5/PDF#page=74
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.67d36cc26aa4435e where -- ========== Concept Name

open import Agda.Primitive
open import SysFEAT.EA.67d36b2b6aa44146 public -- Concept Designation
open import SysFEAT.EA.4aebd76d69641638 public -- Conceptual Element

ConceptName : ClassOfAbstractEntity
ConceptName = AbstractEntity


--  ConceptName is subTypeOf ConceptDesignation
st-67d36cc26aa4435e-67d36b2b6aa44146 : ConceptName ⊏ₑ ConceptDesignation
st-67d36cc26aa4435e-67d36b2b6aa44146 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Named Element: -}
namedElement : ∀ {u} →  Linkage ConceptName (ConceptualElement u)
namedElement = make_Relation "Named Element" "Named Element"

postulate -- namedElement is subTypeOf designation
  st-4aebdcae69641fd4-4aebdcf669642033  : namedElement  ⊏⋆ᵣ  designation
