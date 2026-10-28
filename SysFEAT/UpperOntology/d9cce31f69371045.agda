{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Mixed-Order MetaClass: 
Mixed-Order MetaClass is the Meta-Class of Class of Mixed-Order Entity.All its instance are Class of Entitys that can belong to multiple level of powertyping, an allows some of the classes to be member of themselves.

Documentation: https://framework.sysfeat.com/pages/d9cce31f69371045.htm

External references:
  CycProject 2005 - At Least Nth-Order Class                       : https://framework.sysfeat.com/resources/external-references/CycProject-2005-Instances_of_instances_modeled_via_higher-order-classes.pdf#page=7
  Stanford Encyclopedia of Philosophy - Non-wellfounded set theory : https://plato.stanford.edu/entries/nonwellfounded-set-theory/#1
  Survey of Classification Modeling in Software & Systems Modeling : https://doi.org/10.1007/s10270-016-0521-5
  BORO Research - Unification of Types and Multi-Level Modeling    : https://research.borosolutions.net/kcl-2024-unification-types-multi-level-modeling-introduction/
  SysFEAT - TheoraticalFoundations- Multilevel Modeling            : https://framework.sysfeat.com/resources/framework/SysFEAT-TheoraticalFoundations-MultiLevelModeling.pdf

 - ============================== -}

{-# OPTIONS --safe --cubical --guardedness #-}

module SysFEAT.UpperOntology.d9cce31f69371045 where -- ==================== MixedOrderMetaClass

open import Agda.Primitive
open import SysFEAT.UpperOntology.e27801e868f17024 public -- MetaClass and MetaRelation

-- ============================================================
-- I. The metaclass of all polymorphic class of classes
-- ============================================================ 
MixedOrderMetaClass : (u : Level) → Set (lsuc (lsuc (lsuc u)))
MixedOrderMetaClass u = MetaClass u

-- MixedOrderMetaClass isSubTypeOf MetaClass  [PROVED - was a postulate]
d9cce33e693710ad : ∀ {u} →  (MixedOrderMetaClass u) ⊏⋆ₑ (MetaClass u)
d9cce33e693710ad {u} = polySubTypeOf-identity
