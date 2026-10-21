{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Category: 
A Category is a used to classify Class of Individual.

Documentation : https://framework.sysfeat.com/pages/f69619236a0f8dcd.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.f69619236a0f8dcd where -- ========== Category

open import Agda.Primitive
open import SysFEAT.UpperOntology.0dc01ead6ad74e81 public -- Family MetaClass
open import SysFEAT.UpperOntology.20702bc568e969f4 public -- Class of Entity
open import SysFEAT.UpperOntology.23d5c5fc685142de public -- Elementary Block

Category : (u : Level) → Set (lsuc (lsuc (lsuc u)))
Category u = MetaClass u

--  Category is subTypeOf FamilyMetaClass
st-f69619236a0f8dcd-0dc01ead6ad74e81 : ∀ {u v} → (Category u) ⊏⋆ₑ (FamilyMetaClass v)
st-f69619236a0f8dcd-0dc01ead6ad74e81 = trivialPolySubTypeOfEntity

--  Category is subTypeOf ClassOfEntity
st-f69619236a0f8dcd-20702bc568e969f4 : ∀ {u v} → (Category u) ⊏⋆ₑ (ClassOfEntity v)
st-f69619236a0f8dcd-20702bc568e969f4 = trivialPolySubTypeOfEntity

--  Category is subTypeOf ElementaryBlock
st-f69619236a0f8dcd-23d5c5fc685142de : ∀ {u v} → (Category u) ⊏⋆ₑ (ElementaryBlock v)
st-f69619236a0f8dcd-23d5c5fc685142de = trivialPolySubTypeOfEntity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Specialized Category: -}
specializedCategory : ∀ {u v} →  Linkage (Category u) (Category v)
specializedCategory = make_subTypeOf "Category Specialization" "Specialized Category"

