{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Environment: 
A Business Environment is an operating context which defines the interactions (Business Service Channel) of a Business-Entity (Department Type)  with its partners (Partner Org-Units).

Documentation : https://framework.sysfeat.com/pages/6f4b92d65fd3b49b.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.6f4b92d65fd3b49b where -- ========== Business Environment

open import Agda.Primitive
open import SysFEAT.EA.2b705f2661ba04de public -- Business Ecosystem
open import SysFEAT.EA.2b6f33a561bae7ab public -- Business Agent Environment
open import SysFEAT.EA.9dcea2655ec768ee public -- Business Service Interface
open import SysFEAT.EA.7c408aa155270eea public -- Department Type
open import SysFEAT.EA.08d181af678a2d51 public -- Customer

BusinessEnvironment : ClassOfClassOfBoundedIndividual
BusinessEnvironment = ClassOfBoundedIndividual

--  BusinessEnvironment is subTypeOf BusinessEcosystem
st-6f4b92d65fd3b49b-2b705f2661ba04de : BusinessEnvironment ⊏ₑ BusinessEcosystem
st-6f4b92d65fd3b49b-2b705f2661ba04de = polySubTypeOf-identity

--  BusinessEnvironment is subTypeOf BusinessAgentEnvironment
st-6f4b92d65fd3b49b-2b6f33a561bae7ab : BusinessEnvironment ⊏ₑ BusinessAgentEnvironment
st-6f4b92d65fd3b49b-2b6f33a561bae7ab = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Business Environment: -}
specializedBusinessEnvironment :  Linkage BusinessEnvironment BusinessEnvironment
specializedBusinessEnvironment = make_subTypeOf "Specialized Business Environment" "Specialized Business Environment"

postulate -- specializedBusinessEnvironment is subTypeOf specializedResourceAgentEnvironment
  st-325a37b166f348b0-325a376966f34463  : specializedBusinessEnvironment   ⊏⋆ᵣ  specializedResourceAgentEnvironment 

{- Operations Service Channel: -}
-- Aggregate Member : Operations Service Channel
OperationsServiceChannel : ClassOfClassOfIndividual
OperationsServiceChannel = ClassOfIndividual

-- Membership relation
membershipOfOperationsServiceChannel :  Linkage BusinessEnvironment OperationsServiceChannel
membershipOfOperationsServiceChannel = make_upwardNestingRelation "operationsServiceChannel membership" "nested operationsServiceChannel"

-- Aggregation relation
aggregationOfBusinessServiceInterfaceOperationsServiceChannel :  Linkage OperationsServiceChannel BusinessServiceInterface
aggregationOfBusinessServiceInterfaceOperationsServiceChannel = make_Relation "BusinessServiceInterface aggregation" "aggregated BusinessServiceInterface"

{- operationsServiceChannel : derived relation obtained by composing
   membershipOfOperationsServiceChannel and aggregationOfBusinessServiceInterfaceOperationsServiceChannel
   It directly links an Business Environment to the final aggregated BusinessServiceInterface
   hiding the reifying OperationsServiceChannel
-}
operationsServiceChannel : Linkage BusinessEnvironment BusinessServiceInterface
operationsServiceChannel = membershipOfOperationsServiceChannel  ∘  aggregationOfBusinessServiceInterfaceOperationsServiceChannel

postulate -- operationsServiceChannel is subTypeOf businessServiceChannel
  st-6f4b99fb5fd3c543-2b6f436f61bafb0b  : operationsServiceChannel   ⊏⋆ᵣ  businessServiceChannel 
postulate -- operationsServiceChannel is subTypeOf businessEcosystemConnection
  st-6f4b99fb5fd3c543-a813ce0063567e9b  : operationsServiceChannel   ⊏⋆ᵣ  businessEcosystemConnection 


{- Partner Org-Unit: -}
-- Aggregate Member : Partner Org-Unit
PartnerOrgUnit : ClassOfClassOfIndividual
PartnerOrgUnit = ClassOfIndividual

-- Membership relation
membershipOfPartnerOrgUnit :  Linkage BusinessEnvironment PartnerOrgUnit
membershipOfPartnerOrgUnit = make_upwardNestingRelation "partnerOrgUnit membership" "nested partnerOrgUnit"

-- Aggregation relation
aggregationOfDepartmentTypePartnerOrgUnit :  Linkage PartnerOrgUnit DepartmentType
aggregationOfDepartmentTypePartnerOrgUnit = make_Relation "DepartmentType aggregation" "aggregated DepartmentType"

{- partnerOrgUnit : derived relation obtained by composing
   membershipOfPartnerOrgUnit and aggregationOfDepartmentTypePartnerOrgUnit
   It directly links an Business Environment to the final aggregated DepartmentType
   hiding the reifying PartnerOrgUnit
-}
partnerOrgUnit : Linkage BusinessEnvironment DepartmentType
partnerOrgUnit = membershipOfPartnerOrgUnit  ∘  aggregationOfDepartmentTypePartnerOrgUnit

postulate -- partnerOrgUnit is subTypeOf participantDepartment
  st-0a2620c6601df71a-6f4b989c5fd3c371  : partnerOrgUnit   ⊏⋆ᵣ  participantDepartment 
postulate -- partnerOrgUnit is subTypeOf partnerResourceAgent
  st-0a2620c6601df71a-2b6f34c861bae941  : partnerOrgUnit   ⊏⋆ᵣ  partnerResourceAgent 


{- Served customer: -}
-- Aggregate Member : Served customer
Servedcustomer : ClassOfClassOfIndividual
Servedcustomer = ClassOfIndividual

-- Membership relation
membershipOfServedcustomer :  Linkage BusinessEnvironment Servedcustomer
membershipOfServedcustomer = make_upwardNestingRelation "servedcustomer membership" "nested servedcustomer"

-- Aggregation relation
aggregationOfCustomerServedcustomer :  Linkage Servedcustomer Customer
aggregationOfCustomerServedcustomer = make_Relation "Customer aggregation" "aggregated Customer"

{- servedcustomer : derived relation obtained by composing
   membershipOfServedcustomer and aggregationOfCustomerServedcustomer
   It directly links an Business Environment to the final aggregated Customer
   hiding the reifying Servedcustomer
-}
servedcustomer : Linkage BusinessEnvironment Customer
servedcustomer = membershipOfServedcustomer  ∘  aggregationOfCustomerServedcustomer

postulate -- servedcustomer is subTypeOf participantDepartment
  st-4666536c64088070-6f4b989c5fd3c371  : servedcustomer   ⊏⋆ᵣ  participantDepartment 


{- Subject-Department: -}
-- Aggregate Member : Subject-Department
SubjectDepartment : ClassOfClassOfIndividual
SubjectDepartment = ClassOfIndividual

-- Membership relation
membershipOfSubjectDepartment :  Linkage BusinessEnvironment SubjectDepartment
membershipOfSubjectDepartment = make_upwardNestingRelation "subjectDepartment membership" "nested subjectDepartment"

-- Aggregation relation
aggregationOfDepartmentTypeSubjectDepartment :  Linkage SubjectDepartment DepartmentType
aggregationOfDepartmentTypeSubjectDepartment = make_Relation "DepartmentType aggregation" "aggregated DepartmentType"

{- subjectDepartment : derived relation obtained by composing
   membershipOfSubjectDepartment and aggregationOfDepartmentTypeSubjectDepartment
   It directly links an Business Environment to the final aggregated DepartmentType
   hiding the reifying SubjectDepartment
-}
subjectDepartment : Linkage BusinessEnvironment DepartmentType
subjectDepartment = membershipOfSubjectDepartment  ∘  aggregationOfDepartmentTypeSubjectDepartment

postulate -- subjectDepartment is subTypeOf subjectResourceAgent
  st-6f4b98595fd3c2be-2b6f350061baea62  : subjectDepartment   ⊏⋆ᵣ  subjectResourceAgent 
postulate -- subjectDepartment is subTypeOf participantDepartment
  st-6f4b98595fd3c2be-6f4b989c5fd3c371  : subjectDepartment   ⊏⋆ᵣ  participantDepartment 

