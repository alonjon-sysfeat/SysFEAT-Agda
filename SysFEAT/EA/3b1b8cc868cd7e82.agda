{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Individual Hardware System: 
An Individual Hardware System is a physical, material Artifact engineered to produce and consume physical effects.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.3b1b8cc868cd7e82 where -- ========== Individual Hardware System

open import Agda.Primitive
open import SysFEAT.EA.3b1b91ea68cd8733 public -- Individual Artifact
open import SysFEAT.EA.3b1bb56c68cd9bfa public -- Individual Physical Resource Agent

IndividualHardwareSystem : ClassOfBoundedIndividual
IndividualHardwareSystem = BoundedIndividual

--  IndividualHardwareSystem is subTypeOf IndividualArtifact
st-3b1b907868cd82da : IndividualHardwareSystem ⊏ₑ IndividualArtifact
st-3b1b907868cd82da = polySubTypeOf-identity

--  IndividualHardwareSystem is subTypeOf IndividualPhysicalResourceAgent
st-3b1bb78a68cd9ea0 : IndividualHardwareSystem ⊏ₑ IndividualPhysicalResourceAgent
st-3b1bb78a68cd9ea0 = polySubTypeOf-identity

-- == Relationships =======================
