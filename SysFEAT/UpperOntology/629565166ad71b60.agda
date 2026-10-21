{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Group Family: 
A Grouping Family is a kind of Family of Class that is not based of the sub-types of a given Class of Entity.

Documentation : https://framework.sysfeat.com/pages/629565166ad71b60.htm

 - ============================== -}

{-# OPTIONS --safe --cubical --guardedness #-}

module SysFEAT.UpperOntology.629565166ad71b60 where -- ============ Grouping Family

open import SysFEAT.UpperOntology.43285c8c6ad76f8e public -- Family of Classes
open import SysFEAT.UpperOntology.220d23706ad71311 public -- GroupingMetaClass


-- ============================================================
-- I. Root of the GroupFamily of classes
-- ============================================================ 
GroupFamily : (u : Level) → GroupingMetaClass u
GroupFamily u = FamilyOfClasses u

-- GroupFamily isSubTypeOf FamilyOfClasses
9b7a9c936acf2af5 : ∀ {u} → (FamilyOfClasses u) ⊏ₑ (FamilyOfClasses u)
9b7a9c936acf2af5 {u} = polySubTypeOf-identity

-- GroupFamily is the PowerInstanceOf GroupingMetaClass
629565766ad71c1d : ∀ {u}  → (GroupFamily u) ∷ₚₑ (GroupingMetaClass u)
629565766ad71c1d = trivialPowerInstanceOfEntity  
