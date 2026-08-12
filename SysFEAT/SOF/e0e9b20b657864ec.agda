{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Time Event: 
A Time Event is a Behavioral Event that signifies the happening of a time change used to coordinate Behavior Types.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.e0e9b20b657864ec where -- ========== Time Event

open import Agda.Primitive
open import SysFEAT.SOF.24ae31d75ed1c747 public -- Behavioral Event
open import SysFEAT.SOF.362ff9085b3c4933 public -- Period Type

TimeEvent : ClassOfClassOfIndividual
TimeEvent = ClassOfIndividual

postulate --  TimeEvent is subTypeOf BehavioralEvent
  st-e0e9b22e65786534 : TimeEvent ⊏ₑ BehavioralEvent

-- == Relationships =======================

{- Time Change: -}
-- Aggregate Member : Time Change
TimeChange : ClassOfClassOfIndividual
TimeChange = ClassOfIndividual

-- Membership relation
membershipOfTimeChange :  Linkage TimeEvent TimeChange
membershipOfTimeChange = membershipOfAggregateMember

-- Aggregation relation
aggregationOfPeriodTypeTimeChange :  Linkage TimeChange PeriodType
aggregationOfPeriodTypeTimeChange = aggregationOfBuildingBlock

{- timeChange : derived relation obtained by composing
   membershipOfTimeChange and aggregationOfPeriodTypeTimeChange
   It directly links an Time Event to the final aggregated PeriodType
   hiding the reifying TimeChange
-}
timeChange : Linkage TimeEvent PeriodType
timeChange = membershipOfTimeChange  ∘  aggregationOfPeriodTypeTimeChange
