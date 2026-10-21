{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Aspect of Entity: 
An Aspect of Entity is a class of Mixed-Order Entitys that is transversal to order levels, defined polymorphically over the universe hierarchy (for every level u). 
It is a polymorphic subtype of Entity (declaration: Aspect of Entity u ??? Entity v) 
An Aspect of Entity has no direct instances: it represents an aspect - a transversal characteristic  - that an ordered class acquires through the aspect relation (???) without giving up its level anchoring. 
Example:
1) Lexical Scope.
2) Building Block.


Documentation : https://framework.sysfeat.com/pages/86b9b1d46ac32bda.htm

 - ============================== -}

{-# OPTIONS --safe --cubical --guardedness #-}

module SysFEAT.UpperOntology.86b9b1d46ac32bda where -- ========== Aspect of Entity

open import Agda.Primitive
open import SysFEAT.UpperOntology.6ef572f868f1366f public -- Mixed-Order Entity

AspectOfEntity : ∀ (u : Level) → ClassOfMixedOrderEntity u 
AspectOfEntity u  = MixedOrderEntity u 


--  AspectOfEntity is subTypeOf MixedOrderEntity
st-86b9b1d46ac32bda-6ef572f868f1366f : ∀ {u v} → (AspectOfEntity u) ⊏⋆ₑ (MixedOrderEntity v)
st-86b9b1d46ac32bda-6ef572f868f1366f = trivialPolySubTypeOfEntity

