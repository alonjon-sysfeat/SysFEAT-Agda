{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Service Interface: 
A Service Interface is an interaction Behavior Type that describes a typical course of Flow Connections, coordinated by Behavioral Events and Outcome Events, and intended to produce Outcomes through the involvement of Agent Types.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.24ae31b55ed1c66d where -- ========== Service Interface

open import Agda.Primitive
open import SysFEAT.SOF.986cd4ec5ffca3ac public -- Behavior Type
open import SysFEAT.SOF.21c5276e655759fb public -- Operating Connection
open import SysFEAT.SOF.30223b5c5ec90c01 public -- Outcome Event

ServiceInterface : ClassOfClassOfIndividual
ServiceInterface = ClassOfIndividual

--  ServiceInterface is subTypeOf BehaviorType
st-56ea58726605a6c8 : ServiceInterface ⊏ₑ BehaviorType
st-56ea58726605a6c8 = polySubTypeOf-identity

--  ServiceInterface is subTypeOf OperatingConnection
st-2b5b46d566ed59cd : ServiceInterface ⊏ₑ OperatingConnection
st-2b5b46d566ed59cd = polySubTypeOf-identity

-- == Relationships =======================

{- Sub Service Interface: -}
-- Aggregate Member : Sub Service Interface
SubServiceInterface : ClassOfClassOfIndividual
SubServiceInterface = ClassOfIndividual

-- Membership relation
membershipOfSubServiceInterface :  Linkage ServiceInterface SubServiceInterface
membershipOfSubServiceInterface = membershipOfAggregateMember

-- Aggregation relation
aggregationOfServiceInterfaceSubServiceInterface :  Linkage SubServiceInterface ServiceInterface
aggregationOfServiceInterfaceSubServiceInterface = aggregationOfBuildingBlock

{- subServiceInterface : derived relation obtained by composing
   membershipOfSubServiceInterface and aggregationOfServiceInterfaceSubServiceInterface
   It directly links an Service Interface to the final aggregated ServiceInterface
   hiding the reifying SubServiceInterface
-}
subServiceInterface : Linkage ServiceInterface ServiceInterface
subServiceInterface = membershipOfSubServiceInterface  ∘  aggregationOfServiceInterfaceSubServiceInterface

{- Flow Connection: 
A Flow Connection is an Outcome Event event that occurs between the consumer and the provider participant of a Service Interface.
-}
-- Aggregate Member : Flow Connection
FlowConnection : ClassOfClassOfIndividual
FlowConnection = ClassOfIndividual

-- Membership relation
membershipOfFlowConnection :  Linkage ServiceInterface FlowConnection
membershipOfFlowConnection = membershipOfAggregateMember

-- Aggregation relation
aggregationOfOutcomeEventFlowConnection :  Linkage FlowConnection OutcomeEvent
aggregationOfOutcomeEventFlowConnection = aggregationOfBuildingBlock

{- flowConnection : derived relation obtained by composing
   membershipOfFlowConnection and aggregationOfOutcomeEventFlowConnection
   It directly links an Service Interface to the final aggregated OutcomeEvent
   hiding the reifying FlowConnection
-}
flowConnection : Linkage ServiceInterface OutcomeEvent
flowConnection = membershipOfFlowConnection  ∘  aggregationOfOutcomeEventFlowConnection
