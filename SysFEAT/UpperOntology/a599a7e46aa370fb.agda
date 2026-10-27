{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Second Order Class: 
Second Order Class is the Meta-Class of all subclasses of First Order Class. 
Each instance of Second Order Class is a class, each of whose instances is a First Order Class. First Order Class is an instance of Second Order Class since, by definition, all of its instances are First Order Classes.

Examples: 
1) Car-Brand (with instances such as VolkswagenCar and HondaCar), 
2) AnimalSpecies (with instancessuch as GreyWolf and Dodo), Occupation, and USArmyRank. 

Documentation: https://framework.sysfeat.com/pages/a599a7E46aa370fb.htm

External references:
  Multi-level conceptual modeling: Theory, language and application : https://ris.utwente.nl/ws/portalfiles/portal/359288948/1-s2.0-S0169023X21000215-main.pdf
  CycProject 2005 - Second-Order Class                              : https://framework.sysfeat.com/resources/external-references/CycProject-2005-Instances_of_instances_modeled_via_higher-order-classes.pdf#page=5
  Survey of Classification Modeling in Software & Systems Modeling  : https://doi.org/10.1007/s10270-016-0521-5
  BORO Research - Unification of Types and Multi-Level Modeling     : https://research.borosolutions.net/kcl-2024-unification-types-multi-level-modeling-introduction/
  SysFEAT - TheoraticalFoundations- Multilevel Modeling             : https://framework.sysfeat.com/resources/framework/SysFEAT-TheoraticalFoundations-MultiLevelModeling.pdf


 - ============================== -}

{-# OPTIONS --safe --cubical --guardedness #-}

module SysFEAT.UpperOntology.a599a7e46aa370fb where -- ============================ Second Order Class

open import Agda.Primitive
open import SysFEAT.UpperOntology.e8b2f7c7673d36d1 public -- MetaClass and MetaRelation
open import SysFEAT.UpperOntology.e27801e868f17024 public -- MetaClass and MetaRelation
open import SysFEAT.UpperOntology.d9cce4e96937128c public -- Ordered MetaClass
open import SysFEAT.UpperOntology.bab6c7346ad70999 public -- Third Order Class

-- ============================================================
-- I. Second Order Class (M2 level)
-- SecondOrderClass is locked at level 2  (Set2)
-- ============================================================ 
SecondOrderClass : ThirdOrderClass
SecondOrderClass = MetaClass lzero

34a349a068f71f77 : SecondOrderClass ⊏ₑ (OrderedMetaClass lzero)
34a349a068f71f77 = polySubTypeOf-identity

-- SecondOrderClass isPowerInstanceOf ThirdOrderClass
--664328444b6ad764b4 : ∀ {u v} → (SecondOrderClass u) ∷ₚₑ (ThirdOrderClass v)
--4328444b6ad764b4 = trivialPowerInstanceOfEntity

-- ============================================================
-- II. Mereological Governance (Meta level M2)
-- ============================================================ 
metaHolonymy : Linkage SecondOrderClass SecondOrderClass
metaHolonymy = make_metaRelation "Universal Holonymy Meta Relation between MetaClasses" "Part MetaClass"

metaMeronymy : Linkage SecondOrderClass SecondOrderClass
metaMeronymy = make_metaRelation "Universal Meronymy Meta Relation between MetaClasses" "Whole MetaClass"

-- metaHolonymy isSubTypeOf classOfOrderedRelation  

