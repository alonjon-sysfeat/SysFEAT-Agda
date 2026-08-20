{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Environment Interaction Process Type: 
An Environment Interaction Process Type is a story that describes how an Agent Type interacts with its partners (Partner Agent) to achieve Outcome Events in a specific Operating Eco-System (Agent Type Environment).This includes:1) A course of events represented by Object Flows depicting the succession of intermediate Outcome Events towards the production and consumption of final Outcome Events.2) Interacting partners who participate to the story in the considered Operating Eco-System.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.ca3513af5fc59413 where -- ========== Environment Interaction Process Type

open import Agda.Primitive
open import SysFEAT.SOF.ca35f48a5fc48686 public -- Operating Eco-System
open import SysFEAT.SOF.30223b5c5ec90c01 public -- Outcome Event
open import SysFEAT.SOF.79368381561716a6 public -- Agent Type

EnvironmentInteractionProcessType : ClassOfClassOfBoundedIndividual
EnvironmentInteractionProcessType = ClassOfBoundedIndividual

--  EnvironmentInteractionProcessType is subTypeOf OperatingEcoSystem
st-ca3513df5fc594e3 : EnvironmentInteractionProcessType ⊏ₑ OperatingEcoSystem
st-ca3513df5fc594e3 = polySubTypeOf-identity

-- == Relationships =======================

{- Object Flow: -}
-- Aggregate Member : Object Flow
ObjectFlow : ClassOfClassOfIndividual
ObjectFlow = ClassOfIndividual

-- Membership relation
membershipOfObjectFlow :  Linkage EnvironmentInteractionProcessType ObjectFlow
membershipOfObjectFlow = membershipOfAggregateMember

-- Aggregation relation
aggregationOfOutcomeEventObjectFlow :  Linkage ObjectFlow OutcomeEvent
aggregationOfOutcomeEventObjectFlow = aggregationOfBuildingBlock

{- objectFlow : derived relation obtained by composing
   membershipOfObjectFlow and aggregationOfOutcomeEventObjectFlow
   It directly links an Environment Interaction Process Type to the final aggregated OutcomeEvent
   hiding the reifying ObjectFlow
-}
objectFlow : Linkage EnvironmentInteractionProcessType OutcomeEvent
objectFlow = membershipOfObjectFlow  ∘  aggregationOfOutcomeEventObjectFlow

{- Subject Agent: 
Agent Type that is the subject of the Environment Interaction Process Type.
-}
-- Aggregate Member : Subject Agent
SubjectAgent : ClassOfClassOfIndividual
SubjectAgent = ClassOfIndividual

-- Membership relation
membershipOfSubjectAgent :  Linkage EnvironmentInteractionProcessType SubjectAgent
membershipOfSubjectAgent = membershipOfAggregateMember

-- Aggregation relation
aggregationOfAgentTypeSubjectAgent :  Linkage SubjectAgent AgentType
aggregationOfAgentTypeSubjectAgent = aggregationOfBuildingBlock

{- subjectAgent : derived relation obtained by composing
   membershipOfSubjectAgent and aggregationOfAgentTypeSubjectAgent
   It directly links an Environment Interaction Process Type to the final aggregated AgentType
   hiding the reifying SubjectAgent
-}
subjectAgent : Linkage EnvironmentInteractionProcessType AgentType
subjectAgent = membershipOfSubjectAgent  ∘  aggregationOfAgentTypeSubjectAgent

{- Partner Agent: 
Agent Types which are partners of the Subject Agent of an Environment Interaction Process Type.
-}
-- Aggregate Member : Partner Agent
PartnerAgent : ClassOfClassOfIndividual
PartnerAgent = ClassOfIndividual

-- Membership relation
membershipOfPartnerAgent :  Linkage EnvironmentInteractionProcessType PartnerAgent
membershipOfPartnerAgent = membershipOfAggregateMember

-- Aggregation relation
aggregationOfAgentTypePartnerAgent :  Linkage PartnerAgent AgentType
aggregationOfAgentTypePartnerAgent = aggregationOfBuildingBlock

{- partnerAgent : derived relation obtained by composing
   membershipOfPartnerAgent and aggregationOfAgentTypePartnerAgent
   It directly links an Environment Interaction Process Type to the final aggregated AgentType
   hiding the reifying PartnerAgent
-}
partnerAgent : Linkage EnvironmentInteractionProcessType AgentType
partnerAgent = membershipOfPartnerAgent  ∘  aggregationOfAgentTypePartnerAgent

{- Scenario Participant: -}
-- Aggregate Member : Scenario Participant
ScenarioParticipant : ClassOfClassOfIndividual
ScenarioParticipant = ClassOfIndividual

-- Membership relation
membershipOfScenarioParticipant :  Linkage EnvironmentInteractionProcessType ScenarioParticipant
membershipOfScenarioParticipant = membershipOfAggregateMember

-- Aggregation relation
aggregationOfAgentTypeScenarioParticipant :  Linkage ScenarioParticipant AgentType
aggregationOfAgentTypeScenarioParticipant = aggregationOfBuildingBlock

{- scenarioParticipant : derived relation obtained by composing
   membershipOfScenarioParticipant and aggregationOfAgentTypeScenarioParticipant
   It directly links an Environment Interaction Process Type to the final aggregated AgentType
   hiding the reifying ScenarioParticipant
-}
scenarioParticipant : Linkage EnvironmentInteractionProcessType AgentType
scenarioParticipant = membershipOfScenarioParticipant  ∘  aggregationOfAgentTypeScenarioParticipant
