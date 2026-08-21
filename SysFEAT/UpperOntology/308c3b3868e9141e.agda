{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Class of Mixed-Order Entity: 
A Class of Mixed-Order Entity is a Class of Entity which instances can belong to different meta-modeling order. This includes Class of Entitys that are instances of themselves, such as .
 - ============================== -}

{-# OPTIONS --safe --cubical --guardedness #-}

module SysFEAT.UpperOntology.308c3b3868e9141e where -- ================= Class of Mixed-Order Entity

open import Agda.Primitive
open import SysFEAT.UpperOntology.e8b2f7c7673d36d1 public -- Entity and Relation
open import SysFEAT.UpperOntology.d9cce31f69371045 public -- Mixed-Order MetaClass

-- ============================================================
-- I. Class Declaration (The root of class of transversal aspects)
-- ============================================================
ClassOfMixedOrderEntity : (u : Level) → MixedOrderMetaClass u
ClassOfMixedOrderEntity u = ClassOfEntity u

-- ClassOfMixedOrderEntity isSubTypeOf ClassOfEntity
12fe2cf368ED1674 : ∀ {u v} → (ClassOfMixedOrderEntity u) ⊏⋆ₑ (ClassOfEntity v)
12fe2cf368ED1674 = trivialPolySubTypeOfEntity

--postulate -- ClassOfMixedOrderEntity isPowerInstanceOf MixedOrderMetaClass
d9cce43b693711e2 : ∀ {u v} → (ClassOfMixedOrderEntity u) ∷ₚₑ (MixedOrderMetaClass v)
d9cce43b693711e2 = trivialPowerInstanceOfEntity

-- ============================================================
-- II. MixedOrderMetaclass is declared as a metaSubType of ClassOfMixedOrderEntity
--     which makes it a reflexive metaclass
-- ============================================================
-- MixedOrderMetaClass isSubTypeOf ClassOfMixedOrderEntity 
