{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Policy Framework: 
A Policy Framework is a set of Policy Assets, defined in laws published by governements or in policy frameworks defined by the enterprise.Both Business Policy Frameworks and Regulatory Frameworks are Policy Framework(ies).
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.4b94594b68a478f2 where -- ========== Policy Framework

open import Agda.Primitive
open import SysFEAT.SOF.0f6418e568598b38 public -- Reference Dictionary
open import SysFEAT.SOF.9397c3d86877842f public -- Policy Asset

PolicyFramework : FirstOrderClass
PolicyFramework = FirstOrderEntity


postulate --  PolicyFramework is subTypeOf ReferenceDictionary
  st-a67dcb5e5f8eb5a9 : PolicyFramework ⊏ₑ ReferenceDictionary

-- == Relationships =======================

{- Packaged Policy Asset: -}
packagedPolicyAsset : ∀ {u} →  Linkage PolicyFramework (PolicyAsset u)
packagedPolicyAsset = make_nestingRelation "Packaged Policy Asset" "packagedPolicyAsset"

postulate -- packagedPolicyAsset is subTypeOf scopedModelBlock
  st-4b94598868a47965-0eb96a306855c816  : packagedPolicyAsset  {lzero}  ⊏⋆ᵣ  scopedModelBlock {lzero}
postulate -- packagedPolicyAsset is subTypeOf packagedAssetBlock
  st-4b94598868a47965-9397bbda687781e0  : packagedPolicyAsset  {lzero}  ⊏⋆ᵣ  packagedAssetBlock {lzero} {lzero}
postulate -- packagedPolicyAsset is subTypeOf scopedArchitectureBlock
  st-4b94598868a47965-0eb95f9a6855c081  : packagedPolicyAsset  {lzero}  ⊏⋆ᵣ  scopedArchitectureBlock {lzero} {lzero}
