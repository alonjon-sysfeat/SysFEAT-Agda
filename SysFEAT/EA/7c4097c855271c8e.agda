{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Conceptual Environment: 
A Conceptual Environment  is an operating context which defines the interactions (Business Interaction) of an Operating Domain with its partners (Customers).
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
st-6a70b9af67876384 : ConceptualEnvironment ⊏ₑ ConceptualEcosystem
st-6a70b9af67876384 = polySubTypeOf-identity

--  ConceptualEnvironment is subTypeOf AgentTypeEnvironment
st-ebcff5365ad8b891 : ConceptualEnvironment ⊏ₑ AgentTypeEnvironment
st-ebcff5365ad8b891 = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Operating Model Environment: -}
specializedOperatingModelEnvironment :  Linkage ConceptualEnvironment ConceptualEnvironment
specializedOperatingModelEnvironment = make_subTypeOf "Specialized Operating Model Environment" "specializedOperatingModelEnvironment"

postulate -- specializedOperatingModelEnvironment is subTypeOf specializedOperatingEnvironment
  st-325a375266f33e40-325a373d66f33dca  : specializedOperatingModelEnvironment   ⊏⋆ᵣ  specializedOperatingEnvironment 

{- Business Interaction: -}
-- Aggregate Member : Business Interaction
BusinessInteraction : ClassOfClassOfIndividual
BusinessInteraction = ClassOfIndividual

-- Membership relation
membershipOfBusinessInteraction :  Linkage ConceptualEnvironment BusinessInteraction
membershipOfBusinessInteraction = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessServiceInterfaceBusinessInteraction :  Linkage BusinessInteraction BusinessServiceInterface
aggregationOfBusinessServiceInterfaceBusinessInteraction = aggregationOfBuildingBlock

{- businessInteraction : derived relation obtained by composing
   membershipOfBusinessInteraction and aggregationOfBusinessServiceInterfaceBusinessInteraction
   It directly links an Conceptual Environment to the final aggregated BusinessServiceInterface
   hiding the reifying BusinessInteraction
-}
businessInteraction : Linkage ConceptualEnvironment BusinessServiceInterface
businessInteraction = membershipOfBusinessInteraction  ∘  aggregationOfBusinessServiceInterfaceBusinessInteraction

{- Partner Supplier: -}
-- Aggregate Member : Partner Supplier
PartnerSupplier : ClassOfClassOfIndividual
PartnerSupplier = ClassOfIndividual

-- Membership relation
membershipOfPartnerSupplier :  Linkage ConceptualEnvironment PartnerSupplier
membershipOfPartnerSupplier = membershipOfAggregateMember

-- Aggregation relation
aggregationOfSupplierPartnerSupplier :  Linkage PartnerSupplier Supplier
aggregationOfSupplierPartnerSupplier = aggregationOfBuildingBlock

{- partnerSupplier : derived relation obtained by composing
   membershipOfPartnerSupplier and aggregationOfSupplierPartnerSupplier
   It directly links an Conceptual Environment to the final aggregated Supplier
   hiding the reifying PartnerSupplier
-}
partnerSupplier : Linkage ConceptualEnvironment Supplier
partnerSupplier = membershipOfPartnerSupplier  ∘  aggregationOfSupplierPartnerSupplier

{- Subject Activity Domain: -}
-- Aggregate Member : Subject Activity Domain
SubjectActivityDomain : ClassOfClassOfIndividual
SubjectActivityDomain = ClassOfIndividual

-- Membership relation
membershipOfSubjectActivityDomain :  Linkage ConceptualEnvironment SubjectActivityDomain
membershipOfSubjectActivityDomain = membershipOfAggregateMember

-- Aggregation relation
aggregationOfOperatingDomainSubjectActivityDomain :  Linkage SubjectActivityDomain OperatingDomain
aggregationOfOperatingDomainSubjectActivityDomain = aggregationOfBuildingBlock

{- subjectActivityDomain : derived relation obtained by composing
   membershipOfSubjectActivityDomain and aggregationOfOperatingDomainSubjectActivityDomain
   It directly links an Conceptual Environment to the final aggregated OperatingDomain
   hiding the reifying SubjectActivityDomain
-}
subjectActivityDomain : Linkage ConceptualEnvironment OperatingDomain
subjectActivityDomain = membershipOfSubjectActivityDomain  ∘  aggregationOfOperatingDomainSubjectActivityDomain

{- Customer: -}
-- Aggregate Member : Customer
Customer : ClassOfClassOfIndividual
Customer = ClassOfIndividual

-- Membership relation
membershipOfCustomer :  Linkage ConceptualEnvironment Customer
membershipOfCustomer = membershipOfAggregateMember

-- Aggregation relation
aggregationOfCustomerCustomer :  Linkage Customer Customer
aggregationOfCustomerCustomer = aggregationOfBuildingBlock

{- customer : derived relation obtained by composing
   membershipOfCustomer and aggregationOfCustomerCustomer
   It directly links an Conceptual Environment to the final aggregated Customer
   hiding the reifying Customer
-}
customer : Linkage ConceptualEnvironment Customer
customer = membershipOfCustomer  ∘  aggregationOfCustomerCustomer
