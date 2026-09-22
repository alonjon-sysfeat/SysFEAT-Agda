{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Conceptual Environment Scenario: 
As part of the enterprise Conceptual Operating Model, a Conceptual Environment Scenario is a story that describes how an Operating Domain interacts with its partners (Business Partner) to achieve Business Outcome Events in a specific Conceptual Environment..This includes:1) A course of events represented by Resource Object Flows depicting the story towards the delivery of expected Business Outcome Events.2) Interacting partners who participate to the story in the considered Conceptual Environment.

Documentation : https://framework.sysfeat.com/pages/f97e4315632b38d5.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.f97e4315632b38d5 where -- ========== Conceptual Environment Scenario

open import Agda.Primitive
open import SysFEAT.EA.f97e3e30632b31c1 public -- Conceptual Ecosystem
open import SysFEAT.SOF.ca3513af5fc59413 public -- Environment Interaction Process Type
open import SysFEAT.EA.9810b060551137d0 public -- Operating Domain
open import SysFEAT.EA.08d17cde678a2b47 public -- Business Partner

ConceptualEnvironmentScenario : ClassOfClassOfBoundedIndividual
ConceptualEnvironmentScenario = ClassOfBoundedIndividual


--  ConceptualEnvironmentScenario is subTypeOf ConceptualEcosystem
st-f97e4315632b38d5-f97e3e30632b31c1 : ConceptualEnvironmentScenario ⊏ₑ ConceptualEcosystem
st-f97e4315632b38d5-f97e3e30632b31c1 = polySubTypeOf-identity

--  ConceptualEnvironmentScenario is subTypeOf EnvironmentInteractionProcessType
st-f97e4315632b38d5-ca3513af5fc59413 : ConceptualEnvironmentScenario ⊏ₑ EnvironmentInteractionProcessType
st-f97e4315632b38d5-ca3513af5fc59413 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Subject Activity Domain: -}
-- Aggregate Member : Subject Activity Domain
SubjectActivityDomain : ClassOfClassOfBoundedIndividual
SubjectActivityDomain = ClassOfBoundedIndividual



--  SubjectActivityDomain is subTypeOf SubjectAgent
st-f97e4605632b3b80-ca3514125fc59538 : SubjectActivityDomain ⊏ₑ SubjectAgent
st-f97e4605632b3b80-ca3514125fc59538 = polySubTypeOf-identity

--  SubjectActivityDomain is subTypeOf ParticipantEnterpriseAgent
st-f97e4605632b3b80-2b6f3bf061baf60a : SubjectActivityDomain ⊏ₑ ParticipantEnterpriseAgent
st-f97e4605632b3b80-2b6f3bf061baf60a = polySubTypeOf-identity

--  SubjectActivityDomain is subTypeOf LogicalEcosystemMember
st-f97e4605632b3b80-f97e3fde632b3462 : SubjectActivityDomain ⊏ₑ LogicalEcosystemMember
st-f97e4605632b3b80-f97e3fde632b3462 = polySubTypeOf-identity

--  SubjectActivityDomain is subTypeOf OperatingDomain
st-f97e4605632b3b80-9810b060551137d0 : SubjectActivityDomain ⊏ₑ OperatingDomain
st-f97e4605632b3b80-9810b060551137d0 = polySubTypeOf-identity

-- Membership relation
membershipOfSubjectActivityDomain :  Linkage ConceptualEnvironmentScenario SubjectActivityDomain
membershipOfSubjectActivityDomain = make_upwardNestingRelation "subjectActivityDomain membership" "nested subjectActivityDomain"

-- Aggregation relation
aggregationOfOperatingDomainSubjectActivityDomain :  Linkage SubjectActivityDomain OperatingDomain
aggregationOfOperatingDomainSubjectActivityDomain = make_Relation "OperatingDomain aggregation" "aggregated OperatingDomain"

{- subjectActivityDomain : derived relation obtained by composing
   membershipOfSubjectActivityDomain and aggregationOfOperatingDomainSubjectActivityDomain
   It directly links an Conceptual Environment Scenario to the final aggregated OperatingDomain
   hiding the reifying SubjectActivityDomain
-}
subjectActivityDomain : Linkage ConceptualEnvironmentScenario OperatingDomain
subjectActivityDomain = membershipOfSubjectActivityDomain  ∘  aggregationOfOperatingDomainSubjectActivityDomain



-- -------------------------------------------------------------------------------------------- 
{- Business Partner: -}
-- Aggregate Member : Business Partner
BusinessPartner : ClassOfClassOfBoundedIndividual
BusinessPartner = ClassOfBoundedIndividual



--  BusinessPartner is subTypeOf PartnerAgent
st-f97e4689632b3cad-ca35159e5fc5978d : BusinessPartner ⊏ₑ PartnerAgent
st-f97e4689632b3cad-ca35159e5fc5978d = polySubTypeOf-identity

--  BusinessPartner is subTypeOf ParticipantEnterpriseAgent
st-f97e4689632b3cad-2b6f3bf061baf60a : BusinessPartner ⊏ₑ ParticipantEnterpriseAgent
st-f97e4689632b3cad-2b6f3bf061baf60a = polySubTypeOf-identity

--  BusinessPartner is subTypeOf BusinessPartner
st-f97e4689632b3cad-08d17cde678a2b47 : BusinessPartner ⊏ₑ BusinessPartner
st-f97e4689632b3cad-08d17cde678a2b47 = polySubTypeOf-identity

-- Membership relation
membershipOfBusinessPartner :  Linkage ConceptualEnvironmentScenario BusinessPartner
membershipOfBusinessPartner = make_upwardNestingRelation "businessPartner membership" "nested businessPartner"

-- Aggregation relation
aggregationOfBusinessPartnerBusinessPartner :  Linkage BusinessPartner BusinessPartner
aggregationOfBusinessPartnerBusinessPartner = make_Relation "BusinessPartner aggregation" "aggregated BusinessPartner"

{- businessPartner : derived relation obtained by composing
   membershipOfBusinessPartner and aggregationOfBusinessPartnerBusinessPartner
   It directly links an Conceptual Environment Scenario to the final aggregated BusinessPartner
   hiding the reifying BusinessPartner
-}
businessPartner : Linkage ConceptualEnvironmentScenario BusinessPartner
businessPartner = membershipOfBusinessPartner  ∘  aggregationOfBusinessPartnerBusinessPartner


