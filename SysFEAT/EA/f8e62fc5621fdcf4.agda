{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Resource Operating Environment: 
A Resource Operating Environment is an operating context which defines the interactions (Business Service Channel) of an Resource Agent Type with its partners (Partner Resource Agent).
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.f8e62fc5621fdcf4 where -- ========== Resource Operating Environment

open import Agda.Primitive
open import SysFEAT.SOF.d6cd0fd95ab9744b public -- Agent Type Environment
open import SysFEAT.EA.f8e64b51621dd3f3 public -- Resource Operating Ecosystem
open import SysFEAT.EA.6a70c21067876cd8 public -- Resource Service Interface
open import SysFEAT.EA.e2ef091962147ad7 public -- Resource Agent Type

ResourceOperatingEnvironment : ClassOfClassOfBoundedIndividual
ResourceOperatingEnvironment = ClassOfBoundedIndividual

--  ResourceOperatingEnvironment is subTypeOf AgentTypeEnvironment
st-f8e62ff2621fdd8d : ResourceOperatingEnvironment ⊏ₑ AgentTypeEnvironment
st-f8e62ff2621fdd8d = polySubTypeOf-identity

--  ResourceOperatingEnvironment is subTypeOf ResourceOperatingEcosystem
st-f8e7d787621f0427 : ResourceOperatingEnvironment ⊏ₑ ResourceOperatingEcosystem
st-f8e7d787621f0427 = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Enterprise Environment: -}
specializedEnterpriseEnvironment :  Linkage ResourceOperatingEnvironment ResourceOperatingEnvironment
specializedEnterpriseEnvironment = make_subTypeOf "Specialized Enterprise Environment" "specializedEnterpriseEnvironment"

postulate -- specializedEnterpriseEnvironment is subTypeOf specializedOperatingEnvironment
  st-325a377166f34785-325a373d66f33dca  : specializedEnterpriseEnvironment   ⊏⋆ᵣ  specializedOperatingEnvironment 

{- Realized Enterprise Environment: -}
realizedEnterpriseEnvironment :  Linkage ResourceOperatingEnvironment ResourceOperatingEnvironment
realizedEnterpriseEnvironment = make_subTypeOf "Realized Enterprise Environment" "realizedEnterpriseEnvironment"

postulate -- realizedEnterpriseEnvironment is subTypeOf realizedOperatingEnvironment
  st-325a3a1766f35d1f-325a3a1066f35860  : realizedEnterpriseEnvironment   ⊏⋆ᵣ  realizedOperatingEnvironment 

{- Business Service Channel: -}
-- Aggregate Member : Business Service Channel
BusinessServiceChannel : ClassOfClassOfIndividual
BusinessServiceChannel = ClassOfIndividual

-- Membership relation
membershipOfBusinessServiceChannel :  Linkage ResourceOperatingEnvironment BusinessServiceChannel
membershipOfBusinessServiceChannel = membershipOfAggregateMember

-- Aggregation relation
aggregationOfResourceServiceInterfaceBusinessServiceChannel :  Linkage BusinessServiceChannel ResourceServiceInterface
aggregationOfResourceServiceInterfaceBusinessServiceChannel = aggregationOfBuildingBlock

{- businessServiceChannel : derived relation obtained by composing
   membershipOfBusinessServiceChannel and aggregationOfResourceServiceInterfaceBusinessServiceChannel
   It directly links an Resource Operating Environment to the final aggregated ResourceServiceInterface
   hiding the reifying BusinessServiceChannel
-}
businessServiceChannel : Linkage ResourceOperatingEnvironment ResourceServiceInterface
businessServiceChannel = membershipOfBusinessServiceChannel  ∘  aggregationOfResourceServiceInterfaceBusinessServiceChannel

{- Subject Resource Agent: -}
-- Aggregate Member : Subject Resource Agent
SubjectResourceAgent : ClassOfClassOfIndividual
SubjectResourceAgent = ClassOfIndividual

-- Membership relation
membershipOfSubjectResourceAgent :  Linkage ResourceOperatingEnvironment SubjectResourceAgent
membershipOfSubjectResourceAgent = membershipOfAggregateMember

-- Aggregation relation
aggregationOfResourceAgentTypeSubjectResourceAgent :  Linkage SubjectResourceAgent ResourceAgentType
aggregationOfResourceAgentTypeSubjectResourceAgent = aggregationOfBuildingBlock

{- subjectResourceAgent : derived relation obtained by composing
   membershipOfSubjectResourceAgent and aggregationOfResourceAgentTypeSubjectResourceAgent
   It directly links an Resource Operating Environment to the final aggregated ResourceAgentType
   hiding the reifying SubjectResourceAgent
-}
subjectResourceAgent : Linkage ResourceOperatingEnvironment ResourceAgentType
subjectResourceAgent = membershipOfSubjectResourceAgent  ∘  aggregationOfResourceAgentTypeSubjectResourceAgent

{- Partner Resource Agent: -}
-- Aggregate Member : Partner Resource Agent
PartnerResourceAgent : ClassOfClassOfIndividual
PartnerResourceAgent = ClassOfIndividual

-- Membership relation
membershipOfPartnerResourceAgent :  Linkage ResourceOperatingEnvironment PartnerResourceAgent
membershipOfPartnerResourceAgent = membershipOfAggregateMember

-- Aggregation relation
aggregationOfResourceAgentTypePartnerResourceAgent :  Linkage PartnerResourceAgent ResourceAgentType
aggregationOfResourceAgentTypePartnerResourceAgent = aggregationOfBuildingBlock

{- partnerResourceAgent : derived relation obtained by composing
   membershipOfPartnerResourceAgent and aggregationOfResourceAgentTypePartnerResourceAgent
   It directly links an Resource Operating Environment to the final aggregated ResourceAgentType
   hiding the reifying PartnerResourceAgent
-}
partnerResourceAgent : Linkage ResourceOperatingEnvironment ResourceAgentType
partnerResourceAgent = membershipOfPartnerResourceAgent  ∘  aggregationOfResourceAgentTypePartnerResourceAgent

{- Participant Enterprise Agent: -}
-- Aggregate Member : Participant Enterprise Agent
ParticipantEnterpriseAgent : ClassOfClassOfIndividual
ParticipantEnterpriseAgent = ClassOfIndividual

-- Membership relation
membershipOfParticipantEnterpriseAgent :  Linkage ResourceOperatingEnvironment ParticipantEnterpriseAgent
membershipOfParticipantEnterpriseAgent = membershipOfAggregateMember

-- Aggregation relation
aggregationOfResourceAgentTypeParticipantEnterpriseAgent :  Linkage ParticipantEnterpriseAgent ResourceAgentType
aggregationOfResourceAgentTypeParticipantEnterpriseAgent = aggregationOfBuildingBlock

{- participantEnterpriseAgent : derived relation obtained by composing
   membershipOfParticipantEnterpriseAgent and aggregationOfResourceAgentTypeParticipantEnterpriseAgent
   It directly links an Resource Operating Environment to the final aggregated ResourceAgentType
   hiding the reifying ParticipantEnterpriseAgent
-}
participantEnterpriseAgent : Linkage ResourceOperatingEnvironment ResourceAgentType
participantEnterpriseAgent = membershipOfParticipantEnterpriseAgent  ∘  aggregationOfResourceAgentTypeParticipantEnterpriseAgent
