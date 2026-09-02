{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Key Risk Indicator: 
A Key Indicator can be any metric used by organizations to provide an early warning of increasing risk exposures in various areas of the enterprise, based on pre-defined thresholds.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.762590ae5f6c7cc1 where -- ========== Key Risk Indicator

open import Agda.Primitive
open import SysFEAT.SOF.8f46e8eb64b7719a public -- Key Indicator

KeyRiskIndicator : ClassOfBoundedIndividual
KeyRiskIndicator = BoundedIndividual

--  KeyRiskIndicator is subTypeOf KeyIndicator
st-d7f90be35f73718d : KeyRiskIndicator ⊏ₑ KeyIndicator
st-d7f90be35f73718d = polySubTypeOf-identity

-- == Relationships =======================
