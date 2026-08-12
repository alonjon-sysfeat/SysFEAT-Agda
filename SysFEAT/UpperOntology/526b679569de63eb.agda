{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Mixed-Order Element: 
An Mixed-Order Element is an Element that can belong to multiple metamodeling order (mixed universes in Agda).Example:- Lexical Scope - Building Block
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.526b679569de63eb where -- ========== Mixed-Order Element

open import Agda.Primitive
open import SysFEAT.UpperOntology.23d5249e68510ff9 public -- Element

MixedOrderElement : ∀ (u : Level) → ClassOfMixedOrderEntity u
MixedOrderElement u = MixedOrderEntity u

postulate --  MixedOrderElement is subTypeOf Element
  st-526b67a469de648f : ∀ {u v} → (MixedOrderElement u) ⊏⋆ₑ (Element v)


