{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Asset Category: 
An Asset Category is a Category used to classify Asset Types.There are different kinds of Asset Category that applies only to certain subtypes of Asset Types.For instance:. Data Category applies to Information Assets.. Process Family applies to Resource Operating Assets.. Risk Type applies to Functional Assets.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.f69620466a0f9c2f where -- ========== Asset Category

open import Agda.Primitive
open import SysFEAT.UpperOntology.f69619236a0f8dcd public -- Category
open import SysFEAT.SOF.0eb97aff6855cd23 public -- Model Property Block
open import SysFEAT.SOF.f696240c6a0f9ea4 public -- Category Partition

AssetCategory : ∀ (u : Level) → Set (lsuc (lsuc (lsuc u)))
AssetCategory u = Category u

postulate --  AssetCategory is subTypeOf Category
  st-8085811a65b66abf : ∀ {u v} → (AssetCategory u) ⊏⋆ₑ (Category v)

postulate --  AssetCategory is subTypeOf ModelPropertyBlock
  st-dd27f4c268a15a7d : ∀ {u v} → (AssetCategory u) ⊏⋆ₑ (ModelPropertyBlock v)

-- == Relationships =======================

{- Specialized Category: -}
specializedCategory : ∀ {u v} →  Linkage (AssetCategory u) (AssetCategory v)
specializedCategory = make_subTypeOf "Specialized Category" "specializedCategory"

postulate -- specializedCategory is subTypeOf categorySpecialization
  st-24f72cf56a0f4ec7-24f727b96a0f4281  : ∀ {u v} → specializedCategory {u} {v}  ⊏⋆ᵣ  categorySpecialization {u} {v}

{- Category Partition: -}
categoryPartition : ∀ {u v} →  Linkage (AssetCategory u) (CategoryPartition v)
categoryPartition = make_subTypeOf "Category Partition" "categoryPartition"

