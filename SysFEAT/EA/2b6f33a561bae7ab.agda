{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Agent Environment: 
A Business Agent Environment is an operating context which defines the interactions (Business Service Channel) of a Business Agent Type with its partners (Partner Resource Agent).

Documentation : https://framework.sysfeat.com/pages/2b6f33a561bae7ab.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.2b6f33a561bae7ab where -- ========== Business Agent Environment

open import Agda.Primitive
open import SysFEAT.EA.2b6f332061bae622 public -- Business Resource Ecosystem
open import SysFEAT.EA.f8e62fc5621fdcf4 public -- Resource Operating Environment
open import SysFEAT.EA.2b6f337e61bae6d6 public -- Business Environment Scenario
open import SysFEAT.EA.7c4097c855271c8e public -- Conceptual Environment
open import SysFEAT.EA.bcebd31f5491302c public -- Business Agent Type

BusinessAgentEnvironment : ClassOfClassOfBoundedIndividual
BusinessAgentEnvironment = ClassOfBoundedIndividual

--  BusinessAgentEnvironment is subTypeOf BusinessResourceEcosystem
st-2b6f33a561bae7ab-2b6f332061bae622 : BusinessAgentEnvironment ⊏ₑ BusinessResourceEcosystem
st-2b6f33a561bae7ab-2b6f332061bae622 = polySubTypeOf-identity

--  BusinessAgentEnvironment is subTypeOf ResourceOperatingEnvironment
st-2b6f33a561bae7ab-f8e62fc5621fdcf4 : BusinessAgentEnvironment ⊏ₑ ResourceOperatingEnvironment
st-2b6f33a561bae7ab-f8e62fc5621fdcf4 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Scenarized Business Environment: -}
scenarizedBusinessEnvironment :  Linkage BusinessAgentEnvironment BusinessEnvironmentScenario
scenarizedBusinessEnvironment = make_classOfHolonymy "Scenarized Business Environment" "Scenarized Business Environment"

postulate -- scenarizedBusinessEnvironment is subTypeOf scenarizedOperatingEnvironment
  st-2b6f37c161baeeed-f8e7d8be621f0722  : scenarizedBusinessEnvironment  ⊏⋆ᵣ  scenarizedOperatingEnvironment

-- -------------------------------------------------------------------------------------------- 
{- Specialized Resource Agent Environment: -}
specializedResourceAgentEnvironment :  Linkage BusinessAgentEnvironment BusinessAgentEnvironment
specializedResourceAgentEnvironment = make_subTypeOf "Specialized Resource Agent Environment" "Specialized Resource Agent Environment"

postulate -- specializedResourceAgentEnvironment is subTypeOf specializedEnterpriseEnvironment
  st-325a376966f34463-325a377166f34785  : specializedResourceAgentEnvironment  ⊏⋆ᵣ  specializedEnterpriseEnvironment

-- -------------------------------------------------------------------------------------------- 
{- Realized Logical Environment: -}
realizedLogicalEnvironment :  Linkage BusinessAgentEnvironment ConceptualEnvironment
realizedLogicalEnvironment = make_subTypeOf "Realized Logical Environment" "Realized Logical Environment"

postulate -- realizedLogicalEnvironment is subTypeOf realizedEnterpriseEnvironment
  st-325a3a1366f35a5e-325a3a1766f35d1f  : realizedLogicalEnvironment  ⊏⋆ᵣ  realizedEnterpriseEnvironment

-- -------------------------------------------------------------------------------------------- 
{- Partner Resource Agent: -}
-- Aggregate Member : Partner Resource Agent
PartnerResourceAgent : ClassOfClassOfBoundedIndividual
PartnerResourceAgent = ClassOfBoundedIndividual



--  PartnerResourceAgent is subTypeOf PartnerResourceAgent
st-2b6f34c861bae941-f8e63939621fdefd : PartnerResourceAgent ⊏ₑ PartnerResourceAgent
st-2b6f34c861bae941-f8e63939621fdefd = polySubTypeOf-identity

--  PartnerResourceAgent is subTypeOf ParticipantEnterpriseAgent
st-2b6f34c861bae941-2b6f42fc61baf9b7 : PartnerResourceAgent ⊏ₑ ParticipantEnterpriseAgent
st-2b6f34c861bae941-2b6f42fc61baf9b7 = polySubTypeOf-identity

--  PartnerResourceAgent is subTypeOf BusinessAgentType
st-2b6f34c861bae941-bcebd31f5491302c : PartnerResourceAgent ⊏ₑ BusinessAgentType
st-2b6f34c861bae941-bcebd31f5491302c = polySubTypeOf-identity

-- Membership relation
membershipOfPartnerResourceAgent :  Linkage BusinessAgentEnvironment PartnerResourceAgent
membershipOfPartnerResourceAgent = make_upwardNestingRelation "partnerResourceAgent membership" "nested partnerResourceAgent"

-- Aggregation relation
aggregationOfBusinessAgentTypePartnerResourceAgent :  Linkage PartnerResourceAgent BusinessAgentType
aggregationOfBusinessAgentTypePartnerResourceAgent = make_Relation "BusinessAgentType aggregation" "aggregated BusinessAgentType"

{- partnerResourceAgent : derived relation obtained by composing
   membershipOfPartnerResourceAgent and aggregationOfBusinessAgentTypePartnerResourceAgent
   It directly links an Business Agent Environment to the final aggregated BusinessAgentType
   hiding the reifying PartnerResourceAgent
-}
partnerResourceAgent : Linkage BusinessAgentEnvironment BusinessAgentType
partnerResourceAgent = membershipOfPartnerResourceAgent  ∘  aggregationOfBusinessAgentTypePartnerResourceAgent



-- -------------------------------------------------------------------------------------------- 
{- Subject Resource Agent: -}
-- Aggregate Member : Subject Resource Agent
SubjectResourceAgent : ClassOfClassOfBoundedIndividual
SubjectResourceAgent = ClassOfBoundedIndividual



--  SubjectResourceAgent is subTypeOf SubjectResourceAgent
st-2b6f350061baea62-f8e6390c621fddf1 : SubjectResourceAgent ⊏ₑ SubjectResourceAgent
st-2b6f350061baea62-f8e6390c621fddf1 = polySubTypeOf-identity

--  SubjectResourceAgent is subTypeOf ParticipantEnterpriseAgent
st-2b6f350061baea62-2b6f42fc61baf9b7 : SubjectResourceAgent ⊏ₑ ParticipantEnterpriseAgent
st-2b6f350061baea62-2b6f42fc61baf9b7 = polySubTypeOf-identity

--  SubjectResourceAgent is subTypeOf BusinessAgentType
st-2b6f350061baea62-bcebd31f5491302c : SubjectResourceAgent ⊏ₑ BusinessAgentType
st-2b6f350061baea62-bcebd31f5491302c = polySubTypeOf-identity

-- Membership relation
membershipOfSubjectResourceAgent :  Linkage BusinessAgentEnvironment SubjectResourceAgent
membershipOfSubjectResourceAgent = make_upwardNestingRelation "subjectResourceAgent membership" "nested subjectResourceAgent"

-- Aggregation relation
aggregationOfBusinessAgentTypeSubjectResourceAgent :  Linkage SubjectResourceAgent BusinessAgentType
aggregationOfBusinessAgentTypeSubjectResourceAgent = make_Relation "BusinessAgentType aggregation" "aggregated BusinessAgentType"

{- subjectResourceAgent : derived relation obtained by composing
   membershipOfSubjectResourceAgent and aggregationOfBusinessAgentTypeSubjectResourceAgent
   It directly links an Business Agent Environment to the final aggregated BusinessAgentType
   hiding the reifying SubjectResourceAgent
-}
subjectResourceAgent : Linkage BusinessAgentEnvironment BusinessAgentType
subjectResourceAgent = membershipOfSubjectResourceAgent  ∘  aggregationOfBusinessAgentTypeSubjectResourceAgent


