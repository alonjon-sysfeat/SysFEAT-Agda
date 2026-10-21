{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Key Risk Indicator: 
A Key Indicator can be any metric used by organizations to provide an early warning of increasing risk exposures in various areas of the enterprise, based on pre-defined thresholds.

Documentation : https://framework.sysfeat.com/pages/762590ae5f6c7cc1.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.762590ae5f6c7cc1 where -- ========== Key Risk Indicator

open import Agda.Primitive
open import SysFEAT.SOF.8f46e8eb64b7719a public -- Key Indicator

KeyRiskIndicator : ClassOfBoundedIndividual
KeyRiskIndicator = BoundedIndividual


--  KeyRiskIndicator is subTypeOf KeyIndicator
st-762590ae5f6c7cc1-8f46e8eb64b7719a : KeyRiskIndicator ⊏ₑ KeyIndicator
st-762590ae5f6c7cc1-8f46e8eb64b7719a = polySubTypeOf-identity


-- == Relations =======================
