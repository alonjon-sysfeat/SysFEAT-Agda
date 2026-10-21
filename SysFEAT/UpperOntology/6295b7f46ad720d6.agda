
{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Family of Sub-Classe MetaClass: 
A Family of Sub-Class MetaClass is a Family MetaClass that is of sub-types of the Class of Entity related by the Family Of relation.

Documentation : https://framework.sysfeat.com/pages/6295b7f46ad720d6.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.6295b7f46ad720d6 where -- ============ Family of Sub-Class MetaClass

open import SysFEAT.UpperOntology.0dc01ead6ad74e81 public -- Family MetaClass
open import SysFEAT.UpperOntology.20702bc568e969f4 public -- Class of Entity & Class of Relation
open import SysFEAT.UpperOntology.e8b2f7c7673d36d1 public -- Entity and Relation

FamilyOfSubClassesMetaClass : (u : Level) → Set (lsuc (lsuc (lsuc u)))
FamilyOfSubClassesMetaClass u = FamilyMetaClass u

-- FamilyOfSubClassesMetaClass isSubTypeOf FamilyMetaClass
9b7a9f3f6acf2d04 : ∀ {u} →  (FamilyOfSubClassesMetaClass u) ⊏⋆ₑ (FamilyMetaClass u)
9b7a9f3f6acf2d04 {u} = polySubTypeOf-identity

-- ============================================================
-- II. Relations
-- ============================================================ 
familyOf : ∀ {u v} → Linkage (FamilyMetaClass u) (ClassOfEntity v)
familyOf {u} {v} = make_classOfRelation "Family Of" "Characterized Class"

postulate -- familyOf is subTypeOf referenceRelation
  e9fb42ff6ac732e7  : ∀ {u v}  → familyOf {u} {v} ⊏⋆ᵣ  referenceRelation {u} {v}

postulate -- familyOf is subTypeOf existentialDependency
  e9fb088a6ac53154  : ∀ {u v}  → familyOf {u} {v} ⊏⋆ᵣ  existentialDependency {u} {v}



