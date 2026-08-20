{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Agent Type Environment: 
An Agent Type Environment is an Operating Eco-System which defines the interactions (Service Channel) of an Agent Type with its partners (Partner Agent).
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.d6cd0fd95ab9744b where -- ========== Agent Type Environment

open import Agda.Primitive
open import SysFEAT.SOF.ca35f48a5fc48686 public -- Operating Eco-System
open import SysFEAT.SOF.24ae31b55ed1c66d public -- Service Interface
open import SysFEAT.SOF.79368381561716a6 public -- Agent Type
open import SysFEAT.SOF.ca3513af5fc59413 public -- Environment Interaction Process Type

AgentTypeEnvironment : ClassOfClassOfBoundedIndividual
AgentTypeEnvironment = ClassOfBoundedIndividual

--  AgentTypeEnvironment is subTypeOf OperatingEcoSystem
st-d6cd10f85ab974f9 : AgentTypeEnvironment ⊏ₑ OperatingEcoSystem
st-d6cd10f85ab974f9 = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Operating Environment: -}
specializedOperatingEnvironment :  Linkage AgentTypeEnvironment AgentTypeEnvironment
specializedOperatingEnvironment = make_subTypeOf "Specialized Operating Environment" "specializedOperatingEnvironment"

postulate -- specializedOperatingEnvironment is subTypeOf specializedAsset
  st-325a373d66f33dca-12b0287266e936d5  : specializedOperatingEnvironment   ⊏⋆ᵣ  specializedAsset 

{- Realized Operating Environment: -}
realizedOperatingEnvironment :  Linkage AgentTypeEnvironment AgentTypeEnvironment
realizedOperatingEnvironment = make_subTypeOf "Realized Operating Environment" "realizedOperatingEnvironment"

postulate -- realizedOperatingEnvironment is subTypeOf realizedFunctionalAsset
  st-325a3a1066f35860-7dc1907b684951ae  : realizedOperatingEnvironment   ⊏⋆ᵣ  realizedFunctionalAsset 

{- Service Channel: -}
-- Aggregate Member : Service Channel
ServiceChannel : ClassOfClassOfIndividual
ServiceChannel = ClassOfIndividual

-- Membership relation
membershipOfServiceChannel :  Linkage AgentTypeEnvironment ServiceChannel
membershipOfServiceChannel = membershipOfAggregateMember

-- Aggregation relation
aggregationOfServiceInterfaceServiceChannel :  Linkage ServiceChannel ServiceInterface
aggregationOfServiceInterfaceServiceChannel = aggregationOfBuildingBlock

{- serviceChannel : derived relation obtained by composing
   membershipOfServiceChannel and aggregationOfServiceInterfaceServiceChannel
   It directly links an Agent Type Environment to the final aggregated ServiceInterface
   hiding the reifying ServiceChannel
-}
serviceChannel : Linkage AgentTypeEnvironment ServiceInterface
serviceChannel = membershipOfServiceChannel  ∘  aggregationOfServiceInterfaceServiceChannel

{- Participant Agent: -}
-- Aggregate Member : Participant Agent
ParticipantAgent : ClassOfClassOfIndividual
ParticipantAgent = ClassOfIndividual

-- Membership relation
membershipOfParticipantAgent :  Linkage AgentTypeEnvironment ParticipantAgent
membershipOfParticipantAgent = membershipOfAggregateMember

-- Aggregation relation
aggregationOfAgentTypeParticipantAgent :  Linkage ParticipantAgent AgentType
aggregationOfAgentTypeParticipantAgent = aggregationOfBuildingBlock

{- participantAgent : derived relation obtained by composing
   membershipOfParticipantAgent and aggregationOfAgentTypeParticipantAgent
   It directly links an Agent Type Environment to the final aggregated AgentType
   hiding the reifying ParticipantAgent
-}
participantAgent : Linkage AgentTypeEnvironment AgentType
participantAgent = membershipOfParticipantAgent  ∘  aggregationOfAgentTypeParticipantAgent

{- Performed Interaction: 
set of interactions processes performed in the context of an Operating Eco-System.
-}
-- Aggregate Member : Performed Interaction
PerformedInteraction : ClassOfClassOfIndividual
PerformedInteraction = ClassOfIndividual

-- Membership relation
26CB2D596961099C :  Linkage AgentTypeEnvironment PerformedInteraction
26CB2D596961099C = membershipOfAggregateMember

-- Aggregation relation
aggregationOfEnvironmentInteractionProcessTypePerformedInteraction :  Linkage PerformedInteraction EnvironmentInteractionProcessType
aggregationOfEnvironmentInteractionProcessTypePerformedInteraction = aggregationOfBuildingBlock

{- performedInteraction : derived relation obtained by composing
   26CB2D596961099C and aggregationOfEnvironmentInteractionProcessTypePerformedInteraction
   It directly links an Agent Type Environment to the final aggregated EnvironmentInteractionProcessType
   hiding the reifying PerformedInteraction
-}
performedInteraction : Linkage AgentTypeEnvironment EnvironmentInteractionProcessType
performedInteraction = 26CB2D596961099C  ∘  aggregationOfEnvironmentInteractionProcessTypePerformedInteraction

{- Subject Agent: -}
-- Aggregate Member : Subject Agent
SubjectAgent : ClassOfClassOfIndividual
SubjectAgent = ClassOfIndividual

-- Membership relation
membershipOfSubjectAgent :  Linkage AgentTypeEnvironment SubjectAgent
membershipOfSubjectAgent = membershipOfAggregateMember

-- Aggregation relation
aggregationOfAgentTypeSubjectAgent :  Linkage SubjectAgent AgentType
aggregationOfAgentTypeSubjectAgent = aggregationOfBuildingBlock

{- subjectAgent : derived relation obtained by composing
   membershipOfSubjectAgent and aggregationOfAgentTypeSubjectAgent
   It directly links an Agent Type Environment to the final aggregated AgentType
   hiding the reifying SubjectAgent
-}
subjectAgent : Linkage AgentTypeEnvironment AgentType
subjectAgent = membershipOfSubjectAgent  ∘  aggregationOfAgentTypeSubjectAgent

{- Partner Agent: -}
-- Aggregate Member : Partner Agent
PartnerAgent : ClassOfClassOfIndividual
PartnerAgent = ClassOfIndividual

-- Membership relation
membershipOfPartnerAgent :  Linkage AgentTypeEnvironment PartnerAgent
membershipOfPartnerAgent = membershipOfAggregateMember

-- Aggregation relation
aggregationOfAgentTypePartnerAgent :  Linkage PartnerAgent AgentType
aggregationOfAgentTypePartnerAgent = aggregationOfBuildingBlock

{- partnerAgent : derived relation obtained by composing
   membershipOfPartnerAgent and aggregationOfAgentTypePartnerAgent
   It directly links an Agent Type Environment to the final aggregated AgentType
   hiding the reifying PartnerAgent
-}
partnerAgent : Linkage AgentTypeEnvironment AgentType
partnerAgent = membershipOfPartnerAgent  ∘  aggregationOfAgentTypePartnerAgent
