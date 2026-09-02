{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Application Scenario: 
An Application Scenario is a story involving the components of an Application (Application Component or MicroService), interacting in order to produce Information Outcome Events.This includes:1) A course of events represented by Application Flows depicting the story towards the delivery of expected Information Outcome Events.2) Interacting Application Components who participate to the story.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.6246167661ba2d05 where -- ========== Application Scenario

open import Agda.Primitive
open import SysFEAT.EA.25c09cb461e2efd3 public -- Software System Scenario
open import SysFEAT.EA.d6a956495a395d28 public -- MicroService
open import SysFEAT.EA.bcebd8e9549144db public -- Application

ApplicationScenario : ClassOfClassOfBoundedIndividual
ApplicationScenario = ClassOfBoundedIndividual

--  ApplicationScenario is subTypeOf SOftwareSystemScenario
st-624616c661ba2d8a : ApplicationScenario ⊏ₑ SOftwareSystemScenario
st-624616c661ba2d8a = polySubTypeOf-identity

-- == Relationships =======================

{- Participant IT Service: -}
-- Aggregate Member : Participant IT Service
ParticipantITService : ClassOfClassOfIndividual
ParticipantITService = ClassOfIndividual

-- Membership relation
membershipOfParticipantITService :  Linkage ApplicationScenario ParticipantITService
membershipOfParticipantITService = membershipOfAggregateMember

-- Aggregation relation
aggregationOfMicroServiceParticipantITService :  Linkage ParticipantITService MicroService
aggregationOfMicroServiceParticipantITService = aggregationOfBuildingBlock

{- participantITService : derived relation obtained by composing
   membershipOfParticipantITService and aggregationOfMicroServiceParticipantITService
   It directly links an Application Scenario to the final aggregated MicroService
   hiding the reifying ParticipantITService
-}
participantITService : Linkage ApplicationScenario MicroService
participantITService = membershipOfParticipantITService  ∘  aggregationOfMicroServiceParticipantITService

{- Performed Scenario: -}
-- Aggregate Member : Performed Scenario
PerformedScenario : ClassOfClassOfIndividual
PerformedScenario = ClassOfIndividual

-- Membership relation
membershipOfPerformedScenario :  Linkage ApplicationScenario PerformedScenario
membershipOfPerformedScenario = membershipOfAggregateMember

-- Aggregation relation
aggregationOfApplicationPerformedScenario :  Linkage PerformedScenario Application
aggregationOfApplicationPerformedScenario = aggregationOfBuildingBlock

{- performedScenario : derived relation obtained by composing
   membershipOfPerformedScenario and aggregationOfApplicationPerformedScenario
   It directly links an Application Scenario to the final aggregated Application
   hiding the reifying PerformedScenario
-}
performedScenario : Linkage ApplicationScenario Application
performedScenario = membershipOfPerformedScenario  ∘  aggregationOfApplicationPerformedScenario
