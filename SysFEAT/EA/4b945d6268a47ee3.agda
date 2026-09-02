{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Control Framework: 
A Control Framework is a set of Control Directives originating from Control Directives and their Regulation Articles.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.4b945d6268a47ee3 where -- ========== Control Framework

open import Agda.Primitive
open import SysFEAT.SOF.4b94594b68a478f2 public -- Policy Framework
open import SysFEAT.EA.4b9477ae68a4926d public -- Control Asset

ControlFramework : FirstOrderClass
ControlFramework = FirstOrderEntity


--  ControlFramework is subTypeOf PolicyFramework
st-4902a4da635b4047 : ControlFramework ⊏ₑ PolicyFramework
st-4902a4da635b4047 = polySubTypeOf-identity

-- == Relationships =======================

{- Packaged Control Asset: -}
packagedControlAsset : ∀ {u} →  Linkage ControlFramework (ControlAsset u)
packagedControlAsset = make_nestingRelation "Packaged Control Asset" "packagedControlAsset"

postulate -- packagedControlAsset is subTypeOf packagedPolicyAsset
  st-4b9472f668a489c8-4b94598868a47965  : packagedControlAsset  {lzero}  ⊏⋆ᵣ  packagedPolicyAsset  {lzero}
