{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Policy Framework: 


Documentation : https://framework.sysfeat.com/pages/4b9471bf68a48870.htm

External references:
  UCF Glossary - Policy and Procedure: https://compliancedictionary.com/term/255189
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.4b9471bf68a48870 where -- ========== Business Policy Framework

open import Agda.Primitive
open import SysFEAT.SOF.4b94594b68a478f2 public -- Policy Framework
open import SysFEAT.EA.4b945e8668a47f80 public -- Policy Framework Asset

BusinessPolicyFramework : ∀ (u : Level) → ClassOfMixedOrderEntity u
BusinessPolicyFramework u = MixedOrderEntity u

--  BusinessPolicyFramework is subTypeOf PolicyFramework
st-4b9471bf68a48870-4b94594b68a478f2 : ∀ {u v} → (BusinessPolicyFramework u) ⊏⋆ₑ (PolicyFramework v)
st-4b9471bf68a48870-4b94594b68a478f2 = trivialPolySubTypeOfEntity

-- == Relationships =======================

{- Packaged Framework Asset: -}
packagedFrameworkAsset : ∀ {u v} →  Linkage (BusinessPolicyFramework u) (PolicyFrameworkAsset v)
packagedFrameworkAsset = make_nestingRelation "Packaged Framework Asset" "Packaged Framework Asset"

