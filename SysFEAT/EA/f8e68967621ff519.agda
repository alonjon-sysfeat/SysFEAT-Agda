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

-- == Relationships =======================

{- Scenarized Operating Environment: -}
scenarizedOperatingEnvironment :  Linkage ResourceOperatingEnvironmentScenario ResourceOperatingEnvironment
scenarizedOperatingEnvironment = make_classOfHolonymy "Scenarized Operating Environment" "Scenarized Operating Environment"

postulate -- scenarizedOperatingEnvironment is subTypeOf performedInteraction
  st-f8e7d8be621f0722-26cb2d5769610945  : scenarizedOperatingEnvironment   ⊏⋆ᵣ  performedInteraction 

{- Resource Object Flow: -}
-- Aggregate Member : Resource Object Flow
ResourceObjectFlow : ClassOfClassOfIndividual
ResourceObjectFlow = ClassOfIndividual

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

postulate -- resourceObjectFlow is subTypeOf enterpriseEcosystemConnection
  st-2b6f41d961baf74b-f8e7b91f621f01e9  : resourceObjectFlow   ⊏⋆ᵣ  enterpriseEcosystemConnection 
postulate -- resourceObjectFlow is subTypeOf objectFlow
  st-2b6f41d961baf74b-ca3519b05fc5a0b2  : resourceObjectFlow   ⊏⋆ᵣ  objectFlow 
postulate -- resourceObjectFlow is subTypeOf businessEcosystemConnection
  st-2b6f41d961baf74b-a813ce0063567e9b  : resourceObjectFlow   ⊏⋆ᵣ  businessEcosystemConnection 
postulate -- resourceObjectFlow is subTypeOf enterpriseEcosystemConnection
  st-2b6f41d961baf74b-f8e7b91f621f01e9  : resourceObjectFlow   ⊏⋆ᵣ  enterpriseEcosystemConnection 
postulate -- resourceObjectFlow is subTypeOf businessEcosystemConnection
  st-2b6f41d961baf74b-f8e7db56621f0cef  : resourceObjectFlow   ⊏⋆ᵣ  businessEcosystemConnection 


{- Participant Enterprise Agent: -}
-- Aggregate Member : Participant Enterprise Agent
ParticipantEnterpriseAgent : ClassOfClassOfIndividual
ParticipantEnterpriseAgent = ClassOfIndividual

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

postulate -- participantEnterpriseAgent is subTypeOf enterpriseEcosystemPart
  st-2b6f3bf061baf60a-f8e6b83c621fffe6  : participantEnterpriseAgent   ⊏⋆ᵣ  enterpriseEcosystemPart 
postulate -- participantEnterpriseAgent is subTypeOf resourceEcosystemPart
  st-2b6f3bf061baf60a-95129626620b544c  : participantEnterpriseAgent   ⊏⋆ᵣ  resourceEcosystemPart 
postulate -- participantEnterpriseAgent is subTypeOf scenarioParticipant
  st-2b6f3bf061baf60a-ca3518a45fc59e76  : participantEnterpriseAgent   ⊏⋆ᵣ  scenarioParticipant 
postulate -- participantEnterpriseAgent is subTypeOf businessEcosystemPart
  st-2b6f3bf061baf60a-a813cb556356781f  : participantEnterpriseAgent   ⊏⋆ᵣ  businessEcosystemPart 
postulate -- participantEnterpriseAgent is subTypeOf enterpriseEcosystemPart
  st-2b6f3bf061baf60a-f8e6b83c621fffe6  : participantEnterpriseAgent   ⊏⋆ᵣ  enterpriseEcosystemPart 


{- Subject Resource Agent: -}
-- Aggregate Member : Subject Resource Agent
SubjectResourceAgent : ClassOfClassOfIndividual
SubjectResourceAgent = ClassOfIndividual

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

postulate -- subjectResourceAgent is subTypeOf subjectAgent
  st-f8e6b637621ffa9b-ca3514125fc59538  : subjectResourceAgent   ⊏⋆ᵣ  subjectAgent 
postulate -- subjectResourceAgent is subTypeOf participantEnterpriseAgent
  st-f8e6b637621ffa9b-2b6f3bf061baf60a  : subjectResourceAgent   ⊏⋆ᵣ  participantEnterpriseAgent 


{- Partner Resource Agent: -}
-- Aggregate Member : Partner Resource Agent
PartnerResourceAgent : ClassOfClassOfIndividual
PartnerResourceAgent = ClassOfIndividual

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

postulate -- partnerResourceAgent is subTypeOf participantEnterpriseAgent
  st-f8e6b685621ffb8a-2b6f3bf061baf60a  : partnerResourceAgent   ⊏⋆ᵣ  participantEnterpriseAgent 
postulate -- partnerResourceAgent is subTypeOf partnerAgent
  st-f8e6b685621ffb8a-ca35159e5fc5978d  : partnerResourceAgent   ⊏⋆ᵣ  partnerAgent 

