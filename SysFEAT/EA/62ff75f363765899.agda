{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Individual Business Asset: 

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.62ff75f363765899 where -- ========== Individual Business Asset

open import Agda.Primitive
open import SysFEAT.EA.fe1c24fa6788036e public -- Individual Resource Asset
open import SysFEAT.EA.62466ea661b80d09 public -- Business Operating Asset

IndividualBusinessAsset : ClassOfBoundedIndividual
IndividualBusinessAsset = BoundedIndividual

--  IndividualBusinessAsset is subTypeOf IndividualResourceAsset
st-fe1c2aa367880b34 : IndividualBusinessAsset ⊏ₑ IndividualResourceAsset
st-fe1c2aa367880b34 = polySubTypeOf-identity

-- == Relationships =======================
