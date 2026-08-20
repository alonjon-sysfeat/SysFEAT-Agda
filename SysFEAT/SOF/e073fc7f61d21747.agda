{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Advise: 
An Advise is time bound Resolution, agreed upon by Stakeholders to recommend what can or cannot be done regarding an Asset Block.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.e073fc7f61d21747 where -- ========== Advise

open import Agda.Primitive
open import SysFEAT.SOF.e073f9c161d2104a public -- Resolution

Advise : ClassOfBoundedIndividual
Advise = BoundedIndividual

--  Advise is subTypeOf Resolution
st-e073fc8661d2179f : Advise ⊏ₑ Resolution
st-e073fc8661d2179f = polySubTypeOf-identity

-- == Relationships =======================
