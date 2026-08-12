{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Ordered Meta-Class: 
Ordered Class is the defined as the Meta-Class of all power-type based Class of Entitys that follow a strict ordering of metalevels.
 - ============================== -}

{-# OPTIONS --safe --cubical --guardedness #-}

module SysFEAT.UpperOntology.d9cce4e96937128c where -- ============================ Ordered MetaClass

open import Agda.Primitive
open import SysFEAT.UpperOntology.e27801e868f17024 public -- MetaClass and MetaRelation
open import SysFEAT.UpperOntology.7d35645c68f37329 public -- Class of Ordered Entity

-- ============================================================
-- I. Ordered MetaClass is declared in the ClassOfOrderedEntity
--    module to avoid circular dependencies
-- ============================================================ 

-- ============================================================
-- II. Meta-Graph
-- ============================================================ 
-- OrderedMetaClass isSubTypeOf MetaClass
d9cce501693712Cf : ∀ {u} → (OrderedMetaClass u) ⊏ₑ (MetaClass u)
d9cce501693712Cf {u} = ⊏⋆-refl
