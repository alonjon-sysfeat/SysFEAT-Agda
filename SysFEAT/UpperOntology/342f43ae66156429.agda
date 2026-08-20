{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

State Class: 
A State Class is a class of the temporal slices of a Class of Bounded Individual. It is the powertype of Individual State.Examples:. The lifecyle phases of buildings such as a skycraper: construction phase, operation and maintenance phase, decommissioning phase.. The lifecycle phases of a person, such as childhood, adulthood, eldery stage.. The phases of a volcanic eruption:  magma accumulation, plinian phase, eruptive phase, effusive phase, declining phase.. The lifecyle phases of a hospital such as construction phase, operation and maintenance phase, renovation and expansion phase, decommissioning phase.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.342f43ae66156429 where -- ========== State Class

open import Agda.Primitive
open import SysFEAT.UpperOntology.3492c53e619642ed public -- Class of Bounded Individual

StateClass : ClassOfClassOfBoundedIndividual
StateClass = ClassOfBoundedIndividual

--  StateClass is subTypeOf ClassOfBoundedIndividual
st-342f43c566156475 : StateClass ⊏ₑ ClassOfBoundedIndividual
st-342f43c566156475 = polySubTypeOf-identity

-- == Relationships =======================
