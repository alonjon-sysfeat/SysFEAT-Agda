{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Resource Interaction Process: 
A Resource Interaction Process is a story that describes how the components of a Resource Agent Type interacts to produce and consume Resource Outcome Events.This includes:1) A course of events represented by Resource Object Flows depicting the steps towards the delivery of expected Resource Outcome Events.2) Interacting Resource Agent Types who participate to the story.
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
st-7d337d716281350c : ResourceInteractionProcess ⊏ₑ ResourceBehavior
st-7d337d716281350c = polySubTypeOf-identity

--  ResourceInteractionProcess is subTypeOf InteractionProcessType
st-2781cb7d660b5118 : ResourceInteractionProcess ⊏ₑ InteractionProcessType
st-2781cb7d660b5118 = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Enterprise Scenario: -}
specializedEnterpriseScenario :  Linkage ResourceInteractionProcess ResourceInteractionProcess
specializedEnterpriseScenario = make_subTypeOf "Specialized Enterprise Scenario" "specializedEnterpriseScenario"

postulate -- specializedEnterpriseScenario is subTypeOf specializedResourceBehavior
  st-325a37b666f34c03-325a376866f343d3  : specializedEnterpriseScenario   ⊏⋆ᵣ  specializedResourceBehavior 
postulate -- specializedEnterpriseScenario is subTypeOf specializedScenario
  st-325a37b666f34c03-325a373a66f33d61  : specializedEnterpriseScenario   ⊏⋆ᵣ  specializedScenario 

{- Realized Enterprise Scenario: -}
realizedEnterpriseScenario :  Linkage ResourceInteractionProcess ResourceInteractionProcess
realizedEnterpriseScenario = make_subTypeOf "Realized Enterprise Scenario" "realizedEnterpriseScenario"

postulate -- realizedEnterpriseScenario is subTypeOf realizedScenario
  st-325a3a1366f359ea-325a3a0e66f356d7  : realizedEnterpriseScenario   ⊏⋆ᵣ  realizedScenario 

{- Resource Object Flow: -}
-- Aggregate Member : Resource Object Flow
ResourceObjectFlow : ClassOfClassOfIndividual
ResourceObjectFlow = ClassOfIndividual

-- Membership relation
membershipOfResourceObjectFlow :  Linkage ResourceInteractionProcess ResourceObjectFlow
membershipOfResourceObjectFlow = membershipOfAggregateMember

-- Aggregation relation
aggregationOfResourceOutcomeEventResourceObjectFlow :  Linkage ResourceObjectFlow ResourceOutcomeEvent
aggregationOfResourceOutcomeEventResourceObjectFlow = aggregationOfBuildingBlock

{- resourceObjectFlow : derived relation obtained by composing
   membershipOfResourceObjectFlow and aggregationOfResourceOutcomeEventResourceObjectFlow
   It directly links an Resource Interaction Process to the final aggregated ResourceOutcomeEvent
   hiding the reifying ResourceObjectFlow
-}
resourceObjectFlow : Linkage ResourceInteractionProcess ResourceOutcomeEvent
resourceObjectFlow = membershipOfResourceObjectFlow  ∘  aggregationOfResourceOutcomeEventResourceObjectFlow

{- Resource Scenario Participant: -}
-- Aggregate Member : Resource Scenario Participant
ResourceScenarioParticipant : ClassOfClassOfIndividual
ResourceScenarioParticipant = ClassOfIndividual

-- Membership relation
membershipOfResourceScenarioParticipant :  Linkage ResourceInteractionProcess ResourceScenarioParticipant
membershipOfResourceScenarioParticipant = membershipOfAggregateMember

-- Aggregation relation
aggregationOfResourceAgentTypeResourceScenarioParticipant :  Linkage ResourceScenarioParticipant ResourceAgentType
aggregationOfResourceAgentTypeResourceScenarioParticipant = aggregationOfBuildingBlock

{- resourceScenarioParticipant : derived relation obtained by composing
   membershipOfResourceScenarioParticipant and aggregationOfResourceAgentTypeResourceScenarioParticipant
   It directly links an Resource Interaction Process to the final aggregated ResourceAgentType
   hiding the reifying ResourceScenarioParticipant
-}
resourceScenarioParticipant : Linkage ResourceInteractionProcess ResourceAgentType
resourceScenarioParticipant = membershipOfResourceScenarioParticipant  ∘  aggregationOfResourceAgentTypeResourceScenarioParticipant
