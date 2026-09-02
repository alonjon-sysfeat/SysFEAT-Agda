{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Individual State Concept: 
An Individual State Concept is an instance of a State Concept.Example:-  John Doe employe at Concoso Corporation in 2010  is a state of the  John Doe  Individual Concept.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.0626079a68b25fd6 where -- ========== Individual State Concept

open import Agda.Primitive
open import SysFEAT.EA.346a3677655b5325 public -- Conceptual Individual
open import SysFEAT.EA.0626070868b25f1d public -- State Concept

IndividualStateConcept : StateClass
IndividualStateConcept = StateConcept


--  IndividualStateConcept is subTypeOf ConceptualIndividual
st-0626078468b25fd3 : IndividualStateConcept ⊏ₑ ConceptualIndividual
st-0626078468b25fd3 = polySubTypeOf-identity

-- == Relationships =======================
