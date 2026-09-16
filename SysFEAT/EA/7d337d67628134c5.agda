{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Resource Interaction Process: 
A Resource Interaction Process is a story that describes how the components of a Resource Agent Type interacts to produce and consume Resource Outcome Events.This includes:1) A course of events represented by Resource Object Flows depicting the steps towards the delivery of expected Resource Outcome Events.2) Interacting Resource Agent Types who participate to the story.

Documentation : https://framework.sysfeat.com/pages/7d337d67628134c5.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.7d337d67628134c5 where -- ========== Resource Interaction Process

open import Agda.Primitive
open import SysFEAT.EA.0185cd936221bd72 public -- Resource Behavior
open import SysFEAT.SOF.333f35ee5dde0c8c public -- Interaction Process Type
open import SysFEAT.EA.6a70c0b36787698c public -- Resource Outcome Event
open import SysFEAT.EA.e2ef091962147ad7 public -- Resource Agent Type

ResourceInteractionProcess : ClassOfClassOfBoundedIndividual
ResourceInteractionProcess = ClassOfBoundedIndividual

--  ResourceInteractionProcess is subTypeOf ResourceBehavior
st-7d337d67628134c5-0185cd936221bd72 : ResourceInteractionProcess ⊏ₑ ResourceBehavior
st-7d337d67628134c5-0185cd936221bd72 = polySubTypeOf-identity

--  ResourceInteractionProcess is subTypeOf InteractionProcessType
st-7d337d67628134c5-333f35ee5dde0c8c : ResourceInteractionProcess ⊏ₑ InteractionProcessType
st-7d337d67628134c5-333f35ee5dde0c8c = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Enterprise Scenario: -}
specializedEnterpriseScenario :  Linkage ResourceInteractionProcess ResourceInteractionProcess
specializedEnterpriseScenario = make_subTypeOf "Specialized Enterprise Scenario" "Specialized Enterprise Scenario"

postulate -- specializedEnterpriseScenario is subTypeOf specializedResourceBehavior
  st-325a37b666f34c03-325a376866f343d3  : specializedEnterpriseScenario   ⊏⋆ᵣ  specializedResourceBehavior 
postulate -- specializedEnterpriseScenario is subTypeOf specializedScenario
  st-325a37b666f34c03-325a373a66f33d61  : specializedEnterpriseScenario   ⊏⋆ᵣ  specializedScenario 

{- Realized Enterprise Scenario: -}
realizedEnterpriseScenario :  Linkage ResourceInteractionProcess ResourceInteractionProcess
realizedEnterpriseScenario = make_subTypeOf "Realized Enterprise Scenario" "Realized Enterprise Scenario"

postulate -- realizedEnterpriseScenario is subTypeOf realizedScenario
  st-325a3a1366f359ea-325a3a0e66f356d7  : realizedEnterpriseScenario   ⊏⋆ᵣ  realizedScenario 

{- Resource Object Flow: -}
-- Aggregate Member : Resource Object Flow
ResourceObjectFlow : ClassOfClassOfIndividual
ResourceObjectFlow = ClassOfIndividual

-- Membership relation
membershipOfResourceObjectFlow :  Linkage ResourceInteractionProcess ResourceObjectFlow
membershipOfResourceObjectFlow = make_upwardNestingRelation "resourceObjectFlow membership" "nested resourceObjectFlow"

-- Aggregation relation
aggregationOfResourceOutcomeEventResourceObjectFlow :  Linkage ResourceObjectFlow ResourceOutcomeEvent
aggregationOfResourceOutcomeEventResourceObjectFlow = make_Relation "ResourceOutcomeEvent aggregation" "aggregated ResourceOutcomeEvent"

{- resourceObjectFlow : derived relation obtained by composing
   membershipOfResourceObjectFlow and aggregationOfResourceOutcomeEventResourceObjectFlow
   It directly links an Resource Interaction Process to the final aggregated ResourceOutcomeEvent
   hiding the reifying ResourceObjectFlow
-}
resourceObjectFlow : Linkage ResourceInteractionProcess ResourceOutcomeEvent
resourceObjectFlow = membershipOfResourceObjectFlow  ∘  aggregationOfResourceOutcomeEventResourceObjectFlow

postulate -- resourceObjectFlow is subTypeOf interactionFlow
  st-7d330c3162824686-7d33fa1762813f5c  : resourceObjectFlow   ⊏⋆ᵣ  interactionFlow 


{- Resource Scenario Participant: -}
-- Aggregate Member : Resource Scenario Participant
ResourceScenarioParticipant : ClassOfClassOfIndividual
ResourceScenarioParticipant = ClassOfIndividual

-- Membership relation
membershipOfResourceScenarioParticipant :  Linkage ResourceInteractionProcess ResourceScenarioParticipant
membershipOfResourceScenarioParticipant = make_upwardNestingRelation "resourceScenarioParticipant membership" "nested resourceScenarioParticipant"

-- Aggregation relation
aggregationOfResourceAgentTypeResourceScenarioParticipant :  Linkage ResourceScenarioParticipant ResourceAgentType
aggregationOfResourceAgentTypeResourceScenarioParticipant = make_Relation "ResourceAgentType aggregation" "aggregated ResourceAgentType"

{- resourceScenarioParticipant : derived relation obtained by composing
   membershipOfResourceScenarioParticipant and aggregationOfResourceAgentTypeResourceScenarioParticipant
   It directly links an Resource Interaction Process to the final aggregated ResourceAgentType
   hiding the reifying ResourceScenarioParticipant
-}
resourceScenarioParticipant : Linkage ResourceInteractionProcess ResourceAgentType
resourceScenarioParticipant = membershipOfResourceScenarioParticipant  ∘  aggregationOfResourceAgentTypeResourceScenarioParticipant

postulate -- resourceScenarioParticipant is subTypeOf scenarioParticipant
  st-7d337ddf628136aa-07e737495eccd831  : resourceScenarioParticipant   ⊏⋆ᵣ  scenarioParticipant 
postulate -- resourceScenarioParticipant is subTypeOf resourceBehaviorParticipant
  st-7d337ddf628136aa-e0e874626578a341  : resourceScenarioParticipant   ⊏⋆ᵣ  resourceBehaviorParticipant 

