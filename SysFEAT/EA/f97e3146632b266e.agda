{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Conceptual Interaction Scenario: 
As part of the Conceptual Operating Model, a Conceptual Interaction Scenario is a story that frames how the components of a Conceptual Agent interacts to achieve Conceptual Outcome Events.This includes:1) A course of events represented by Business Object Flows depicting the steps towards the delivery of expected Conceptual Outcome Events.2) Conceptual Agents who participate to the story.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.f97e3146632b266e where -- ========== Conceptual Interaction Scenario

open import Agda.Primitive
open import SysFEAT.EA.f97e3119632b25f8 public -- Conceptual Behavior
open import SysFEAT.SOF.333f35ee5dde0c8c public -- Interaction Process Type
open import SysFEAT.EA.7c4094d2552717db public -- Business Function

ConceptualInteractionScenario : ClassOfClassOfBoundedIndividual
ConceptualInteractionScenario = ClassOfBoundedIndividual

--  ConceptualInteractionScenario is subTypeOf ConceptualBehavior
st-f97e4187632b3769 : ConceptualInteractionScenario ⊏ₑ ConceptualBehavior
st-f97e4187632b3769 = polySubTypeOf-identity

--  ConceptualInteractionScenario is subTypeOf InteractionProcessType
st-6a7095e0678755b1 : ConceptualInteractionScenario ⊏ₑ InteractionProcessType
st-6a7095e0678755b1 = polySubTypeOf-identity

-- == Relationships =======================

{- Business Function Participant: -}
-- Aggregate Member : Business Function Participant
BusinessFunctionParticipant : ClassOfClassOfIndividual
BusinessFunctionParticipant = ClassOfIndividual

-- Membership relation
membershipOfBusinessFunctionParticipant :  Linkage ConceptualInteractionScenario BusinessFunctionParticipant
membershipOfBusinessFunctionParticipant = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessFunctionBusinessFunctionParticipant :  Linkage BusinessFunctionParticipant BusinessFunction
aggregationOfBusinessFunctionBusinessFunctionParticipant = aggregationOfBuildingBlock

{- businessFunctionParticipant : derived relation obtained by composing
   membershipOfBusinessFunctionParticipant and aggregationOfBusinessFunctionBusinessFunctionParticipant
   It directly links an Conceptual Interaction Scenario to the final aggregated BusinessFunction
   hiding the reifying BusinessFunctionParticipant
-}
businessFunctionParticipant : Linkage ConceptualInteractionScenario BusinessFunction
businessFunctionParticipant = membershipOfBusinessFunctionParticipant  ∘  aggregationOfBusinessFunctionBusinessFunctionParticipant
