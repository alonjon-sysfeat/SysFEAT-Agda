{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Individual Category: 
A Individual Category is a used to classify Class of Individual.

Documentation : https://framework.sysfeat.com/pages/f69619236a0f8dcd.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.f69619236a0f8dcd where -- ========== IndividualCategory

open import Agda.Primitive
open import SysFEAT.UpperOntology.220d23706ad71311 public -- CategorizationFamily

IndividualCategory : (u : Level) → Set (lsuc (lsuc (lsuc u)))
IndividualCategory u = MetaClass u

--  IndividualCategory is subTypeOf CategorizationFamily
st-f69619236a0f8dcd-220d23706ad71311 : ∀ {u v} → (IndividualCategory u) ⊏⋆ₑ (CategorizationFamily v)
st-f69619236a0f8dcd-220d23706ad71311 = trivialPolySubTypeOfEntity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Specialized Category: -}
specializedCategory : ∀ {u v} →  Linkage (IndividualCategory u) (IndividualCategory v)
specializedCategory = make_subTypeOf "Category Specialization" "Specialized Category"

