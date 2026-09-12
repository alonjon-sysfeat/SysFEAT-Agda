{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Policy Category: 
A Business Policy Category defines a classification of related Business Policys.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.952ead2b67285cfd where -- ========== Business Policy Category

open import Agda.Primitive
open import SysFEAT.EA.952eaada67285ac3 public -- Policy Framework Category

BusinessPolicyCategory : ThirdOrderClass
BusinessPolicyCategory = SecondOrderClass

--  BusinessPolicyCategory is subTypeOf PolicyFrameworkCategory
st-af6622e66307d8d1 : BusinessPolicyCategory ⊏ₑ PolicyFrameworkCategory
st-af6622e66307d8d1 = polySubTypeOf-identity

-- == Relationships =======================
