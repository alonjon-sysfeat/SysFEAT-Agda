{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Application Interface: 
An Application Interface is a Business Service Interface that occurs between Business Software Systems.The interface is described by messages exchanged between endpoints (provider, consumer..).

Documentation : https://framework.sysfeat.com/pages/9dce9f8d5ec76311.htm

External references:
  OpenGroup - ArchiMate - Application Service: https://pubs.opengroup.org/architecture/archimate32-doc/ch-Application-Layer.html#sec-Application-Service
  OpenGroup - IT4IT - Defining Service Reference Architecture: https://publications.opengroup.org/w161
  EIP - messaging: https://www.enterpriseintegrationpatterns.com/patterns/messaging
  Microsoft - Architecture Design - RESTful web API design: https://learn.microsoft.com/en-us/azure/architecture/best-practices/api-design
  Martin Fowler - Richardson Maturity Model: https://martinfowler.com/articles/richardsonMaturityModel.html
  Martin Fowler - API Design: https://martinfowler.com/tags/API%20design.html
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.9dce9f8d5ec76311 where -- ========== Application Interface

open import Agda.Primitive
open import SysFEAT.EA.9dcea2655ec768ee public -- Business Service Interface
open import SysFEAT.EA.302238be5ec9020a public -- Information Outcome Event

ApplicationInterface : ClassOfClassOfBoundedIndividual
ApplicationInterface = ClassOfBoundedIndividual


--  ApplicationInterface is subTypeOf BusinessServiceInterface
st-9dce9f8d5ec76311-9dcea2655ec768ee : ApplicationInterface ⊏ₑ BusinessServiceInterface
st-9dce9f8d5ec76311-9dcea2655ec768ee = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Information Flow Connection: 
An Information Flow Connection is an Information Outcome Event that occurs between the participant of an Application Interface.
-}
-- Aggregate Member : Information Flow Connection
InformationFlowConnection : ClassOfClassOfBoundedIndividual
InformationFlowConnection = ClassOfBoundedIndividual



--  InformationFlowConnection is subTypeOf BusinessFlowConnection
st-c561e9dc680f8339-c561d97c680f6e84 : InformationFlowConnection ⊏ₑ BusinessFlowConnection
st-c561e9dc680f8339-c561d97c680f6e84 = polySubTypeOf-identity

-- Membership relation
membershipOfInformationFlowConnection :  Linkage ApplicationInterface InformationFlowConnection
membershipOfInformationFlowConnection = make_upwardNestingRelation "informationFlowConnection membership" "nested informationFlowConnection"

-- Aggregation relation
aggregationOfInformationOutcomeEventInformationFlowConnection :  Linkage InformationFlowConnection InformationOutcomeEvent
aggregationOfInformationOutcomeEventInformationFlowConnection = make_Relation "InformationOutcomeEvent aggregation" "aggregated InformationOutcomeEvent"

{- informationFlowConnection : derived relation obtained by composing
   membershipOfInformationFlowConnection and aggregationOfInformationOutcomeEventInformationFlowConnection
   It directly links an Application Interface to the final aggregated InformationOutcomeEvent
   hiding the reifying InformationFlowConnection
-}
informationFlowConnection : Linkage ApplicationInterface InformationOutcomeEvent
informationFlowConnection = membershipOfInformationFlowConnection  ∘  aggregationOfInformationOutcomeEventInformationFlowConnection


