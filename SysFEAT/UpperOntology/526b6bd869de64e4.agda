{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Ordered Element: 
An Ordered Element is an Element that can belong to only to a single metamodeling order (fixed universe in Agda).Example:- First Order Entity- Container Package
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}
{-# OPTIONS --cubical-compatible #-}

module 526b6bd869de64e4 where -- ===================== Ordered Element

open import Agda.Primitive
open import Relation.Binary.PropositionalEquality
open import Data.Product renaming (_×_ to _⊗_)
open import 23d5249e68510ff9 public -- Element

-- ============================================================
-- Definition
-- ============================================================
OrderedElement : (u : Level) → Set (lsuc u)
OrderedElement u = Element u

postulate -- Ordered Element is subType of Element
  526b6bee69de6588 : ∀ {u} → (OrderedElement u) ⊏ (Element u)
