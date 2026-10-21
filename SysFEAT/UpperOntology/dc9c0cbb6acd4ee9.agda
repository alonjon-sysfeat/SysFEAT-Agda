{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

N-Plus Order Entity: 
An N-Plus Order Entity is a Mixed-Order Entity which level of universe is u+n.
Class of Entity is an 1+n N-Plus Order Entity
MetaClass is an 2+n N-Plus Order Entity

 - ============================== -}

{-# OPTIONS --safe --cubical --guardedness #-}

module SysFEAT.UpperOntology.dc9c0cbb6acd4ee9 where -- ========== N-Plus Order Entity

open import Agda.Primitive
open import SysFEAT.UpperOntology.6ef572f868f1366f public -- Mixed-Order Entity

-- ============================================================
-- I. Root classes +1 Ordered Classes
-- ============================================================ 
NPlusOrderEntity : ∀ (u : Level) → ClassOfMixedOrderEntity u
NPlusOrderEntity u = MixedOrderEntity u

-- NPlusOrderEntity isSubTypeOf MixedOrderEntity
86b9b1dc6ac32c3c : ∀ {u} → (NPlusOrderEntity u) ⊏ₑ (MixedOrderEntity u)
86b9b1dc6ac32c3c {u} = polySubTypeOf-identity

