{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Asset Property Type: 
An Asset Property Type is a classification of Asset Propertys.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.83f88fd567406e53 where -- ========== Asset Property Type

open import Agda.Primitive
open import SysFEAT.UpperOntology.87d3062666e33965 public -- Property Type
open import SysFEAT.SOF.0eb97aff6855cd23 public -- Model Property Block

AssetPropertyType : ThirdOrderClass
AssetPropertyType = SecondOrderClass

--  AssetPropertyType is subTypeOf PropertyType
st-83f8929767406f45 : AssetPropertyType ⊏ₑ PropertyType
st-83f8929767406f45 = polySubTypeOf-identity

--  AssetPropertyType withAspect ModelPropertyBlock
st-92a7e08f67ce4074 : AssetPropertyType ⊏ₐₑ (ModelPropertyBlock (lsuc(lsuc(lzero))))
st-92a7e08f67ce4074 = polySubTypeOf-identity

-- == Relationships =======================
