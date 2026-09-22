{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Resource Operating Environment: 
A Resource Operating Environment is an operating context which defines the interactions (Business Service Channel) of an Resource Agent Type with its partners (Partner Resource Agent).

Documentation : https://framework.sysfeat.com/pages/f8e62fc5621fdcf4.htm

External references:
  Russell Ackoff - System of Concepts - Environment of a system: ../resources/external-references/Ackoff-1971-Towards-a-system-of-systems-concepts.pdf#EnvironmentOfaSystem
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
st-f8e62fc5621fdcf4-d6cd0fd95ab9744b : ResourceOperatingEnvironment ⊏ₑ AgentTypeEnvironment
st-f8e62fc5621fdcf4-d6cd0fd95ab9744b = polySubTypeOf-identity

--  ResourceOperatingEnvironment is subTypeOf ResourceOperatingEcosystem
st-f8e62fc5621fdcf4-f8e64b51621dd3f3 : ResourceOperatingEnvironment ⊏ₑ ResourceOperatingEcosystem
st-f8e62fc5621fdcf4-f8e64b51621dd3f3 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Specialized Enterprise Environment: -}
specializedEnterpriseEnvironment :  Linkage ResourceOperatingEnvironment ResourceOperatingEnvironment
specializedEnterpriseEnvironment = make_subTypeOf "Specialized Enterprise Environment" "Specialized Enterprise Environment"

postulate -- specializedEnterpriseEnvironment is subTypeOf specializedOperatingEnvironment
  st-325a377166f34785-325a373d66f33dca  : specializedEnterpriseEnvironment  ⊏⋆ᵣ  specializedOperatingEnvironment

-- -------------------------------------------------------------------------------------------- 
{- Realized Enterprise Environment: -}
realizedEnterpriseEnvironment :  Linkage ResourceOperatingEnvironment ResourceOperatingEnvironment
realizedEnterpriseEnvironment = make_subTypeOf "Realized Enterprise Environment" "Realized Enterprise Environment"

postulate -- realizedEnterpriseEnvironment is subTypeOf realizedOperatingEnvironment
  st-325a3a1766f35d1f-325a3a1066f35860  : realizedEnterpriseEnvironment  ⊏⋆ᵣ  realizedOperatingEnvironment

-- -------------------------------------------------------------------------------------------- 
{- Business Service Channel: -}
-- Aggregate Member : Business Service Channel
BusinessServiceChannel : ClassOfClassOfIndividual
BusinessServiceChannel = ClassOfIndividual


--  BusinessServiceChannel is subTypeOf ServiceChannel
st-2b6f436f61bafb0b-80be29065fc2a83d : BusinessServiceChannel ⊏ₑ ServiceChannel
st-2b6f436f61bafb0b-80be29065fc2a83d = polySubTypeOf-identity

--  BusinessServiceChannel is subTypeOf EnterpriseEcosystemConnection
st-2b6f436f61bafb0b-f8e7b91f621f01e9 : BusinessServiceChannel ⊏ₑ EnterpriseEcosystemConnection
st-2b6f436f61bafb0b-f8e7b91f621f01e9 = polySubTypeOf-identity

--  BusinessServiceChannel is subTypeOf BusinessEcosystemConnection
st-2b6f436f61bafb0b-f8e7db56621f0cef : BusinessServiceChannel ⊏ₑ BusinessEcosystemConnection
st-2b6f436f61bafb0b-f8e7db56621f0cef = polySubTypeOf-identity

-- Membership relation
membershipOfBusinessServiceChannel :  Linkage ResourceOperatingEnvironment BusinessServiceChannel
membershipOfBusinessServiceChannel = make_upwardNestingRelation "businessServiceChannel membership" "nested businessServiceChannel"

-- Aggregation relation
aggregationOfResourceServiceInterfaceBusinessServiceChannel :  Linkage BusinessServiceChannel ResourceServiceInterface
aggregationOfResourceServiceInterfaceBusinessServiceChannel = make_Relation "ResourceServiceInterface aggregation" "aggregated ResourceServiceInterface"

{- businessServiceChannel : derived relation obtained by composing
   membershipOfBusinessServiceChannel and aggregationOfResourceServiceInterfaceBusinessServiceChannel
   It directly links an Resource Operating Environment to the final aggregated ResourceServiceInterface
   hiding the reifying BusinessServiceChannel
-}
businessServiceChannel : Linkage ResourceOperatingEnvironment ResourceServiceInterface
businessServiceChannel = membershipOfBusinessServiceChannel  ∘  aggregationOfResourceServiceInterfaceBusinessServiceChannel



-- -------------------------------------------------------------------------------------------- 
{- Subject Resource Agent: -}
-- Aggregate Member : Subject Resource Agent
SubjectResourceAgent : ClassOfClassOfBoundedIndividual
SubjectResourceAgent = ClassOfBoundedIndividual



--  SubjectResourceAgent is subTypeOf SubjectAgent
st-f8e6390c621fddf1-fa4ffc205ec86201 : SubjectResourceAgent ⊏ₑ SubjectAgent
st-f8e6390c621fddf1-fa4ffc205ec86201 = polySubTypeOf-identity

--  SubjectResourceAgent is subTypeOf ParticipantEnterpriseAgent
st-f8e6390c621fddf1-2b6f42fc61baf9b7 : SubjectResourceAgent ⊏ₑ ParticipantEnterpriseAgent
st-f8e6390c621fddf1-2b6f42fc61baf9b7 = polySubTypeOf-identity

--  SubjectResourceAgent is subTypeOf ResourceAgentType
st-f8e6390c621fddf1-e2ef091962147ad7 : SubjectResourceAgent ⊏ₑ ResourceAgentType
st-f8e6390c621fddf1-e2ef091962147ad7 = polySubTypeOf-identity

-- Membership relation
membershipOfSubjectResourceAgent :  Linkage ResourceOperatingEnvironment SubjectResourceAgent
membershipOfSubjectResourceAgent = make_upwardNestingRelation "subjectResourceAgent membership" "nested subjectResourceAgent"

-- Aggregation relation
aggregationOfResourceAgentTypeSubjectResourceAgent :  Linkage SubjectResourceAgent ResourceAgentType
aggregationOfResourceAgentTypeSubjectResourceAgent = make_Relation "ResourceAgentType aggregation" "aggregated ResourceAgentType"

{- subjectResourceAgent : derived relation obtained by composing
   membershipOfSubjectResourceAgent and aggregationOfResourceAgentTypeSubjectResourceAgent
   It directly links an Resource Operating Environment to the final aggregated ResourceAgentType
   hiding the reifying SubjectResourceAgent
-}
subjectResourceAgent : Linkage ResourceOperatingEnvironment ResourceAgentType
subjectResourceAgent = membershipOfSubjectResourceAgent  ∘  aggregationOfResourceAgentTypeSubjectResourceAgent



-- -------------------------------------------------------------------------------------------- 
{- Partner Resource Agent: -}
-- Aggregate Member : Partner Resource Agent
PartnerResourceAgent : ClassOfClassOfBoundedIndividual
PartnerResourceAgent = ClassOfBoundedIndividual



--  PartnerResourceAgent is subTypeOf PartnerAgent
st-f8e63939621fdefd-fa4ffc235ec86276 : PartnerResourceAgent ⊏ₑ PartnerAgent
st-f8e63939621fdefd-fa4ffc235ec86276 = polySubTypeOf-identity

--  PartnerResourceAgent is subTypeOf ParticipantEnterpriseAgent
st-f8e63939621fdefd-2b6f42fc61baf9b7 : PartnerResourceAgent ⊏ₑ ParticipantEnterpriseAgent
st-f8e63939621fdefd-2b6f42fc61baf9b7 = polySubTypeOf-identity

--  PartnerResourceAgent is subTypeOf ResourceAgentType
st-f8e63939621fdefd-e2ef091962147ad7 : PartnerResourceAgent ⊏ₑ ResourceAgentType
st-f8e63939621fdefd-e2ef091962147ad7 = polySubTypeOf-identity

-- Membership relation
membershipOfPartnerResourceAgent :  Linkage ResourceOperatingEnvironment PartnerResourceAgent
membershipOfPartnerResourceAgent = make_upwardNestingRelation "partnerResourceAgent membership" "nested partnerResourceAgent"

-- Aggregation relation
aggregationOfResourceAgentTypePartnerResourceAgent :  Linkage PartnerResourceAgent ResourceAgentType
aggregationOfResourceAgentTypePartnerResourceAgent = make_Relation "ResourceAgentType aggregation" "aggregated ResourceAgentType"

{- partnerResourceAgent : derived relation obtained by composing
   membershipOfPartnerResourceAgent and aggregationOfResourceAgentTypePartnerResourceAgent
   It directly links an Resource Operating Environment to the final aggregated ResourceAgentType
   hiding the reifying PartnerResourceAgent
-}
partnerResourceAgent : Linkage ResourceOperatingEnvironment ResourceAgentType
partnerResourceAgent = membershipOfPartnerResourceAgent  ∘  aggregationOfResourceAgentTypePartnerResourceAgent



-- -------------------------------------------------------------------------------------------- 
{- Participant Enterprise Agent: -}
-- Aggregate Member : Participant Enterprise Agent
ParticipantEnterpriseAgent : ClassOfClassOfBoundedIndividual
ParticipantEnterpriseAgent = ClassOfBoundedIndividual



--  ParticipantEnterpriseAgent is subTypeOf ParticipantAgent
st-2b6f42fc61baf9b7-80be28965fc2a6b8 : ParticipantEnterpriseAgent ⊏ₑ ParticipantAgent
st-2b6f42fc61baf9b7-80be28965fc2a6b8 = polySubTypeOf-identity

--  ParticipantEnterpriseAgent is subTypeOf EnterpriseEcosystemPart
st-2b6f42fc61baf9b7-f8e6b83c621fffe6 : ParticipantEnterpriseAgent ⊏ₑ EnterpriseEcosystemPart
st-2b6f42fc61baf9b7-f8e6b83c621fffe6 = polySubTypeOf-identity

--  ParticipantEnterpriseAgent is subTypeOf ResourceEcosystemPart
st-2b6f42fc61baf9b7-95129626620b544c : ParticipantEnterpriseAgent ⊏ₑ ResourceEcosystemPart
st-2b6f42fc61baf9b7-95129626620b544c = polySubTypeOf-identity

--  ParticipantEnterpriseAgent is subTypeOf ResourceAgentType
st-2b6f42fc61baf9b7-e2ef091962147ad7 : ParticipantEnterpriseAgent ⊏ₑ ResourceAgentType
st-2b6f42fc61baf9b7-e2ef091962147ad7 = polySubTypeOf-identity

-- Membership relation
membershipOfParticipantEnterpriseAgent :  Linkage ResourceOperatingEnvironment ParticipantEnterpriseAgent
membershipOfParticipantEnterpriseAgent = make_upwardNestingRelation "participantEnterpriseAgent membership" "nested participantEnterpriseAgent"

-- Aggregation relation
aggregationOfResourceAgentTypeParticipantEnterpriseAgent :  Linkage ParticipantEnterpriseAgent ResourceAgentType
aggregationOfResourceAgentTypeParticipantEnterpriseAgent = make_Relation "ResourceAgentType aggregation" "aggregated ResourceAgentType"

{- participantEnterpriseAgent : derived relation obtained by composing
   membershipOfParticipantEnterpriseAgent and aggregationOfResourceAgentTypeParticipantEnterpriseAgent
   It directly links an Resource Operating Environment to the final aggregated ResourceAgentType
   hiding the reifying ParticipantEnterpriseAgent
-}
participantEnterpriseAgent : Linkage ResourceOperatingEnvironment ResourceAgentType
participantEnterpriseAgent = membershipOfParticipantEnterpriseAgent  ∘  aggregationOfResourceAgentTypeParticipantEnterpriseAgent


