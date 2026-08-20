{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Meta-Class Partition: 

 - ============================== -}

{-# OPTIONS --safe --cubical --guardedness #-}

module SysFEAT.UpperOntology.8d1cf23968f75847 where -- ========== Meta-Class Partition

open import Agda.Primitive
open import SysFEAT.UpperOntology.06710aeb68ed2d29 public -- Meta-Family of Class

MetaClassPartition : (u : Level) → Set (lsuc (lsuc (lsuc u)))
MetaClassPartition u = MetaFamilyOfClass u

-- MetaClassPartition isSubTypeOf MetaFamilyOfClass
8d1cd27468f758a5 : ∀ {u} → (MetaClassPartition u) ⊏ₘₑ (MetaFamilyOfClass u)
8d1cd27468f758a5 {u} = polySubTypeOf-identity


