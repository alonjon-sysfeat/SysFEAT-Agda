{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Class of Entity Partition: 


Documentation : https://framework.sysfeat.com/pages/cd90d8756ae17cc9.htm

External references:
   ISO 15926 - EnumeratedSetOfClass                                   : https://15926.blog/topics/data-model/index.htm#EnumeratedSetOfClass
   Multi-level conceptual modeling: Theory, language and application  : https://ris.utwente.nl/ws/portalfiles/portal/359288948/1-s2.0-S0169023X21000215-main.pdf
   BORO Research - Unification of Types and Multi-Level Modeling      : https://research.borosolutions.net/kcl-2024-unification-types-multi-level-modeling-introduction/
   SysFEAT - TheoraticalFoundations-MultiLevelModeling.pdf            : https://www.framework.sysfeat.com/resources/framework/SysFEAT-TheoraticalFoundations-MultiLevelModeling.pdf


 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.cd90d8756ae17cc9 where -- ========== ClassOfEntityPartition

open import Agda.Primitive
open import SysFEAT.UpperOntology.ad05c1986ae142c1 public -- EnumeratedFamily
open import SysFEAT.UpperOntology.e8b2f7c7673d36d1 public -- Entity and Relation

-- ============================================================
-- I. Concept declaration
-- ============================================================

ClassOfEntityPartition : ∀ (u : Level) → Set (lsuc (lsuc (lsuc u)))
ClassOfEntityPartition u = EnumeratedFamily u

--  ClassOfEntityPartition is subTypeOf EnumeratedFamily
st-a881f78e6ad8484d-6295b7f46ad720d6 : ∀ {u v} → (ClassOfEntityPartition u) ⊏⋆ₑ (EnumeratedFamily v)
st-a881f78e6ad8484d-6295b7f46ad720d6 = trivialPolySubTypeOfEntity

-- ============================================================
-- II. Relation declaration
-- ============================================================
{- The Class of Entities that a Class Of Entity Partition partitions.
-}
partitionedClass : ∀ {u v} → Linkage (ClassOfEntityPartition u) (ClassOfEntity v)
partitionedClass = make_classOfRelation "Partitioning" "partitionedClass"

postulate -- partitionedClass is subTypeOf existentialDependency
  cs90e4b26ae18521  : ∀ {u v} → partitionedClass {u} {v}  ⊏⋆ᵣ  existentialDependency {u} {v}

