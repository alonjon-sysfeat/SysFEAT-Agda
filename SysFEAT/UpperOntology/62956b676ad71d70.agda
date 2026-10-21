{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Family of Sub-Classes: 
A Family of Sub-Classes is a Family of Class that is of sub-types of the Class of Entity related by the Family Of relation.

Documentation : https://framework.sysfeat.com/pages/62956b676ad71d70.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.62956b676ad71d70 where -- ============ Family of Sub-Classes

open import SysFEAT.UpperOntology.6295b7f46ad720d6 public -- Family of Sub-Classes MetaClass
open import SysFEAT.UpperOntology.43285c8c6ad76f8e public -- Family of Classes

FamilyOfSubClasses : (u : Level) → FamilyOfSubClassesMetaClass u
FamilyOfSubClasses u = FamilyOfClasses u

-- FamilyOfSubClasses isSubTypeOf FamilyOfClasses
62956b936ad71dc8 : ∀ {u} →  (FamilyOfSubClasses u) ⊏⋆ₑ (FamilyOfClasses  u)
62956b936ad71dc8 {u} = polySubTypeOf-identity

-- FamilyOfSubClasses is PowerInstanceOf FamilyOfSubClassesMetaClass
bab690136ad813de : ∀ {u} →  (FamilyOfSubClasses u) ∷ₚₑ (FamilyOfSubClassesMetaClass  u)
bab690136ad813de = trivialPowerInstanceOfEntity

-- GroupFamily is the PowerInstanceOf GroupingMetaClass
--629565766ad71c1d : ∀ {u}  → (GroupFamily u) ∷ₚₑ (GroupingMetaClass u)
--629565766ad71c1d = trivialPowerInstanceOfEntity  
