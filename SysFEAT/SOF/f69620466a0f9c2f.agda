{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Asset Category: 
An Asset Category is a Category used to classify Asset Types.There are different kinds of Asset Category that applies only to certain subtypes of Asset Types.For instance:. Data Category applies to Information Assets.. Process Family applies to Resource Operating Assets.. Risk Type applies to Functional Assets.

Documentation : https://framework.sysfeat.com/pages/f69620466a0f9c2f.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.f69620466a0f9c2f where -- ========== Asset Category

open import Agda.Primitive
open import SysFEAT.UpperOntology.f69619236a0f8dcd public -- Category
open import SysFEAT.SOF.0eb97aff6855cd23 public -- Model Property Block
open import SysFEAT.SOF.f696240c6a0f9ea4 public -- Category Partition

AssetCategory : ∀ (u : Level) → Set (lsuc (lsuc (lsuc u)))
AssetCategory u = Category u

--  AssetCategory is subTypeOf Category
st-f69620466a0f9c2f-f69619236a0f8dcd : ∀ {u v} → (AssetCategory u) ⊏⋆ₑ (Category v)
st-f69620466a0f9c2f-f69619236a0f8dcd = trivialPolySubTypeOfEntity

--  AssetCategory is subTypeOf ModelPropertyBlock
st-f69620466a0f9c2f-0eb97aff6855cd23 : ∀ {u v} → (AssetCategory u) ⊏⋆ₑ (ModelPropertyBlock v)
st-f69620466a0f9c2f-0eb97aff6855cd23 = trivialPolySubTypeOfEntity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Specialized Asset Category: -}
specializedAssetCategory : ∀ {u v} →  Linkage (AssetCategory u) (AssetCategory v)
specializedAssetCategory = make_subTypeOf "Specialized Asset Category" "Specialized Asset Category"

postulate -- specializedAssetCategory is subTypeOf specializedCategory
  st-24f72cf56a0f4ec7-24f727b96a0f4281  : ∀ {u v} → specializedAssetCategory {u} {v}  ⊏⋆ᵣ  specializedCategory {u} {v}

-- -------------------------------------------------------------------------------------------- 
{- Category Partition: -}
categoryPartition : ∀ {u v} →  Linkage (AssetCategory u) (CategoryPartition v)
categoryPartition = make_subTypeOf "Category Partition" "Category Partition"

