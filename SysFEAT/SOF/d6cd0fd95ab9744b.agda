{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Agent Type Environment: 
An Agent Type Environment is an Operating Eco-System which defines the interactions (Service Channel) of an Agent Type with its partners (Partner Agent).

Documentation : https://framework.sysfeat.com/pages/d6cd0fd95ab9744b.htm

External references:
  Russell Ackoff - System of Concepts - Environment of a system: ../resources/external-references/Ackoff-1971-Towards-a-system-of-systems-concepts.pdf#EnvironmentOfaSystem
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
st-d6cd0fd95ab9744b-ca35f48a5fc48686 : AgentTypeEnvironment ⊏ₑ OperatingEcoSystem
st-d6cd0fd95ab9744b-ca35f48a5fc48686 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Specialized Operating Environment: -}
specializedOperatingEnvironment :  Linkage AgentTypeEnvironment AgentTypeEnvironment
specializedOperatingEnvironment = make_subTypeOf "Specialized Operating Environment" "Specialized Operating Environment"

postulate -- specializedOperatingEnvironment is subTypeOf specializedAsset
  st-325a373d66f33dca-12b0287266e936d5  : specializedOperatingEnvironment  ⊏⋆ᵣ  specializedAsset

-- -------------------------------------------------------------------------------------------- 
{- Realized Operating Environment: -}
realizedOperatingEnvironment :  Linkage AgentTypeEnvironment AgentTypeEnvironment
realizedOperatingEnvironment = make_subTypeOf "Realized Operating Environment" "Realized Operating Environment"

postulate -- realizedOperatingEnvironment is subTypeOf realizedFunctionalAsset
  st-325a3a1066f35860-7dc1907b684951ae  : realizedOperatingEnvironment  ⊏⋆ᵣ  realizedFunctionalAsset

-- -------------------------------------------------------------------------------------------- 
{- Service Channel: -}
-- Aggregate Member : Service Channel
ServiceChannel : ClassOfClassOfIndividual
ServiceChannel = ClassOfIndividual


--  ServiceChannel is subTypeOf OperatingConnector
st-80be29065fc2a83d-3d3f4b4062013550 : ServiceChannel ⊏ₑ OperatingConnector
st-80be29065fc2a83d-3d3f4b4062013550 = polySubTypeOf-identity

-- Membership relation
membershipOfServiceChannel :  Linkage AgentTypeEnvironment ServiceChannel
membershipOfServiceChannel = make_upwardNestingRelation "serviceChannel membership" "nested serviceChannel"

-- Aggregation relation
aggregationOfServiceInterfaceServiceChannel :  Linkage ServiceChannel ServiceInterface
aggregationOfServiceInterfaceServiceChannel = make_Relation "ServiceInterface aggregation" "aggregated ServiceInterface"

{- serviceChannel : derived relation obtained by composing
   membershipOfServiceChannel and aggregationOfServiceInterfaceServiceChannel
   It directly links an Agent Type Environment to the final aggregated ServiceInterface
   hiding the reifying ServiceChannel
-}
serviceChannel : Linkage AgentTypeEnvironment ServiceInterface
serviceChannel = membershipOfServiceChannel  ∘  aggregationOfServiceInterfaceServiceChannel



-- -------------------------------------------------------------------------------------------- 
{- Participant Agent: -}
-- Aggregate Member : Participant Agent
ParticipantAgent : ClassOfClassOfBoundedIndividual
ParticipantAgent = ClassOfBoundedIndividual



--  ParticipantAgent is subTypeOf EcosystemMember
st-80be28965fc2a6b8-3d3f4aed6201346c : ParticipantAgent ⊏ₑ EcosystemMember
st-80be28965fc2a6b8-3d3f4aed6201346c = polySubTypeOf-identity

--  ParticipantAgent is subTypeOf AgentType
st-80be28965fc2a6b8-79368381561716a6 : ParticipantAgent ⊏ₑ AgentType
st-80be28965fc2a6b8-79368381561716a6 = polySubTypeOf-identity

-- Membership relation
membershipOfParticipantAgent :  Linkage AgentTypeEnvironment ParticipantAgent
membershipOfParticipantAgent = make_upwardNestingRelation "participantAgent membership" "nested participantAgent"

-- Aggregation relation
aggregationOfAgentTypeParticipantAgent :  Linkage ParticipantAgent AgentType
aggregationOfAgentTypeParticipantAgent = make_Relation "AgentType aggregation" "aggregated AgentType"

{- participantAgent : derived relation obtained by composing
   membershipOfParticipantAgent and aggregationOfAgentTypeParticipantAgent
   It directly links an Agent Type Environment to the final aggregated AgentType
   hiding the reifying ParticipantAgent
-}
participantAgent : Linkage AgentTypeEnvironment AgentType
participantAgent = membershipOfParticipantAgent  ∘  aggregationOfAgentTypeParticipantAgent



-- -------------------------------------------------------------------------------------------- 
{- Performed Interaction: 
set of interactions processes performed in the context of an Operating Eco-System.
-}
-- Aggregate Member : Performed Interaction
PerformedInteraction : ClassOfClassOfBoundedIndividual
PerformedInteraction = ClassOfBoundedIndividual



--  PerformedInteraction is subTypeOf AggregateHolonymyType
st-26cb2d5769610945-c2f2c83b66ea4d78 : PerformedInteraction ⊏ₑ AggregateHolonymyType
st-26cb2d5769610945-c2f2c83b66ea4d78 = polySubTypeOf-identity

--  PerformedInteraction is subTypeOf EnvironmentInteractionProcessType
st-26cb2d5769610945-ca3513af5fc59413 : PerformedInteraction ⊏ₑ EnvironmentInteractionProcessType
st-26cb2d5769610945-ca3513af5fc59413 = polySubTypeOf-identity

-- Membership relation
26CB2D596961099C :  Linkage AgentTypeEnvironment PerformedInteraction
26CB2D596961099C = make_upwardNestingRelation "performedInteraction membership" "nested performedInteraction"

-- Aggregation relation
aggregationOfEnvironmentInteractionProcessTypePerformedInteraction :  Linkage PerformedInteraction EnvironmentInteractionProcessType
aggregationOfEnvironmentInteractionProcessTypePerformedInteraction = make_Relation "EnvironmentInteractionProcessType aggregation" "aggregated EnvironmentInteractionProcessType"

{- performedInteraction : derived relation obtained by composing
   26CB2D596961099C and aggregationOfEnvironmentInteractionProcessTypePerformedInteraction
   It directly links an Agent Type Environment to the final aggregated EnvironmentInteractionProcessType
   hiding the reifying PerformedInteraction
-}
performedInteraction : Linkage AgentTypeEnvironment EnvironmentInteractionProcessType
performedInteraction = 26CB2D596961099C  ∘  aggregationOfEnvironmentInteractionProcessTypePerformedInteraction



-- -------------------------------------------------------------------------------------------- 
{- Subject Agent: -}
-- Aggregate Member : Subject Agent
SubjectAgent : ClassOfClassOfBoundedIndividual
SubjectAgent = ClassOfBoundedIndividual



--  SubjectAgent is subTypeOf ParticipantAgent
st-fa4ffc205ec86201-80be28965fc2a6b8 : SubjectAgent ⊏ₑ ParticipantAgent
st-fa4ffc205ec86201-80be28965fc2a6b8 = polySubTypeOf-identity

--  SubjectAgent is subTypeOf AgentType
st-fa4ffc205ec86201-79368381561716a6 : SubjectAgent ⊏ₑ AgentType
st-fa4ffc205ec86201-79368381561716a6 = polySubTypeOf-identity

-- Membership relation
membershipOfSubjectAgent :  Linkage AgentTypeEnvironment SubjectAgent
membershipOfSubjectAgent = make_upwardNestingRelation "subjectAgent membership" "nested subjectAgent"

-- Aggregation relation
aggregationOfAgentTypeSubjectAgent :  Linkage SubjectAgent AgentType
aggregationOfAgentTypeSubjectAgent = make_Relation "AgentType aggregation" "aggregated AgentType"

{- subjectAgent : derived relation obtained by composing
   membershipOfSubjectAgent and aggregationOfAgentTypeSubjectAgent
   It directly links an Agent Type Environment to the final aggregated AgentType
   hiding the reifying SubjectAgent
-}
subjectAgent : Linkage AgentTypeEnvironment AgentType
subjectAgent = membershipOfSubjectAgent  ∘  aggregationOfAgentTypeSubjectAgent



-- -------------------------------------------------------------------------------------------- 
{- Partner Agent: -}
-- Aggregate Member : Partner Agent
PartnerAgent : ClassOfClassOfBoundedIndividual
PartnerAgent = ClassOfBoundedIndividual



--  PartnerAgent is subTypeOf ParticipantAgent
st-fa4ffc235ec86276-80be28965fc2a6b8 : PartnerAgent ⊏ₑ ParticipantAgent
st-fa4ffc235ec86276-80be28965fc2a6b8 = polySubTypeOf-identity

--  PartnerAgent is subTypeOf AgentType
st-fa4ffc235ec86276-79368381561716a6 : PartnerAgent ⊏ₑ AgentType
st-fa4ffc235ec86276-79368381561716a6 = polySubTypeOf-identity

-- Membership relation
membershipOfPartnerAgent :  Linkage AgentTypeEnvironment PartnerAgent
membershipOfPartnerAgent = make_upwardNestingRelation "partnerAgent membership" "nested partnerAgent"

-- Aggregation relation
aggregationOfAgentTypePartnerAgent :  Linkage PartnerAgent AgentType
aggregationOfAgentTypePartnerAgent = make_Relation "AgentType aggregation" "aggregated AgentType"

{- partnerAgent : derived relation obtained by composing
   membershipOfPartnerAgent and aggregationOfAgentTypePartnerAgent
   It directly links an Agent Type Environment to the final aggregated AgentType
   hiding the reifying PartnerAgent
-}
partnerAgent : Linkage AgentTypeEnvironment AgentType
partnerAgent = membershipOfPartnerAgent  ∘  aggregationOfAgentTypePartnerAgent


