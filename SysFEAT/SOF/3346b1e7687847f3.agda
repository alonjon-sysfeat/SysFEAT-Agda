{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Description Note: 
A Description Note is an  Annotation Block whose body in describes its in Annoted Element in natural language.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.3346b1e7687847f3 where -- ========== Description Note

open import Agda.Primitive
open import SysFEAT.SOF.0eb97ada6855ccb4 public -- Annotation Block
open import SysFEAT.UpperOntology.23d5c5fc685142de public -- Elementary Block
open import SysFEAT.UpperOntology.e8b2f7c7673d36d1 public -- Entity

DescriptionNote : FirstOrderClass
DescriptionNote = FirstOrderEntity


postulate --  DescriptionNote is subTypeOf AnnotationBlock
  st-3346b2196878481d : DescriptionNote ⊏ₑ AnnotationBlock

postulate --  DescriptionNote withAspect ElementaryBlock
  st-3346b5a968784949 : DescriptionNote ⊏ₐₑ (ElementaryBlock lzero)

-- == Relationships =======================

{- Described Element: -}
describedElement : ∀ {u} →  Linkage DescriptionNote (Entity u)
describedElement = make_Relation "Described Element" "describedElement"

postulate -- describedElement is subTypeOf annotedElement
  st-3346bfad68785033-3346b23668784855  : describedElement  {lzero}  ⊏⋆ᵣ  annotedElement  {lzero}
