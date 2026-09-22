{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Environment Scenario: 
A Business Environment Scenario is a story that describes how a Business Agent Type interacts with its partners (Partner Resource Agents) to achieve Business Outcome Events in a specific Eco-System (Business Agent Environment).This includes:1) A course of events represented by Resource Object Flows depicting the story towards the delivery of expected Business Outcome Events.2) Interacting  Business Agent Types who participate to the story in the considered Eco-System.

Documentation : https://framework.sysfeat.com/pages/2b6f337e61bae6d6.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.2b6f337e61bae6d6 where -- ========== Business Environment Scenario

open import Agda.Primitive
open import SysFEAT.EA.2b6f332061bae622 public -- Business Resource Ecosystem
open import SysFEAT.EA.f8e68967621ff519 public -- Resource Operating Environment Scenario
open import SysFEAT.EA.bcebd31f5491302c public -- Business Agent Type

BusinessEnvironmentScenario : ClassOfClassOfBoundedIndividual
BusinessEnvironmentScenario = ClassOfBoundedIndividual


--  BusinessEnvironmentScenario is subTypeOf BusinessResourceEcosystem
st-2b6f337e61bae6d6-2b6f332061bae622 : BusinessEnvironmentScenario ⊏ₑ BusinessResourceEcosystem
st-2b6f337e61bae6d6-2b6f332061bae622 = polySubTypeOf-identity

--  BusinessEnvironmentScenario is subTypeOf ResourceOperatingEnvironmentScenario
st-2b6f337e61bae6d6-f8e68967621ff519 : BusinessEnvironmentScenario ⊏ₑ ResourceOperatingEnvironmentScenario
st-2b6f337e61bae6d6-f8e68967621ff519 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Partner Resource Agent: -}
-- Aggregate Member : Partner Resource Agent
PartnerResourceAgent : ClassOfClassOfBoundedIndividual
PartnerResourceAgent = ClassOfBoundedIndividual



--  PartnerResourceAgent is subTypeOf ParticipantEnterpriseAgent
st-2b6f35bc61baecc4-2b6f3bf061baf60a : PartnerResourceAgent ⊏ₑ ParticipantEnterpriseAgent
st-2b6f35bc61baecc4-2b6f3bf061baf60a = polySubTypeOf-identity

--  PartnerResourceAgent is subTypeOf PartnerResourceAgent
st-2b6f35bc61baecc4-f8e6b685621ffb8a : PartnerResourceAgent ⊏ₑ PartnerResourceAgent
st-2b6f35bc61baecc4-f8e6b685621ffb8a = polySubTypeOf-identity

--  PartnerResourceAgent is subTypeOf BusinessAgentType
st-2b6f35bc61baecc4-bcebd31f5491302c : PartnerResourceAgent ⊏ₑ BusinessAgentType
st-2b6f35bc61baecc4-bcebd31f5491302c = polySubTypeOf-identity

-- Membership relation
membershipOfPartnerResourceAgent :  Linkage BusinessEnvironmentScenario PartnerResourceAgent
membershipOfPartnerResourceAgent = make_upwardNestingRelation "partnerResourceAgent membership" "nested partnerResourceAgent"

-- Aggregation relation
aggregationOfBusinessAgentTypePartnerResourceAgent :  Linkage PartnerResourceAgent BusinessAgentType
aggregationOfBusinessAgentTypePartnerResourceAgent = make_Relation "BusinessAgentType aggregation" "aggregated BusinessAgentType"

{- partnerResourceAgent : derived relation obtained by composing
   membershipOfPartnerResourceAgent and aggregationOfBusinessAgentTypePartnerResourceAgent
   It directly links an Business Environment Scenario to the final aggregated BusinessAgentType
   hiding the reifying PartnerResourceAgent
-}
partnerResourceAgent : Linkage BusinessEnvironmentScenario BusinessAgentType
partnerResourceAgent = membershipOfPartnerResourceAgent  ∘  aggregationOfBusinessAgentTypePartnerResourceAgent



-- -------------------------------------------------------------------------------------------- 
{- Subject Resource Agent: -}
-- Aggregate Member : Subject Resource Agent
SubjectResourceAgent : ClassOfClassOfBoundedIndividual
SubjectResourceAgent = ClassOfBoundedIndividual



--  SubjectResourceAgent is subTypeOf ParticipantEnterpriseAgent
st-2b6f5c4161bafdfd-2b6f3bf061baf60a : SubjectResourceAgent ⊏ₑ ParticipantEnterpriseAgent
st-2b6f5c4161bafdfd-2b6f3bf061baf60a = polySubTypeOf-identity

--  SubjectResourceAgent is subTypeOf SubjectResourceAgent
st-2b6f5c4161bafdfd-f8e6b637621ffa9b : SubjectResourceAgent ⊏ₑ SubjectResourceAgent
st-2b6f5c4161bafdfd-f8e6b637621ffa9b = polySubTypeOf-identity

--  SubjectResourceAgent is subTypeOf BusinessAgentType
st-2b6f5c4161bafdfd-bcebd31f5491302c : SubjectResourceAgent ⊏ₑ BusinessAgentType
st-2b6f5c4161bafdfd-bcebd31f5491302c = polySubTypeOf-identity

-- Membership relation
membershipOfSubjectResourceAgent :  Linkage BusinessEnvironmentScenario SubjectResourceAgent
membershipOfSubjectResourceAgent = make_upwardNestingRelation "subjectResourceAgent membership" "nested subjectResourceAgent"

-- Aggregation relation
aggregationOfBusinessAgentTypeSubjectResourceAgent :  Linkage SubjectResourceAgent BusinessAgentType
aggregationOfBusinessAgentTypeSubjectResourceAgent = make_Relation "BusinessAgentType aggregation" "aggregated BusinessAgentType"

{- subjectResourceAgent : derived relation obtained by composing
   membershipOfSubjectResourceAgent and aggregationOfBusinessAgentTypeSubjectResourceAgent
   It directly links an Business Environment Scenario to the final aggregated BusinessAgentType
   hiding the reifying SubjectResourceAgent
-}
subjectResourceAgent : Linkage BusinessEnvironmentScenario BusinessAgentType
subjectResourceAgent = membershipOfSubjectResourceAgent  ∘  aggregationOfBusinessAgentTypeSubjectResourceAgent


