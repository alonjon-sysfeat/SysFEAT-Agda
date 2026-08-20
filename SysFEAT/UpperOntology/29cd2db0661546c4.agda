{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Individual State: 
An Individual State is a temporal slice of a Bounded Individual.Examples:. The state of the Eiffel tower during the 1900 World Fair, with its improved elevators and electric illuminations (Apr 14, 1900 - Nov 12, 1900).. William Shakespeare in its early theatrical career (1592-1600).. Confucius in its early childhood.. The first Plinian phase of the Mount Vesuvius eruption (18 to 20 hour, Aug. 24 A.D. 79), that projected a column of volcanic debris and hot gases.. Oackland digital hospital after its renovation (2022 - ...).
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.29cd2db0661546c4 where -- ========== Individual State

open import Agda.Primitive
open import SysFEAT.UpperOntology.28f07b2354be0d69 public -- Bounded Individual
open import SysFEAT.UpperOntology.342f43ae66156429 public -- State Class

IndividualState : StateClass
IndividualState = BoundedIndividual

--  IndividualState is subTypeOf BoundedIndividual
st-29cd2d90661546a1 : IndividualState ⊏ₑ BoundedIndividual
st-29cd2d90661546a1 = polySubTypeOf-identity

-- == Relationships =======================
