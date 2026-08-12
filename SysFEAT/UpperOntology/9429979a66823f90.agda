{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Temporal Bounding Type: 
A Temporal Bounding Type is Class of Individual that defines the type of temporal boundaries that delimitate Class of Bounded Individuals.It is a class of Temporal Bounding.Exemples:- Birth, - Death,- Start of the plinian phase of a volcanic eruption.- Hospital opening.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.9429979a66823f90 where -- ========== Temporal Bounding Type

open import Agda.Primitive
open import SysFEAT.UpperOntology.6aa8cbcb65b32971 public -- Class of Individual
open import SysFEAT.UpperOntology.23d5eaba68515533 public -- Ordering Connection

TemporalBoundingType : ClassOfClassOfIndividual
TemporalBoundingType = ClassOfIndividual

postulate --  TemporalBoundingType is subTypeOf ClassOfIndividual
  st-9429983566824027 : TemporalBoundingType ⊏ₑ ClassOfIndividual

postulate --  TemporalBoundingType withAspect OrderingConnection
  st-71587800672c423b : TemporalBoundingType ⊏ₐₑ (OrderingConnection (lsuc(lzero)))

-- == Relationships =======================
