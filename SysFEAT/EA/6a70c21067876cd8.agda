{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Resource Service Interface: 
A Resource Service Interface is a kind of Service Interface that represents a typical course of interactions, coordinated by Resource Events and Resource Outcome Events, and intended to produce Resource Outcome Events through the involvement of Resource Agent Types.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.6a70c21067876cd8 where -- ========== Resource Service Interface

open import Agda.Primitive
open import SysFEAT.SOF.24ae31b55ed1c66d public -- Service Interface
open import SysFEAT.EA.0185cd936221bd72 public -- Resource Behavior
open import SysFEAT.EA.6a70c0b36787698c public -- Resource Outcome Event

ResourceServiceInterface : ClassOfClassOfIndividual
ResourceServiceInterface = ClassOfIndividual

--  ResourceServiceInterface is subTypeOf ServiceInterface
st-6a70c21667876d02 : ResourceServiceInterface ⊏ₑ ServiceInterface
st-6a70c21667876d02 = polySubTypeOf-identity

--  ResourceServiceInterface is subTypeOf ResourceBehavior
st-6a70e0cf6787931f : ResourceServiceInterface ⊏ₑ ResourceBehavior
st-6a70e0cf6787931f = polySubTypeOf-identity

-- == Relationships =======================

{- Resource Flow Connection: -}
-- Aggregate Member : Resource Flow Connection
ResourceFlowConnection : ClassOfClassOfIndividual
ResourceFlowConnection = ClassOfIndividual

-- Membership relation
membershipOfResourceFlowConnection :  Linkage ResourceServiceInterface ResourceFlowConnection
membershipOfResourceFlowConnection = membershipOfAggregateMember

-- Aggregation relation
aggregationOfResourceOutcomeEventResourceFlowConnection :  Linkage ResourceFlowConnection ResourceOutcomeEvent
aggregationOfResourceOutcomeEventResourceFlowConnection = aggregationOfBuildingBlock

{- resourceFlowConnection : derived relation obtained by composing
   membershipOfResourceFlowConnection and aggregationOfResourceOutcomeEventResourceFlowConnection
   It directly links an Resource Service Interface to the final aggregated ResourceOutcomeEvent
   hiding the reifying ResourceFlowConnection
-}
resourceFlowConnection : Linkage ResourceServiceInterface ResourceOutcomeEvent
resourceFlowConnection = membershipOfResourceFlowConnection  ∘  aggregationOfResourceOutcomeEventResourceFlowConnection
