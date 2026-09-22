{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Application System Scenario: 
An Application System Scenario is a story involving the components of an Application System (Applications), interacting in order to produce Information Outcome Events.This includes:1) A course of events represented by Application Flows depicting the story towards the delivery of expected Information Outcome Events.2) Interacting Applications who participate to the story.

Documentation : https://framework.sysfeat.com/pages/e4c0e7285ed0625d.htm

External references:
  OpenGroup - ArchiMate - Application Interaction: https://pubs.opengroup.org/architecture/archimate32-doc/ch-Application-Layer.html#sec-Application-Interaction
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.e4c0e7285ed0625d where -- ========== Application System Scenario

open import Agda.Primitive
open import SysFEAT.EA.25c09cb461e2efd3 public -- Software System Scenario
open import SysFEAT.EA.46194ca7560d3a45 public -- Application System

ApplicationSystemScenario : ClassOfClassOfBoundedIndividual
ApplicationSystemScenario = ClassOfBoundedIndividual

--  ApplicationSystemScenario is subTypeOf SOftwareSystemScenario
st-e4c0e7285ed0625d-25c09cb461e2efd3 : ApplicationSystemScenario ⊏ₑ SOftwareSystemScenario
st-e4c0e7285ed0625d-25c09cb461e2efd3 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Partner Application System: -}
-- Aggregate Member : Partner Application System
PartnerApplicationSystem : ClassOfClassOfBoundedIndividual
PartnerApplicationSystem = ClassOfBoundedIndividual



--  PartnerApplicationSystem is subTypeOf ApplicationSystem
st-e4c0e7985ed064d2-46194ca7560d3a45 : PartnerApplicationSystem ⊏ₑ ApplicationSystem
st-e4c0e7985ed064d2-46194ca7560d3a45 = polySubTypeOf-identity

-- Membership relation
membershipOfPartnerApplicationSystem :  Linkage ApplicationSystemScenario PartnerApplicationSystem
membershipOfPartnerApplicationSystem = make_upwardNestingRelation "partnerApplicationSystem membership" "nested partnerApplicationSystem"

-- Aggregation relation
aggregationOfApplicationSystemPartnerApplicationSystem :  Linkage PartnerApplicationSystem ApplicationSystem
aggregationOfApplicationSystemPartnerApplicationSystem = make_Relation "ApplicationSystem aggregation" "aggregated ApplicationSystem"

{- partnerApplicationSystem : derived relation obtained by composing
   membershipOfPartnerApplicationSystem and aggregationOfApplicationSystemPartnerApplicationSystem
   It directly links an Application System Scenario to the final aggregated ApplicationSystem
   hiding the reifying PartnerApplicationSystem
-}
partnerApplicationSystem : Linkage ApplicationSystemScenario ApplicationSystem
partnerApplicationSystem = membershipOfPartnerApplicationSystem  ∘  aggregationOfApplicationSystemPartnerApplicationSystem


