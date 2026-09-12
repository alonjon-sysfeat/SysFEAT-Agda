{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Resource Outcome Event: 
A Resource Outcome Event is an Outcome Event that signals the Resource Output of a Resource Asset or state of Resource Asset by a producer Resource Behavior, ready to be used as a Resource Input by a consumer Resource Behavior.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.6a70c0b36787698c where -- ========== Resource Outcome Event

open import Agda.Primitive
open import SysFEAT.EA.6a70c0c8678769d3 public -- Resource Event
open import SysFEAT.SOF.30223b5c5ec90c01 public -- Outcome Event
open import SysFEAT.EA.d9f4dcc5688d5969 public -- Resource Asset

ResourceOutcomeEvent : ClassOfClassOfIndividual
ResourceOutcomeEvent = ClassOfIndividual

--  ResourceOutcomeEvent is subTypeOf ResourceEvent
st-6a70c4b967877219 : ResourceOutcomeEvent ⊏ₑ ResourceEvent
st-6a70c4b967877219 = polySubTypeOf-identity

--  ResourceOutcomeEvent is subTypeOf OutcomeEvent
st-6a70c1f267876c65 : ResourceOutcomeEvent ⊏ₑ OutcomeEvent
st-6a70c1f267876c65 = polySubTypeOf-identity

-- == Relationships =======================

{- Resource Outcome: 
The changed state of Resource Asset that is signaled as being an Resource Outcome Event.A Resource Outcome is a state of a Resource Asset that is the subject of a transaction.A Resource Outcome is the result of a Behavior of a producer Agent State and is signaled as an Outcome that benefits (value) to a Agent State Agent.Examples:- An improved process (Behavior) that is the result of a refactoring activity done by a consulting organization (producer Agent) for the benefit of a business unit (user Agent).- A new application (Sofware System) that is the result of development and sales activities of a software company (producer Agent) for the benefit of an end user (user Agent).- A produced car (Hardware System) that is the result of development, production and sales activities of a car manufacturing company (producer Agent) for the benefit of an end user (Retail Customers, Fleet Customers, ...).
-}
-- Aggregate Member : Resource Outcome
ResourceOutcome : ClassOfClassOfIndividual
ResourceOutcome = ClassOfIndividual

-- Membership relation
membershipOfResourceOutcome :  Linkage ResourceOutcomeEvent ResourceOutcome
membershipOfResourceOutcome = membershipOfAggregateMember

-- Aggregation relation
aggregationOfResourceAssetResourceOutcome :  Linkage ResourceOutcome ResourceAsset
aggregationOfResourceAssetResourceOutcome = aggregationOfBuildingBlock

{- resourceOutcome : derived relation obtained by composing
   membershipOfResourceOutcome and aggregationOfResourceAssetResourceOutcome
   It directly links an Resource Outcome Event to the final aggregated ResourceAsset
   hiding the reifying ResourceOutcome
-}
resourceOutcome : Linkage ResourceOutcomeEvent ResourceAsset
resourceOutcome = membershipOfResourceOutcome  ∘  aggregationOfResourceAssetResourceOutcome
