{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Epic: 
An Epic is a time-bound Management Initiative.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.84c799c1664d8b2f where -- ========== Epic

open import Agda.Primitive
open import SysFEAT.SOF.0520200666475f86 public -- Time-bound Initiative

Epic : ClassOfBoundedIndividual
Epic = BoundedIndividual

--  Epic is subTypeOf TimeboundInitiative
st-84c79b8b664d8cfe : Epic ⊏ₑ TimeboundInitiative
st-84c79b8b664d8cfe = polySubTypeOf-identity

-- == Relationships =======================
