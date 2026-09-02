{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Resource Rule: 
A Business Resource Rule is a Resource Rule that is enforced by Business Operating Assets of the Enterprise.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.23bf9a7868ad2d94 where -- ========== Business Resource Rule

open import Agda.Primitive
open import SysFEAT.EA.07b60b4168a50438 public -- Resource Rule

BusinessResourceRule : PropertyType
BusinessResourceRule = ClassOfProperty

--  BusinessResourceRule is subTypeOf ResourceRule
st-3be6a2b9630385a2 : BusinessResourceRule ⊏ₑ ResourceRule
st-3be6a2b9630385a2 = polySubTypeOf-identity

-- == Relationships =======================
