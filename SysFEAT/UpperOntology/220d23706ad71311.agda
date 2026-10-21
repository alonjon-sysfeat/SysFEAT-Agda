{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Group Family: 
A Grouping Family is a kind of Family of Class that is not based of the sub-types of a given Class of Entity.

Documentation : https://framework.sysfeat.com/pages/9b7a9f2a6acf2c66.htm

 - ============================== -}

{-# OPTIONS --safe --cubical --guardedness #-}

module SysFEAT.UpperOntology.220d23706ad71311 where -- ============ Grouping MetaClass

open import SysFEAT.UpperOntology.d9cce31f69371045 public --  Mixed-Order MetaClass

GroupingMetaClass : (u : Level) → Set (lsuc (lsuc (lsuc u)))
GroupingMetaClass u = MixedOrderMetaClass u

-- GroupingMetaClass isSubTypeOf MixedOrderMetaClass
9b7a9f3f6acf2d04 : ∀ {u} →  (GroupingMetaClass u) ⊏⋆ₑ (MixedOrderMetaClass u)
9b7a9f3f6acf2d04 {u} = polySubTypeOf-identity
