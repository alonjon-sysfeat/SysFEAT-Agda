{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

FourthOrderClass: 
Fourth Order Class is the Ordered Meta-Class that is the powertype of  Third Order Class. 
Each instance of Fourth Order Class is a direct of indirect subtype of Third Order Class.

Documentation : https://framework.sysfeat.com/pages/003302806ae27b7c.htm

External references:
  Multi-level conceptual modeling: Theory, language and application : https://ris.utwente.nl/ws/portalfiles/portal/359288948/1-s2.0-S0169023X21000215-main.pdf
  BORO Research - Unification of Types and Multi-Level Modeling     : https://research.borosolutions.net/kcl-2024-unification-types-multi-level-modeling-introduction/
  CycProject 2005 - Third-Order Class                               : https://framework.sysfeat.com/resources/external-references/CycProject-2005-Instances_of_instances_modeled_via_higher-order-classes.pdf#page=5
  Survey of Classification Modeling in Software & Systems Modeling  : https://doi.org/10.1007/s10270-016-0521-5
  SysFEAT - TheoraticalFoundations- Multilevel Modeling             : https://framework.sysfeat.com/resources/framework/SysFEAT-TheoraticalFoundations-MultiLevelModeling.pdf

 - ============================== -}

{-# OPTIONS --safe --cubical --guardedness #-}

module SysFEAT.UpperOntology.003302806ae27b7c where -- FourthOrderClass

open import Agda.Primitive
open import SysFEAT.UpperOntology.d9cce4e96937128c public -- OrderedMetaClass
open import SysFEAT.UpperOntology.0dd6b365690d316b public -- OrderedEntity

-- ============================================================
-- I. Concept declaration
-- ============================================================

FourthOrderClass : Set (lsuc(lsuc (lsuc (lsuc (lsuc lzero)))))
FourthOrderClass = MetaClass (lsuc(lsuc(lzero)))

--  FourthOrderClass is SubTypeOf OrderedMetaClass
003302a56ae27C17 : FourthOrderClass ⊏ₐₑ (OrderedMetaClass (lsuc(lsuc(lzero))))
003302a56ae27C17 = trivialPolySubTypeOf





