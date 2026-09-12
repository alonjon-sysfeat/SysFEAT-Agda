{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Conceptual Environment Scenario: 
As part of the enterprise Conceptual Operating Model, a Conceptual Environment Scenario is a story that describes how an Operating Domain interacts with its partners (Business Partner) to achieve Business Outcome Events in a specific Conceptual Environment..This includes:1) A course of events represented by Resource Object Flows depicting the story towards the delivery of expected Business Outcome Events.2) Interacting partners who participate to the story in the considered Conceptual Environment.
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
st-f97e48b8632b4006 : ConceptualEnvironmentScenario ⊏ₑ ConceptualEcosystem
st-f97e48b8632b4006 = polySubTypeOf-identity

--  ConceptualEnvironmentScenario is subTypeOf EnvironmentInteractionProcessType
st-6a70b907678762e9 : ConceptualEnvironmentScenario ⊏ₑ EnvironmentInteractionProcessType
st-6a70b907678762e9 = polySubTypeOf-identity

-- == Relationships =======================

{- Subject Activity Domain: -}
-- Aggregate Member : Subject Activity Domain
SubjectActivityDomain : ClassOfClassOfIndividual
SubjectActivityDomain = ClassOfIndividual

-- Membership relation
membershipOfSubjectActivityDomain :  Linkage ConceptualEnvironmentScenario SubjectActivityDomain
membershipOfSubjectActivityDomain = membershipOfAggregateMember

-- Aggregation relation
aggregationOfOperatingDomainSubjectActivityDomain :  Linkage SubjectActivityDomain OperatingDomain
aggregationOfOperatingDomainSubjectActivityDomain = aggregationOfBuildingBlock

{- subjectActivityDomain : derived relation obtained by composing
   membershipOfSubjectActivityDomain and aggregationOfOperatingDomainSubjectActivityDomain
   It directly links an Conceptual Environment Scenario to the final aggregated OperatingDomain
   hiding the reifying SubjectActivityDomain
-}
subjectActivityDomain : Linkage ConceptualEnvironmentScenario OperatingDomain
subjectActivityDomain = membershipOfSubjectActivityDomain  ∘  aggregationOfOperatingDomainSubjectActivityDomain

{- Business Partner: -}
-- Aggregate Member : Business Partner
BusinessPartner : ClassOfClassOfIndividual
BusinessPartner = ClassOfIndividual

-- Membership relation
membershipOfBusinessPartner :  Linkage ConceptualEnvironmentScenario BusinessPartner
membershipOfBusinessPartner = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessPartnerBusinessPartner :  Linkage BusinessPartner BusinessPartner
aggregationOfBusinessPartnerBusinessPartner = aggregationOfBuildingBlock

{- businessPartner : derived relation obtained by composing
   membershipOfBusinessPartner and aggregationOfBusinessPartnerBusinessPartner
   It directly links an Conceptual Environment Scenario to the final aggregated BusinessPartner
   hiding the reifying BusinessPartner
-}
businessPartner : Linkage ConceptualEnvironmentScenario BusinessPartner
businessPartner = membershipOfBusinessPartner  ∘  aggregationOfBusinessPartnerBusinessPartner
