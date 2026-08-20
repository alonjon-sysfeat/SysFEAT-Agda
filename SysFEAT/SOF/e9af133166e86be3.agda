{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Individual Event: 
An Individual Event is a Temporal Bounding that establishes a temporal connection between Individual Behaviors.An Individual Event connects a Previous Behavioral Event, to a Next Behavioral Event.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.e9af133166e86be3 where -- ========== Individual Event

open import Agda.Primitive
open import SysFEAT.UpperOntology.267b6a126675a0b9 public -- Temporal Bounding
open import SysFEAT.SOF.24ae31d75ed1c747 public -- Behavioral Event

IndividualEvent : ClassOfIndividual
IndividualEvent = Individual

--  IndividualEvent is subTypeOf TemporalBounding
st-e9af144a66e86d00 : IndividualEvent ⊏ₑ TemporalBounding
st-e9af144a66e86d00 = polySubTypeOf-identity

-- == Relationships =======================
