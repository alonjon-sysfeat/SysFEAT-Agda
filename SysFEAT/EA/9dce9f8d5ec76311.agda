{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Application Interface: 
An Application Interface is a Business Service Interface that occurs between Business Software Systems.The interface is described by messages exchanged between endpoints (provider, consumer..).
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.9dce9f8d5ec76311 where -- ========== Application Interface

open import Agda.Primitive
open import SysFEAT.EA.9dcea2655ec768ee public -- Business Service Interface
open import SysFEAT.EA.302238be5ec9020a public -- Information Outcome Event

ApplicationInterface : ClassOfClassOfIndividual
ApplicationInterface = ClassOfIndividual

--  ApplicationInterface is subTypeOf BusinessServiceInterface
st-e2c5970c61dee9da : ApplicationInterface ⊏ₑ BusinessServiceInterface
st-e2c5970c61dee9da = polySubTypeOf-identity

-- == Relationships =======================

{- Information Flow Connection: 
An Information Flow Connection is an Information Outcome Event that occurs between the participant of an Application Interface.
-}
-- Aggregate Member : Information Flow Connection
InformationFlowConnection : ClassOfClassOfIndividual
InformationFlowConnection = ClassOfIndividual

-- Membership relation
membershipOfInformationFlowConnection :  Linkage ApplicationInterface InformationFlowConnection
membershipOfInformationFlowConnection = membershipOfAggregateMember

-- Aggregation relation
aggregationOfInformationOutcomeEventInformationFlowConnection :  Linkage InformationFlowConnection InformationOutcomeEvent
aggregationOfInformationOutcomeEventInformationFlowConnection = aggregationOfBuildingBlock

{- informationFlowConnection : derived relation obtained by composing
   membershipOfInformationFlowConnection and aggregationOfInformationOutcomeEventInformationFlowConnection
   It directly links an Application Interface to the final aggregated InformationOutcomeEvent
   hiding the reifying InformationFlowConnection
-}
informationFlowConnection : Linkage ApplicationInterface InformationOutcomeEvent
informationFlowConnection = membershipOfInformationFlowConnection  ∘  aggregationOfInformationOutcomeEventInformationFlowConnection
