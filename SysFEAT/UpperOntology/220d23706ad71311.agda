{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Grouping MetaClass: 


Documentation : https://framework.sysfeat.com/pages/220d23706ad71311.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.220d23706ad71311 where -- ========== Grouping MetaClass

open import Agda.Primitive
open import SysFEAT.UpperOntology.0dc01ead6ad74e81 public -- Family MetaClass

GroupingMetaClass : ∀ (u : Level) → Set (lsuc (lsuc (lsuc u)))
GroupingMetaClass u = Category u

--  GroupingMetaClass is subTypeOf FamilyMetaClass
st-220d23706ad71311-0dc01ead6ad74e81 : ∀ {u v} → (GroupingMetaClass u) ⊏⋆ₑ (FamilyMetaClass v)
st-220d23706ad71311-0dc01ead6ad74e81 = trivialPolySubTypeOfEntity


