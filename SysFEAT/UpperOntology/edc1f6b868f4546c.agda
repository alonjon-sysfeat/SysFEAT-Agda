{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Power Class: 
A Power Class of a class A-denoted as P*(A)-is the class whose members are every possible subclass of A, including A itself and the empty class.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.edc1f6b868f4546c where -- ========== Power Class

open import Agda.Primitive
open import SysFEAT.UpperOntology.308c3b3868e9141e public -- Class of Mixed-Order Entity

PowerClass : ∀ (u : Level) → MixedOrderMetaClass u
PowerClass u = ClassOfMixedOrderEntity u

postulate --  PowerClass is subTypeOf ClassOfMixedOrderEntity
  st-edc1079368f554e6 : ∀ {u v} → (PowerClass u) ⊏⋆ₑ (ClassOfMixedOrderEntity v)

-- == Relationships =======================
