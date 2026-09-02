{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Resource Rule: 
A Resource Rule is a Behavioral Rule that is enforced by Resource Operating Assets.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.07b60b4168a50438 where -- ========== Resource Rule

open import Agda.Primitive
open import SysFEAT.SOF.190c74f868966584 public -- Behavioral Rule

ResourceRule : PropertyType
ResourceRule = ClassOfProperty

--  ResourceRule is subTypeOf BehavioralRule
st-3be69dda63037c85 : ResourceRule ⊏ₑ BehavioralRule
st-3be69dda63037c85 = polySubTypeOf-identity

-- == Relationships =======================
