{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Policy Category: 
A Policy Category is a classification of policies. In regulations, it represents sections of the law.

Documentation : https://framework.sysfeat.com/pages/952ea6c467285821.htm

External references:
  OMG - BMM - Directive Category: https://www.omg.org/spec/BMM/1.3/PDF#page=44
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.952ea6c467285821 where -- ========== Policy Category

open import Agda.Primitive
open import SysFEAT.SOF.83f88fd567406e53 public -- Asset Property Type
open import SysFEAT.SOF.9397c3d86877842f public -- Policy Asset

PolicyCategory : ThirdOrderClass
PolicyCategory = SecondOrderClass

--  PolicyCategory is subTypeOf AssetPropertyType
st-744b90425fbfd317 : PolicyCategory ⊏ₑ AssetPropertyType
st-744b90425fbfd317 = polySubTypeOf-identity

--  PolicyCategory withAspect PolicyAsset
st-9397c68b68778c56 : PolicyCategory ⊏ₐₑ (PolicyAsset (lsuc(lsuc(lzero))))
st-9397c68b68778c56 = polySubTypeOf-identity

-- == Relationships =======================

{- Parent Policy Category: -}
parentPolicyCategory :  Linkage PolicyCategory PolicyCategory
parentPolicyCategory = make_subTypeOf "Parent Policy Category" "Parent Policy Category"

postulate -- parentPolicyCategory is subTypeOf specializedPropertyType
  st-952ea9b6672858c7-12b01dee66e92b43  : parentPolicyCategory   ⊏⋆ᵣ  specializedPropertyType 
