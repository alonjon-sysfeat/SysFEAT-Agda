{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Waiver: 
A Waiver is a temporary Resolution, agreed upon by Stakeholders, that suspends the enforcement of a Policy Decision for a specified duration.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.e073084561d32165 where -- ========== Waiver

open import Agda.Primitive
open import SysFEAT.SOF.e073f9c161d2104a public -- Resolution
open import SysFEAT.SOF.732799d364364423 public -- Policy Decision

Waiver : ClassOfBoundedIndividual
Waiver = BoundedIndividual

--  Waiver is subTypeOf Resolution
st-e073089661d322b1 : Waiver ⊏ₑ Resolution
st-e073089661d322b1 = polySubTypeOf-identity

--  Waiver is subTypeOf PolicyDecision
st-7327a33d64364b90 : Waiver ⊏ₑ PolicyDecision
st-7327a33d64364b90 = polySubTypeOf-identity

-- == Relationships =======================
