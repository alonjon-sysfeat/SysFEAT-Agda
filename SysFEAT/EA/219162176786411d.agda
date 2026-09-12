{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Conceptual Service Interface: 
A Conceptual Service Interface is a communication behavior that describes a typical course of interactions intended to produce Conceptual Outcome Events, through the involvement of Conceptual Agents.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.219162176786411d where -- ========== Conceptual Service Interface

open import Agda.Primitive
open import SysFEAT.SOF.24ae31b55ed1c66d public -- Service Interface
open import SysFEAT.EA.f97e3119632b25f8 public -- Conceptual Behavior
open import SysFEAT.EA.21916383678642d1 public -- Conceptual Outcome Event

ConceptualServiceInterface : ClassOfClassOfIndividual
ConceptualServiceInterface = ClassOfIndividual

--  ConceptualServiceInterface is subTypeOf ServiceInterface
st-2191622767864183 : ConceptualServiceInterface ⊏ₑ ServiceInterface
st-2191622767864183 = polySubTypeOf-identity

--  ConceptualServiceInterface is subTypeOf ConceptualBehavior
st-cb94f21f68185f4c : ConceptualServiceInterface ⊏ₑ ConceptualBehavior
st-cb94f21f68185f4c = polySubTypeOf-identity

-- == Relationships =======================

{- Conceptual Flow: 
A Conceptual Flow is an Conceptual Outcome Event event that occurs between the consumer and the provider participant of a Conceptual Service Interface.
-}
-- Aggregate Member : Conceptual Flow
ConceptualFlow : ClassOfClassOfIndividual
ConceptualFlow = ClassOfIndividual

-- Membership relation
membershipOfConceptualFlow :  Linkage ConceptualServiceInterface ConceptualFlow
membershipOfConceptualFlow = membershipOfAggregateMember

-- Aggregation relation
aggregationOfConceptualOutcomeEventConceptualFlow :  Linkage ConceptualFlow ConceptualOutcomeEvent
aggregationOfConceptualOutcomeEventConceptualFlow = aggregationOfBuildingBlock

{- conceptualFlow : derived relation obtained by composing
   membershipOfConceptualFlow and aggregationOfConceptualOutcomeEventConceptualFlow
   It directly links an Conceptual Service Interface to the final aggregated ConceptualOutcomeEvent
   hiding the reifying ConceptualFlow
-}
conceptualFlow : Linkage ConceptualServiceInterface ConceptualOutcomeEvent
conceptualFlow = membershipOfConceptualFlow  ∘  aggregationOfConceptualOutcomeEventConceptualFlow
