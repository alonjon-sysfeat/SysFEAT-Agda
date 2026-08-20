{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Category: 
A Category is a used to classify Class of Individual.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.f69619236a0f8dcd where -- ========== Category

open import Agda.Primitive
open import SysFEAT.UpperOntology.06710aeb68ed2d29 public -- Meta Family of Class
open import SysFEAT.UpperOntology.20702bc568e969f4 public -- Class of Entity
open import SysFEAT.UpperOntology.23d5c5fc685142de public -- Elementary Block

Category : (u : Level) → Set (lsuc (lsuc (lsuc u)))
Category u = MetaClass u

--  Category is subTypeOf MetaFamilyOfClass
st-f69619306a0f8e3e : ∀ {u v} → (Category u) ⊏⋆ₑ (MetaFamilyOfClass v)
st-f69619306a0f8e3e = trivialPolySubTypeOfEntity

--  Category is subTypeOf ClassOfEntity
st-2818ae7a6a168d8a : ∀ {u v} → (Category u) ⊏⋆ₑ (ClassOfEntity v)
st-2818ae7a6a168d8a = trivialPolySubTypeOfEntity

--  Category is subTypeOf ElementaryBlock
st-afe2c475681b7b09 : ∀ {u v} → (Category u) ⊏⋆ₑ (ElementaryBlock v)
st-afe2c475681b7b09 = trivialPolySubTypeOfEntity

-- == Relationships =======================

{- Category Specialization: -}
categorySpecialization : ∀ {u v} →  Linkage (Category u) (Category v)
categorySpecialization = make_subTypeOf "Category Specialization" "categorySpecialization"

