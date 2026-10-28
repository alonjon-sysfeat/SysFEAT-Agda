{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Group Family: 
A Categorization Family is a kind of Family of Class that is not based of the sub-types of a given Class of Entity.

Documentation : https://framework.sysfeat.com/pages/629565166ad71b60.htm

External references:
  CycProject 2005 - At Least Nth-Order Class                        : https://framework.sysfeat.com/resources/external-references/CycProject-2005-Instances_of_instances_modeled_via_higher-order-classes.pdf#page=7
  Stanford Encyclopedia of Philosophy - Non-wellfounded set theory  : https://plato.stanford.edu/entries/nonwellfounded-set-theory/#1
  Survey of Classification Modeling in Software & Systems Modeling  : https://doi.org/10.1007/s10270-016-0521-5
  BORO Research - Unification of Types and Multi-Level Modeling     : https://research.borosolutions.net/kcl-2024-unification-types-multi-level-modeling-introduction/
  Multi-level conceptual modeling: Theory, language and application : https://ris.utwente.nl/ws/portalfiles/portal/359288948/1-s2.0-S0169023X21000215-main.pdf
  SysFEAT - TheoraticalFoundations- Multilevel Modeling             : https://framework.sysfeat.com/resources/framework/SysFEAT-TheoraticalFoundations-MultiLevelModeling.pdf

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.629565166ad71b60 where -- ============ CategoryOfEntity

open import SysFEAT.UpperOntology.308c3b3868e9141e public -- ClassOfMixedOrderEntity
open import SysFEAT.UpperOntology.220d23706ad71311 public -- CategorizationFamily


-- ============================================================
-- I. Concept definition
-- ============================================================ 
CategoryOfEntity : (u : Level) → CategorizationFamily u
CategoryOfEntity u = ClassOfMixedOrderEntity u

-- CategoryOfEntity isSubTypeOf ClassOfMixedOrderEntity
9b7a9c936acf2af5 : ∀ {u} → (CategoryOfEntity u) ⊏ₑ (ClassOfMixedOrderEntity u)
9b7a9c936acf2af5 {u} = polySubTypeOf-identity

-- ============================================================
-- II. Relation
-- ============================================================ 


