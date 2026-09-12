{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Software System Environment Scenario: 
A Software System Environment Scenario is a story involving the partners of a Business Software System (Partner System), interacting in order to produce Information Outcome Events in a specific Eco-System (Software System Environment).This includes:- A course of events represented by Object Flows depicting the story towards the delivery of expected Information Outcome Events.- Interacting partners who participate to the story in the considered Eco-System.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.25c0a10061e2fc12 where -- ========== Software System Environment Scenario

open import Agda.Primitive
open import SysFEAT.EA.4edf5eab5fc58ef3 public -- Business System Environment Sxcenario
open import SysFEAT.EA.25c0a25061e2fd5a public -- Software System Environment
open import SysFEAT.EA.302238be5ec9020a public -- Information Outcome Event
open import SysFEAT.EA.d6cd02865ab966e8 public -- Business Software System

SOftwareSystemEnvironmentScenario : ClassOfClassOfBoundedIndividual
SOftwareSystemEnvironmentScenario = ClassOfBoundedIndividual

--  SOftwareSystemEnvironmentScenario is subTypeOf BusinessSystemEnvironmentSxcenario
st-25c0a20d61e2fccf : SOftwareSystemEnvironmentScenario ⊏ₑ BusinessSystemEnvironmentSxcenario
st-25c0a20d61e2fccf = polySubTypeOf-identity

-- == Relationships =======================

{- Scenarized Software System Environment: -}
scenarizedSOftwareSystemEnvironment :  Linkage SOftwareSystemEnvironmentScenario SOftwareSystemEnvironment
scenarizedSOftwareSystemEnvironment = make_classOfHolonymy "Scenarized Software System Environment" "scenarizedSOftwareSystemEnvironment"

postulate -- scenarizedSOftwareSystemEnvironment is subTypeOf scenarizedSystemEnvironment
  st-25c1a3fc61e201e4-25c1a95361e21158  : scenarizedSOftwareSystemEnvironment   ⊏⋆ᵣ  scenarizedSystemEnvironment 

{- Application Flow: -}
-- Aggregate Member : Application Flow
ApplicationFlow : ClassOfClassOfIndividual
ApplicationFlow = ClassOfIndividual

-- Membership relation
membershipOfApplicationFlow :  Linkage SOftwareSystemEnvironmentScenario ApplicationFlow
membershipOfApplicationFlow = membershipOfAggregateMember

-- Aggregation relation
aggregationOfInformationOutcomeEventApplicationFlow :  Linkage ApplicationFlow InformationOutcomeEvent
aggregationOfInformationOutcomeEventApplicationFlow = aggregationOfBuildingBlock

{- applicationFlow : derived relation obtained by composing
   membershipOfApplicationFlow and aggregationOfInformationOutcomeEventApplicationFlow
   It directly links an Software System Environment Scenario to the final aggregated InformationOutcomeEvent
   hiding the reifying ApplicationFlow
-}
applicationFlow : Linkage SOftwareSystemEnvironmentScenario InformationOutcomeEvent
applicationFlow = membershipOfApplicationFlow  ∘  aggregationOfInformationOutcomeEventApplicationFlow

{- Participant Software: -}
-- Aggregate Member : Participant Software
ParticipantSOftware : ClassOfClassOfIndividual
ParticipantSOftware = ClassOfIndividual

-- Membership relation
membershipOfParticipantSOftware :  Linkage SOftwareSystemEnvironmentScenario ParticipantSOftware
membershipOfParticipantSOftware = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessSOftwareSystemParticipantSOftware :  Linkage ParticipantSOftware BusinessSOftwareSystem
aggregationOfBusinessSOftwareSystemParticipantSOftware = aggregationOfBuildingBlock

{- participantSOftware : derived relation obtained by composing
   membershipOfParticipantSOftware and aggregationOfBusinessSOftwareSystemParticipantSOftware
   It directly links an Software System Environment Scenario to the final aggregated BusinessSOftwareSystem
   hiding the reifying ParticipantSOftware
-}
participantSOftware : Linkage SOftwareSystemEnvironmentScenario BusinessSOftwareSystem
participantSOftware = membershipOfParticipantSOftware  ∘  aggregationOfBusinessSOftwareSystemParticipantSOftware

{- Partner Software System: -}
-- Aggregate Member : Partner Software System
PartnerSOftwareSystem : ClassOfClassOfIndividual
PartnerSOftwareSystem = ClassOfIndividual

-- Membership relation
membershipOfPartnerSOftwareSystem :  Linkage SOftwareSystemEnvironmentScenario PartnerSOftwareSystem
membershipOfPartnerSOftwareSystem = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessSOftwareSystemPartnerSOftwareSystem :  Linkage PartnerSOftwareSystem BusinessSOftwareSystem
aggregationOfBusinessSOftwareSystemPartnerSOftwareSystem = aggregationOfBuildingBlock

{- partnerSOftwareSystem : derived relation obtained by composing
   membershipOfPartnerSOftwareSystem and aggregationOfBusinessSOftwareSystemPartnerSOftwareSystem
   It directly links an Software System Environment Scenario to the final aggregated BusinessSOftwareSystem
   hiding the reifying PartnerSOftwareSystem
-}
partnerSOftwareSystem : Linkage SOftwareSystemEnvironmentScenario BusinessSOftwareSystem
partnerSOftwareSystem = membershipOfPartnerSOftwareSystem  ∘  aggregationOfBusinessSOftwareSystemPartnerSOftwareSystem

{- Subject Software System: -}
-- Aggregate Member : Subject Software System
SubjectSOftwareSystem : ClassOfClassOfIndividual
SubjectSOftwareSystem = ClassOfIndividual

-- Membership relation
membershipOfSubjectSOftwareSystem :  Linkage SOftwareSystemEnvironmentScenario SubjectSOftwareSystem
membershipOfSubjectSOftwareSystem = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessSOftwareSystemSubjectSOftwareSystem :  Linkage SubjectSOftwareSystem BusinessSOftwareSystem
aggregationOfBusinessSOftwareSystemSubjectSOftwareSystem = aggregationOfBuildingBlock

{- subjectSOftwareSystem : derived relation obtained by composing
   membershipOfSubjectSOftwareSystem and aggregationOfBusinessSOftwareSystemSubjectSOftwareSystem
   It directly links an Software System Environment Scenario to the final aggregated BusinessSOftwareSystem
   hiding the reifying SubjectSOftwareSystem
-}
subjectSOftwareSystem : Linkage SOftwareSystemEnvironmentScenario BusinessSOftwareSystem
subjectSOftwareSystem = membershipOfSubjectSOftwareSystem  ∘  aggregationOfBusinessSOftwareSystemSubjectSOftwareSystem
