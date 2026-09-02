{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Macro Resource Operating Asset: 

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.61e3ae8f679f0e2d where -- ========== Macro Resource Operating Asset

open import Agda.Primitive
open import SysFEAT.EA.f8e61da0621db6fa public -- Resource Operating Asset

MacroResourceOperatingAsset : ClassOfClassOfBoundedIndividual
MacroResourceOperatingAsset = ClassOfBoundedIndividual

--  MacroResourceOperatingAsset is subTypeOf ResourceOperatingAsset
st-61e3af9c679f122e : MacroResourceOperatingAsset ⊏ₑ ResourceOperatingAsset
st-61e3af9c679f122e = polySubTypeOf-identity

-- == Relationships =======================
