{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Environment Scenario: 
A Business Environment Scenario is a story that describes how a Business Agent Type interacts with its partners (Partner Resource Agents) to achieve Business Outcome Events in a specific Eco-System (Business Agent Environment).This includes:1) A course of events represented by Resource Object Flows depicting the story towards the delivery of expected Business Outcome Events.2) Interacting  Business Agent Types who participate to the story in the considered Eco-System.
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
st-2b705d5061ba00d6 : BusinessEnvironmentScenario ⊏ₑ BusinessResourceEcosystem
st-2b705d5061ba00d6 = polySubTypeOf-identity

--  BusinessEnvironmentScenario is subTypeOf ResourceOperatingEnvironmentScenario
st-f8e7dabe621f0bb4 : BusinessEnvironmentScenario ⊏ₑ ResourceOperatingEnvironmentScenario
st-f8e7dabe621f0bb4 = polySubTypeOf-identity

-- == Relationships =======================

{- Partner Resource Agent: -}
-- Aggregate Member : Partner Resource Agent
PartnerResourceAgent : ClassOfClassOfIndividual
PartnerResourceAgent = ClassOfIndividual

-- Membership relation
membershipOfPartnerResourceAgent :  Linkage BusinessEnvironmentScenario PartnerResourceAgent
membershipOfPartnerResourceAgent = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessAgentTypePartnerResourceAgent :  Linkage PartnerResourceAgent BusinessAgentType
aggregationOfBusinessAgentTypePartnerResourceAgent = aggregationOfBuildingBlock

{- partnerResourceAgent : derived relation obtained by composing
   membershipOfPartnerResourceAgent and aggregationOfBusinessAgentTypePartnerResourceAgent
   It directly links an Business Environment Scenario to the final aggregated BusinessAgentType
   hiding the reifying PartnerResourceAgent
-}
partnerResourceAgent : Linkage BusinessEnvironmentScenario BusinessAgentType
partnerResourceAgent = membershipOfPartnerResourceAgent  ∘  aggregationOfBusinessAgentTypePartnerResourceAgent

{- Subject Resource Agent: -}
-- Aggregate Member : Subject Resource Agent
SubjectResourceAgent : ClassOfClassOfIndividual
SubjectResourceAgent = ClassOfIndividual

-- Membership relation
membershipOfSubjectResourceAgent :  Linkage BusinessEnvironmentScenario SubjectResourceAgent
membershipOfSubjectResourceAgent = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessAgentTypeSubjectResourceAgent :  Linkage SubjectResourceAgent BusinessAgentType
aggregationOfBusinessAgentTypeSubjectResourceAgent = aggregationOfBuildingBlock

{- subjectResourceAgent : derived relation obtained by composing
   membershipOfSubjectResourceAgent and aggregationOfBusinessAgentTypeSubjectResourceAgent
   It directly links an Business Environment Scenario to the final aggregated BusinessAgentType
   hiding the reifying SubjectResourceAgent
-}
subjectResourceAgent : Linkage BusinessEnvironmentScenario BusinessAgentType
subjectResourceAgent = membershipOfSubjectResourceAgent  ∘  aggregationOfBusinessAgentTypeSubjectResourceAgent
