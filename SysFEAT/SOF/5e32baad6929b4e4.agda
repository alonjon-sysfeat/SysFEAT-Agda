{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Applicable: 

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.5e32baad6929b4e4 where -- ========== Applicable

open import Agda.Primitive
open import SysFEAT.SOF.5e32ba416929b430 public -- Policity Decision Option

Applicable : ClassOfProperty
Applicable = Property

--  Applicable is subTypeOf PolicityDecisionOption
st-5e32bab46929b524 : Applicable ⊏ₑ PolicityDecisionOption
st-5e32bab46929b524 = polySubTypeOf-identity


