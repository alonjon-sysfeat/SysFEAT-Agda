{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Time Event: 
A Time Event is a Behavioral Event that signifies the happening of a time change used to coordinate Behavior Types.

Documentation : https://framework.sysfeat.com/pages/e0e9b20b657864ec.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.e0e9b20b657864ec where -- ========== Time Event

open import Agda.Primitive
open import SysFEAT.SOF.24ae31d75ed1c747 public -- Behavioral Event
open import SysFEAT.SOF.362ff9085b3c4933 public -- Period Type

TimeEvent : ClassOfClassOfIndividual
TimeEvent = ClassOfIndividual


--  TimeEvent is subTypeOf BehavioralEvent
st-e0e9b20b657864ec-24ae31d75ed1c747 : TimeEvent ⊏ₑ BehavioralEvent
st-e0e9b20b657864ec-24ae31d75ed1c747 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Time Change: -}
-- Aggregate Member : Time Change
TimeChange : ClassOfClassOfBoundedIndividual
TimeChange = ClassOfBoundedIndividual



--  TimeChange withAspect UnboundedMember
st-96c5fe7665824f97-8cfaf71a6852b042 : TimeChange ⊏ₐₑ (UnboundedMember (lsuc(lzero)))
st-96c5fe7665824f97-8cfaf71a6852b042 = polySubTypeOf-identity

--  TimeChange is subTypeOf PeriodType
st-96c5fe7665824f97-362ff9085b3c4933 : TimeChange ⊏ₑ PeriodType
st-96c5fe7665824f97-362ff9085b3c4933 = polySubTypeOf-identity

-- Membership relation
membershipOfTimeChange :  Linkage TimeEvent TimeChange
membershipOfTimeChange = make_upwardNestingRelation "timeChange membership" "nested timeChange"

-- Aggregation relation
aggregationOfPeriodTypeTimeChange :  Linkage TimeChange PeriodType
aggregationOfPeriodTypeTimeChange = make_Relation "PeriodType aggregation" "aggregated PeriodType"

{- timeChange : derived relation obtained by composing
   membershipOfTimeChange and aggregationOfPeriodTypeTimeChange
   It directly links an Time Event to the final aggregated PeriodType
   hiding the reifying TimeChange
-}
timeChange : Linkage TimeEvent PeriodType
timeChange = membershipOfTimeChange  ∘  aggregationOfPeriodTypeTimeChange


