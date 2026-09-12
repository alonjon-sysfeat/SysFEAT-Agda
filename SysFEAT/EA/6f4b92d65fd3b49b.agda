{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Environment: 
A Business Environment is an operating context which defines the interactions (Business Service Channel) of a Business-Entity (Department Type)  with its partners (Partner Org-Units).
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
st-2b7064c161ba0d39 : BusinessEnvironment ⊏ₑ BusinessEcosystem
st-2b7064c161ba0d39 = polySubTypeOf-identity

--  BusinessEnvironment is subTypeOf BusinessAgentEnvironment
st-6f4b92e65fd3b512 : BusinessEnvironment ⊏ₑ BusinessAgentEnvironment
st-6f4b92e65fd3b512 = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Business Environment: -}
specializedBusinessEnvironment :  Linkage BusinessEnvironment BusinessEnvironment
specializedBusinessEnvironment = make_subTypeOf "Specialized Business Environment" "specializedBusinessEnvironment"

postulate -- specializedBusinessEnvironment is subTypeOf specializedResourceAgentEnvironment
  st-325a37b166f348b0-325a376966f34463  : specializedBusinessEnvironment   ⊏⋆ᵣ  specializedResourceAgentEnvironment 

{- Operations Service Channel: -}
-- Aggregate Member : Operations Service Channel
OperationsServiceChannel : ClassOfClassOfIndividual
OperationsServiceChannel = ClassOfIndividual

-- Membership relation
membershipOfOperationsServiceChannel :  Linkage BusinessEnvironment OperationsServiceChannel
membershipOfOperationsServiceChannel = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessServiceInterfaceOperationsServiceChannel :  Linkage OperationsServiceChannel BusinessServiceInterface
aggregationOfBusinessServiceInterfaceOperationsServiceChannel = aggregationOfBuildingBlock

{- operationsServiceChannel : derived relation obtained by composing
   membershipOfOperationsServiceChannel and aggregationOfBusinessServiceInterfaceOperationsServiceChannel
   It directly links an Business Environment to the final aggregated BusinessServiceInterface
   hiding the reifying OperationsServiceChannel
-}
operationsServiceChannel : Linkage BusinessEnvironment BusinessServiceInterface
operationsServiceChannel = membershipOfOperationsServiceChannel  ∘  aggregationOfBusinessServiceInterfaceOperationsServiceChannel

{- Partner Org-Unit: -}
-- Aggregate Member : Partner Org-Unit
PartnerOrgUnit : ClassOfClassOfIndividual
PartnerOrgUnit = ClassOfIndividual

-- Membership relation
membershipOfPartnerOrgUnit :  Linkage BusinessEnvironment PartnerOrgUnit
membershipOfPartnerOrgUnit = membershipOfAggregateMember

-- Aggregation relation
aggregationOfDepartmentTypePartnerOrgUnit :  Linkage PartnerOrgUnit DepartmentType
aggregationOfDepartmentTypePartnerOrgUnit = aggregationOfBuildingBlock

{- partnerOrgUnit : derived relation obtained by composing
   membershipOfPartnerOrgUnit and aggregationOfDepartmentTypePartnerOrgUnit
   It directly links an Business Environment to the final aggregated DepartmentType
   hiding the reifying PartnerOrgUnit
-}
partnerOrgUnit : Linkage BusinessEnvironment DepartmentType
partnerOrgUnit = membershipOfPartnerOrgUnit  ∘  aggregationOfDepartmentTypePartnerOrgUnit

{- Served customer: -}
-- Aggregate Member : Served customer
Servedcustomer : ClassOfClassOfIndividual
Servedcustomer = ClassOfIndividual

-- Membership relation
membershipOfServedcustomer :  Linkage BusinessEnvironment Servedcustomer
membershipOfServedcustomer = membershipOfAggregateMember

-- Aggregation relation
aggregationOfCustomerServedcustomer :  Linkage Servedcustomer Customer
aggregationOfCustomerServedcustomer = aggregationOfBuildingBlock

{- servedcustomer : derived relation obtained by composing
   membershipOfServedcustomer and aggregationOfCustomerServedcustomer
   It directly links an Business Environment to the final aggregated Customer
   hiding the reifying Servedcustomer
-}
servedcustomer : Linkage BusinessEnvironment Customer
servedcustomer = membershipOfServedcustomer  ∘  aggregationOfCustomerServedcustomer

{- Subject-Department: -}
-- Aggregate Member : Subject-Department
SubjectDepartment : ClassOfClassOfIndividual
SubjectDepartment = ClassOfIndividual

-- Membership relation
membershipOfSubjectDepartment :  Linkage BusinessEnvironment SubjectDepartment
membershipOfSubjectDepartment = membershipOfAggregateMember

-- Aggregation relation
aggregationOfDepartmentTypeSubjectDepartment :  Linkage SubjectDepartment DepartmentType
aggregationOfDepartmentTypeSubjectDepartment = aggregationOfBuildingBlock

{- subjectDepartment : derived relation obtained by composing
   membershipOfSubjectDepartment and aggregationOfDepartmentTypeSubjectDepartment
   It directly links an Business Environment to the final aggregated DepartmentType
   hiding the reifying SubjectDepartment
-}
subjectDepartment : Linkage BusinessEnvironment DepartmentType
subjectDepartment = membershipOfSubjectDepartment  ∘  aggregationOfDepartmentTypeSubjectDepartment
