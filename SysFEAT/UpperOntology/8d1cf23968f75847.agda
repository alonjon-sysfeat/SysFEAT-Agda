{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Meta-Class Partition: 
The MetaClass of Class Partition.

Documentation : https://framework.sysfeat.com/pages/8d1cf23968f75847.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.8d1cf23968f75847 where -- ========== Partition Meta-Class

open import Agda.Primitive
open import SysFEAT.UpperOntology.6295b7f46ad720d6 public -- Family of Sub-Classes MetaClass

PartitionMetaClass : (u : Level) → Set (lsuc (lsuc (lsuc u)))
PartitionMetaClass u = FamilyOfSubClassesMetaClass u

-- PartitionMetaClass isSubTypeOf MetaFamilyOfClass
8d1cd27468f758a5 : ∀ {u} → (PartitionMetaClass u) ⊏ₘₑ (FamilyOfSubClassesMetaClass u)
8d1cd27468f758a5 {u} = polySubTypeOf-identity


