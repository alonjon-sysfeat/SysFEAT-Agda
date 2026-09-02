{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Resource Event: 
A Resource Event is a Behavioral Event produced and consumed by Resource Behaviors.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.6a70c0c8678769d3 where -- ========== Resource Event

open import Agda.Primitive
open import SysFEAT.EA.9bec9fbf66fb0d6f public -- Resource Functional Asset
open import SysFEAT.SOF.24ae31d75ed1c747 public -- Behavioral Event

ResourceEvent : ClassOfClassOfIndividual
ResourceEvent = ClassOfIndividual

--  ResourceEvent is subTypeOf ResourceFunctionalAsset
st-6a70f7786787b838 : ResourceEvent ⊏ₑ ResourceFunctionalAsset
st-6a70f7786787b838 = polySubTypeOf-identity

--  ResourceEvent is subTypeOf BehavioralEvent
st-6a70c1e867876c3d : ResourceEvent ⊏ₑ BehavioralEvent
st-6a70c1e867876c3d = polySubTypeOf-identity

-- == Relationships =======================
