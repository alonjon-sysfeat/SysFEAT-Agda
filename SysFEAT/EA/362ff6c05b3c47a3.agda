{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Individual Concept: 
An Individual Concept is an instance of a Concept.For example,  John Doe  is an instance of the  Person  Concept.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.362ff6c05b3c47a3 where -- ========== Individual Concept

open import Agda.Primitive
open import SysFEAT.EA.346a3677655b5325 public -- Conceptual Individual
open import SysFEAT.EA.362fc4365b3c39b8 public -- Concept

IndividualConcept : ClassOfBoundedIndividual
IndividualConcept = BoundedIndividual

--  IndividualConcept is subTypeOf ConceptualIndividual
st-1d51addf63532470 : IndividualConcept ⊏ₑ ConceptualIndividual
st-1d51addf63532470 = polySubTypeOf-identity

-- == Relationships =======================

{- Individual Relationship: -}
individualRelationship :  Linkage IndividualConcept IndividualConcept
individualRelationship = make_holonymyRelation "Individual Relationship" "individualRelationship"

