{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Class of Systemic Level: 
Class of Systemic Level is the powertype of Systemic Level.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.0c450e8c6a032050 where -- ========== Class of Systemic Level

open import Agda.Primitive
open import SysFEAT.UpperOntology.8d1cf23968f75847 public -- Meta-Class Partition

ClassOfSystemicLevel : ∀ (u : Level) → Set (lsuc (lsuc (lsuc u)))
ClassOfSystemicLevel u = MetaClass u

--  ClassOfSystemicLevel is subTypeOf MetaClassPartition
st-0c450f126a032125 : ∀ {u v} → (ClassOfSystemicLevel u) ⊏⋆ₑ (MetaClassPartition v)
st-0c450f126a032125 = trivialPolySubTypeOfEntity

-- == Relationships =======================
