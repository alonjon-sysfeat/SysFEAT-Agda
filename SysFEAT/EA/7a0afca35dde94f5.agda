{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Scenario of Application System Environment: 
A Scenario of Application System Environment presents the flow exchanged between the IT services or the micro-services used by this application. A scenario can represent a specific use case of this application or, globally, the set of all flows exchanged inside this application.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.7a0afca35dde94f5 where -- ========== Scenario of Application System Environment

open import Agda.Primitive
open import SysFEAT.EA.25c0a10061e2fc12 public -- Software System Environment Scenario
open import SysFEAT.EA.46194ca7560d3a45 public -- Application System

ScenarioOfApplicationSystemEnvironment : ClassOfClassOfBoundedIndividual
ScenarioOfApplicationSystemEnvironment = ClassOfBoundedIndividual

--  ScenarioOfApplicationSystemEnvironment is subTypeOf SOftwareSystemEnvironmentScenario
st-c334dbb15ecb6dec : ScenarioOfApplicationSystemEnvironment ⊏ₑ SOftwareSystemEnvironmentScenario
st-c334dbb15ecb6dec = polySubTypeOf-identity

-- == Relationships =======================

{- Subject Application System: -}
-- Aggregate Member : Subject Application System
SubjectApplicationSystem : ClassOfClassOfIndividual
SubjectApplicationSystem = ClassOfIndividual

-- Membership relation
membershipOfSubjectApplicationSystem :  Linkage ScenarioOfApplicationSystemEnvironment SubjectApplicationSystem
membershipOfSubjectApplicationSystem = membershipOfAggregateMember

-- Aggregation relation
aggregationOfApplicationSystemSubjectApplicationSystem :  Linkage SubjectApplicationSystem ApplicationSystem
aggregationOfApplicationSystemSubjectApplicationSystem = aggregationOfBuildingBlock

{- subjectApplicationSystem : derived relation obtained by composing
   membershipOfSubjectApplicationSystem and aggregationOfApplicationSystemSubjectApplicationSystem
   It directly links an Scenario of Application System Environment to the final aggregated ApplicationSystem
   hiding the reifying SubjectApplicationSystem
-}
subjectApplicationSystem : Linkage ScenarioOfApplicationSystemEnvironment ApplicationSystem
subjectApplicationSystem = membershipOfSubjectApplicationSystem  ∘  aggregationOfApplicationSystemSubjectApplicationSystem

{- Participant Application System: -}
-- Aggregate Member : Participant Application System
ParticipantApplicationSystem : ClassOfClassOfIndividual
ParticipantApplicationSystem = ClassOfIndividual

-- Membership relation
membershipOfParticipantApplicationSystem :  Linkage ScenarioOfApplicationSystemEnvironment ParticipantApplicationSystem
membershipOfParticipantApplicationSystem = membershipOfAggregateMember

-- Aggregation relation
aggregationOfApplicationSystemParticipantApplicationSystem :  Linkage ParticipantApplicationSystem ApplicationSystem
aggregationOfApplicationSystemParticipantApplicationSystem = aggregationOfBuildingBlock

{- participantApplicationSystem : derived relation obtained by composing
   membershipOfParticipantApplicationSystem and aggregationOfApplicationSystemParticipantApplicationSystem
   It directly links an Scenario of Application System Environment to the final aggregated ApplicationSystem
   hiding the reifying ParticipantApplicationSystem
-}
participantApplicationSystem : Linkage ScenarioOfApplicationSystemEnvironment ApplicationSystem
participantApplicationSystem = membershipOfParticipantApplicationSystem  ∘  aggregationOfApplicationSystemParticipantApplicationSystem
