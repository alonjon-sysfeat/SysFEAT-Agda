{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Event: 
A Business Event is a type of business change that is used to coordinate Business Behaviors.

Documentation : https://framework.sysfeat.com/pages/0185cc626221bb37.htm

External references:
  OpenGroup - TOGAF - Enterprise Metamodel - Event: https://pubs.opengroup.org/togaf-standard/architecture-content/chap02.html#tag_02_04
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.0185cc626221bb37 where -- ========== Business Event

open import Agda.Primitive
open import SysFEAT.EA.6a70b9f6678763db public -- Business Asset
open import SysFEAT.SOF.24ae31d75ed1c747 public -- Behavioral Event

BusinessEvent : ClassOfClassOfBoundedIndividual
BusinessEvent = ClassOfBoundedIndividual


--  BusinessEvent is subTypeOf BusinessAsset
st-0185cc626221bb37-6a70b9f6678763db : BusinessEvent ⊏ₑ BusinessAsset
st-0185cc626221bb37-6a70b9f6678763db = polySubTypeOf-identity

--  BusinessEvent is subTypeOf BehavioralEvent
st-0185cc626221bb37-24ae31d75ed1c747 : BusinessEvent ⊏ₑ BehavioralEvent
st-0185cc626221bb37-24ae31d75ed1c747 = polySubTypeOf-identity


-- == Relations =======================
