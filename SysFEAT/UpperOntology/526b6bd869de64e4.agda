{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Ordered Element: 
An Ordered Element is an Element that can belong to only to a single metamodeling order (fixed universe in Agda).Example:- First Order Entity- Container Package
 - ============================== -}

{-# OPTIONS --safe --cubical --guardedness #-}

module SysFEAT.UpperOntology.526b6bd869de64e4 where -- ===================== Ordered Element

open import SysFEAT.UpperOntology.20702b2568e9694d public -- Class of Element

-- ============================================================
-- Definition
-- ============================================================
OrderedElement : (u : Level) → Set (lsuc u)
OrderedElement u = Element u

-- Ordered Element is subType of Element
526b6bee69de6588 : ∀ {u} → (OrderedElement u) ⊏⋆ (Element u)
526b6bee69de6588 = trivialPolySubTypeOf

