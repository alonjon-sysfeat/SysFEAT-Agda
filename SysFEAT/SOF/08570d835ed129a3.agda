{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Initiative Milestone: 
An Initiative Milestone is a calendar change that marks the end of an Initiative and possibly the beginning of another.

Documentation : https://framework.sysfeat.com/pages/08570d835ed129a3.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.08570d835ed129a3 where -- ========== Initiative Milestone

open import Agda.Primitive
open import SysFEAT.UpperOntology.267b6a126675a0b9 public -- Temporal Bounding
open import SysFEAT.SOF.01ce05f9685979d8 public -- Initiative Block

InitiativeMilestone : ClassOfIndividual
InitiativeMilestone = Individual

--  InitiativeMilestone is subTypeOf TemporalBounding
st-08570d835ed129a3-267b6a126675a0b9 : InitiativeMilestone ⊏ₑ TemporalBounding
st-08570d835ed129a3-267b6a126675a0b9 = polySubTypeOf-identity

--  InitiativeMilestone withAspect InitiativeBlock
st-08570d835ed129a3-01ce05f9685979d8 : InitiativeMilestone ⊏ₐₑ (InitiativeBlock lzero)
st-08570d835ed129a3-01ce05f9685979d8 = polySubTypeOf-identity

-- == Relationships =======================
