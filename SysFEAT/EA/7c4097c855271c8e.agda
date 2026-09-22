{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Conceptual Environment: 
A Conceptual Environment  is an operating context which defines the interactions (Business Interaction) of an Operating Domain with its partners (Customers).

Documentation : https://framework.sysfeat.com/pages/7c4097c855271c8e.htm

External references:
  OMG - UAF - OperationalArchitecture: https://www.omg.org/spec/UAF/1.2/Beta1/DMM/PDF#OperationalArchitecture
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.7c4097c855271c8e where -- ========== Conceptual Environment

open import Agda.Primitive
open import SysFEAT.EA.f97e3e30632b31c1 public -- Conceptual Ecosystem
open import SysFEAT.SOF.d6cd0fd95ab9744b public -- Agent Type Environment
open import SysFEAT.EA.9dcea2655ec768ee public -- Business Service Interface
open import SysFEAT.EA.08d180d4678a2c8f public -- Supplier
open import SysFEAT.EA.9810b060551137d0 public -- Operating Domain
open import SysFEAT.EA.08d181af678a2d51 public -- Customer

ConceptualEnvironment : ClassOfClassOfBoundedIndividual
ConceptualEnvironment = ClassOfBoundedIndividual


--  ConceptualEnvironment is subTypeOf ConceptualEcosystem
st-7c4097c855271c8e-f97e3e30632b31c1 : ConceptualEnvironment ⊏ₑ ConceptualEcosystem
st-7c4097c855271c8e-f97e3e30632b31c1 = polySubTypeOf-identity

--  ConceptualEnvironment is subTypeOf AgentTypeEnvironment
st-7c4097c855271c8e-d6cd0fd95ab9744b : ConceptualEnvironment ⊏ₑ AgentTypeEnvironment
st-7c4097c855271c8e-d6cd0fd95ab9744b = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Specialized Operating Model Environment: -}
specializedOperatingModelEnvironment :  Linkage ConceptualEnvironment ConceptualEnvironment
specializedOperatingModelEnvironment = make_subTypeOf "Specialized Operating Model Environment" "Specialized Operating Model Environment"

postulate -- specializedOperatingModelEnvironment is subTypeOf specializedOperatingEnvironment
  st-325a375266f33e40-325a373d66f33dca  : specializedOperatingModelEnvironment  ⊏⋆ᵣ  specializedOperatingEnvironment

-- -------------------------------------------------------------------------------------------- 
{- Business Interaction: -}
-- Aggregate Member : Business Interaction
BusinessInteraction : ClassOfClassOfIndividual
BusinessInteraction = ClassOfIndividual


--  BusinessInteraction is subTypeOf ServiceChannel
st-1c3bfa59601c6817-80be29065fc2a83d : BusinessInteraction ⊏ₑ ServiceChannel
st-1c3bfa59601c6817-80be29065fc2a83d = polySubTypeOf-identity

-- Membership relation
membershipOfBusinessInteraction :  Linkage ConceptualEnvironment BusinessInteraction
membershipOfBusinessInteraction = make_upwardNestingRelation "businessInteraction membership" "nested businessInteraction"

-- Aggregation relation
aggregationOfBusinessServiceInterfaceBusinessInteraction :  Linkage BusinessInteraction BusinessServiceInterface
aggregationOfBusinessServiceInterfaceBusinessInteraction = make_Relation "BusinessServiceInterface aggregation" "aggregated BusinessServiceInterface"

{- businessInteraction : derived relation obtained by composing
   membershipOfBusinessInteraction and aggregationOfBusinessServiceInterfaceBusinessInteraction
   It directly links an Conceptual Environment to the final aggregated BusinessServiceInterface
   hiding the reifying BusinessInteraction
-}
businessInteraction : Linkage ConceptualEnvironment BusinessServiceInterface
businessInteraction = membershipOfBusinessInteraction  ∘  aggregationOfBusinessServiceInterfaceBusinessInteraction



-- -------------------------------------------------------------------------------------------- 
{- Partner Supplier: -}
-- Aggregate Member : Partner Supplier
PartnerSupplier : ClassOfClassOfBoundedIndividual
PartnerSupplier = ClassOfBoundedIndividual



--  PartnerSupplier is subTypeOf EnterpriseEcosystemPart
st-46664f3464087702-f8e6b83c621fffe6 : PartnerSupplier ⊏ₑ EnterpriseEcosystemPart
st-46664f3464087702-f8e6b83c621fffe6 = polySubTypeOf-identity

--  PartnerSupplier is subTypeOf Supplier
st-46664f3464087702-08d180d4678a2c8f : PartnerSupplier ⊏ₑ Supplier
st-46664f3464087702-08d180d4678a2c8f = polySubTypeOf-identity

-- Membership relation
membershipOfPartnerSupplier :  Linkage ConceptualEnvironment PartnerSupplier
membershipOfPartnerSupplier = make_upwardNestingRelation "partnerSupplier membership" "nested partnerSupplier"

-- Aggregation relation
aggregationOfSupplierPartnerSupplier :  Linkage PartnerSupplier Supplier
aggregationOfSupplierPartnerSupplier = make_Relation "Supplier aggregation" "aggregated Supplier"

{- partnerSupplier : derived relation obtained by composing
   membershipOfPartnerSupplier and aggregationOfSupplierPartnerSupplier
   It directly links an Conceptual Environment to the final aggregated Supplier
   hiding the reifying PartnerSupplier
-}
partnerSupplier : Linkage ConceptualEnvironment Supplier
partnerSupplier = membershipOfPartnerSupplier  ∘  aggregationOfSupplierPartnerSupplier



-- -------------------------------------------------------------------------------------------- 
{- Subject Activity Domain: -}
-- Aggregate Member : Subject Activity Domain
SubjectActivityDomain : ClassOfClassOfBoundedIndividual
SubjectActivityDomain = ClassOfBoundedIndividual



--  SubjectActivityDomain is subTypeOf SubjectAgent
st-e8bfec375ebb805a-fa4ffc205ec86201 : SubjectActivityDomain ⊏ₑ SubjectAgent
st-e8bfec375ebb805a-fa4ffc205ec86201 = polySubTypeOf-identity

--  SubjectActivityDomain is subTypeOf BusinessOperatingAgent
st-e8bfec375ebb805a-1c3bf9f5601c673d : SubjectActivityDomain ⊏ₑ BusinessOperatingAgent
st-e8bfec375ebb805a-1c3bf9f5601c673d = polySubTypeOf-identity

--  SubjectActivityDomain is subTypeOf OperatingDomain
st-e8bfec375ebb805a-9810b060551137d0 : SubjectActivityDomain ⊏ₑ OperatingDomain
st-e8bfec375ebb805a-9810b060551137d0 = polySubTypeOf-identity

-- Membership relation
membershipOfSubjectActivityDomain :  Linkage ConceptualEnvironment SubjectActivityDomain
membershipOfSubjectActivityDomain = make_upwardNestingRelation "subjectActivityDomain membership" "nested subjectActivityDomain"

-- Aggregation relation
aggregationOfOperatingDomainSubjectActivityDomain :  Linkage SubjectActivityDomain OperatingDomain
aggregationOfOperatingDomainSubjectActivityDomain = make_Relation "OperatingDomain aggregation" "aggregated OperatingDomain"

{- subjectActivityDomain : derived relation obtained by composing
   membershipOfSubjectActivityDomain and aggregationOfOperatingDomainSubjectActivityDomain
   It directly links an Conceptual Environment to the final aggregated OperatingDomain
   hiding the reifying SubjectActivityDomain
-}
subjectActivityDomain : Linkage ConceptualEnvironment OperatingDomain
subjectActivityDomain = membershipOfSubjectActivityDomain  ∘  aggregationOfOperatingDomainSubjectActivityDomain



-- -------------------------------------------------------------------------------------------- 
{- Customer: -}
-- Aggregate Member : Customer
Customer : ClassOfClassOfBoundedIndividual
Customer = ClassOfBoundedIndividual



--  Customer is subTypeOf PartnerAgent
st-e8bfec5b5ebb80db-fa4ffc235ec86276 : Customer ⊏ₑ PartnerAgent
st-e8bfec5b5ebb80db-fa4ffc235ec86276 = polySubTypeOf-identity

--  Customer is subTypeOf BusinessOperatingAgent
st-e8bfec5b5ebb80db-1c3bf9f5601c673d : Customer ⊏ₑ BusinessOperatingAgent
st-e8bfec5b5ebb80db-1c3bf9f5601c673d = polySubTypeOf-identity

--  Customer is subTypeOf Customer
st-e8bfec5b5ebb80db-08d181af678a2d51 : Customer ⊏ₑ Customer
st-e8bfec5b5ebb80db-08d181af678a2d51 = polySubTypeOf-identity

-- Membership relation
membershipOfCustomer :  Linkage ConceptualEnvironment Customer
membershipOfCustomer = make_upwardNestingRelation "customer membership" "nested customer"

-- Aggregation relation
aggregationOfCustomerCustomer :  Linkage Customer Customer
aggregationOfCustomerCustomer = make_Relation "Customer aggregation" "aggregated Customer"

{- customer : derived relation obtained by composing
   membershipOfCustomer and aggregationOfCustomerCustomer
   It directly links an Conceptual Environment to the final aggregated Customer
   hiding the reifying Customer
-}
customer : Linkage ConceptualEnvironment Customer
customer = membershipOfCustomer  ∘  aggregationOfCustomerCustomer


