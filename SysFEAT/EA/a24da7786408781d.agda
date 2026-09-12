{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Software Technology Outcome Event: 
A Software Technology Outcome Event is a Technology Outcome Event that indicates the availability of an expected change of a software resource, produced by a Software Technology System.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.a24da7786408781d where -- ========== Software Technology Outcome Event

open import Agda.Primitive
open import SysFEAT.EA.f4be0a955ee1c4f5 public -- Technology Outcome Event

SOftwareTechnologyOutcomeEvent : ClassOfClassOfIndividual
SOftwareTechnologyOutcomeEvent = ClassOfIndividual

--  SOftwareTechnologyOutcomeEvent is subTypeOf TechnologyOutcomeEvent
st-a24da7a864087881 : SOftwareTechnologyOutcomeEvent ⊏ₑ TechnologyOutcomeEvent
st-a24da7a864087881 = polySubTypeOf-identity

-- == Relationships =======================
