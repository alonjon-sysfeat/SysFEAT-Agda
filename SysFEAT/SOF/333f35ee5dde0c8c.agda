{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Interaction Process Type: 
An Interaction Process Type is a story (Behavior Type) that describes how the components of an Agent Type interacts to produce and consume Outcome Events.This includes:1) A course of events represented by Object Flows depicting the succesion of  intermediate Outcome Events towards the production of the final Outcome Events.2) Interacting Agent Types who participate to the story.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.333f35ee5dde0c8c where -- ========== Interaction Process Type

open import Agda.Primitive
open import SysFEAT.SOF.986cd4ec5ffca3ac public -- Behavior Type
open import SysFEAT.SOF.30223b5c5ec90c01 public -- Outcome Event
open import SysFEAT.SOF.79368381561716a6 public -- Agent Type

InteractionProcessType : ClassOfClassOfBoundedIndividual
InteractionProcessType = ClassOfBoundedIndividual

postulate --  InteractionProcessType is subTypeOf BehaviorType
  st-ca35f4485fc4863d : InteractionProcessType ⊏ₑ BehaviorType

-- == Relationships =======================

{- Specialized Scenario: -}
specializedScenario :  Linkage InteractionProcessType InteractionProcessType
specializedScenario = make_subTypeOf "Specialized Scenario" "specializedScenario"

postulate -- specializedScenario is subTypeOf specializedBehavior
  st-325a373a66f33d61-2b5b452d66ed5855  : specializedScenario   ⊏⋆ᵣ  specializedBehavior 

{- Realized Scenario: -}
realizedScenario :  Linkage InteractionProcessType InteractionProcessType
realizedScenario = make_subTypeOf "Realized Scenario" "realizedScenario"

postulate -- realizedScenario is subTypeOf realizedBehavior
  st-325a3a0e66f356d7-2b5b45a466ed5920  : realizedScenario   ⊏⋆ᵣ  realizedBehavior 

{- Interaction Flow: -}
-- Aggregate Member : Interaction Flow
InteractionFlow : ClassOfClassOfIndividual
InteractionFlow = ClassOfIndividual

-- Membership relation
membershipOfInteractionFlow :  Linkage InteractionProcessType InteractionFlow
membershipOfInteractionFlow = membershipOfAggregateMember

-- Aggregation relation
aggregationOfOutcomeEventInteractionFlow :  Linkage InteractionFlow OutcomeEvent
aggregationOfOutcomeEventInteractionFlow = aggregationOfBuildingBlock

{- interactionFlow : derived relation obtained by composing
   membershipOfInteractionFlow and aggregationOfOutcomeEventInteractionFlow
   It directly links an Interaction Process Type to the final aggregated OutcomeEvent
   hiding the reifying InteractionFlow
-}
interactionFlow : Linkage InteractionProcessType OutcomeEvent
interactionFlow = membershipOfInteractionFlow  ∘  aggregationOfOutcomeEventInteractionFlow

{- Scenario Participant: 
A Scenario Participant is a Behavior Participant engaged in Interaction Flow the context of an Interaction Process Type.
-}
-- Aggregate Member : Scenario Participant
ScenarioParticipant : ClassOfClassOfIndividual
ScenarioParticipant = ClassOfIndividual

-- Membership relation
membershipOfScenarioParticipant :  Linkage InteractionProcessType ScenarioParticipant
membershipOfScenarioParticipant = membershipOfAggregateMember

-- Aggregation relation
aggregationOfAgentTypeScenarioParticipant :  Linkage ScenarioParticipant AgentType
aggregationOfAgentTypeScenarioParticipant = aggregationOfBuildingBlock

{- scenarioParticipant : derived relation obtained by composing
   membershipOfScenarioParticipant and aggregationOfAgentTypeScenarioParticipant
   It directly links an Interaction Process Type to the final aggregated AgentType
   hiding the reifying ScenarioParticipant
-}
scenarioParticipant : Linkage InteractionProcessType AgentType
scenarioParticipant = membershipOfScenarioParticipant  ∘  aggregationOfAgentTypeScenarioParticipant
