{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Policy Category: 
A Policy Category is a classification of policies. In regulations, it represents sections of the law.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.952ea6c467285821 where -- ========== Policy Category

open import Agda.Primitive
open import SysFEAT.SOF.83f88fd567406e53 public -- Asset Property Type
open import SysFEAT.SOF.9397c3d86877842f public -- Policy Asset

PolicyCategory : ThirdOrderClass
PolicyCategory = SecondOrderClass

postulate --  PolicyCategory is subTypeOf AssetPropertyType
  st-744b90425fbfd317 : PolicyCategory ⊏ₑ AssetPropertyType

postulate --  PolicyCategory withAspect PolicyAsset
  st-9397c68b68778c56 : PolicyCategory ⊏ₐₑ (PolicyAsset (lsuc(lsuc(lzero))))

-- == Relationships =======================

{- Parent Policy Category: -}
parentPolicyCategory :  Linkage PolicyCategory PolicyCategory
parentPolicyCategory = make_subTypeOf "Parent Policy Category" "parentPolicyCategory"

postulate -- parentPolicyCategory is subTypeOf specializedPropertyType
  st-952ea9b6672858c7-12b01dee66e92b43  : parentPolicyCategory   ⊏⋆ᵣ  specializedPropertyType 
