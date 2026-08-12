{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Family of Class: 

 - ============================== -}

{-# OPTIONS --safe --cubical --guardedness #-}

module SysFEAT.UpperOntology.8d1cec8d68f754fc where -- ========== Family of Class

open import Agda.Primitive
open import SysFEAT.UpperOntology.308c3b3868e9141e public -- Class of Mixed-Order Entity
open import SysFEAT.UpperOntology.06710aeb68ed2d29 public -- Meta Family of Class
open import SysFEAT.UpperOntology.d9cce31f69371045 public -- Mixed-Order MetaClass

-- ============================================================
-- I. Root of the family of classes
-- ============================================================ 
--FamilyOfClass : (u : Level) → Set (lsuc (lsuc u))
FamilyOfClass : (u : Level) → MetaFamilyOfClass u
FamilyOfClass u = ClassOfMixedOrderEntity u

-- FamilyOfClass isSubTypeOf ClassOfMixedOrderEntity  [PROVED - was a postulate]
8d1ceca968f75569 : ∀ {u} → (FamilyOfClass u) ⊏ₑ (ClassOfMixedOrderEntity u)
8d1ceca968f75569 {u} = ⊏⋆-refl
