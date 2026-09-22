{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Scenario: 
A Business Scenario is a story describing how Business-Entity (Department Type) interact wtiht its partners (Partner Department) to achieve Business Outcome Events in a specific Eco-System (Business Environment).This includes:1) A course of events represented by Resource Object Flows depicting the story towards the delivery of expected Business Outcome Events.2) Interacting  Business Entities (Department Types)  who participate to the story in the considered Eco-System.

Documentation : https://framework.sysfeat.com/pages/c334dfca5ecb83dd.htm

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
st-c334dfca5ecb83dd-2b705f2661ba04de : BusinessScenario ⊏ₑ BusinessEcosystem
st-c334dfca5ecb83dd-2b705f2661ba04de = polySubTypeOf-identity

--  BusinessScenario is subTypeOf BusinessEnvironmentScenario
st-c334dfca5ecb83dd-2b6f337e61bae6d6 : BusinessScenario ⊏ₑ BusinessEnvironmentScenario
st-c334dfca5ecb83dd-2b6f337e61bae6d6 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Scenarized Business Environment: -}
scenarizedBusinessEnvironment :  Linkage BusinessScenario BusinessEnvironment
scenarizedBusinessEnvironment = make_classOfHolonymy "Scenarized Business Environment" "Scenarized Business Environment"

postulate -- scenarizedBusinessEnvironment is subTypeOf scenarizedBusinessEnvironment
  st-2b70641f61ba0bea-2b6f37c161baeeed  : scenarizedBusinessEnvironment  ⊏⋆ᵣ  scenarizedBusinessEnvironment

-- -------------------------------------------------------------------------------------------- 
{- Served customer: -}
-- Aggregate Member : Served customer
Servedcustomer : ClassOfClassOfBoundedIndividual
Servedcustomer = ClassOfBoundedIndividual



--  Servedcustomer is subTypeOf ParticipantEnterpriseAgent
st-466653e96408818a-2b6f3bf061baf60a : Servedcustomer ⊏ₑ ParticipantEnterpriseAgent
st-466653e96408818a-2b6f3bf061baf60a = polySubTypeOf-identity

--  Servedcustomer is subTypeOf Customer
st-466653e96408818a-08d181af678a2d51 : Servedcustomer ⊏ₑ Customer
st-466653e96408818a-08d181af678a2d51 = polySubTypeOf-identity

-- Membership relation
membershipOfServedcustomer :  Linkage BusinessScenario Servedcustomer
membershipOfServedcustomer = make_upwardNestingRelation "servedcustomer membership" "nested servedcustomer"

-- Aggregation relation
aggregationOfCustomerServedcustomer :  Linkage Servedcustomer Customer
aggregationOfCustomerServedcustomer = make_Relation "Customer aggregation" "aggregated Customer"

{- servedcustomer : derived relation obtained by composing
   membershipOfServedcustomer and aggregationOfCustomerServedcustomer
   It directly links an Business Scenario to the final aggregated Customer
   hiding the reifying Servedcustomer
-}
servedcustomer : Linkage BusinessScenario Customer
servedcustomer = membershipOfServedcustomer  ∘  aggregationOfCustomerServedcustomer



-- -------------------------------------------------------------------------------------------- 
{- Subject-Department: -}
-- Aggregate Member : Subject-Department
SubjectDepartment : ClassOfClassOfBoundedIndividual
SubjectDepartment = ClassOfBoundedIndividual



--  SubjectDepartment is subTypeOf ParticipantEnterpriseAgent
st-2b7065b261ba0e06-2b6f3bf061baf60a : SubjectDepartment ⊏ₑ ParticipantEnterpriseAgent
st-2b7065b261ba0e06-2b6f3bf061baf60a = polySubTypeOf-identity

--  SubjectDepartment is subTypeOf SubjectResourceAgent
st-2b7065b261ba0e06-2b6f5c4161bafdfd : SubjectDepartment ⊏ₑ SubjectResourceAgent
st-2b7065b261ba0e06-2b6f5c4161bafdfd = polySubTypeOf-identity

--  SubjectDepartment is subTypeOf DepartmentType
st-2b7065b261ba0e06-7c408aa155270eea : SubjectDepartment ⊏ₑ DepartmentType
st-2b7065b261ba0e06-7c408aa155270eea = polySubTypeOf-identity

-- Membership relation
membershipOfSubjectDepartment :  Linkage BusinessScenario SubjectDepartment
membershipOfSubjectDepartment = make_upwardNestingRelation "subjectDepartment membership" "nested subjectDepartment"

-- Aggregation relation
aggregationOfDepartmentTypeSubjectDepartment :  Linkage SubjectDepartment DepartmentType
aggregationOfDepartmentTypeSubjectDepartment = make_Relation "DepartmentType aggregation" "aggregated DepartmentType"

{- subjectDepartment : derived relation obtained by composing
   membershipOfSubjectDepartment and aggregationOfDepartmentTypeSubjectDepartment
   It directly links an Business Scenario to the final aggregated DepartmentType
   hiding the reifying SubjectDepartment
-}
subjectDepartment : Linkage BusinessScenario DepartmentType
subjectDepartment = membershipOfSubjectDepartment  ∘  aggregationOfDepartmentTypeSubjectDepartment



-- -------------------------------------------------------------------------------------------- 
{- Partner Department: -}
-- Aggregate Member : Partner Department
PartnerDepartment : ClassOfClassOfBoundedIndividual
PartnerDepartment = ClassOfBoundedIndividual



--  PartnerDepartment is subTypeOf ParticipantEnterpriseAgent
st-2b7065f361ba0eda-2b6f3bf061baf60a : PartnerDepartment ⊏ₑ ParticipantEnterpriseAgent
st-2b7065f361ba0eda-2b6f3bf061baf60a = polySubTypeOf-identity

--  PartnerDepartment is subTypeOf PartnerResourceAgent
st-2b7065f361ba0eda-2b6f35bc61baecc4 : PartnerDepartment ⊏ₑ PartnerResourceAgent
st-2b7065f361ba0eda-2b6f35bc61baecc4 = polySubTypeOf-identity

--  PartnerDepartment is subTypeOf DepartmentType
st-2b7065f361ba0eda-7c408aa155270eea : PartnerDepartment ⊏ₑ DepartmentType
st-2b7065f361ba0eda-7c408aa155270eea = polySubTypeOf-identity

-- Membership relation
membershipOfPartnerDepartment :  Linkage BusinessScenario PartnerDepartment
membershipOfPartnerDepartment = make_upwardNestingRelation "partnerDepartment membership" "nested partnerDepartment"

-- Aggregation relation
aggregationOfDepartmentTypePartnerDepartment :  Linkage PartnerDepartment DepartmentType
aggregationOfDepartmentTypePartnerDepartment = make_Relation "DepartmentType aggregation" "aggregated DepartmentType"

{- partnerDepartment : derived relation obtained by composing
   membershipOfPartnerDepartment and aggregationOfDepartmentTypePartnerDepartment
   It directly links an Business Scenario to the final aggregated DepartmentType
   hiding the reifying PartnerDepartment
-}
partnerDepartment : Linkage BusinessScenario DepartmentType
partnerDepartment = membershipOfPartnerDepartment  ∘  aggregationOfDepartmentTypePartnerDepartment


