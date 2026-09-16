{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Waiver: 
A Waiver is a temporary Resolution, agreed upon by Stakeholders, that suspends the enforcement of a Policy Decision for a specified duration.

Documentation : https://framework.sysfeat.com/pages/e073084561d32165.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.e073084561d32165 where -- ========== Waiver

open import Agda.Primitive
open import SysFEAT.SOF.e073f9c161d2104a public -- Resolution
open import SysFEAT.SOF.732799d364364423 public -- Policy Decision

Waiver : ClassOfBoundedIndividual
Waiver = BoundedIndividual

--  Waiver is subTypeOf Resolution
st-e073084561d32165-e073f9c161d2104a : Waiver ⊏ₑ Resolution
st-e073084561d32165-e073f9c161d2104a = polySubTypeOf-identity

--  Waiver is subTypeOf PolicyDecision
st-e073084561d32165-732799d364364423 : Waiver ⊏ₑ PolicyDecision
st-e073084561d32165-732799d364364423 = polySubTypeOf-identity

-- == Relationships =======================
