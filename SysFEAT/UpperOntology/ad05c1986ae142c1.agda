{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Enumerated Family: 
An Enumerated Family is a family of Class of Entities that enumerates its classified Class of Entityies.

Documentation : https://framework.sysfeat.com/pages/ad05c1986ae142c1.htm

External references:
   ISO 15926 - EnumeratedSetOfClass                                   : https://15926.blog/topics/data-model/index.htm#EnumeratedSetOfClass
   Multi-level conceptual modeling: Theory, language and application  : https://ris.utwente.nl/ws/portalfiles/portal/359288948/1-s2.0-S0169023X21000215-main.pdf
   BORO Research - Unification of Types and Multi-Level Modeling      : https://research.borosolutions.net/kcl-2024-unification-types-multi-level-modeling-introduction/
   SysFEAT - TheoraticalFoundations-MultiLevelModeling.pdf            : https://www.framework.sysfeat.com/resources/framework/SysFEAT-TheoraticalFoundations-MultiLevelModeling.pdf

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.ad05c1986ae142c1 where -- ========== EnumeratedFamily

open import Agda.Primitive
open import SysFEAT.UpperOntology.d9cce31f69371045 public -- MixedOrderMetaClass

-- ============================================================
-- I. Concept declaration
-- ============================================================
EnumeratedFamily : ∀ (u : Level) → Set (lsuc (lsuc (lsuc u)))
EnumeratedFamily u = MixedOrderMetaClass u

-- EnumeratedFamily is subTypeOf MixedOrderMetaClass
7fc6b2ef6ae04264 : ∀ {u v} → (EnumeratedFamily u) ⊏⋆ₑ (MixedOrderMetaClass v)
7fc6b2ef6ae04264 = trivialPolySubTypeOfEntity


-- ============================================================
-- II. Relation declaration
-- ============================================================
{- The set of Class of Entities that are members of an Enumerated Family. -}
memberClass : ∀ {u v} → Linkage (EnumeratedFamily u) (ClassOfEntity v)
memberClass = make_classOfRelation "Partitioning" "partitionedClass"

