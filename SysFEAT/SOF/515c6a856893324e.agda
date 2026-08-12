{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Asset Property: 
An Asset Property is a Class of Property that qualifies Individual Assets and their Asset Types.Example:. Capabilities (as a functional property).. Environmental conditions.. Directives.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.515c6a856893324e where -- ========== Asset Property

open import Agda.Primitive
open import SysFEAT.UpperOntology.746ac18368905aa2 public -- Class of Property
open import SysFEAT.SOF.0eb97aff6855cd23 public -- Model Property Block
open import SysFEAT.SOF.83f88fd567406e53 public -- Asset Property Type

AssetProperty : PropertyType
AssetProperty = ClassOfProperty

postulate --  AssetProperty is subTypeOf ClassOfProperty
  st-83f88a116740659d : AssetProperty ⊏ₑ ClassOfProperty

postulate --  AssetProperty withAspect ModelPropertyBlock
  st-92a7e08a67ce4049 : AssetProperty ⊏ₐₑ (ModelPropertyBlock (lsuc(lzero)))

-- == Relationships =======================

{- Asset Property Type: -}
assetPropertyType :  Linkage AssetProperty AssetPropertyType
assetPropertyType = make_instanceOf "Asset Property Type" "assetPropertyType"

postulate -- assetPropertyType is subTypeOf propertyClassification
  st-190c1f03689649e5-1976247d68925c3e  : assetPropertyType   ⊏⋆ᵣ  propertyClassification 
