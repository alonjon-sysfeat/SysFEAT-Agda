{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Policy: 
A Business Policy is a Policy that is not directly enforceable whose purpose is to govern or guide the enterprise.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.190c549c68976db2 where -- ========== Business Policy

open import Agda.Primitive
open import SysFEAT.EA.4b945e8668a47f80 public -- Policy Framework Asset
open import SysFEAT.EA.952ead2b67285cfd public -- Business Policy Category

BusinessPolicy : PropertyType
BusinessPolicy = ClassOfProperty

postulate --  BusinessPolicy withAspect PolicyFrameworkAsset
  st-4b94611f68a48567 : BusinessPolicy ⊏ₐₑ (PolicyFrameworkAsset (lsuc(lzero)))

-- == Relationships =======================

{- Business Policy Category: -}
businessPolicyCategory :  Linkage BusinessPolicy BusinessPolicyCategory
businessPolicyCategory = make_instanceOf "Business Policy Category" "businessPolicyCategory"

