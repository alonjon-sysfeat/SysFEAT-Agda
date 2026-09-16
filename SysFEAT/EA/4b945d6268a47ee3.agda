{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Control Framework: 
A Control Framework is a set of Control Directives originating from Control Directives and their Regulation Articles.

Documentation : https://framework.sysfeat.com/pages/4b945d6268a47ee3.htm

External references:
  UCF - What is a compliance framework: https://www.unifiedcompliance.com/education/what-is-a-compliance-framework/
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.4b945d6268a47ee3 where -- ========== Control Framework

open import Agda.Primitive
open import SysFEAT.SOF.4b94594b68a478f2 public -- Policy Framework
open import SysFEAT.EA.4b9477ae68a4926d public -- Control Asset

ControlFramework : ∀ (u : Level) → ClassOfMixedOrderEntity u
ControlFramework u = MixedOrderEntity u

--  ControlFramework is subTypeOf PolicyFramework
st-4b945d6268a47ee3-4b94594b68a478f2 : ∀ {u v} → (ControlFramework u) ⊏⋆ₑ (PolicyFramework v)
st-4b945d6268a47ee3-4b94594b68a478f2 = trivialPolySubTypeOfEntity

-- == Relationships =======================

{- Packaged Control Asset: -}
packagedControlAsset : ∀ {u v} →  Linkage (ControlFramework u) (ControlAsset v)
packagedControlAsset = make_nestingRelation "Packaged Control Asset" "Packaged Control Asset"

postulate -- packagedControlAsset is subTypeOf packagedPolicyAsset
  st-4b9472f668a489c8-4b94598868a47965  : ∀ {u v} → packagedControlAsset {u} {v}  ⊏⋆ᵣ  packagedPolicyAsset {u} {v}
