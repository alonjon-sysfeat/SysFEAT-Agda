{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Scenario: 
A Business Scenario is a story describing how Business-Entity (Department Type) interact wtiht its partners (Partner Department) to achieve Business Outcome Events in a specific Eco-System (Business Environment).This includes:1) A course of events represented by Resource Object Flows depicting the story towards the delivery of expected Business Outcome Events.2) Interacting  Business Entities (Department Types)  who participate to the story in the considered Eco-System.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.c334dfca5ecb83dd where -- ========== Business Scenario

open import Agda.Primitive
open import SysFEAT.EA.2b705f2661ba04de public -- Business Ecosystem
open import SysFEAT.EA.2b6f337e61bae6d6 public -- Business Environment Scenario
open import SysFEAT.EA.6f4b92d65fd3b49b public -- Business Environment
open import SysFEAT.EA.08d181af678a2d51 public -- Customer
open import SysFEAT.EA.7c408aa155270eea public -- Department Type

BusinessScenario : ClassOfClassOfBoundedIndividual
BusinessScenario = ClassOfBoundedIndividual

--  BusinessScenario is subTypeOf BusinessEcosystem
st-2b70687a61ba1394 : BusinessScenario ⊏ₑ BusinessEcosystem
st-2b70687a61ba1394 = polySubTypeOf-identity

--  BusinessScenario is subTypeOf BusinessEnvironmentScenario
st-0e0cf99a5f1f3c64 : BusinessScenario ⊏ₑ BusinessEnvironmentScenario
st-0e0cf99a5f1f3c64 = polySubTypeOf-identity

-- == Relationships =======================

{- Scenarized Business Environment: -}
scenarizedBusinessEnvironment :  Linkage BusinessScenario BusinessEnvironment
scenarizedBusinessEnvironment = make_classOfHolonymy "Scenarized Business Environment" "scenarizedBusinessEnvironment"

postulate -- scenarizedBusinessEnvironment is subTypeOf scenarizedBusinessEnvironment
  st-2b70641f61ba0bea-2b6f37c161baeeed  : scenarizedBusinessEnvironment   ⊏⋆ᵣ  scenarizedBusinessEnvironment 

{- Served customer: -}
-- Aggregate Member : Served customer
Servedcustomer : ClassOfClassOfIndividual
Servedcustomer = ClassOfIndividual

-- Membership relation
membershipOfServedcustomer :  Linkage BusinessScenario Servedcustomer
membershipOfServedcustomer = membershipOfAggregateMember

-- Aggregation relation
aggregationOfCustomerServedcustomer :  Linkage Servedcustomer Customer
aggregationOfCustomerServedcustomer = aggregationOfBuildingBlock

{- servedcustomer : derived relation obtained by composing
   membershipOfServedcustomer and aggregationOfCustomerServedcustomer
   It directly links an Business Scenario to the final aggregated Customer
   hiding the reifying Servedcustomer
-}
servedcustomer : Linkage BusinessScenario Customer
servedcustomer = membershipOfServedcustomer  ∘  aggregationOfCustomerServedcustomer

{- Subject-Department: -}
-- Aggregate Member : Subject-Department
SubjectDepartment : ClassOfClassOfIndividual
SubjectDepartment = ClassOfIndividual

-- Membership relation
membershipOfSubjectDepartment :  Linkage BusinessScenario SubjectDepartment
membershipOfSubjectDepartment = membershipOfAggregateMember

-- Aggregation relation
aggregationOfDepartmentTypeSubjectDepartment :  Linkage SubjectDepartment DepartmentType
aggregationOfDepartmentTypeSubjectDepartment = aggregationOfBuildingBlock

{- subjectDepartment : derived relation obtained by composing
   membershipOfSubjectDepartment and aggregationOfDepartmentTypeSubjectDepartment
   It directly links an Business Scenario to the final aggregated DepartmentType
   hiding the reifying SubjectDepartment
-}
subjectDepartment : Linkage BusinessScenario DepartmentType
subjectDepartment = membershipOfSubjectDepartment  ∘  aggregationOfDepartmentTypeSubjectDepartment

{- Partner Department: -}
-- Aggregate Member : Partner Department
PartnerDepartment : ClassOfClassOfIndividual
PartnerDepartment = ClassOfIndividual

-- Membership relation
membershipOfPartnerDepartment :  Linkage BusinessScenario PartnerDepartment
membershipOfPartnerDepartment = membershipOfAggregateMember

-- Aggregation relation
aggregationOfDepartmentTypePartnerDepartment :  Linkage PartnerDepartment DepartmentType
aggregationOfDepartmentTypePartnerDepartment = aggregationOfBuildingBlock

{- partnerDepartment : derived relation obtained by composing
   membershipOfPartnerDepartment and aggregationOfDepartmentTypePartnerDepartment
   It directly links an Business Scenario to the final aggregated DepartmentType
   hiding the reifying PartnerDepartment
-}
partnerDepartment : Linkage BusinessScenario DepartmentType
partnerDepartment = membershipOfPartnerDepartment  ∘  aggregationOfDepartmentTypePartnerDepartment
