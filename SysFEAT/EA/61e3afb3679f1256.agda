{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Mezzo Resource Operating Asset: 
A Mezzo Resource Operating Asset is a Resource Operating Asset that corresponds to the mezzo systemic level.

Documentation : https://framework.sysfeat.com/pages/61e3afb3679f1256.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.61e3afb3679f1256 where -- ========== Mezzo Resource Operating Asset

open import Agda.Primitive
open import SysFEAT.SOF.0c45104d6a032286 public -- Mezzo Operating Asset
open import SysFEAT.EA.f8e61da0621db6fa public -- Resource Operating Asset

MezzoResourceOperatingAsset : ClassOfClassOfBoundedIndividual
MezzoResourceOperatingAsset = ClassOfBoundedIndividual

--  MezzoResourceOperatingAsset withAspect MezzoOperatingAsset
st-61e3afb3679f1256-0c45104d6a032286 : MezzoResourceOperatingAsset ⊏ₐₑ (MezzoOperatingAsset (lsuc(lzero)))
st-61e3afb3679f1256-0c45104d6a032286 = polySubTypeOf-identity

--  MezzoResourceOperatingAsset is subTypeOf ResourceOperatingAsset
st-61e3afb3679f1256-f8e61da0621db6fa : MezzoResourceOperatingAsset ⊏ₑ ResourceOperatingAsset
st-61e3afb3679f1256-f8e61da0621db6fa = polySubTypeOf-identity


-- == Relations =======================
