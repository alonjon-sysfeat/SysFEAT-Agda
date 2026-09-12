{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Behavioral Event: 
A Behavioral Event is a Temporal Bounding Type that establishes a temporal connection between Behavior Types.A Behavioral Event connects a Predecessor Behavioral Event, to a Successor Behavioral Event.

Documentation : https://framework.sysfeat.com/pages/24ae31d75ed1c747.htm

External references:
  WordNet - Change: https://en-word.net/ili/i75036
  OpenGroup - ArchiMate - Event: https://pubs.opengroup.org/architecture/archimate32-doc/ch-Generic-Metamodel.html#sec-Behavior-Elements
  Russell Ackoff - System of Concepts - System Changes: ../resources/external-references/Ackoff-1971-Towards-a-system-of-systems-concepts.pdf#SystemChanges
  ISO 15926 - ClassOfEvent: https://15926.blog/topics/data-model/index.htm#ClassOfEvent
  Russell Ackoff - Choice & Communication - Signal: ../resources/external-references/Ackoff-1967-Choice-Communication-and-Conflict.pdf#Signal
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.24ae31d75ed1c747 where -- ========== Behavioral Event

open import Agda.Primitive
open import SysFEAT.SOF.21c5276e655759fb public -- Operating Connection
open import SysFEAT.SOF.a44fb6bc6748b088 public -- Functional Asset
open import SysFEAT.UpperOntology.9429979a66823f90 public -- Temporal Bounding Type

BehavioralEvent : ClassOfClassOfIndividual
BehavioralEvent = ClassOfIndividual

--  BehavioralEvent is subTypeOf OperatingConnection
st-915285165ed551cc : BehavioralEvent ⊏ₑ OperatingConnection
st-915285165ed551cc = polySubTypeOf-identity

--  BehavioralEvent is subTypeOf FunctionalAsset
st-a44fc9976748c7db : BehavioralEvent ⊏ₑ FunctionalAsset
st-a44fc9976748c7db = polySubTypeOf-identity

--  BehavioralEvent is subTypeOf TemporalBoundingType
st-ab8f26d8675328af : BehavioralEvent ⊏ₑ TemporalBoundingType
st-ab8f26d8675328af = polySubTypeOf-identity

-- == Relationships =======================
