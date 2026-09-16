{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Resource Interaction Process: 
A Business Resource Interaction Process is a story involving the components of a Business Agent Type interacting in order to produce Business Outcome Events.This includes:1) A course of events represented by Resource Flows depicting the steps towards the delivery of expected Business Outcome Events.2) Component Business Agent Types that participate to the story.

Documentation : https://framework.sysfeat.com/pages/230b35b461d8884d.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.230b35b461d8884d where -- ========== Business Resource Interaction Process

open import Agda.Primitive
open import SysFEAT.EA.b4ebbf3e5ffdccdf public -- Business Behavior
open import SysFEAT.EA.7d337d67628134c5 public -- Resource Interaction Process
open import SysFEAT.EA.f97e3146632b266e public -- Conceptual Interaction Scenario
open import SysFEAT.EA.9dcea4535ec76e6c public -- Business Outcome Event
open import SysFEAT.EA.bcebd31f5491302c public -- Business Agent Type
open import SysFEAT.EA.23bf9a7868ad2d94 public -- Business Resource Rule

BusinessResourceInteractionProcess : ClassOfClassOfBoundedIndividual
BusinessResourceInteractionProcess = ClassOfBoundedIndividual

--  BusinessResourceInteractionProcess is subTypeOf BusinessBehavior
st-230b35b461d8884d-b4ebbf3e5ffdccdf : BusinessResourceInteractionProcess ⊏ₑ BusinessBehavior
st-230b35b461d8884d-b4ebbf3e5ffdccdf = polySubTypeOf-identity

--  BusinessResourceInteractionProcess is subTypeOf ResourceInteractionProcess
st-230b35b461d8884d-7d337d67628134c5 : BusinessResourceInteractionProcess ⊏ₑ ResourceInteractionProcess
st-230b35b461d8884d-7d337d67628134c5 = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Resource Scenario: -}
specializedResourceScenario :  Linkage BusinessResourceInteractionProcess BusinessResourceInteractionProcess
specializedResourceScenario = make_subTypeOf "Specialized Resource Scenario" "Specialized Resource Scenario"

postulate -- specializedResourceScenario is subTypeOf specializedEnterpriseScenario
  st-325a375b66f3402d-325a37b666f34c03  : specializedResourceScenario   ⊏⋆ᵣ  specializedEnterpriseScenario 
postulate -- specializedResourceScenario is subTypeOf specializedBusinessResourceBehavior
  st-325a375b66f3402d-325a37b666f34b83  : specializedResourceScenario   ⊏⋆ᵣ  specializedBusinessResourceBehavior 

{- Realized Logical Scenario: -}
realizedLogicalScenario :  Linkage BusinessResourceInteractionProcess ConceptualInteractionScenario
realizedLogicalScenario = make_subTypeOf "Realized Logical Scenario" "Realized Logical Scenario"

postulate -- realizedLogicalScenario is subTypeOf realizedEnterpriseScenario
  st-332c48a266f17aef-325a3a1366f359ea  : realizedLogicalScenario   ⊏⋆ᵣ  realizedEnterpriseScenario 
postulate -- realizedLogicalScenario is subTypeOf realizedLogicalOperatingAsset
  st-332c48a266f17aef-332c47ab66f17a2e  : realizedLogicalScenario   ⊏⋆ᵣ  realizedLogicalOperatingAsset 

{- Resource Flow: -}
-- Aggregate Member : Resource Flow
ResourceFlow : ClassOfClassOfIndividual
ResourceFlow = ClassOfIndividual

-- Membership relation
membershipOfResourceFlow :  Linkage BusinessResourceInteractionProcess ResourceFlow
membershipOfResourceFlow = make_upwardNestingRelation "resourceFlow membership" "nested resourceFlow"

-- Aggregation relation
aggregationOfBusinessOutcomeEventResourceFlow :  Linkage ResourceFlow BusinessOutcomeEvent
aggregationOfBusinessOutcomeEventResourceFlow = make_Relation "BusinessOutcomeEvent aggregation" "aggregated BusinessOutcomeEvent"

{- resourceFlow : derived relation obtained by composing
   membershipOfResourceFlow and aggregationOfBusinessOutcomeEventResourceFlow
   It directly links an Business Resource Interaction Process to the final aggregated BusinessOutcomeEvent
   hiding the reifying ResourceFlow
-}
resourceFlow : Linkage BusinessResourceInteractionProcess BusinessOutcomeEvent
resourceFlow = membershipOfResourceFlow  ∘  aggregationOfBusinessOutcomeEventResourceFlow

postulate -- resourceFlow is subTypeOf resourceObjectFlow
  st-18a71e5b61e22d1d-7d330c3162824686  : resourceFlow   ⊏⋆ᵣ  resourceObjectFlow 
postulate -- resourceFlow is subTypeOf businessBehaviorPart
  st-18a71e5b61e22d1d-b777c1de68b07336  : resourceFlow   ⊏⋆ᵣ  businessBehaviorPart 


{- Participant Business Agent: -}
-- Aggregate Member : Participant Business Agent
ParticipantBusinessAgent : ClassOfClassOfIndividual
ParticipantBusinessAgent = ClassOfIndividual

-- Membership relation
membershipOfParticipantBusinessAgent :  Linkage BusinessResourceInteractionProcess ParticipantBusinessAgent
membershipOfParticipantBusinessAgent = make_upwardNestingRelation "participantBusinessAgent membership" "nested participantBusinessAgent"

-- Aggregation relation
aggregationOfBusinessAgentTypeParticipantBusinessAgent :  Linkage ParticipantBusinessAgent BusinessAgentType
aggregationOfBusinessAgentTypeParticipantBusinessAgent = make_Relation "BusinessAgentType aggregation" "aggregated BusinessAgentType"

{- participantBusinessAgent : derived relation obtained by composing
   membershipOfParticipantBusinessAgent and aggregationOfBusinessAgentTypeParticipantBusinessAgent
   It directly links an Business Resource Interaction Process to the final aggregated BusinessAgentType
   hiding the reifying ParticipantBusinessAgent
-}
participantBusinessAgent : Linkage BusinessResourceInteractionProcess BusinessAgentType
participantBusinessAgent = membershipOfParticipantBusinessAgent  ∘  aggregationOfBusinessAgentTypeParticipantBusinessAgent

postulate -- participantBusinessAgent is subTypeOf resourceBehaviorParticipant
  st-230b35ed61d88944-e0e87af46578a950  : participantBusinessAgent   ⊏⋆ᵣ  resourceBehaviorParticipant 


{- Business Rule Enforcement: -}
-- Aggregate Member : Business Rule Enforcement
BusinessRuleEnforcement : ClassOfClassOfIndividual
BusinessRuleEnforcement = ClassOfIndividual

-- Membership relation
membershipOfBusinessRuleEnforcement :  Linkage BusinessResourceInteractionProcess BusinessRuleEnforcement
membershipOfBusinessRuleEnforcement = make_upwardNestingRelation "businessRuleEnforcement membership" "nested businessRuleEnforcement"

-- Aggregation relation
aggregationOfBusinessResourceRuleBusinessRuleEnforcement :  Linkage BusinessRuleEnforcement BusinessResourceRule
aggregationOfBusinessResourceRuleBusinessRuleEnforcement = make_Relation "BusinessResourceRule aggregation" "aggregated BusinessResourceRule"

{- businessRuleEnforcement : derived relation obtained by composing
   membershipOfBusinessRuleEnforcement and aggregationOfBusinessResourceRuleBusinessRuleEnforcement
   It directly links an Business Resource Interaction Process to the final aggregated BusinessResourceRule
   hiding the reifying BusinessRuleEnforcement
-}
businessRuleEnforcement : Linkage BusinessResourceInteractionProcess BusinessResourceRule
businessRuleEnforcement = membershipOfBusinessRuleEnforcement  ∘  aggregationOfBusinessResourceRuleBusinessRuleEnforcement

postulate -- businessRuleEnforcement is subTypeOf resourceRuleEnforcement
  st-23bf9ad368ad2e64-07b60bd468a50731  : businessRuleEnforcement   ⊏⋆ᵣ  resourceRuleEnforcement 

