{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Conceptual Event: 
An Conceptual Event is a Temporal Bounding Type that establishes a temporal connection between Conceptual Behaviors.An Conceptual Event connects a Previous Behavioral Event, to a Next Behavioral Event.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.21918fed6786592c where -- ========== Conceptual Event

open import Agda.Primitive
open import SysFEAT.SOF.24ae31d75ed1c747 public -- Behavioral Event
open import SysFEAT.EA.cb94ec53681855c2 public -- Conceptual Functional Asset

ConceptualEvent : ClassOfClassOfIndividual
ConceptualEvent = ClassOfIndividual

--  ConceptualEvent is subTypeOf BehavioralEvent
st-2191900b67865989 : ConceptualEvent ⊏ₑ BehavioralEvent
st-2191900b67865989 = polySubTypeOf-identity

--  ConceptualEvent is subTypeOf ConceptualFunctionalAsset
st-cb94f32e6818623a : ConceptualEvent ⊏ₑ ConceptualFunctionalAsset
st-cb94f32e6818623a = polySubTypeOf-identity

-- == Relationships =======================
