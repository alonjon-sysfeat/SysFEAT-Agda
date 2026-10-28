{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Ordered Meta-Class: 
Ordered Class is the defined as the Meta-Class of all power-type based Class of Entitys 
that follow a strict ordering of metalevels.

Documentation: https://framework.sysfeat.com/pages/d9cce4e96937128c.htm

External references:
  Survey of Classification Modeling in Software & Systems Modeling  : https://doi.org/10.1007/s10270-016-0521-5
  CycProject 2005 - Fixed-OrderClass                                : https://framework.sysfeat.com/resources/external-references/CycProject-2005-Instances_of_instances_modeled_via_higher-order-classes.pdf#page=5
  BORO Research - Unification of Types and Multi-Level Modeling     : https://research.borosolutions.net/kcl-2024-unification-types-multi-level-modeling-introduction/
  SysFEAT - TheoraticalFoundations- Multilevel Modeling             : https://framework.sysfeat.com/resources/framework/SysFEAT-TheoraticalFoundations-MultiLevelModeling.pdf

 - ============================== -}

{-# OPTIONS --safe --cubical --guardedness #-}

module SysFEAT.UpperOntology.d9cce4e96937128c where -- ============================ OrderedMetaClass

open import Agda.Primitive
open import SysFEAT.UpperOntology.e27801e868f17024 public -- MetaClass and MetaRelation

-- ============================================================
-- I. Ordered MetaClass declaration
-- ============================================================ 
OrderedMetaClass : (u : Level) → Set (lsuc (lsuc (lsuc u)))
OrderedMetaClass u = MetaClass u

-- ============================================================
-- II. Meta-Graph
-- ============================================================ 
-- OrderedMetaClass isSubTypeOf MetaClass
d9cce501693712Cf : ∀ {u} → (OrderedMetaClass u) ⊏ₑ (MetaClass u)
d9cce501693712Cf {u} = polySubTypeOf-identity
