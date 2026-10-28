{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Third Order Class: 
Third Order Class is the Ordered Meta-Class that is the powertype of  Second Order Class. Each instance of Third Order Class Class is a direct of indirect subtype of Second Order Class.

Documentation : https://framework.sysfeat.com/pages/bab6c7346ad70999.htm

External references:
  Multi-level conceptual modeling: Theory, language and application : https://ris.utwente.nl/ws/portalfiles/portal/359288948/1-s2.0-S0169023X21000215-main.pdf
  BORO Research - Unification of Types and Multi-Level Modeling     : https://research.borosolutions.net/kcl-2024-unification-types-multi-level-modeling-introduction/
  CycProject 2005 - Third-Order Class                               : https://framework.sysfeat.com/resources/external-references/CycProject-2005-Instances_of_instances_modeled_via_higher-order-classes.pdf#page=5
  Survey of Classification Modeling in Software & Systems Modeling  : https://doi.org/10.1007/s10270-016-0521-5
  SysFEAT - TheoraticalFoundations- Multilevel Modeling             : https://framework.sysfeat.com/resources/framework/SysFEAT-TheoraticalFoundations-MultiLevelModeling.pdf

 - ============================== -}

{-# OPTIONS --safe --cubical --guardedness #-}

module SysFEAT.UpperOntology.bab6c7346ad70999 where -- ========== ThirdOrderClass

open import Agda.Primitive
open import SysFEAT.UpperOntology.003302806ae27b7c public -- FourthOrderClass

-- ============================================================
-- I. Concept declaration
-- ============================================================

ThirdOrderClass : Set (lsuc (lsuc (lsuc (lsuc lzero))))
ThirdOrderClass = MetaClass (lsuc(lzero))

--  ThirdOrderClass withAspect OrderedMetaClass
bab6C7446ad709fb : ThirdOrderClass ⊏ₐₑ (OrderedMetaClass (lsuc(lsuc(lsuc(lzero)))))
bab6C7446ad709fb  = trivialPolySubTypeOf

-- ThirdOrderClass isPowerInstanceOf FourthClass
--003302946ae27bde : ∀ {u v} → (ThirdOrderClass u) ∷ₚₑ (FourthOrderClass v)
--003302946ae27bde = trivialPowerInstanceOfEntity


