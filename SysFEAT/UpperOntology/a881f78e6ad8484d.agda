{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Class Partition: 
A Class Partition is a Family of Sub-Classes that is a partition of the Family Of Class of Entity it references.

Documentation : https://framework.sysfeat.com/pages/a881f78e6ad8484d.htm

External references:
  Wikipedia - Partition of a set : https://en.wikipedia.org/wiki/Partition_of_a_set

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.a881f78e6ad8484d where -- ========== Class Partition
-- module SysFEAT.UpperOntology.bab678b06ad80eb5 where -- ========== Class Partition

open import Agda.Primitive
open import SysFEAT.UpperOntology.62956b676ad71d70 public -- Family of Sub-Classes
open import SysFEAT.UpperOntology.8d1cf23968f75847 public -- Partition Meta-Class

-- ============================================================
-- I. Class Declaration (The root of partitioning)
-- ============================================================
ClassPartition : (u : Level) → PartitionMetaClass u
ClassPartition u = FamilyOfSubClasses u

-- ClassPartition isSubTypeOf FamilyOfClass
bab67a236ad81058 : ∀ {u} → (ClassPartition u) ⊏ₑ (FamilyOfSubClasses u)
bab67a236ad81058 {u} = polySubTypeOf-identity





