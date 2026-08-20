{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Non applicable: 

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.5e32bf586929baab where -- ========== Non applicable

open import Agda.Primitive
open import SysFEAT.SOF.5e32ba416929b430 public -- Policity Decision Option

Nonapplicable : ClassOfProperty
Nonapplicable = Property

--  Nonapplicable is subTypeOf PolicityDecisionOption
st-5e32bf756929bb0b : Nonapplicable ⊏ₑ PolicityDecisionOption
st-5e32bf756929bb0b = polySubTypeOf-identity


