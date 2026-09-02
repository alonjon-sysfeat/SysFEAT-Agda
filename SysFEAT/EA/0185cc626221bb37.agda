{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Event: 
A Business Event is a type of business change that is used to coordinate Business Behaviors.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.0185cc626221bb37 where -- ========== Business Event

open import Agda.Primitive
open import SysFEAT.EA.6a70b9f6678763db public -- Business Asset
open import SysFEAT.SOF.24ae31d75ed1c747 public -- Behavioral Event

BusinessEvent : ClassOfClassOfIndividual
BusinessEvent = ClassOfIndividual

--  BusinessEvent is subTypeOf BusinessAsset
st-a74ba98067567059 : BusinessEvent ⊏ₑ BusinessAsset
st-a74ba98067567059 = polySubTypeOf-identity

--  BusinessEvent is subTypeOf BehavioralEvent
st-0185cc816221bbd2 : BusinessEvent ⊏ₑ BehavioralEvent
st-0185cc816221bbd2 = polySubTypeOf-identity

-- == Relationships =======================
