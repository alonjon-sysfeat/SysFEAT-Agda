{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Micro Resource Operating Asset: 


Documentation : https://framework.sysfeat.com/pages/61e3b04c679f13de.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.61e3b04c679f13de where -- ========== Micro Resource Operating Asset

open import Agda.Primitive
open import SysFEAT.EA.f8e61da0621db6fa public -- Resource Operating Asset

MicroResourceOperatingAsset : ClassOfClassOfBoundedIndividual
MicroResourceOperatingAsset = ClassOfBoundedIndividual

--  MicroResourceOperatingAsset is subTypeOf ResourceOperatingAsset
st-61e3b04c679f13de-f8e61da0621db6fa : MicroResourceOperatingAsset ⊏ₑ ResourceOperatingAsset
st-61e3b04c679f13de-f8e61da0621db6fa = polySubTypeOf-identity

-- == Relationships =======================
