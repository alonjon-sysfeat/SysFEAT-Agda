{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Data Category: 
A Data Category is a classification or division of Information Assets regarded as having particular shared characteristics.Examples:. Health data, . Financial data, . Contact data.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.4356520b6a110f68 where -- ========== Data Category

open import Agda.Primitive
open import SysFEAT.SOF.f69620466a0f9c2f public -- Asset Category

DataCategory : ∀ (u : Level) → Set (lsuc (lsuc (lsuc u)))
DataCategory u = Category u

--  DataCategory is subTypeOf AssetCategory
st-f4be328f5ee1b3f7 : ∀ {u v} → (DataCategory u) ⊏⋆ₑ (AssetCategory v)
st-f4be328f5ee1b3f7 = trivialPolySubTypeOfEntity

-- == Relationships =======================
