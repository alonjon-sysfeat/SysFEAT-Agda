{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Outcome Event: 
An Outcome Event is a Behavioral Event that signals the Output of an Asset Type or state of Asset Type (Outcome) by a producer Behavior Type, ready to be used as an Input by a consumer Behavior Type.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.30223b5c5ec90c01 where -- ========== Outcome Event

open import Agda.Primitive
open import SysFEAT.SOF.24ae31d75ed1c747 public -- Behavioral Event
open import SysFEAT.SOF.a4a5b3f855585ce1 public -- Asset Type

OutcomeEvent : ClassOfClassOfIndividual
OutcomeEvent = ClassOfIndividual

postulate --  OutcomeEvent is subTypeOf BehavioralEvent
  st-24ae322b5ed1c8cb : OutcomeEvent ⊏ₑ BehavioralEvent

-- == Relationships =======================

{- Outcome: 
An Outcome is a produced state of an Asset Type that is signaled by an Outcome Event.An Outcome is the result of a Behavior Type of a producer Agent Type and is signaled as an Outcome Event to a consumer Agent Type that reacts to this change event.Examples:- An improved process (Behavior) that is the result of a refactoring activity done by a consulting organization (producer Agent Type) for the benefit of a business unit (user Agent Type).- A new application (Sofware System) that is the result of development and sales activities of a software company (producer Agent) for the benefit of an end user (user Agent Type).- A produced car (Hardware System) that is the result of development, production and sales activities of a car manufacturing company (producer Agent Type) for the benefit of an end user (Retail Customers, Fleet Customers, ...).
-}
-- Aggregate Member : Outcome
Outcome : ClassOfClassOfIndividual
Outcome = ClassOfIndividual

-- Membership relation
membershipOfOutcome :  Linkage OutcomeEvent Outcome
membershipOfOutcome = membershipOfAggregateMember

-- Aggregation relation
aggregationOfAssetTypeOutcome :  Linkage Outcome AssetType
aggregationOfAssetTypeOutcome = aggregationOfBuildingBlock

{- outcome : derived relation obtained by composing
   membershipOfOutcome and aggregationOfAssetTypeOutcome
   It directly links an Outcome Event to the final aggregated AssetType
   hiding the reifying Outcome
-}
outcome : Linkage OutcomeEvent AssetType
outcome = membershipOfOutcome  ∘  aggregationOfAssetTypeOutcome
