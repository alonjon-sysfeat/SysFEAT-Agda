{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Elementary Block: 
An Elementary Block is a Building Block which doesnt have an internal structure.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.23d5c5fc685142de where -- ========== Elementary Block

open import Agda.Primitive
open import SysFEAT.UpperOntology.23d5a9ea68513ced public -- Building Block

ElementaryBlock : ∀ (u : Level) → ClassOfMixedOrderEntity u
ElementaryBlock u = MixedOrderEntity u

--  ElementaryBlock is subTypeOf BuildingBlock
st-23d5ead368515560 : ∀ {u v} → (ElementaryBlock u) ⊏⋆ₑ (BuildingBlock v)
st-23d5ead368515560 = trivialPolySubTypeOfEntity

-- == Relationships =======================
