{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Software System Environment Scenario: 
A Software System Environment Scenario is a story involving the partners of a Business Software System (Partner System), interacting in order to produce Information Outcome Events in a specific Eco-System (Software System Environment).This includes:- A course of events represented by Object Flows depicting the story towards the delivery of expected Information Outcome Events.- Interacting partners who participate to the story in the considered Eco-System.

Documentation : https://framework.sysfeat.com/pages/25c0a10061e2fc12.htm

External references:
  OpenGroup - ArchiMate - Application Interaction: https://pubs.opengroup.org/architecture/archimate32-doc/ch-Application-Layer.html#sec-Application-Interaction
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
st-25c0a10061e2fc12-4edf5eab5fc58ef3 : SOftwareSystemEnvironmentScenario ⊏ₑ BusinessSystemEnvironmentSxcenario
st-25c0a10061e2fc12-4edf5eab5fc58ef3 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Scenarized Software System Environment: -}
scenarizedSOftwareSystemEnvironment :  Linkage SOftwareSystemEnvironmentScenario SOftwareSystemEnvironment
scenarizedSOftwareSystemEnvironment = make_classOfHolonymy "Scenarized Software System Environment" "Scenarized Software System Environment"

postulate -- scenarizedSOftwareSystemEnvironment is subTypeOf scenarizedSystemEnvironment
  st-25c1a3fc61e201e4-25c1a95361e21158  : scenarizedSOftwareSystemEnvironment  ⊏⋆ᵣ  scenarizedSystemEnvironment

-- -------------------------------------------------------------------------------------------- 
{- Application Flow: -}
-- Aggregate Member : Application Flow
ApplicationFlow : ClassOfClassOfIndividual
ApplicationFlow = ClassOfIndividual


--  ApplicationFlow is subTypeOf ResourceObjectFlow
st-4edf6e9f5fc5b0b1-2b6f41d961baf74b : ApplicationFlow ⊏ₑ ResourceObjectFlow
st-4edf6e9f5fc5b0b1-2b6f41d961baf74b = polySubTypeOf-identity

-- Membership relation
membershipOfApplicationFlow :  Linkage SOftwareSystemEnvironmentScenario ApplicationFlow
membershipOfApplicationFlow = make_upwardNestingRelation "applicationFlow membership" "nested applicationFlow"

-- Aggregation relation
aggregationOfInformationOutcomeEventApplicationFlow :  Linkage ApplicationFlow InformationOutcomeEvent
aggregationOfInformationOutcomeEventApplicationFlow = make_Relation "InformationOutcomeEvent aggregation" "aggregated InformationOutcomeEvent"

{- applicationFlow : derived relation obtained by composing
   membershipOfApplicationFlow and aggregationOfInformationOutcomeEventApplicationFlow
   It directly links an Software System Environment Scenario to the final aggregated InformationOutcomeEvent
   hiding the reifying ApplicationFlow
-}
applicationFlow : Linkage SOftwareSystemEnvironmentScenario InformationOutcomeEvent
applicationFlow = membershipOfApplicationFlow  ∘  aggregationOfInformationOutcomeEventApplicationFlow



-- -------------------------------------------------------------------------------------------- 
{- Participant Software: -}
-- Aggregate Member : Participant Software
ParticipantSOftware : ClassOfClassOfBoundedIndividual
ParticipantSOftware = ClassOfBoundedIndividual



--  ParticipantSOftware is subTypeOf BusinessSOftwareSystem
st-25c1a32461e200b5-d6cd02865ab966e8 : ParticipantSOftware ⊏ₑ BusinessSOftwareSystem
st-25c1a32461e200b5-d6cd02865ab966e8 = polySubTypeOf-identity

-- Membership relation
membershipOfParticipantSOftware :  Linkage SOftwareSystemEnvironmentScenario ParticipantSOftware
membershipOfParticipantSOftware = make_upwardNestingRelation "participantSOftware membership" "nested participantSOftware"

-- Aggregation relation
aggregationOfBusinessSOftwareSystemParticipantSOftware :  Linkage ParticipantSOftware BusinessSOftwareSystem
aggregationOfBusinessSOftwareSystemParticipantSOftware = make_Relation "BusinessSOftwareSystem aggregation" "aggregated BusinessSOftwareSystem"

{- participantSOftware : derived relation obtained by composing
   membershipOfParticipantSOftware and aggregationOfBusinessSOftwareSystemParticipantSOftware
   It directly links an Software System Environment Scenario to the final aggregated BusinessSOftwareSystem
   hiding the reifying ParticipantSOftware
-}
participantSOftware : Linkage SOftwareSystemEnvironmentScenario BusinessSOftwareSystem
participantSOftware = membershipOfParticipantSOftware  ∘  aggregationOfBusinessSOftwareSystemParticipantSOftware



-- -------------------------------------------------------------------------------------------- 
{- Partner Software System: -}
-- Aggregate Member : Partner Software System
PartnerSOftwareSystem : ClassOfClassOfBoundedIndividual
PartnerSOftwareSystem = ClassOfBoundedIndividual



--  PartnerSOftwareSystem is subTypeOf PartnerSystem
st-25c1a53f61e20355-4edf5f445fc591d8 : PartnerSOftwareSystem ⊏ₑ PartnerSystem
st-25c1a53f61e20355-4edf5f445fc591d8 = polySubTypeOf-identity

--  PartnerSOftwareSystem is subTypeOf ParticipantSystem
st-25c1a53f61e20355-4edf5fa95fc593f0 : PartnerSOftwareSystem ⊏ₑ ParticipantSystem
st-25c1a53f61e20355-4edf5fa95fc593f0 = polySubTypeOf-identity

--  PartnerSOftwareSystem is subTypeOf ParticipantSOftware
st-25c1a53f61e20355-25c1a32461e200b5 : PartnerSOftwareSystem ⊏ₑ ParticipantSOftware
st-25c1a53f61e20355-25c1a32461e200b5 = polySubTypeOf-identity

--  PartnerSOftwareSystem is subTypeOf BusinessSOftwareSystem
st-25c1a53f61e20355-d6cd02865ab966e8 : PartnerSOftwareSystem ⊏ₑ BusinessSOftwareSystem
st-25c1a53f61e20355-d6cd02865ab966e8 = polySubTypeOf-identity

-- Membership relation
membershipOfPartnerSOftwareSystem :  Linkage SOftwareSystemEnvironmentScenario PartnerSOftwareSystem
membershipOfPartnerSOftwareSystem = make_upwardNestingRelation "partnerSOftwareSystem membership" "nested partnerSOftwareSystem"

-- Aggregation relation
aggregationOfBusinessSOftwareSystemPartnerSOftwareSystem :  Linkage PartnerSOftwareSystem BusinessSOftwareSystem
aggregationOfBusinessSOftwareSystemPartnerSOftwareSystem = make_Relation "BusinessSOftwareSystem aggregation" "aggregated BusinessSOftwareSystem"

{- partnerSOftwareSystem : derived relation obtained by composing
   membershipOfPartnerSOftwareSystem and aggregationOfBusinessSOftwareSystemPartnerSOftwareSystem
   It directly links an Software System Environment Scenario to the final aggregated BusinessSOftwareSystem
   hiding the reifying PartnerSOftwareSystem
-}
partnerSOftwareSystem : Linkage SOftwareSystemEnvironmentScenario BusinessSOftwareSystem
partnerSOftwareSystem = membershipOfPartnerSOftwareSystem  ∘  aggregationOfBusinessSOftwareSystemPartnerSOftwareSystem



-- -------------------------------------------------------------------------------------------- 
{- Subject Software System: -}
-- Aggregate Member : Subject Software System
SubjectSOftwareSystem : ClassOfClassOfBoundedIndividual
SubjectSOftwareSystem = ClassOfBoundedIndividual



--  SubjectSOftwareSystem is subTypeOf SubjectSystem
st-25c1a55461e20430-4edf5f1f5fc590f0 : SubjectSOftwareSystem ⊏ₑ SubjectSystem
st-25c1a55461e20430-4edf5f1f5fc590f0 = polySubTypeOf-identity

--  SubjectSOftwareSystem is subTypeOf ParticipantSOftware
st-25c1a55461e20430-25c1a32461e200b5 : SubjectSOftwareSystem ⊏ₑ ParticipantSOftware
st-25c1a55461e20430-25c1a32461e200b5 = polySubTypeOf-identity

--  SubjectSOftwareSystem is subTypeOf BusinessSOftwareSystem
st-25c1a55461e20430-d6cd02865ab966e8 : SubjectSOftwareSystem ⊏ₑ BusinessSOftwareSystem
st-25c1a55461e20430-d6cd02865ab966e8 = polySubTypeOf-identity

-- Membership relation
membershipOfSubjectSOftwareSystem :  Linkage SOftwareSystemEnvironmentScenario SubjectSOftwareSystem
membershipOfSubjectSOftwareSystem = make_upwardNestingRelation "subjectSOftwareSystem membership" "nested subjectSOftwareSystem"

-- Aggregation relation
aggregationOfBusinessSOftwareSystemSubjectSOftwareSystem :  Linkage SubjectSOftwareSystem BusinessSOftwareSystem
aggregationOfBusinessSOftwareSystemSubjectSOftwareSystem = make_Relation "BusinessSOftwareSystem aggregation" "aggregated BusinessSOftwareSystem"

{- subjectSOftwareSystem : derived relation obtained by composing
   membershipOfSubjectSOftwareSystem and aggregationOfBusinessSOftwareSystemSubjectSOftwareSystem
   It directly links an Software System Environment Scenario to the final aggregated BusinessSOftwareSystem
   hiding the reifying SubjectSOftwareSystem
-}
subjectSOftwareSystem : Linkage SOftwareSystemEnvironmentScenario BusinessSOftwareSystem
subjectSOftwareSystem = membershipOfSubjectSOftwareSystem  ∘  aggregationOfBusinessSOftwareSystemSubjectSOftwareSystem


