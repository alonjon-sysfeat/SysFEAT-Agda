{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Resource Operating Environment Scenario: 
A Resource Operating Environment Scenario is a story that describes how a Resource Agent Type interacts with its partners (Partner Resource Agent) to achieve Business Outcome Events in a specific Resource Operating Environment.This includes:1) A course of events represented by Resource Object Flows depicting the story towards the delivery of expected Business Outcome Events.2) Interacting partners who participate to the story in the considered Resource Operating Environment.

Documentation : https://framework.sysfeat.com/pages/f8e68967621ff519.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.f8e68967621ff519 where -- ========== Resource Operating Environment Scenario

open import Agda.Primitive
open import SysFEAT.SOF.ca3513af5fc59413 public -- Environment Interaction Process Type
open import SysFEAT.EA.f8e64b51621dd3f3 public -- Resource Operating Ecosystem
open import SysFEAT.EA.f8e62fc5621fdcf4 public -- Resource Operating Environment
open import SysFEAT.EA.6a70c0b36787698c public -- Resource Outcome Event
open import SysFEAT.EA.e2ef091962147ad7 public -- Resource Agent Type

ResourceOperatingEnvironmentScenario : ClassOfClassOfBoundedIndividual
ResourceOperatingEnvironmentScenario = ClassOfBoundedIndividual


--  ResourceOperatingEnvironmentScenario is subTypeOf EnvironmentInteractionProcessType
st-f8e68967621ff519-ca3513af5fc59413 : ResourceOperatingEnvironmentScenario ⊏ₑ EnvironmentInteractionProcessType
st-f8e68967621ff519-ca3513af5fc59413 = polySubTypeOf-identity

--  ResourceOperatingEnvironmentScenario is subTypeOf ResourceOperatingEcosystem
st-f8e68967621ff519-f8e64b51621dd3f3 : ResourceOperatingEnvironmentScenario ⊏ₑ ResourceOperatingEcosystem
st-f8e68967621ff519-f8e64b51621dd3f3 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Scenarized Operating Environment: -}
scenarizedOperatingEnvironment :  Linkage ResourceOperatingEnvironmentScenario ResourceOperatingEnvironment
scenarizedOperatingEnvironment = make_classOfHolonymy "Scenarized Operating Environment" "Scenarized Operating Environment"

postulate -- scenarizedOperatingEnvironment is subTypeOf performedInteraction
  st-f8e7d8be621f0722-26cb2d5769610945  : scenarizedOperatingEnvironment  ⊏⋆ᵣ  performedInteraction

-- -------------------------------------------------------------------------------------------- 
{- Resource Object Flow: -}
-- Aggregate Member : Resource Object Flow
ResourceObjectFlow : ClassOfClassOfIndividual
ResourceObjectFlow = ClassOfIndividual


--  ResourceObjectFlow is subTypeOf EnterpriseEcosystemConnection
st-2b6f41d961baf74b-f8e7b91f621f01e9 : ResourceObjectFlow ⊏ₑ EnterpriseEcosystemConnection
st-2b6f41d961baf74b-f8e7b91f621f01e9 = polySubTypeOf-identity

--  ResourceObjectFlow is subTypeOf ObjectFlow
st-2b6f41d961baf74b-ca3519b05fc5a0b2 : ResourceObjectFlow ⊏ₑ ObjectFlow
st-2b6f41d961baf74b-ca3519b05fc5a0b2 = polySubTypeOf-identity

--  ResourceObjectFlow is subTypeOf BusinessEcosystemConnection
st-2b6f41d961baf74b-a813ce0063567e9b : ResourceObjectFlow ⊏ₑ BusinessEcosystemConnection
st-2b6f41d961baf74b-a813ce0063567e9b = polySubTypeOf-identity

--  ResourceObjectFlow is subTypeOf EnterpriseEcosystemConnection
st-2b6f41d961baf74b-f8e7b91f621f01e9 : ResourceObjectFlow ⊏ₑ EnterpriseEcosystemConnection
st-2b6f41d961baf74b-f8e7b91f621f01e9 = polySubTypeOf-identity

--  ResourceObjectFlow is subTypeOf BusinessEcosystemConnection
st-2b6f41d961baf74b-f8e7db56621f0cef : ResourceObjectFlow ⊏ₑ BusinessEcosystemConnection
st-2b6f41d961baf74b-f8e7db56621f0cef = polySubTypeOf-identity

-- Membership relation
membershipOfResourceObjectFlow :  Linkage ResourceOperatingEnvironmentScenario ResourceObjectFlow
membershipOfResourceObjectFlow = make_upwardNestingRelation "resourceObjectFlow membership" "nested resourceObjectFlow"

-- Aggregation relation
aggregationOfResourceOutcomeEventResourceObjectFlow :  Linkage ResourceObjectFlow ResourceOutcomeEvent
aggregationOfResourceOutcomeEventResourceObjectFlow = make_Relation "ResourceOutcomeEvent aggregation" "aggregated ResourceOutcomeEvent"

{- resourceObjectFlow : derived relation obtained by composing
   membershipOfResourceObjectFlow and aggregationOfResourceOutcomeEventResourceObjectFlow
   It directly links an Resource Operating Environment Scenario to the final aggregated ResourceOutcomeEvent
   hiding the reifying ResourceObjectFlow
-}
resourceObjectFlow : Linkage ResourceOperatingEnvironmentScenario ResourceOutcomeEvent
resourceObjectFlow = membershipOfResourceObjectFlow  ∘  aggregationOfResourceOutcomeEventResourceObjectFlow



-- -------------------------------------------------------------------------------------------- 
{- Participant Enterprise Agent: -}
-- Aggregate Member : Participant Enterprise Agent
ParticipantEnterpriseAgent : ClassOfClassOfBoundedIndividual
ParticipantEnterpriseAgent = ClassOfBoundedIndividual



--  ParticipantEnterpriseAgent is subTypeOf EnterpriseEcosystemPart
st-2b6f3bf061baf60a-f8e6b83c621fffe6 : ParticipantEnterpriseAgent ⊏ₑ EnterpriseEcosystemPart
st-2b6f3bf061baf60a-f8e6b83c621fffe6 = polySubTypeOf-identity

--  ParticipantEnterpriseAgent is subTypeOf ResourceEcosystemPart
st-2b6f3bf061baf60a-95129626620b544c : ParticipantEnterpriseAgent ⊏ₑ ResourceEcosystemPart
st-2b6f3bf061baf60a-95129626620b544c = polySubTypeOf-identity

--  ParticipantEnterpriseAgent is subTypeOf ScenarioParticipant
st-2b6f3bf061baf60a-ca3518a45fc59e76 : ParticipantEnterpriseAgent ⊏ₑ ScenarioParticipant
st-2b6f3bf061baf60a-ca3518a45fc59e76 = polySubTypeOf-identity

--  ParticipantEnterpriseAgent is subTypeOf BusinessEcosystemPart
st-2b6f3bf061baf60a-a813cb556356781f : ParticipantEnterpriseAgent ⊏ₑ BusinessEcosystemPart
st-2b6f3bf061baf60a-a813cb556356781f = polySubTypeOf-identity

--  ParticipantEnterpriseAgent is subTypeOf EnterpriseEcosystemPart
st-2b6f3bf061baf60a-f8e6b83c621fffe6 : ParticipantEnterpriseAgent ⊏ₑ EnterpriseEcosystemPart
st-2b6f3bf061baf60a-f8e6b83c621fffe6 = polySubTypeOf-identity

--  ParticipantEnterpriseAgent is subTypeOf ResourceAgentType
st-2b6f3bf061baf60a-e2ef091962147ad7 : ParticipantEnterpriseAgent ⊏ₑ ResourceAgentType
st-2b6f3bf061baf60a-e2ef091962147ad7 = polySubTypeOf-identity

-- Membership relation
membershipOfParticipantEnterpriseAgent :  Linkage ResourceOperatingEnvironmentScenario ParticipantEnterpriseAgent
membershipOfParticipantEnterpriseAgent = make_upwardNestingRelation "participantEnterpriseAgent membership" "nested participantEnterpriseAgent"

-- Aggregation relation
aggregationOfResourceAgentTypeParticipantEnterpriseAgent :  Linkage ParticipantEnterpriseAgent ResourceAgentType
aggregationOfResourceAgentTypeParticipantEnterpriseAgent = make_Relation "ResourceAgentType aggregation" "aggregated ResourceAgentType"

{- participantEnterpriseAgent : derived relation obtained by composing
   membershipOfParticipantEnterpriseAgent and aggregationOfResourceAgentTypeParticipantEnterpriseAgent
   It directly links an Resource Operating Environment Scenario to the final aggregated ResourceAgentType
   hiding the reifying ParticipantEnterpriseAgent
-}
participantEnterpriseAgent : Linkage ResourceOperatingEnvironmentScenario ResourceAgentType
participantEnterpriseAgent = membershipOfParticipantEnterpriseAgent  ∘  aggregationOfResourceAgentTypeParticipantEnterpriseAgent



-- -------------------------------------------------------------------------------------------- 
{- Subject Resource Agent: -}
-- Aggregate Member : Subject Resource Agent
SubjectResourceAgent : ClassOfClassOfBoundedIndividual
SubjectResourceAgent = ClassOfBoundedIndividual



--  SubjectResourceAgent is subTypeOf SubjectAgent
st-f8e6b637621ffa9b-ca3514125fc59538 : SubjectResourceAgent ⊏ₑ SubjectAgent
st-f8e6b637621ffa9b-ca3514125fc59538 = polySubTypeOf-identity

--  SubjectResourceAgent is subTypeOf ParticipantEnterpriseAgent
st-f8e6b637621ffa9b-2b6f3bf061baf60a : SubjectResourceAgent ⊏ₑ ParticipantEnterpriseAgent
st-f8e6b637621ffa9b-2b6f3bf061baf60a = polySubTypeOf-identity

--  SubjectResourceAgent is subTypeOf ResourceAgentType
st-f8e6b637621ffa9b-e2ef091962147ad7 : SubjectResourceAgent ⊏ₑ ResourceAgentType
st-f8e6b637621ffa9b-e2ef091962147ad7 = polySubTypeOf-identity

-- Membership relation
membershipOfSubjectResourceAgent :  Linkage ResourceOperatingEnvironmentScenario SubjectResourceAgent
membershipOfSubjectResourceAgent = make_upwardNestingRelation "subjectResourceAgent membership" "nested subjectResourceAgent"

-- Aggregation relation
aggregationOfResourceAgentTypeSubjectResourceAgent :  Linkage SubjectResourceAgent ResourceAgentType
aggregationOfResourceAgentTypeSubjectResourceAgent = make_Relation "ResourceAgentType aggregation" "aggregated ResourceAgentType"

{- subjectResourceAgent : derived relation obtained by composing
   membershipOfSubjectResourceAgent and aggregationOfResourceAgentTypeSubjectResourceAgent
   It directly links an Resource Operating Environment Scenario to the final aggregated ResourceAgentType
   hiding the reifying SubjectResourceAgent
-}
subjectResourceAgent : Linkage ResourceOperatingEnvironmentScenario ResourceAgentType
subjectResourceAgent = membershipOfSubjectResourceAgent  ∘  aggregationOfResourceAgentTypeSubjectResourceAgent



-- -------------------------------------------------------------------------------------------- 
{- Partner Resource Agent: -}
-- Aggregate Member : Partner Resource Agent
PartnerResourceAgent : ClassOfClassOfBoundedIndividual
PartnerResourceAgent = ClassOfBoundedIndividual



--  PartnerResourceAgent is subTypeOf ParticipantEnterpriseAgent
st-f8e6b685621ffb8a-2b6f3bf061baf60a : PartnerResourceAgent ⊏ₑ ParticipantEnterpriseAgent
st-f8e6b685621ffb8a-2b6f3bf061baf60a = polySubTypeOf-identity

--  PartnerResourceAgent is subTypeOf PartnerAgent
st-f8e6b685621ffb8a-ca35159e5fc5978d : PartnerResourceAgent ⊏ₑ PartnerAgent
st-f8e6b685621ffb8a-ca35159e5fc5978d = polySubTypeOf-identity

--  PartnerResourceAgent is subTypeOf ResourceAgentType
st-f8e6b685621ffb8a-e2ef091962147ad7 : PartnerResourceAgent ⊏ₑ ResourceAgentType
st-f8e6b685621ffb8a-e2ef091962147ad7 = polySubTypeOf-identity

-- Membership relation
membershipOfPartnerResourceAgent :  Linkage ResourceOperatingEnvironmentScenario PartnerResourceAgent
membershipOfPartnerResourceAgent = make_upwardNestingRelation "partnerResourceAgent membership" "nested partnerResourceAgent"

-- Aggregation relation
aggregationOfResourceAgentTypePartnerResourceAgent :  Linkage PartnerResourceAgent ResourceAgentType
aggregationOfResourceAgentTypePartnerResourceAgent = make_Relation "ResourceAgentType aggregation" "aggregated ResourceAgentType"

{- partnerResourceAgent : derived relation obtained by composing
   membershipOfPartnerResourceAgent and aggregationOfResourceAgentTypePartnerResourceAgent
   It directly links an Resource Operating Environment Scenario to the final aggregated ResourceAgentType
   hiding the reifying PartnerResourceAgent
-}
partnerResourceAgent : Linkage ResourceOperatingEnvironmentScenario ResourceAgentType
partnerResourceAgent = membershipOfPartnerResourceAgent  ∘  aggregationOfResourceAgentTypePartnerResourceAgent


