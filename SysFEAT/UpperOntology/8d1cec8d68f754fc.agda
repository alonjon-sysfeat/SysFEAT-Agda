{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Family of Class: 

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.8d1cec8d68f754fc where -- ========== Family of Class

open import Agda.Primitive
open import SysFEAT.UpperOntology.308c3b3868e9141e public -- Class of Mixed-Order Entity
open import SysFEAT.UpperOntology.06710aeb68ed2d29 public -- Meta Family of Class
open import SysFEAT.UpperOntology.d9cce31f69371045 public -- Mixed-Order MetaClass

-- ============================================================
-- I. Root of the family of classes
-- ============================================================ 
FamilyOfClass : (u : Level) → MetaFamilyOfClass u
FamilyOfClass u = ClassOfMixedOrderEntity u

-- FamilyOfClass isSubTypeOf ClassOfMixedOrderEntity  [PROVED - was a postulate]
8d1ceca968f75569 : ∀ {u} → (FamilyOfClass u) ⊏ₑ (ClassOfMixedOrderEntity u)
8d1ceca968f75569 {u} = polySubTypeOf-identity


-- ============================================================
-- II. Relations
-- ============================================================ 

familyOf : ∀ {u v} → Linkage (MetaFamilyOfClass u) (ClassOfEntity v)
familyOf {u} {v} = make_Relation "Family Of" "Characterized Class"

postulate -- familyOf is subTypeOf referenceRelation
  e9fb42ff6ac732e7  : ∀ {u v}  → familyOf {u} {v} ⊏⋆ᵣ  referenceRelation {u} {v}

postulate -- familyOf is subTypeOf existentialDependency
  e9fb088a6ac53154  : ∀ {u v}  → familyOf {u} {v} ⊏⋆ᵣ  existentialDependency {u} {v}
