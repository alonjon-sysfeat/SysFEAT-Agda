{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Mezzo Business System: 
A Mezzo Business System is a Business System that corresponds to the mezzo systemic level.Example:. Application. Department Type
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.f160fb6267d72652 where -- ========== Mezzo Business System

open import Agda.Primitive
open import SysFEAT.EA.278675d65b252f4d public -- Business System
open import SysFEAT.EA.61e3afb3679f1256 public -- Mezzo Resource Operating Asset

MezzoBusinessSystem : ClassOfClassOfBoundedIndividual
MezzoBusinessSystem = ClassOfBoundedIndividual

--  MezzoBusinessSystem is subTypeOf BusinessSystem
st-f160fbcc67d72754 : MezzoBusinessSystem ⊏ₑ BusinessSystem
st-f160fbcc67d72754 = polySubTypeOf-identity

--  MezzoBusinessSystem is subTypeOf MezzoResourceOperatingAsset
st-f160fb9667d726a7 : MezzoBusinessSystem ⊏ₑ MezzoResourceOperatingAsset
st-f160fb9667d726a7 = polySubTypeOf-identity

-- == Relationships =======================
