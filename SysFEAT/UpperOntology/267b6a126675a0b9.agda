{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Temporal Bounding: 
A Temporal Bounding is an Individual whose temporal extent is instantaneous, and whose spatial extent corresponds with the start or end of the Bounded Individuals for which it is the temporal border.Example:. The Eiffel tower completion (31st March 1889). William Shakespeare birth (1564). Confucius death (758).. Start of the first Plinian phase of the Mount Vesuvius eruption (18h, Aug. 24 A.D. 79). Oakland hospital opening in 1994.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.267b6a126675a0b9 where -- ========== Temporal Bounding

open import Agda.Primitive
open import SysFEAT.UpperOntology.4df9512266826e23 public -- Individual
open import SysFEAT.UpperOntology.23d5eaba68515533 public -- Ordering Connection
open import SysFEAT.UpperOntology.9429979a66823f90 public -- Temporal Bounding Type

TemporalBounding : TemporalBoundingType
TemporalBounding = Individual

--  TemporalBounding is subTypeOf Individual
st-80328c0466790c22 : TemporalBounding ⊏ₑ Individual
st-80328c0466790c22 = polySubTypeOf-identity

--  TemporalBounding withAspect OrderingConnection
st-715877f6672c4212 : TemporalBounding ⊏ₐₑ (OrderingConnection lzero)
st-715877f6672c4212 = polySubTypeOf-identity

-- == Relationships =======================
