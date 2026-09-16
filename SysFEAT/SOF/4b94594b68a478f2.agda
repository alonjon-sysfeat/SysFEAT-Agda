{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Policy Framework: 
A Policy Framework is a set of Policy Assets, defined in laws published by governements or in policy frameworks defined by the enterprise.Both Business Policy Frameworks and Regulatory Frameworks are Policy Framework(ies).

Documentation : https://framework.sysfeat.com/pages/4b94594b68a478f2.htm

External references:
  UCF Glossary - Framework: https://compliancedictionary.com/term/572
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.4b94594b68a478f2 where -- ========== Policy Framework

open import Agda.Primitive
open import SysFEAT.SOF.3aca50c46aa63f3b public -- Reference Dictionary
open import SysFEAT.SOF.9397c3d86877842f public -- Policy Asset

PolicyFramework : ∀ (u : Level) → ClassOfMixedOrderEntity u
PolicyFramework u = MixedOrderEntity u

--  PolicyFramework is subTypeOf ReferenceDictionary
st-4b94594b68a478f2-3aca50c46aa63f3b : ∀ {u} → (PolicyFramework u) ⊏ₘₑ ReferenceDictionary
st-4b94594b68a478f2-3aca50c46aa63f3b = polySubTypeOf-identity

-- == Relationships =======================

{- Packaged Policy Asset: -}
packagedPolicyAsset : ∀ {u v} →  Linkage (PolicyFramework u) (PolicyAsset v)
packagedPolicyAsset = make_nestingRelation "Packaged Policy Asset" "Packaged Policy Asset"

postulate -- packagedPolicyAsset is subTypeOf scopedModelBlock
  st-4b94598868a47965-0eb96a306855c816  : ∀ {u v} → packagedPolicyAsset {u} {v}  ⊏⋆ᵣ  scopedModelBlock {u} {v}
postulate -- packagedPolicyAsset is subTypeOf packagedAssetBlock
  st-4b94598868a47965-9397bbda687781e0  : ∀ {u v} → packagedPolicyAsset {u} {v}  ⊏⋆ᵣ  packagedAssetBlock {u} {v}
postulate -- packagedPolicyAsset is subTypeOf scopedArchitectureBlock
  st-4b94598868a47965-0eb95f9a6855c081  : ∀ {u v} → packagedPolicyAsset {u} {v}  ⊏⋆ᵣ  scopedArchitectureBlock {u} {v}
