{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Meta Family of Class: 
A Family MetaClass is a Meta-Class typically used to group or organize collections of Class of Entitys that share some structural, relational, or definitional property. 
In contrast to families of sets, which are sets of sets, a Family MetaClass operates at a higher ontological level-its elements may represent universes, types, 
or conceptual groupings rather than individual sets.
 - ============================== -}

{-# OPTIONS --safe --cubical --guardedness #-}

module SysFEAT.UpperOntology.0dc01ead6ad74e81 where -- ========== Family Meta-Class

open import Agda.Primitive
open import SysFEAT.UpperOntology.e27801e868f17024 public -- Meta-Class

FamilyMetaClass : (u : Level) → Set (lsuc (lsuc (lsuc u)))
FamilyMetaClass u = MetaClass u

-- FamilyMetaClass isSubTypeOf MetaClass 
0dc020be6ad74ee8 : ∀ {u} → (FamilyMetaClass u) ⊏ₘₑ (MetaClass u)
0dc020be6ad74ee8 {u} = polySubTypeOf-identity
