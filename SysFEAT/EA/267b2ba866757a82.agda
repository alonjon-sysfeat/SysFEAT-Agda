{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

State Concept Type: 
A State Concept Type is Class of Conceptual Entity which is a state type of another Class of Conceptual Entity.Example:- Employee is a state of Person. Its temporal boundaries are  hiring  and  departure  (see Event Concept).
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.267b2ba866757a82 where -- ========== State Concept Type

open import Agda.Primitive
open import SysFEAT.EA.267b28fc66757618 public -- Class of Conceptual Entity

StateConceptType : ClassOfClassOfBoundedIndividual
StateConceptType = ClassOfBoundedIndividual

--  StateConceptType is subTypeOf ClassOfConceptualEntity
st-267b2bb366757ac9 : StateConceptType ⊏ₑ ClassOfConceptualEntity
st-267b2bb366757ac9 = polySubTypeOf-identity

-- == Relationships =======================
