{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Concept Property: 
A Concept Property is an immutable factual characteristic of a Conceptual Entity.Example: names, amounts, etc.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.190c2cd368965534 where -- ========== Concept Property

open import Agda.Primitive
open import SysFEAT.EA.362fc8045b3c3e65 public -- Conceptual Entity Asset
open import SysFEAT.SOF.c189d5f068ae4d75 public -- Information Property

ConceptProperty : PropertyType
ConceptProperty = ClassOfProperty

--  ConceptProperty is subTypeOf ConceptualEntityAsset
st-4150caa95ecc5340 : ConceptProperty ⊏ₑ ConceptualEntityAsset
st-4150caa95ecc5340 = polySubTypeOf-identity

--  ConceptProperty is subTypeOf InformationProperty
st-e7e3f7425fbb08ce : ConceptProperty ⊏ₑ InformationProperty
st-e7e3f7425fbb08ce = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Concept Property: -}
specializedConceptProperty :  Linkage ConceptProperty ConceptProperty
specializedConceptProperty = make_subTypeOf "Specialized Concept Property" "specializedConceptProperty"

postulate -- specializedConceptProperty is subTypeOf specializedInformationProperty
  st-d267030868b2576d-c189dcc568ae56ac  : specializedConceptProperty   ⊏⋆ᵣ  specializedInformationProperty 
