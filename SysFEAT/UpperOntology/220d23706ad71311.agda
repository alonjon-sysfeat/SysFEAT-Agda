{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Categorization Family:
A Categorization Family is a family of Class of Entities, based on their paritioning in Category of Entities
Example:
The Systemic Level Family categorizes Operating Asset in Micro Operating Asset, Mezzo Operating Asset and Macro Operating Asset. 

Documentation : https://framework.sysfeat.com/pages/220d23706ad71311.htm

External references:
   Multi-level conceptual modeling: Theory, language and application  : https://ris.utwente.nl/ws/portalfiles/portal/359288948/1-s2.0-S0169023X21000215-main.pdf
   BORO Research - Unification of Types and Multi-Level Modeling      : https://research.borosolutions.net/kcl-2024-unification-types-multi-level-modeling-introduction/
   SysFEAT - TheoraticalFoundations-MultiLevelModeling.pdf            : https://www.framework.sysfeat.com/resources/framework/SysFEAT-TheoraticalFoundations-MultiLevelModeling.pdf

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.220d23706ad71311 where -- ========== CategorizationFamily

open import Agda.Primitive
open import SysFEAT.UpperOntology.d9cce31f69371045 public -- MixedOrderMetaClass

-- ============================================================
-- I. Concept declaration
-- ============================================================ 

CategorizationFamily : ∀ (u : Level) → Set (lsuc (lsuc (lsuc u)))
CategorizationFamily u = MixedOrderMetaClass u

--  GroupingMetaClass is subTypeOf FamilyMetaClass
7fc6b2ef6ae04264 : ∀ {u v} → (CategorizationFamily u) ⊏⋆ₑ (MixedOrderMetaClass v)
7fc6b2ef6ae04264 = trivialPolySubTypeOfEntity


