{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Service Interface: 
A Business Service Interface is a communication behavior that describes a typical course of interactions intended to produce Business Outcome Events, through the involvement of Business Agent Types.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.9dcea2655ec768ee where -- ========== Business Service Interface

open import Agda.Primitive
open import SysFEAT.EA.6a70c21067876cd8 public -- Resource Service Interface
open import SysFEAT.EA.9dcea4535ec76e6c public -- Business Outcome Event

BusinessServiceInterface : ClassOfClassOfIndividual
BusinessServiceInterface = ClassOfIndividual

--  BusinessServiceInterface is subTypeOf ResourceServiceInterface
st-6a70dea8678791c9 : BusinessServiceInterface ⊏ₑ ResourceServiceInterface
st-6a70dea8678791c9 = polySubTypeOf-identity

-- == Relationships =======================

{- Business Flow Connection: 
A Business Flow Connection is a Business Outcome Event that occurs between the participants of a Business Service Interface.
-}
-- Aggregate Member : Business Flow Connection
BusinessFlowConnection : ClassOfClassOfIndividual
BusinessFlowConnection = ClassOfIndividual

-- Membership relation
membershipOfBusinessFlowConnection :  Linkage BusinessServiceInterface BusinessFlowConnection
membershipOfBusinessFlowConnection = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessOutcomeEventBusinessFlowConnection :  Linkage BusinessFlowConnection BusinessOutcomeEvent
aggregationOfBusinessOutcomeEventBusinessFlowConnection = aggregationOfBuildingBlock

{- businessFlowConnection : derived relation obtained by composing
   membershipOfBusinessFlowConnection and aggregationOfBusinessOutcomeEventBusinessFlowConnection
   It directly links an Business Service Interface to the final aggregated BusinessOutcomeEvent
   hiding the reifying BusinessFlowConnection
-}
businessFlowConnection : Linkage BusinessServiceInterface BusinessOutcomeEvent
businessFlowConnection = membershipOfBusinessFlowConnection  ∘  aggregationOfBusinessOutcomeEventBusinessFlowConnection
