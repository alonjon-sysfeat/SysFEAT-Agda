{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Time-bound Initiative: 
A Time-bound Initiative is an Initiative that has a clearly defined start and end date, with specific objectives to be achieved within that timeframe. These initiatives are characterized by their limited duration, focus on achieving particular outcomes within the set period.Example: project.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.0520200666475f86 where -- ========== Time-bound Initiative

open import Agda.Primitive
open import SysFEAT.SOF.0ffeec41600be08a public -- Initiative
open import SysFEAT.UpperOntology.342f74b166156e02 public -- Whole Life Individual

TimeboundInitiative : ClassOfBoundedIndividual
TimeboundInitiative = BoundedIndividual

--  TimeboundInitiative is subTypeOf Initiative
st-0520203f66475ff9 : TimeboundInitiative ⊏ₑ Initiative
st-0520203f66475ff9 = polySubTypeOf-identity

--  TimeboundInitiative is subTypeOf WholeLifeIndividual
st-a44fdca4674590b1 : TimeboundInitiative ⊏ₑ WholeLifeIndividual
st-a44fdca4674590b1 = polySubTypeOf-identity

-- == Relationships =======================
