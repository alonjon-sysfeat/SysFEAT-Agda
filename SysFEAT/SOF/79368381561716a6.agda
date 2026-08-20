{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Agent Type: 
An Agent Type is an Operating Asset Type which is able to participate actively to Behavior Types, to produce and react to Outcome Events.1. Agent Types participate to Action Process Typees (Active Participant) and/or conduct Action Process Typees (Performed Process).2. Agent Types participate to Interaction Process Type (Scenario Participant) describing how they interact with other Agent Types.These actions and interactions define Agent Types boundaries described by Service Interfaces.
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
st-a371a4bf5b8659f3 : AgentType ⊏ₑ OperatingAssetType
st-a371a4bf5b8659f3 = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Agent: -}
specializedAgent :  Linkage AgentType AgentType
specializedAgent = make_subTypeOf "Specialized Agent" "specializedAgent"

postulate -- specializedAgent is subTypeOf specializedOperatingAsset
  st-2b5b440b66ed56d4-6a70772167873276  : specializedAgent   ⊏⋆ᵣ  specializedOperatingAsset 

{- Realized Agent: -}
realizedAgent :  Linkage AgentType AgentType
realizedAgent = make_subTypeOf "Realized Agent" "realizedAgent"

postulate -- realizedAgent is subTypeOf realizedOperatingAsset
  st-2b5b449f66ed57a2-7dc193da6849536c  : realizedAgent   ⊏⋆ᵣ  realizedOperatingAsset 

{- Interaction Channel: -}
-- Aggregate Member : Interaction Channel
InteractionChannel : ClassOfClassOfIndividual
InteractionChannel = ClassOfIndividual

-- Membership relation
membershipOfInteractionChannel :  Linkage AgentType InteractionChannel
membershipOfInteractionChannel = membershipOfAggregateMember

-- Aggregation relation
aggregationOfServiceInterfaceInteractionChannel :  Linkage InteractionChannel ServiceInterface
aggregationOfServiceInterfaceInteractionChannel = aggregationOfBuildingBlock

{- interactionChannel : derived relation obtained by composing
   membershipOfInteractionChannel and aggregationOfServiceInterfaceInteractionChannel
   It directly links an Agent Type to the final aggregated ServiceInterface
   hiding the reifying InteractionChannel
-}
interactionChannel : Linkage AgentType ServiceInterface
interactionChannel = membershipOfInteractionChannel  ∘  aggregationOfServiceInterfaceInteractionChannel

{- Performed Process: 
A Performed Process is a Action Process Type operated by an Agent Type.
-}
-- Aggregate Member : Performed Process
PerformedProcess : ClassOfClassOfIndividual
PerformedProcess = ClassOfIndividual

-- Membership relation
membershipOfPerformedProcess :  Linkage AgentType PerformedProcess
membershipOfPerformedProcess = membershipOfAggregateMember

-- Aggregation relation
aggregationOfActionProcessTypePerformedProcess :  Linkage PerformedProcess ActionProcessType
aggregationOfActionProcessTypePerformedProcess = aggregationOfBuildingBlock

{- performedProcess : derived relation obtained by composing
   membershipOfPerformedProcess and aggregationOfActionProcessTypePerformedProcess
   It directly links an Agent Type to the final aggregated ActionProcessType
   hiding the reifying PerformedProcess
-}
performedProcess : Linkage AgentType ActionProcessType
performedProcess = membershipOfPerformedProcess  ∘  aggregationOfActionProcessTypePerformedProcess

{- Agent Part: 
An Agent Part is a structural composition of a sub Agent Type within its parent Agent Type.
-}
-- Aggregate Member : Agent Part
AgentPart : ClassOfClassOfIndividual
AgentPart = ClassOfIndividual

-- Membership relation
membershipOfAgentPart :  Linkage AgentType AgentPart
membershipOfAgentPart = membershipOfAggregateMember

-- Aggregation relation
aggregationOfAgentTypeAgentPart :  Linkage AgentPart AgentType
aggregationOfAgentTypeAgentPart = aggregationOfBuildingBlock

{- agentPart : derived relation obtained by composing
   membershipOfAgentPart and aggregationOfAgentTypeAgentPart
   It directly links an Agent Type to the final aggregated AgentType
   hiding the reifying AgentPart
-}
agentPart : Linkage AgentType AgentType
agentPart = membershipOfAgentPart  ∘  aggregationOfAgentTypeAgentPart

{- Performed Interaction: 
A Performed Interaction is an Interaction Process Type operated by an Agent Type.
-}
-- Aggregate Member : Performed Interaction
PerformedInteraction : ClassOfClassOfIndividual
PerformedInteraction = ClassOfIndividual

-- Membership relation
membershipOfPerformedInteraction :  Linkage AgentType PerformedInteraction
membershipOfPerformedInteraction = membershipOfAggregateMember

-- Aggregation relation
aggregationOfInteractionProcessTypePerformedInteraction :  Linkage PerformedInteraction InteractionProcessType
aggregationOfInteractionProcessTypePerformedInteraction = aggregationOfBuildingBlock

{- performedInteraction : derived relation obtained by composing
   membershipOfPerformedInteraction and aggregationOfInteractionProcessTypePerformedInteraction
   It directly links an Agent Type to the final aggregated InteractionProcessType
   hiding the reifying PerformedInteraction
-}
performedInteraction : Linkage AgentType InteractionProcessType
performedInteraction = membershipOfPerformedInteraction  ∘  aggregationOfInteractionProcessTypePerformedInteraction

{- Information Store: 
An Information Store is a storage of Information Assets necessary for an Agent Type to carry out its activities.The scope of the necessary Information Assets is given by the Information Domain associated with the Information Store.
-}
-- Aggregate Member : Information Store
InformationStore : ClassOfClassOfIndividual
InformationStore = ClassOfIndividual

-- Membership relation
membershipOfInformationStore :  Linkage AgentType InformationStore
membershipOfInformationStore = membershipOfAggregateMember

-- Aggregation relation
aggregationOfInformationDomainInformationStore :  Linkage InformationStore InformationDomain
aggregationOfInformationDomainInformationStore = aggregationOfBuildingBlock

{- informationStore : derived relation obtained by composing
   membershipOfInformationStore and aggregationOfInformationDomainInformationStore
   It directly links an Agent Type to the final aggregated InformationDomain
   hiding the reifying InformationStore
-}
informationStore : Linkage AgentType InformationDomain
informationStore = membershipOfInformationStore  ∘  aggregationOfInformationDomainInformationStore
