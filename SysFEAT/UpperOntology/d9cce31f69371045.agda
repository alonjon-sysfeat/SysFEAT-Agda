{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Mixed-Order MetaClass: 
Mixed-Order MetaClass is the Meta-Class of Class of Mixed-Order Entity.All its instance are Class of Entitys that can belong to multiple level of powertyping, an allows some of the classes to be member of themselves.
 - ============================== -}

{-# OPTIONS --safe --cubical --guardedness #-}

module SysFEAT.UpperOntology.d9cce31f69371045 where -- ==================== Mixed-Order MetaClass

open import Agda.Primitive
open import SysFEAT.UpperOntology.e27801e868f17024 public -- MetaClass and MetaRelation

-- ============================================================
-- I. The metaclass of all polymorphic class of classes
-- ============================================================ 
MixedOrderMetaClass : (u : Level) → Set (lsuc (lsuc (lsuc u)))
MixedOrderMetaClass u = MetaClass u

-- MixedOrderMetaClass isSubTypeOf MetaClass  [PROVED - was a postulate]
d9cce33e693710ad : ∀ {u} →  (MixedOrderMetaClass u) ⊏⋆ₑ (MetaClass u)
d9cce33e693710ad {u} = ⊏⋆-refl
