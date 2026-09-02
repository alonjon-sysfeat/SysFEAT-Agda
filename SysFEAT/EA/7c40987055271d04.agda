{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Conceptual Agent: 
A Conceptual Agent is an abstract type of Agent Type that depicts a functional division of labor within an enterprise, influencing the formation of its business operating model.The concrete specializations of Conceptual Agent follow the systemic level pattern and come in the form of Operating Domain (a Macro Conceptual Agent) and Business Function (a Mezzo Conceptual Agent).
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.7c40987055271d04 where -- ========== Conceptual Agent

open import Agda.Primitive
open import SysFEAT.EA.c8b2238961e5385a public -- Conceptual Operating Asset
open import SysFEAT.SOF.79368381561716a6 public -- Agent Type
open import SysFEAT.EA.219162176786411d public -- Conceptual Service Interface
open import SysFEAT.EA.f97e3146632b266e public -- Conceptual Interaction Scenario
open import SysFEAT.EA.57dfc5f555093444 public -- Value Stream
open import SysFEAT.EA.203b8ff05a5f43fe public -- Concept Domain

ConceptualAgent : ClassOfClassOfBoundedIndividual
ConceptualAgent = ClassOfBoundedIndividual

--  ConceptualAgent is subTypeOf ConceptualOperatingAsset
st-c8b2255861e53a3c : ConceptualAgent ⊏ₑ ConceptualOperatingAsset
st-c8b2255861e53a3c = polySubTypeOf-identity

--  ConceptualAgent is subTypeOf AgentType
st-6a70b65467875d23 : ConceptualAgent ⊏ₑ AgentType
st-6a70b65467875d23 = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Conceptual Agent: -}
specializedConceptualAgent :  Linkage ConceptualAgent ConceptualAgent
specializedConceptualAgent = make_subTypeOf "Specialized Conceptual Agent" "specializedConceptualAgent"

postulate -- specializedConceptualAgent is subTypeOf specializedConceptualAsset
  st-325a37b466f34a9d-325a376066f34181  : specializedConceptualAgent   ⊏⋆ᵣ  specializedConceptualAsset 
postulate -- specializedConceptualAgent is subTypeOf specializedAgent
  st-325a37b466f34a9d-2b5b440b66ed56d4  : specializedConceptualAgent   ⊏⋆ᵣ  specializedAgent 

{- Conceptual Interaction Channel: 
An Interaction represents a contract between entities in a specific context inside or outside a company. These entities can be organizational units, activities, or processes.The content of this contract is described in a protocol.
-}
-- Aggregate Member : Conceptual Interaction Channel
ConceptualInteractionChannel : ClassOfClassOfIndividual
ConceptualInteractionChannel = ClassOfIndividual

-- Membership relation
membershipOfConceptualInteractionChannel :  Linkage ConceptualAgent ConceptualInteractionChannel
membershipOfConceptualInteractionChannel = membershipOfAggregateMember

-- Aggregation relation
aggregationOfConceptualServiceInterfaceConceptualInteractionChannel :  Linkage ConceptualInteractionChannel ConceptualServiceInterface
aggregationOfConceptualServiceInterfaceConceptualInteractionChannel = aggregationOfBuildingBlock

{- conceptualInteractionChannel : derived relation obtained by composing
   membershipOfConceptualInteractionChannel and aggregationOfConceptualServiceInterfaceConceptualInteractionChannel
   It directly links an Conceptual Agent to the final aggregated ConceptualServiceInterface
   hiding the reifying ConceptualInteractionChannel
-}
conceptualInteractionChannel : Linkage ConceptualAgent ConceptualServiceInterface
conceptualInteractionChannel = membershipOfConceptualInteractionChannel  ∘  aggregationOfConceptualServiceInterfaceConceptualInteractionChannel

{- Conceptual Agent Part: -}
-- Aggregate Member : Conceptual Agent Part
ConceptualAgentPart : ClassOfClassOfIndividual
ConceptualAgentPart = ClassOfIndividual

-- Membership relation
membershipOfConceptualAgentPart :  Linkage ConceptualAgent ConceptualAgentPart
membershipOfConceptualAgentPart = membershipOfAggregateMember

-- Aggregation relation
aggregationOfConceptualAgentConceptualAgentPart :  Linkage ConceptualAgentPart ConceptualAgent
aggregationOfConceptualAgentConceptualAgentPart = aggregationOfBuildingBlock

{- conceptualAgentPart : derived relation obtained by composing
   membershipOfConceptualAgentPart and aggregationOfConceptualAgentConceptualAgentPart
   It directly links an Conceptual Agent to the final aggregated ConceptualAgent
   hiding the reifying ConceptualAgentPart
-}
conceptualAgentPart : Linkage ConceptualAgent ConceptualAgent
conceptualAgentPart = membershipOfConceptualAgentPart  ∘  aggregationOfConceptualAgentConceptualAgentPart

{- Performed Conceptual Scenario: 
Relationship between a Conceptual Agent and Conceptual Interaction Scenarios that it performs.
-}
-- Aggregate Member : Performed Conceptual Scenario
PerformedConceptualScenario : ClassOfClassOfIndividual
PerformedConceptualScenario = ClassOfIndividual

-- Membership relation
membershipOfPerformedConceptualScenario :  Linkage ConceptualAgent PerformedConceptualScenario
membershipOfPerformedConceptualScenario = membershipOfAggregateMember

-- Aggregation relation
aggregationOfConceptualInteractionScenarioPerformedConceptualScenario :  Linkage PerformedConceptualScenario ConceptualInteractionScenario
aggregationOfConceptualInteractionScenarioPerformedConceptualScenario = aggregationOfBuildingBlock

{- performedConceptualScenario : derived relation obtained by composing
   membershipOfPerformedConceptualScenario and aggregationOfConceptualInteractionScenarioPerformedConceptualScenario
   It directly links an Conceptual Agent to the final aggregated ConceptualInteractionScenario
   hiding the reifying PerformedConceptualScenario
-}
performedConceptualScenario : Linkage ConceptualAgent ConceptualInteractionScenario
performedConceptualScenario = membershipOfPerformedConceptualScenario  ∘  aggregationOfConceptualInteractionScenarioPerformedConceptualScenario

{- Performed Value Stream: 
Relationship between a Conceptual Agent and Conceptual Behaviors that it performs.
-}
-- Aggregate Member : Performed Value Stream
PerformedValueStream : ClassOfClassOfIndividual
PerformedValueStream = ClassOfIndividual

-- Membership relation
membershipOfPerformedValueStream :  Linkage ConceptualAgent PerformedValueStream
membershipOfPerformedValueStream = membershipOfAggregateMember

-- Aggregation relation
aggregationOfValueStreamPerformedValueStream :  Linkage PerformedValueStream ValueStream
aggregationOfValueStreamPerformedValueStream = aggregationOfBuildingBlock

{- performedValueStream : derived relation obtained by composing
   membershipOfPerformedValueStream and aggregationOfValueStreamPerformedValueStream
   It directly links an Conceptual Agent to the final aggregated ValueStream
   hiding the reifying PerformedValueStream
-}
performedValueStream : Linkage ConceptualAgent ValueStream
performedValueStream = membershipOfPerformedValueStream  ∘  aggregationOfValueStreamPerformedValueStream

{- Conceptual Store: -}
-- Aggregate Member : Conceptual Store
ConceptualStore : ClassOfClassOfIndividual
ConceptualStore = ClassOfIndividual

-- Membership relation
membershipOfConceptualStore :  Linkage ConceptualAgent ConceptualStore
membershipOfConceptualStore = membershipOfAggregateMember

-- Aggregation relation
aggregationOfConceptDomainConceptualStore :  Linkage ConceptualStore ConceptDomain
aggregationOfConceptDomainConceptualStore = aggregationOfBuildingBlock

{- conceptualStore : derived relation obtained by composing
   membershipOfConceptualStore and aggregationOfConceptDomainConceptualStore
   It directly links an Conceptual Agent to the final aggregated ConceptDomain
   hiding the reifying ConceptualStore
-}
conceptualStore : Linkage ConceptualAgent ConceptDomain
conceptualStore = membershipOfConceptualStore  ∘  aggregationOfConceptDomainConceptualStore
