{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Family of Class: 

 - ============================== -}

{-# OPTIONS --safe --cubical --guardedness #-}

module SysFEAT.UpperOntology.43285c8c6ad76f8e where -- ========== Family of Classes

open import Agda.Primitive
open import SysFEAT.UpperOntology.308c3b3868e9141e public -- Class of Mixed-Order Entity
open import SysFEAT.UpperOntology.0dc01ead6ad74e81 public -- Family Meta-Class
open import SysFEAT.UpperOntology.d9cce31f69371045 public -- Mixed-Order MetaClass

-- ============================================================
-- I. Root of the family of classes
-- ============================================================ 
FamilyOfClasses : (u : Level) → FamilyMetaClass u
FamilyOfClasses u = ClassOfEntity u

-- FamilyOfClasses isSubTypeOf ClassOfEntity 
8d1ceca968f75569 : ∀ {u} → (FamilyOfClasses u) ⊏ₑ (ClassOfEntity u)
8d1ceca968f75569 {u} = polySubTypeOf-identity

-- FamilyOfClasses is PowerInstanceOf FamilyMetaClass
6295b5e56ad72096 : ∀ {u}  → (FamilyOfClasses u) ∷ₚₑ (FamilyMetaClass u)
6295b5e56ad72096 = trivialPowerInstanceOfEntity  


