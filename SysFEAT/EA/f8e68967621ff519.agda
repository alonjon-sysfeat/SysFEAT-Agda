{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Resource Operating Environment Scenario: 
A Resource Operating Environment Scenario is a story that describes how a Resource Agent Type interacts with its partners (Partner Resource Agent) to achieve Business Outcome Events in a specific Resource Operating Environment.This includes:1) A course of events represented by Resource Object Flows depicting the story towards the delivery of expected Business Outcome Events.2) Interacting partners who participate to the story in the considered Resource Operating Environment.
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
st-f8e6b5aa621ff8ec : ResourceOperatingEnvironmentScenario ⊏ₑ EnvironmentInteractionProcessType
st-f8e6b5aa621ff8ec = polySubTypeOf-identity

--  ResourceOperatingEnvironmentScenario is subTypeOf ResourceOperatingEcosystem
st-f8e6b7a8621ffea6 : ResourceOperatingEnvironmentScenario ⊏ₑ ResourceOperatingEcosystem
st-f8e6b7a8621ffea6 = polySubTypeOf-identity

-- == Relationships =======================

{- Scenarized Operating Environment: -}
scenarizedOperatingEnvironment :  Linkage ResourceOperatingEnvironmentScenario ResourceOperatingEnvironment
scenarizedOperatingEnvironment = make_classOfHolonymy "Scenarized Operating Environment" "scenarizedOperatingEnvironment"

postulate -- scenarizedOperatingEnvironment is subTypeOf performedInteraction
  st-f8e7d8be621f0722-26cb2d5769610945  : scenarizedOperatingEnvironment   ⊏⋆ᵣ  performedInteraction 

{- Resource Object Flow: -}
-- Aggregate Member : Resource Object Flow
ResourceObjectFlow : ClassOfClassOfIndividual
ResourceObjectFlow = ClassOfIndividual

-- Membership relation
membershipOfResourceObjectFlow :  Linkage ResourceOperatingEnvironmentScenario ResourceObjectFlow
membershipOfResourceObjectFlow = membershipOfAggregateMember

-- Aggregation relation
aggregationOfResourceOutcomeEventResourceObjectFlow :  Linkage ResourceObjectFlow ResourceOutcomeEvent
aggregationOfResourceOutcomeEventResourceObjectFlow = aggregationOfBuildingBlock

{- resourceObjectFlow : derived relation obtained by composing
   membershipOfResourceObjectFlow and aggregationOfResourceOutcomeEventResourceObjectFlow
   It directly links an Resource Operating Environment Scenario to the final aggregated ResourceOutcomeEvent
   hiding the reifying ResourceObjectFlow
-}
resourceObjectFlow : Linkage ResourceOperatingEnvironmentScenario ResourceOutcomeEvent
resourceObjectFlow = membershipOfResourceObjectFlow  ∘  aggregationOfResourceOutcomeEventResourceObjectFlow

{- Participant Enterprise Agent: -}
-- Aggregate Member : Participant Enterprise Agent
ParticipantEnterpriseAgent : ClassOfClassOfIndividual
ParticipantEnterpriseAgent = ClassOfIndividual

-- Membership relation
membershipOfParticipantEnterpriseAgent :  Linkage ResourceOperatingEnvironmentScenario ParticipantEnterpriseAgent
membershipOfParticipantEnterpriseAgent = membershipOfAggregateMember

-- Aggregation relation
aggregationOfResourceAgentTypeParticipantEnterpriseAgent :  Linkage ParticipantEnterpriseAgent ResourceAgentType
aggregationOfResourceAgentTypeParticipantEnterpriseAgent = aggregationOfBuildingBlock

{- participantEnterpriseAgent : derived relation obtained by composing
   membershipOfParticipantEnterpriseAgent and aggregationOfResourceAgentTypeParticipantEnterpriseAgent
   It directly links an Resource Operating Environment Scenario to the final aggregated ResourceAgentType
   hiding the reifying ParticipantEnterpriseAgent
-}
participantEnterpriseAgent : Linkage ResourceOperatingEnvironmentScenario ResourceAgentType
participantEnterpriseAgent = membershipOfParticipantEnterpriseAgent  ∘  aggregationOfResourceAgentTypeParticipantEnterpriseAgent

{- Subject Resource Agent: -}
-- Aggregate Member : Subject Resource Agent
SubjectResourceAgent : ClassOfClassOfIndividual
SubjectResourceAgent = ClassOfIndividual

-- Membership relation
membershipOfSubjectResourceAgent :  Linkage ResourceOperatingEnvironmentScenario SubjectResourceAgent
membershipOfSubjectResourceAgent = membershipOfAggregateMember

-- Aggregation relation
aggregationOfResourceAgentTypeSubjectResourceAgent :  Linkage SubjectResourceAgent ResourceAgentType
aggregationOfResourceAgentTypeSubjectResourceAgent = aggregationOfBuildingBlock

{- subjectResourceAgent : derived relation obtained by composing
   membershipOfSubjectResourceAgent and aggregationOfResourceAgentTypeSubjectResourceAgent
   It directly links an Resource Operating Environment Scenario to the final aggregated ResourceAgentType
   hiding the reifying SubjectResourceAgent
-}
subjectResourceAgent : Linkage ResourceOperatingEnvironmentScenario ResourceAgentType
subjectResourceAgent = membershipOfSubjectResourceAgent  ∘  aggregationOfResourceAgentTypeSubjectResourceAgent

{- Partner Resource Agent: -}
-- Aggregate Member : Partner Resource Agent
PartnerResourceAgent : ClassOfClassOfIndividual
PartnerResourceAgent = ClassOfIndividual

-- Membership relation
membershipOfPartnerResourceAgent :  Linkage ResourceOperatingEnvironmentScenario PartnerResourceAgent
membershipOfPartnerResourceAgent = membershipOfAggregateMember

-- Aggregation relation
aggregationOfResourceAgentTypePartnerResourceAgent :  Linkage PartnerResourceAgent ResourceAgentType
aggregationOfResourceAgentTypePartnerResourceAgent = aggregationOfBuildingBlock

{- partnerResourceAgent : derived relation obtained by composing
   membershipOfPartnerResourceAgent and aggregationOfResourceAgentTypePartnerResourceAgent
   It directly links an Resource Operating Environment Scenario to the final aggregated ResourceAgentType
   hiding the reifying PartnerResourceAgent
-}
partnerResourceAgent : Linkage ResourceOperatingEnvironmentScenario ResourceAgentType
partnerResourceAgent = membershipOfPartnerResourceAgent  ∘  aggregationOfResourceAgentTypePartnerResourceAgent
