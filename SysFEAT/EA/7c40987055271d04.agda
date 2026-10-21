{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Conceptual Agent: 
A Conceptual Agent is an Agent Type that depicts a functional division of labor within an enterprise, influencing the formation of its business operating model.The concrete specializations of Conceptual Agent follow the systemic level pattern and come in the form of Operating Domain (a Macro Conceptual Agent) and Business Function (a Mezzo Conceptual Agent).

Documentation : https://framework.sysfeat.com/pages/7c40987055271d04.htm

External references:
  Russell Ackoff - System of concepts - FunctionalDivisionOfLabor: ../resources/external-references/Ackoff-1971-Towards-a-system-of-systems-concepts.pdf#FunctionalDivisionOfLabor
  OpenGroup - ArchiMate - Business Internal Active Structure Element: https://pubs.opengroup.org/architecture/archimate32-doc/ch-Business-Layer.html#sec-business-Active-Structure-Elements
  Christensen Institute - Modularity: https://www.christenseninstitute.org/theory/modularity
  OMG - UAF - OperationalAgent: https://www.omg.org/spec/UAF/1.2/Beta1/DMM/PDF#OperationalAgent
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
st-7c40987055271d04-c8b2238961e5385a : ConceptualAgent ⊏ₑ ConceptualOperatingAsset
st-7c40987055271d04-c8b2238961e5385a = polySubTypeOf-identity

--  ConceptualAgent is subTypeOf AgentType
st-7c40987055271d04-79368381561716a6 : ConceptualAgent ⊏ₑ AgentType
st-7c40987055271d04-79368381561716a6 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Specialized Conceptual Agent: -}
specializedConceptualAgent :  Linkage ConceptualAgent ConceptualAgent
specializedConceptualAgent = make_subTypeOf "Specialized Conceptual Agent" "Specialized Conceptual Agent"

postulate -- specializedConceptualAgent is subTypeOf specializedConceptualAsset
  st-325a37b466f34a9d-325a376066f34181  : specializedConceptualAgent  ⊏⋆ᵣ  specializedConceptualAsset
postulate -- specializedConceptualAgent is subTypeOf specializedAgent
  st-325a37b466f34a9d-2b5b440b66ed56d4  : specializedConceptualAgent  ⊏⋆ᵣ  specializedAgent

-- -------------------------------------------------------------------------------------------- 
{- Conceptual Interaction Channel: 
An Interaction represents a contract between entities in a specific context inside or outside a company. These entities can be organizational units, activities, or processes.The content of this contract is described in a protocol.
-}
-- Aggregate Member : Conceptual Interaction Channel
ConceptualInteractionChannel : ClassOfClassOfIndividual
ConceptualInteractionChannel = ClassOfIndividual


--  ConceptualInteractionChannel is subTypeOf InteractionChannel
st-258c37235fd283a8-24ae34bb5ed1cb17 : ConceptualInteractionChannel ⊏ₑ InteractionChannel
st-258c37235fd283a8-24ae34bb5ed1cb17 = polySubTypeOf-identity

-- Membership relation
membershipOfConceptualInteractionChannel :  Linkage ConceptualAgent ConceptualInteractionChannel
membershipOfConceptualInteractionChannel = make_upwardNestingRelation "conceptualInteractionChannel membership" "nested conceptualInteractionChannel"

-- Aggregation relation
aggregationOfConceptualServiceInterfaceConceptualInteractionChannel :  Linkage ConceptualInteractionChannel ConceptualServiceInterface
aggregationOfConceptualServiceInterfaceConceptualInteractionChannel = make_Relation "ConceptualServiceInterface aggregation" "aggregated ConceptualServiceInterface"

{- conceptualInteractionChannel : derived relation obtained by composing
   membershipOfConceptualInteractionChannel and aggregationOfConceptualServiceInterfaceConceptualInteractionChannel
   It directly links an Conceptual Agent to the final aggregated ConceptualServiceInterface
   hiding the reifying ConceptualInteractionChannel
-}
conceptualInteractionChannel : Linkage ConceptualAgent ConceptualServiceInterface
conceptualInteractionChannel = membershipOfConceptualInteractionChannel  ∘  aggregationOfConceptualServiceInterfaceConceptualInteractionChannel



-- -------------------------------------------------------------------------------------------- 
{- Conceptual Agent Part: -}
-- Aggregate Member : Conceptual Agent Part
ConceptualAgentPart : ClassOfClassOfBoundedIndividual
ConceptualAgentPart = ClassOfBoundedIndividual



--  ConceptualAgentPart is subTypeOf AgentPart
st-258c36965fd28288-1da6216a5ebc65f7 : ConceptualAgentPart ⊏ₑ AgentPart
st-258c36965fd28288-1da6216a5ebc65f7 = polySubTypeOf-identity

--  ConceptualAgentPart is subTypeOf ConceptualAgent
st-258c36965fd28288-7c40987055271d04 : ConceptualAgentPart ⊏ₑ ConceptualAgent
st-258c36965fd28288-7c40987055271d04 = polySubTypeOf-identity

-- Membership relation
membershipOfConceptualAgentPart :  Linkage ConceptualAgent ConceptualAgentPart
membershipOfConceptualAgentPart = make_upwardNestingRelation "conceptualAgentPart membership" "nested conceptualAgentPart"

-- Aggregation relation
aggregationOfConceptualAgentConceptualAgentPart :  Linkage ConceptualAgentPart ConceptualAgent
aggregationOfConceptualAgentConceptualAgentPart = make_Relation "ConceptualAgent aggregation" "aggregated ConceptualAgent"

{- conceptualAgentPart : derived relation obtained by composing
   membershipOfConceptualAgentPart and aggregationOfConceptualAgentConceptualAgentPart
   It directly links an Conceptual Agent to the final aggregated ConceptualAgent
   hiding the reifying ConceptualAgentPart
-}
conceptualAgentPart : Linkage ConceptualAgent ConceptualAgent
conceptualAgentPart = membershipOfConceptualAgentPart  ∘  aggregationOfConceptualAgentConceptualAgentPart



-- -------------------------------------------------------------------------------------------- 
{- Performed Conceptual Scenario: 
Relationship between a Conceptual Agent and Conceptual Interaction Scenarios that it performs.
-}
-- Aggregate Member : Performed Conceptual Scenario
PerformedConceptualScenario : ClassOfClassOfBoundedIndividual
PerformedConceptualScenario = ClassOfBoundedIndividual



--  PerformedConceptualScenario is subTypeOf ConceptualInteractionScenario
st-f97e40e1632b3628-f97e3146632b266e : PerformedConceptualScenario ⊏ₑ ConceptualInteractionScenario
st-f97e40e1632b3628-f97e3146632b266e = polySubTypeOf-identity

-- Membership relation
membershipOfPerformedConceptualScenario :  Linkage ConceptualAgent PerformedConceptualScenario
membershipOfPerformedConceptualScenario = make_upwardNestingRelation "performedConceptualScenario membership" "nested performedConceptualScenario"

-- Aggregation relation
aggregationOfConceptualInteractionScenarioPerformedConceptualScenario :  Linkage PerformedConceptualScenario ConceptualInteractionScenario
aggregationOfConceptualInteractionScenarioPerformedConceptualScenario = make_Relation "ConceptualInteractionScenario aggregation" "aggregated ConceptualInteractionScenario"

{- performedConceptualScenario : derived relation obtained by composing
   membershipOfPerformedConceptualScenario and aggregationOfConceptualInteractionScenarioPerformedConceptualScenario
   It directly links an Conceptual Agent to the final aggregated ConceptualInteractionScenario
   hiding the reifying PerformedConceptualScenario
-}
performedConceptualScenario : Linkage ConceptualAgent ConceptualInteractionScenario
performedConceptualScenario = membershipOfPerformedConceptualScenario  ∘  aggregationOfConceptualInteractionScenarioPerformedConceptualScenario



-- -------------------------------------------------------------------------------------------- 
{- Performed Value Stream: 
Relationship between a Conceptual Agent and Conceptual Behaviors that it performs.
-}
-- Aggregate Member : Performed Value Stream
PerformedValueStream : ClassOfClassOfBoundedIndividual
PerformedValueStream = ClassOfBoundedIndividual



--  PerformedValueStream is subTypeOf PerformedProcess
st-3b4b45eb5ebc3730-004b03b15ebd0fdb : PerformedValueStream ⊏ₑ PerformedProcess
st-3b4b45eb5ebc3730-004b03b15ebd0fdb = polySubTypeOf-identity

--  PerformedValueStream is subTypeOf ValueStream
st-3b4b45eb5ebc3730-57dfc5f555093444 : PerformedValueStream ⊏ₑ ValueStream
st-3b4b45eb5ebc3730-57dfc5f555093444 = polySubTypeOf-identity

-- Membership relation
membershipOfPerformedValueStream :  Linkage ConceptualAgent PerformedValueStream
membershipOfPerformedValueStream = make_upwardNestingRelation "performedValueStream membership" "nested performedValueStream"

-- Aggregation relation
aggregationOfValueStreamPerformedValueStream :  Linkage PerformedValueStream ValueStream
aggregationOfValueStreamPerformedValueStream = make_Relation "ValueStream aggregation" "aggregated ValueStream"

{- performedValueStream : derived relation obtained by composing
   membershipOfPerformedValueStream and aggregationOfValueStreamPerformedValueStream
   It directly links an Conceptual Agent to the final aggregated ValueStream
   hiding the reifying PerformedValueStream
-}
performedValueStream : Linkage ConceptualAgent ValueStream
performedValueStream = membershipOfPerformedValueStream  ∘  aggregationOfValueStreamPerformedValueStream



-- -------------------------------------------------------------------------------------------- 
{- Conceptual Store: -}
-- Aggregate Member : Conceptual Store
ConceptualStore : ClassOfClassOfIndividual
ConceptualStore = ClassOfIndividual


--  ConceptualStore is subTypeOf InformationStore
st-474e48a05ebc2424-f4bee5925ee1be5b : ConceptualStore ⊏ₑ InformationStore
st-474e48a05ebc2424-f4bee5925ee1be5b = polySubTypeOf-identity

--  ConceptualStore is subTypeOf ConceptDomain
st-474e48a05ebc2424-203b8ff05a5f43fe : ConceptualStore ⊏ₑ ConceptDomain
st-474e48a05ebc2424-203b8ff05a5f43fe = polySubTypeOf-identity

-- Membership relation
membershipOfConceptualStore :  Linkage ConceptualAgent ConceptualStore
membershipOfConceptualStore = make_upwardNestingRelation "conceptualStore membership" "nested conceptualStore"

-- Aggregation relation
aggregationOfConceptDomainConceptualStore :  Linkage ConceptualStore ConceptDomain
aggregationOfConceptDomainConceptualStore = make_Relation "ConceptDomain aggregation" "aggregated ConceptDomain"

{- conceptualStore : derived relation obtained by composing
   membershipOfConceptualStore and aggregationOfConceptDomainConceptualStore
   It directly links an Conceptual Agent to the final aggregated ConceptDomain
   hiding the reifying ConceptualStore
-}
conceptualStore : Linkage ConceptualAgent ConceptDomain
conceptualStore = membershipOfConceptualStore  ∘  aggregationOfConceptDomainConceptualStore


