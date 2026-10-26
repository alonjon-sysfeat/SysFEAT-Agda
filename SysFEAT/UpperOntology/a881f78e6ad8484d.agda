{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Partition Meta-Class: 


Documentation : https://framework.sysfeat.com/pages/a881f78e6ad8484d.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.a881f78e6ad8484d where -- ========== Partition Meta-Class

open import Agda.Primitive
open import SysFEAT.UpperOntology.6295b7f46ad720d6 public -- Family of Sub-Classes MetaClass

PartitionMetaClass : ∀ (u : Level) → Set (lsuc (lsuc (lsuc u)))
PartitionMetaClass u = Category u

--  PartitionMetaClass is subTypeOf FamilyOfSubClassesMetaClass
st-a881f78e6ad8484d-6295b7f46ad720d6 : ∀ {u v} → (PartitionMetaClass u) ⊏⋆ₑ (FamilyOfSubClassesMetaClass v)
st-a881f78e6ad8484d-6295b7f46ad720d6 = trivialPolySubTypeOfEntity


-- == Relations =======================
