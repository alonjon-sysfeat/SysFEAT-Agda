{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Scenario of Application System Environment: 
A Scenario of Application System Environment presents the flow exchanged between the IT services or the micro-services used by this application. A scenario can represent a specific use case of this application or, globally, the set of all flows exchanged inside this application.

Documentation : https://framework.sysfeat.com/pages/7a0afca35dde94f5.htm

External references:
  OpenGroup - ArchiMate - Application Interaction: https://pubs.opengroup.org/architecture/archimate32-doc/ch-Application-Layer.html#sec-Application-Interaction
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.7a0afca35dde94f5 where -- ========== Scenario of Application System Environment

open import Agda.Primitive
open import SysFEAT.EA.25c0a10061e2fc12 public -- Software System Environment Scenario
open import SysFEAT.EA.46194ca7560d3a45 public -- Application System

ScenarioOfApplicationSystemEnvironment : ClassOfClassOfBoundedIndividual
ScenarioOfApplicationSystemEnvironment = ClassOfBoundedIndividual

--  ScenarioOfApplicationSystemEnvironment is subTypeOf SOftwareSystemEnvironmentScenario
st-7a0afca35dde94f5-25c0a10061e2fc12 : ScenarioOfApplicationSystemEnvironment ⊏ₑ SOftwareSystemEnvironmentScenario
st-7a0afca35dde94f5-25c0a10061e2fc12 = polySubTypeOf-identity

-- == Relationships =======================

{- Subject Application System: -}
-- Aggregate Member : Subject Application System
SubjectApplicationSystem : ClassOfClassOfIndividual
SubjectApplicationSystem = ClassOfIndividual

-- Membership relation
membershipOfSubjectApplicationSystem :  Linkage ScenarioOfApplicationSystemEnvironment SubjectApplicationSystem
membershipOfSubjectApplicationSystem = make_upwardNestingRelation "subjectApplicationSystem membership" "nested subjectApplicationSystem"

-- Aggregation relation
aggregationOfApplicationSystemSubjectApplicationSystem :  Linkage SubjectApplicationSystem ApplicationSystem
aggregationOfApplicationSystemSubjectApplicationSystem = make_Relation "ApplicationSystem aggregation" "aggregated ApplicationSystem"

{- subjectApplicationSystem : derived relation obtained by composing
   membershipOfSubjectApplicationSystem and aggregationOfApplicationSystemSubjectApplicationSystem
   It directly links an Scenario of Application System Environment to the final aggregated ApplicationSystem
   hiding the reifying SubjectApplicationSystem
-}
subjectApplicationSystem : Linkage ScenarioOfApplicationSystemEnvironment ApplicationSystem
subjectApplicationSystem = membershipOfSubjectApplicationSystem  ∘  aggregationOfApplicationSystemSubjectApplicationSystem

postulate -- subjectApplicationSystem is subTypeOf subjectSOftwareSystem
  st-48d4f27b63b6a466-25c1a55461e20430  : subjectApplicationSystem   ⊏⋆ᵣ  subjectSOftwareSystem 


{- Participant Application System: -}
-- Aggregate Member : Participant Application System
ParticipantApplicationSystem : ClassOfClassOfIndividual
ParticipantApplicationSystem = ClassOfIndividual

-- Membership relation
membershipOfParticipantApplicationSystem :  Linkage ScenarioOfApplicationSystemEnvironment ParticipantApplicationSystem
membershipOfParticipantApplicationSystem = make_upwardNestingRelation "participantApplicationSystem membership" "nested participantApplicationSystem"

-- Aggregation relation
aggregationOfApplicationSystemParticipantApplicationSystem :  Linkage ParticipantApplicationSystem ApplicationSystem
aggregationOfApplicationSystemParticipantApplicationSystem = make_Relation "ApplicationSystem aggregation" "aggregated ApplicationSystem"

{- participantApplicationSystem : derived relation obtained by composing
   membershipOfParticipantApplicationSystem and aggregationOfApplicationSystemParticipantApplicationSystem
   It directly links an Scenario of Application System Environment to the final aggregated ApplicationSystem
   hiding the reifying ParticipantApplicationSystem
-}
participantApplicationSystem : Linkage ScenarioOfApplicationSystemEnvironment ApplicationSystem
participantApplicationSystem = membershipOfParticipantApplicationSystem  ∘  aggregationOfApplicationSystemParticipantApplicationSystem

postulate -- participantApplicationSystem is subTypeOf partnerSOftwareSystem
  st-48d4f34363b6a573-25c1a53f61e20355  : participantApplicationSystem   ⊏⋆ᵣ  partnerSOftwareSystem 

