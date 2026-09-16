{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Regulatory Framework: 


Documentation : https://framework.sysfeat.com/pages/4b94737d68a48a33.htm

External references:
  UCF Glossary - Regulatory Framework: https://compliancedictionary.com/term/386219
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.4b94737d68a48a33 where -- ========== Regulatory Framework

open import Agda.Primitive
open import SysFEAT.SOF.4b94594b68a478f2 public -- Policy Framework
open import SysFEAT.EA.4b947d2068a49dbb public -- Regulatory Asset

RegulatoryFramework : ∀ (u : Level) → ClassOfMixedOrderEntity u
RegulatoryFramework u = MixedOrderEntity u

--  RegulatoryFramework is subTypeOf PolicyFramework
st-4b94737d68a48a33-4b94594b68a478f2 : ∀ {u v} → (RegulatoryFramework u) ⊏⋆ₑ (PolicyFramework v)
st-4b94737d68a48a33-4b94594b68a478f2 = trivialPolySubTypeOfEntity

-- == Relationships =======================

{- Packaged Regulatory Asset: -}
packagedRegulatoryAsset : ∀ {u v} →  Linkage (RegulatoryFramework u) (RegulatoryAsset v)
packagedRegulatoryAsset = make_nestingRelation "Packaged Regulatory Asset" "Packaged Regulatory Asset"

postulate -- packagedRegulatoryAsset is subTypeOf packagedPolicyAsset
  st-4b947d9d68a49ec6-4b94598868a47965  : ∀ {u v} → packagedRegulatoryAsset {u} {v}  ⊏⋆ᵣ  packagedPolicyAsset {u} {v}
