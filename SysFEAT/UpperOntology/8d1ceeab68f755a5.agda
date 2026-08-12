{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Class Partition: 

 - ============================== -}

{-# OPTIONS --safe --cubical --guardedness #-}

module SysFEAT.UpperOntology.8d1ceeab68f755a5 where -- ========== Class Partition

open import Agda.Primitive
open import SysFEAT.UpperOntology.8d1cec8d68f754fc public -- Family of Class
open import SysFEAT.UpperOntology.8d1cf23968f75847 public -- Meta-Class Partition
open import SysFEAT.UpperOntology.8d1cec8d68f754fc public -- Family of Class

-- ============================================================
-- I. Class Declaration (The root of partitioning)
-- ============================================================
ClassPartition : (u : Level) → MetaClassPartition u
ClassPartition u = FamilyOfClass u

-- ClassPartition isSubTypeOf FamilyOfClass
8d1ceec668f7560c : ∀ {u} → (ClassPartition u) ⊏ₑ (FamilyOfClass u)
8d1ceec668f7560c {u} = ⊏⋆-refl


