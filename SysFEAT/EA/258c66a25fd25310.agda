{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Person Right: 
Rights are legal, social or ethical principals of freedom that people are entitled for by a governing body.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.258c66a25fd25310 where -- ========== Person Right

open import Agda.Primitive
open import SysFEAT.SOF.515c6b23689335c3 public -- Directive

PersonRight : ClassOfClassOfBoundedIndividual
PersonRight = ClassOfBoundedIndividual

--  PersonRight is subTypeOf Directive
st-258c67ab5fd2544f : PersonRight ⊏ₑ Directive
st-258c67ab5fd2544f = polySubTypeOf-identity

-- == Relationships =======================
