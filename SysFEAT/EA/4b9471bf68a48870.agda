{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Policy Framework: 

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.4b9471bf68a48870 where -- ========== Business Policy Framework

open import Agda.Primitive
open import SysFEAT.SOF.4b94594b68a478f2 public -- Policy Framework
open import SysFEAT.EA.4b945e8668a47f80 public -- Policy Framework Asset

BusinessPolicyFramework : FirstOrderClass
BusinessPolicyFramework = FirstOrderEntity


--  BusinessPolicyFramework is subTypeOf PolicyFramework
st-744b98715fbfec37 : BusinessPolicyFramework ⊏ₑ PolicyFramework
st-744b98715fbfec37 = polySubTypeOf-identity

-- == Relationships =======================

{- Packaged Framework Asset: -}
packagedFrameworkAsset : ∀ {u} →  Linkage BusinessPolicyFramework (PolicyFrameworkAsset u)
packagedFrameworkAsset = make_nestingRelation "Packaged Framework Asset" "packagedFrameworkAsset"

