{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

State Concept: 
A State Concept is Conceptual Entity which is a state of another Conceptual Entity.Example:- Employee is a state of Person. Its temporal boundaries are  hiring  and  departure  (see Event Concept).
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.0626070868b25f1d where -- ========== State Concept

open import Agda.Primitive
open import SysFEAT.EA.229b34eb5b3f79d2 public -- Conceptual Entity

StateConcept : ClassOfClassOfBoundedIndividual
StateConcept = ClassOfBoundedIndividual

--  StateConcept is subTypeOf ConceptualEntity
st-0626076868b25f98 : StateConcept ⊏ₑ ConceptualEntity
st-0626076868b25f98 = polySubTypeOf-identity

-- == Relationships =======================
