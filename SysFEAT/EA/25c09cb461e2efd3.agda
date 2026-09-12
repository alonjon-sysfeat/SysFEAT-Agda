{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Software System Scenario: 
A Software System Scenario is a story involving the components of a Business Software System, interacting in order to produce Information Outcome Events.This includes:1) A course of events represented by Application Flows depicting the story towards the delivery of expected Information Outcome Events.2) Interacting Business Software Systems who participate to the story.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.25c09cb461e2efd3 where -- ========== Software System Scenario

open import Agda.Primitive
open import SysFEAT.EA.7a0a06c45ddf969e public -- Business System Interaction Process
open import SysFEAT.EA.302238be5ec9020a public -- Information Outcome Event
open import SysFEAT.EA.d6cd02865ab966e8 public -- Business Software System

SOftwareSystemScenario : ClassOfClassOfBoundedIndividual
SOftwareSystemScenario = ClassOfBoundedIndividual

--  SOftwareSystemScenario is subTypeOf BusinessSystemInteractionProcess
st-25c09eb061e2f1f9 : SOftwareSystemScenario ⊏ₑ BusinessSystemInteractionProcess
st-25c09eb061e2f1f9 = polySubTypeOf-identity

-- == Relationships =======================

{- Application Flow: -}
-- Aggregate Member : Application Flow
ApplicationFlow : ClassOfClassOfIndividual
ApplicationFlow = ClassOfIndividual

-- Membership relation
membershipOfApplicationFlow :  Linkage SOftwareSystemScenario ApplicationFlow
membershipOfApplicationFlow = membershipOfAggregateMember

-- Aggregation relation
aggregationOfInformationOutcomeEventApplicationFlow :  Linkage ApplicationFlow InformationOutcomeEvent
aggregationOfInformationOutcomeEventApplicationFlow = aggregationOfBuildingBlock

{- applicationFlow : derived relation obtained by composing
   membershipOfApplicationFlow and aggregationOfInformationOutcomeEventApplicationFlow
   It directly links an Software System Scenario to the final aggregated InformationOutcomeEvent
   hiding the reifying ApplicationFlow
-}
applicationFlow : Linkage SOftwareSystemScenario InformationOutcomeEvent
applicationFlow = membershipOfApplicationFlow  ∘  aggregationOfInformationOutcomeEventApplicationFlow

{- Participant Software: -}
-- Aggregate Member : Participant Software
ParticipantSOftware : ClassOfClassOfIndividual
ParticipantSOftware = ClassOfIndividual

-- Membership relation
membershipOfParticipantSOftware :  Linkage SOftwareSystemScenario ParticipantSOftware
membershipOfParticipantSOftware = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessSOftwareSystemParticipantSOftware :  Linkage ParticipantSOftware BusinessSOftwareSystem
aggregationOfBusinessSOftwareSystemParticipantSOftware = aggregationOfBuildingBlock

{- participantSOftware : derived relation obtained by composing
   membershipOfParticipantSOftware and aggregationOfBusinessSOftwareSystemParticipantSOftware
   It directly links an Software System Scenario to the final aggregated BusinessSOftwareSystem
   hiding the reifying ParticipantSOftware
-}
participantSOftware : Linkage SOftwareSystemScenario BusinessSOftwareSystem
participantSOftware = membershipOfParticipantSOftware  ∘  aggregationOfBusinessSOftwareSystemParticipantSOftware
