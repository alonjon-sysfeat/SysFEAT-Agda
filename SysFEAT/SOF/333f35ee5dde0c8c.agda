{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Interaction Process Type: 
An Interaction Process Type is a story (Behavior Type) that describes how the components of an Agent Type interacts to produce and consume Outcome Events.This includes:1) A course of events represented by Object Flows depicting the succesion of  intermediate Outcome Events towards the production of the final Outcome Events.2) Interacting Agent Types who participate to the story.

Documentation : https://framework.sysfeat.com/pages/333f35ee5dde0c8c.htm

External references:
  OMG - UAF - InteractionScenario: https://www.omg.org/spec/UAF/1.2/Beta1/DMM/PDF#InteractionScenario
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.333f35ee5dde0c8c where -- ========== Interaction Process Type

open import Agda.Primitive
open import SysFEAT.SOF.986cd4ec5ffca3ac public -- Behavior Type
open import SysFEAT.SOF.30223b5c5ec90c01 public -- Outcome Event
open import SysFEAT.SOF.79368381561716a6 public -- Agent Type

InteractionProcessType : ClassOfClassOfBoundedIndividual
InteractionProcessType = ClassOfBoundedIndividual

--  InteractionProcessType is subTypeOf BehaviorType
st-333f35ee5dde0c8c-986cd4ec5ffca3ac : InteractionProcessType ⊏ₑ BehaviorType
st-333f35ee5dde0c8c-986cd4ec5ffca3ac = polySubTypeOf-identity


-- == Relations =======================

{- Specialized Scenario: -}
specializedScenario :  Linkage InteractionProcessType InteractionProcessType
specializedScenario = make_subTypeOf "Specialized Scenario" "Specialized Scenario"

postulate -- specializedScenario is subTypeOf specializedBehavior
  st-325a373a66f33d61-2b5b452d66ed5855  : specializedScenario   ⊏⋆ᵣ  specializedBehavior 

{- Realized Scenario: -}
realizedScenario :  Linkage InteractionProcessType InteractionProcessType
realizedScenario = make_subTypeOf "Realized Scenario" "Realized Scenario"

postulate -- realizedScenario is subTypeOf realizedBehavior
  st-325a3a0e66f356d7-2b5b45a466ed5920  : realizedScenario   ⊏⋆ᵣ  realizedBehavior 

{- Interaction Flow: -}
-- Aggregate Member : Interaction Flow
InteractionFlow : AggregateHolonymyType
InteractionFlow = AggregateHolonymy


-- Membership relation
membershipOfInteractionFlow :  Linkage InteractionProcessType InteractionFlow
membershipOfInteractionFlow = make_upwardNestingRelation "interactionFlow membership" "nested interactionFlow"

-- Aggregation relation
aggregationOfOutcomeEventInteractionFlow :  Linkage InteractionFlow OutcomeEvent
aggregationOfOutcomeEventInteractionFlow = make_Relation "OutcomeEvent aggregation" "aggregated OutcomeEvent"

{- interactionFlow : derived relation obtained by composing
   membershipOfInteractionFlow and aggregationOfOutcomeEventInteractionFlow
   It directly links an Interaction Process Type to the final aggregated OutcomeEvent
   hiding the reifying InteractionFlow
-}
interactionFlow : Linkage InteractionProcessType OutcomeEvent
interactionFlow = membershipOfInteractionFlow  ∘  aggregationOfOutcomeEventInteractionFlow

postulate -- interactionFlow is subTypeOf temporalOrderingType
  st-7d33fa1762813f5c-2557481f6758a91a  : interactionFlow   ⊏⋆ᵣ  temporalOrderingType 
postulate -- interactionFlow is subTypeOf behaviorPart
  st-7d33fa1762813f5c-b776b92668b04c85  : interactionFlow   ⊏⋆ᵣ  behaviorPart 


{- Scenario Participant: 
A Scenario Participant is a Behavior Participant engaged in Interaction Flow the context of an Interaction Process Type.
-}
-- Aggregate Member : Scenario Participant
ScenarioParticipant : AggregateHolonymyType
ScenarioParticipant = AggregateHolonymy


-- Membership relation
membershipOfScenarioParticipant :  Linkage InteractionProcessType ScenarioParticipant
membershipOfScenarioParticipant = make_upwardNestingRelation "scenarioParticipant membership" "nested scenarioParticipant"

-- Aggregation relation
aggregationOfAgentTypeScenarioParticipant :  Linkage ScenarioParticipant AgentType
aggregationOfAgentTypeScenarioParticipant = make_Relation "AgentType aggregation" "aggregated AgentType"

{- scenarioParticipant : derived relation obtained by composing
   membershipOfScenarioParticipant and aggregationOfAgentTypeScenarioParticipant
   It directly links an Interaction Process Type to the final aggregated AgentType
   hiding the reifying ScenarioParticipant
-}
scenarioParticipant : Linkage InteractionProcessType AgentType
scenarioParticipant = membershipOfScenarioParticipant  ∘  aggregationOfAgentTypeScenarioParticipant

postulate -- scenarioParticipant is subTypeOf behaviorParticipant
  st-07e737495eccd831-e0e86fad65789c43  : scenarioParticipant   ⊏⋆ᵣ  behaviorParticipant 

