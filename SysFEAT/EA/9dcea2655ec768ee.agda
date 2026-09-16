{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Service Interface: 
A Business Service Interface is a communication behavior that describes a typical course of interactions intended to produce Business Outcome Events, through the involvement of Business Agent Types.

Documentation : https://framework.sysfeat.com/pages/9dcea2655ec768ee.htm

External references:
  OpenGroup - IT4IT - Defining Service Reference Architecture: https://publications.opengroup.org/w161
  OMG - UAF - Operational Interface: https://www.omg.org/spec/UAF/1.2/Beta1/DMM/PDF#OperationalInterface
  OpenGroup - ArchiMate - Business-Service: https://pubs.opengroup.org/architecture/archimate32-doc/ch-Business-Layer.html#sec-Business-Service
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.9dcea2655ec768ee where -- ========== Business Service Interface

open import Agda.Primitive
open import SysFEAT.EA.6a70c21067876cd8 public -- Resource Service Interface
open import SysFEAT.EA.9dcea4535ec76e6c public -- Business Outcome Event

BusinessServiceInterface : ClassOfClassOfIndividual
BusinessServiceInterface = ClassOfIndividual

--  BusinessServiceInterface is subTypeOf ResourceServiceInterface
st-9dcea2655ec768ee-6a70c21067876cd8 : BusinessServiceInterface ⊏ₑ ResourceServiceInterface
st-9dcea2655ec768ee-6a70c21067876cd8 = polySubTypeOf-identity

-- == Relationships =======================

{- Business Flow Connection: 
A Business Flow Connection is a Business Outcome Event that occurs between the participants of a Business Service Interface.
-}
-- Aggregate Member : Business Flow Connection
BusinessFlowConnection : ClassOfClassOfIndividual
BusinessFlowConnection = ClassOfIndividual

-- Membership relation
membershipOfBusinessFlowConnection :  Linkage BusinessServiceInterface BusinessFlowConnection
membershipOfBusinessFlowConnection = make_upwardNestingRelation "businessFlowConnection membership" "nested businessFlowConnection"

-- Aggregation relation
aggregationOfBusinessOutcomeEventBusinessFlowConnection :  Linkage BusinessFlowConnection BusinessOutcomeEvent
aggregationOfBusinessOutcomeEventBusinessFlowConnection = make_Relation "BusinessOutcomeEvent aggregation" "aggregated BusinessOutcomeEvent"

{- businessFlowConnection : derived relation obtained by composing
   membershipOfBusinessFlowConnection and aggregationOfBusinessOutcomeEventBusinessFlowConnection
   It directly links an Business Service Interface to the final aggregated BusinessOutcomeEvent
   hiding the reifying BusinessFlowConnection
-}
businessFlowConnection : Linkage BusinessServiceInterface BusinessOutcomeEvent
businessFlowConnection = membershipOfBusinessFlowConnection  ∘  aggregationOfBusinessOutcomeEventBusinessFlowConnection

postulate -- businessFlowConnection is subTypeOf resourceFlowConnection
  st-c561d97c680f6e84-c561e339680f761e  : businessFlowConnection   ⊏⋆ᵣ  resourceFlowConnection 

