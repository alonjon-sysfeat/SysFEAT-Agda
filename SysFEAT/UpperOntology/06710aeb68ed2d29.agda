{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Meta Family of Class: 
A Meta Family of Class is a Class of Classes of Element (its members are themselves Class of Elements), typically used to group or organize collections of Class of Elements that share some structural, relational, or definitional property. In contrast to families of sets, which are sets of sets, a family of classes operates at a higher ontological level-its elements may represent universes, types, or conceptual groupings rather than individual sets.
 - ============================== -}

{-# OPTIONS --safe --cubical --guardedness #-}

module SysFEAT.UpperOntology.06710aeb68ed2d29 where -- ========== Meta Family of Class

open import Agda.Primitive
open import SysFEAT.UpperOntology.d9cce31f69371045 public -- Mixed-Order Meta-Class

MetaFamilyOfClass : (u : Level) → Set (lsuc (lsuc (lsuc u)))
MetaFamilyOfClass u = MixedOrderMetaClass u

-- MetaFamilyOfClass isSubTypeOf MixedOrderMetaClass 
06710b0268ed2d8f : ∀ {u} → (MetaFamilyOfClass u) ⊏ₘₑ (MixedOrderMetaClass u)
06710b0268ed2d8f {u} = ⊏⋆-refl

