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


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Specialized Business Environment: -}
specializedBusinessEnvironment :  Linkage BusinessEnvironment BusinessEnvironment
specializedBusinessEnvironment = make_subTypeOf "Specialized Business Environment" "Specialized Business Environment"

postulate -- specializedBusinessEnvironment is subTypeOf specializedResourceAgentEnvironment
  st-325a37b166f348b0-325a376966f34463  : specializedBusinessEnvironment  ⊏⋆ᵣ  specializedResourceAgentEnvironment

-- -------------------------------------------------------------------------------------------- 
{- Operations Service Channel: -}
-- Aggregate Member : Operations Service Channel
OperationsServiceChannel : ClassOfClassOfIndividual
OperationsServiceChannel = ClassOfIndividual


--  OperationsServiceChannel is subTypeOf BusinessServiceChannel
st-6f4b99fb5fd3c543-2b6f436f61bafb0b : OperationsServiceChannel ⊏ₑ BusinessServiceChannel
st-6f4b99fb5fd3c543-2b6f436f61bafb0b = polySubTypeOf-identity

--  OperationsServiceChannel is subTypeOf BusinessEcosystemConnection
st-6f4b99fb5fd3c543-a813ce0063567e9b : OperationsServiceChannel ⊏ₑ BusinessEcosystemConnection
st-6f4b99fb5fd3c543-a813ce0063567e9b = polySubTypeOf-identity

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



-- -------------------------------------------------------------------------------------------- 
{- Partner Org-Unit: -}
-- Aggregate Member : Partner Org-Unit
PartnerOrgUnit : ClassOfClassOfBoundedIndividual
PartnerOrgUnit = ClassOfBoundedIndividual



--  PartnerOrgUnit is subTypeOf ParticipantDepartment
st-0a2620c6601df71a-6f4b989c5fd3c371 : PartnerOrgUnit ⊏ₑ ParticipantDepartment
st-0a2620c6601df71a-6f4b989c5fd3c371 = polySubTypeOf-identity

--  PartnerOrgUnit is subTypeOf PartnerResourceAgent
st-0a2620c6601df71a-2b6f34c861bae941 : PartnerOrgUnit ⊏ₑ PartnerResourceAgent
st-0a2620c6601df71a-2b6f34c861bae941 = polySubTypeOf-identity

--  PartnerOrgUnit is subTypeOf DepartmentType
st-0a2620c6601df71a-7c408aa155270eea : PartnerOrgUnit ⊏ₑ DepartmentType
st-0a2620c6601df71a-7c408aa155270eea = polySubTypeOf-identity

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



-- -------------------------------------------------------------------------------------------- 
{- Served customer: -}
-- Aggregate Member : Served customer
Servedcustomer : ClassOfClassOfBoundedIndividual
Servedcustomer = ClassOfBoundedIndividual



--  Servedcustomer is subTypeOf ParticipantDepartment
st-4666536c64088070-6f4b989c5fd3c371 : Servedcustomer ⊏ₑ ParticipantDepartment
st-4666536c64088070-6f4b989c5fd3c371 = polySubTypeOf-identity

--  Servedcustomer is subTypeOf Customer
st-4666536c64088070-08d181af678a2d51 : Servedcustomer ⊏ₑ Customer
st-4666536c64088070-08d181af678a2d51 = polySubTypeOf-identity

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



-- -------------------------------------------------------------------------------------------- 
{- Subject-Department: -}
-- Aggregate Member : Subject-Department
SubjectDepartment : ClassOfClassOfBoundedIndividual
SubjectDepartment = ClassOfBoundedIndividual



--  SubjectDepartment is subTypeOf SubjectResourceAgent
st-6f4b98595fd3c2be-2b6f350061baea62 : SubjectDepartment ⊏ₑ SubjectResourceAgent
st-6f4b98595fd3c2be-2b6f350061baea62 = polySubTypeOf-identity

--  SubjectDepartment is subTypeOf ParticipantDepartment
st-6f4b98595fd3c2be-6f4b989c5fd3c371 : SubjectDepartment ⊏ₑ ParticipantDepartment
st-6f4b98595fd3c2be-6f4b989c5fd3c371 = polySubTypeOf-identity

--  SubjectDepartment is subTypeOf DepartmentType
st-6f4b98595fd3c2be-7c408aa155270eea : SubjectDepartment ⊏ₑ DepartmentType
st-6f4b98595fd3c2be-7c408aa155270eea = polySubTypeOf-identity

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


