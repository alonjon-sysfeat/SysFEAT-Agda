{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Agent Type: 
An Agent Type is an Operating Asset Type which is able to participate actively to Behavior Types, to produce and react to Outcome Events.1. Agent Types participate to Action Process Typees (Active Participant) and/or conduct Action Process Typees (Performed Process).2. Agent Types participate to Interaction Process Type (Scenario Participant) describing how they interact with other Agent Types.These actions and interactions define Agent Types boundaries described by Service Interfaces.

Documentation : https://framework.sysfeat.com/pages/79368381561716a6.htm

External references:
  OpenGroup - ArchiMate - Internal Active Structure Element: https://pubs.opengroup.org/architecture/archimate32-doc/ch-Generic-Metamodel.html#sec-Active-Structure-Elements
  Christensen Institute - Modularity: https://www.christenseninstitute.org/theory/modularity
  OpenGroup - OAA - Modularity: https://pubs.opengroup.org/architecture/o-aa-standard/definitions.html#_modularity
  OpenGroup - TOGAF - Definition - System: https://pubs.opengroup.org/togaf-standard/introduction/apdxb.html#tag_06_41
  OMG - UML - EncapsulatedClassifier: https://www.omg.org/spec/UML/2.5.1/PDF#page=231
  ISO 15926 - ClassOfPossibleRoleAndDomain: https://15926.blog/topics/data-model/index.htm#ClassOfPossibleRoleAndDomain
  Russell Ackoff - System of Concepts - Abstract System: ../resources/external-references/Ackoff-1971-Towards-a-system-of-systems-concepts.pdf#AbstractSystem
  WordNet - Agent: https://en-word.net/ili/i84938
  OMG - KerML - Structure: https://www.omg.org/spec/KerML/1.0/PDF#page=68
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.79368381561716a6 where -- ========== Agent Type

open import Agda.Primitive
open import SysFEAT.SOF.a371a43b5b865817 public -- Operating Asset Type
open import SysFEAT.SOF.24ae31b55ed1c66d public -- Service Interface
open import SysFEAT.SOF.d682ef5e56144e77 public -- Action Process Type
open import SysFEAT.SOF.333f35ee5dde0c8c public -- Interaction Process Type
open import SysFEAT.SOF.d6cd116d5ab97525 public -- Information Domain

AgentType : ClassOfClassOfBoundedIndividual
AgentType = ClassOfBoundedIndividual


--  AgentType is subTypeOf OperatingAssetType
st-79368381561716a6-a371a43b5b865817 : AgentType ⊏ₑ OperatingAssetType
st-79368381561716a6-a371a43b5b865817 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Specialized Agent: -}
specializedAgent :  Linkage AgentType AgentType
specializedAgent = make_subTypeOf "Specialized Agent" "Specialized Agent"

postulate -- specializedAgent is subTypeOf specializedOperatingAsset
  st-2b5b440b66ed56d4-6a70772167873276  : specializedAgent  ⊏⋆ᵣ  specializedOperatingAsset

-- -------------------------------------------------------------------------------------------- 
{- Realized Agent: -}
realizedAgent :  Linkage AgentType AgentType
realizedAgent = make_subTypeOf "Realized Agent" "Realized Agent"

postulate -- realizedAgent is subTypeOf realizedOperatingAsset
  st-2b5b449f66ed57a2-7dc193da6849536c  : realizedAgent  ⊏⋆ᵣ  realizedOperatingAsset

-- -------------------------------------------------------------------------------------------- 
{- Interaction Channel: -}
-- Aggregate Member : Interaction Channel
InteractionChannel : ClassOfClassOfIndividual
InteractionChannel = ClassOfIndividual


--  InteractionChannel withAspect OrderingConnector
st-24ae34bb5ed1cb17-478a4a4468565425 : InteractionChannel ⊏ₐₑ (OrderingConnector (lsuc(lzero)))
st-24ae34bb5ed1cb17-478a4a4468565425 = polySubTypeOf-identity

-- Membership relation
membershipOfInteractionChannel :  Linkage AgentType InteractionChannel
membershipOfInteractionChannel = make_upwardNestingRelation "interactionChannel membership" "nested interactionChannel"

-- Aggregation relation
aggregationOfServiceInterfaceInteractionChannel :  Linkage InteractionChannel ServiceInterface
aggregationOfServiceInterfaceInteractionChannel = make_Relation "ServiceInterface aggregation" "aggregated ServiceInterface"

{- interactionChannel : derived relation obtained by composing
   membershipOfInteractionChannel and aggregationOfServiceInterfaceInteractionChannel
   It directly links an Agent Type to the final aggregated ServiceInterface
   hiding the reifying InteractionChannel
-}
interactionChannel : Linkage AgentType ServiceInterface
interactionChannel = membershipOfInteractionChannel  ∘  aggregationOfServiceInterfaceInteractionChannel



-- -------------------------------------------------------------------------------------------- 
{- Performed Process: 
A Performed Process is a Action Process Type operated by an Agent Type.
-}
-- Aggregate Member : Performed Process
PerformedProcess : ClassOfClassOfBoundedIndividual
PerformedProcess = ClassOfBoundedIndividual



--  PerformedProcess is subTypeOf OperatingAssetPart
st-004b03b15ebd0fdb-b776b8c668b04b35 : PerformedProcess ⊏ₑ OperatingAssetPart
st-004b03b15ebd0fdb-b776b8c668b04b35 = polySubTypeOf-identity

--  PerformedProcess is subTypeOf ActionProcessType
st-004b03b15ebd0fdb-d682ef5e56144e77 : PerformedProcess ⊏ₑ ActionProcessType
st-004b03b15ebd0fdb-d682ef5e56144e77 = polySubTypeOf-identity

-- Membership relation
membershipOfPerformedProcess :  Linkage AgentType PerformedProcess
membershipOfPerformedProcess = make_upwardNestingRelation "performedProcess membership" "nested performedProcess"

-- Aggregation relation
aggregationOfActionProcessTypePerformedProcess :  Linkage PerformedProcess ActionProcessType
aggregationOfActionProcessTypePerformedProcess = make_Relation "ActionProcessType aggregation" "aggregated ActionProcessType"

{- performedProcess : derived relation obtained by composing
   membershipOfPerformedProcess and aggregationOfActionProcessTypePerformedProcess
   It directly links an Agent Type to the final aggregated ActionProcessType
   hiding the reifying PerformedProcess
-}
performedProcess : Linkage AgentType ActionProcessType
performedProcess = membershipOfPerformedProcess  ∘  aggregationOfActionProcessTypePerformedProcess



-- -------------------------------------------------------------------------------------------- 
{- Agent Part: 
An Agent Part is a structural composition of a sub Agent Type within its parent Agent Type.
-}
-- Aggregate Member : Agent Part
AgentPart : ClassOfClassOfBoundedIndividual
AgentPart = ClassOfBoundedIndividual



--  AgentPart is subTypeOf OperatingAssetPart
st-1da6216a5ebc65f7-b776b8c668b04b35 : AgentPart ⊏ₑ OperatingAssetPart
st-1da6216a5ebc65f7-b776b8c668b04b35 = polySubTypeOf-identity

--  AgentPart is subTypeOf AgentType
st-1da6216a5ebc65f7-79368381561716a6 : AgentPart ⊏ₑ AgentType
st-1da6216a5ebc65f7-79368381561716a6 = polySubTypeOf-identity

-- Membership relation
membershipOfAgentPart :  Linkage AgentType AgentPart
membershipOfAgentPart = make_upwardNestingRelation "agentPart membership" "nested agentPart"

-- Aggregation relation
aggregationOfAgentTypeAgentPart :  Linkage AgentPart AgentType
aggregationOfAgentTypeAgentPart = make_Relation "AgentType aggregation" "aggregated AgentType"

{- agentPart : derived relation obtained by composing
   membershipOfAgentPart and aggregationOfAgentTypeAgentPart
   It directly links an Agent Type to the final aggregated AgentType
   hiding the reifying AgentPart
-}
agentPart : Linkage AgentType AgentType
agentPart = membershipOfAgentPart  ∘  aggregationOfAgentTypeAgentPart



-- -------------------------------------------------------------------------------------------- 
{- Performed Interaction: 
A Performed Interaction is an Interaction Process Type operated by an Agent Type.
-}
-- Aggregate Member : Performed Interaction
PerformedInteraction : ClassOfClassOfBoundedIndividual
PerformedInteraction = ClassOfBoundedIndividual



--  PerformedInteraction is subTypeOf OperatingAssetPart
st-07e737925eccd8f1-b776b8c668b04b35 : PerformedInteraction ⊏ₑ OperatingAssetPart
st-07e737925eccd8f1-b776b8c668b04b35 = polySubTypeOf-identity

--  PerformedInteraction is subTypeOf InteractionProcessType
st-07e737925eccd8f1-333f35ee5dde0c8c : PerformedInteraction ⊏ₑ InteractionProcessType
st-07e737925eccd8f1-333f35ee5dde0c8c = polySubTypeOf-identity

-- Membership relation
membershipOfPerformedInteraction :  Linkage AgentType PerformedInteraction
membershipOfPerformedInteraction = make_upwardNestingRelation "performedInteraction membership" "nested performedInteraction"

-- Aggregation relation
aggregationOfInteractionProcessTypePerformedInteraction :  Linkage PerformedInteraction InteractionProcessType
aggregationOfInteractionProcessTypePerformedInteraction = make_Relation "InteractionProcessType aggregation" "aggregated InteractionProcessType"

{- performedInteraction : derived relation obtained by composing
   membershipOfPerformedInteraction and aggregationOfInteractionProcessTypePerformedInteraction
   It directly links an Agent Type to the final aggregated InteractionProcessType
   hiding the reifying PerformedInteraction
-}
performedInteraction : Linkage AgentType InteractionProcessType
performedInteraction = membershipOfPerformedInteraction  ∘  aggregationOfInteractionProcessTypePerformedInteraction



-- -------------------------------------------------------------------------------------------- 
{- Information Store: 
An Information Store is a storage of Information Assets necessary for an Agent Type to carry out its activities.The scope of the necessary Information Assets is given by the Information Domain associated with the Information Store.
-}
-- Aggregate Member : Information Store
InformationStore : ClassOfClassOfIndividual
InformationStore = ClassOfIndividual


--  InformationStore withAspect UnboundedMember
st-f4bee5925ee1be5b-8cfaf71a6852b042 : InformationStore ⊏ₐₑ (UnboundedMember (lsuc(lzero)))
st-f4bee5925ee1be5b-8cfaf71a6852b042 = polySubTypeOf-identity

--  InformationStore is subTypeOf InformationDomain
st-f4bee5925ee1be5b-d6cd116d5ab97525 : InformationStore ⊏ₑ InformationDomain
st-f4bee5925ee1be5b-d6cd116d5ab97525 = polySubTypeOf-identity

-- Membership relation
membershipOfInformationStore :  Linkage AgentType InformationStore
membershipOfInformationStore = make_upwardNestingRelation "informationStore membership" "nested informationStore"

-- Aggregation relation
aggregationOfInformationDomainInformationStore :  Linkage InformationStore InformationDomain
aggregationOfInformationDomainInformationStore = make_Relation "InformationDomain aggregation" "aggregated InformationDomain"

{- informationStore : derived relation obtained by composing
   membershipOfInformationStore and aggregationOfInformationDomainInformationStore
   It directly links an Agent Type to the final aggregated InformationDomain
   hiding the reifying InformationStore
-}
informationStore : Linkage AgentType InformationDomain
informationStore = membershipOfInformationStore  ∘  aggregationOfInformationDomainInformationStore


