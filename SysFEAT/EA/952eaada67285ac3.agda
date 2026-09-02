{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Policy Framework Category: 
Policy Framework Category is a place holder for Policy Category(ies) that are managed (owned by) in a Policy Framework.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.952eaada67285ac3 where -- ========== Policy Framework Category

open import Agda.Primitive
open import SysFEAT.SOF.952ea6c467285821 public -- Policy Category

PolicyFrameworkCategory : ThirdOrderClass
PolicyFrameworkCategory = SecondOrderClass

--  PolicyFrameworkCategory is subTypeOf PolicyCategory
st-af6622c96307d876 : PolicyFrameworkCategory ⊏ₑ PolicyCategory
st-af6622c96307d876 = polySubTypeOf-identity

-- == Relationships =======================
