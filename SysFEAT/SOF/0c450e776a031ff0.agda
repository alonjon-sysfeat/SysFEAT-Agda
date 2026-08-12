{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Systemic Level: 

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.0c450e776a031ff0 where -- ========== Systemic Level

open import Agda.Primitive
open import SysFEAT.UpperOntology.8d1ceeab68f755a5 public -- Class Partition
open import SysFEAT.SOF.0c450e8c6a032050 public -- Class of Systemic Level

SystemicLevel : ∀ (u : Level) → MixedOrderMetaClass u
SystemicLevel u = ClassOfMixedOrderEntity u

postulate --  SystemicLevel is subTypeOf ClassPartition
  st-0c450f2f6a03216d : ∀ {u v} → (SystemicLevel u) ⊏⋆ₑ (ClassPartition v)

-- == Relationships =======================
