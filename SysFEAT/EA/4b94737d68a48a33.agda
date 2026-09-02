{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Regulatory Framework: 

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.4b94737d68a48a33 where -- ========== Regulatory Framework

open import Agda.Primitive
open import SysFEAT.SOF.4b94594b68a478f2 public -- Policy Framework
open import SysFEAT.EA.4b947d2068a49dbb public -- Regulatory Asset

RegulatoryFramework : FirstOrderClass
RegulatoryFramework = FirstOrderEntity


--  RegulatoryFramework is subTypeOf PolicyFramework
st-744b9a0c5fbfedd1 : RegulatoryFramework ⊏ₑ PolicyFramework
st-744b9a0c5fbfedd1 = polySubTypeOf-identity

-- == Relationships =======================

{- Packaged Regulatory Asset: -}
packagedRegulatoryAsset : ∀ {u} →  Linkage RegulatoryFramework (RegulatoryAsset u)
packagedRegulatoryAsset = make_nestingRelation "Packaged Regulatory Asset" "packagedRegulatoryAsset"

postulate -- packagedRegulatoryAsset is subTypeOf packagedPolicyAsset
  st-4b947d9d68a49ec6-4b94598868a47965  : packagedRegulatoryAsset  {lzero}  ⊏⋆ᵣ  packagedPolicyAsset  {lzero}
