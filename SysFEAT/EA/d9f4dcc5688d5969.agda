{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Resource Asset: 
A Resource Asset is concrete Asset Type.

Documentation : https://framework.sysfeat.com/pages/d9f4dcc5688d5969.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.d9f4dcc5688d5969 where -- ========== Resource Asset

open import Agda.Primitive
open import SysFEAT.SOF.a4a5b3f855585ce1 public -- Asset Type

ResourceAsset : ClassOfClassOfBoundedIndividual
ResourceAsset = ClassOfBoundedIndividual

--  ResourceAsset is subTypeOf AssetType
st-d9f4dcc5688d5969-a4a5b3f855585ce1 : ResourceAsset ⊏ₑ AssetType
st-d9f4dcc5688d5969-a4a5b3f855585ce1 = polySubTypeOf-identity


-- == Relations =======================
