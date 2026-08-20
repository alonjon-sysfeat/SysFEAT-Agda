{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Agent Life Cycle Event: 
An Agent Life Cycle Event is a Temporal Bounding Type that defines the boundaries of an Agent Types life cycle.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.c80acb82678413ac where -- ========== Agent Life Cycle Event

open import Agda.Primitive
open import SysFEAT.UpperOntology.9429979a66823f90 public -- Temporal Bounding Type

AgentLifeCycleEvent : ClassOfClassOfIndividual
AgentLifeCycleEvent = ClassOfIndividual

--  AgentLifeCycleEvent is subTypeOf TemporalBoundingType
st-c80acf556784192e : AgentLifeCycleEvent ⊏ₑ TemporalBoundingType
st-c80acf556784192e = polySubTypeOf-identity

-- == Relationships =======================
