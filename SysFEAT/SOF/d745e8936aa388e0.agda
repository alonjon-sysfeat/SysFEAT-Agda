{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Description Note: 
A Description Note is an Annotation Block whose body in describes its in Annoted Element in natural language.

Documentation : https://framework.sysfeat.com/pages/d745e8936aa388e0.htm

External references:
  OMG - KerML - Comment: https://www.omg.org/spec/KerML/1.0/PDF#page=254
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.d745e8936aa388e0 where -- ========== Description Note

open import Agda.Primitive
open import SysFEAT.SOF.d745e6ea6aa386e5 public -- Annotation Block
open import SysFEAT.UpperOntology.23d5c5fc685142de public -- Elementary Block
open import SysFEAT.UpperOntology.e8b2f7c7673d36d1 public -- Entity

DescriptionNote : ClassOfIndividual
DescriptionNote = Individual

--  DescriptionNote is subTypeOf AnnotationBlock
st-d745e8ac6aa38945 : DescriptionNote ⊏ₑ AnnotationBlock
st-d745e8ac6aa38945 = polySubTypeOf-identity

--  DescriptionNote withAspect ElementaryBlock
st-d745e8d86aa389a6 : DescriptionNote ⊏ₐₑ (ElementaryBlock lzero)
st-d745e8d86aa389a6 = polySubTypeOf-identity

-- == Relationships =======================

{- Described Element: -}
describedElement : ∀ {u} →  Linkage DescriptionNote (Entity u)
describedElement = make_Relation "Described Element" "Described Element"

