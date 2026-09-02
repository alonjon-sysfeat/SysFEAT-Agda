{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Individual Software System: 
v
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.3b1b8ceb68cd7ed3 where -- ========== Individual Software System

open import Agda.Primitive
open import SysFEAT.EA.3b1b91ea68cd8733 public -- Individual Artifact
open import SysFEAT.EA.3b1bb6eb68cd9da2 public -- Individual Intangible Resource Agent

IndividualSOftwareSystem : ClassOfBoundedIndividual
IndividualSOftwareSystem = BoundedIndividual

--  IndividualSOftwareSystem is subTypeOf IndividualArtifact
st-3b1b907168cd82b0 : IndividualSOftwareSystem ⊏ₑ IndividualArtifact
st-3b1b907168cd82b0 = polySubTypeOf-identity

--  IndividualSOftwareSystem is subTypeOf IndividualIntangibleResourceAgent
st-3b1bb79e68cd9ed2 : IndividualSOftwareSystem ⊏ₑ IndividualIntangibleResourceAgent
st-3b1bb79e68cd9ed2 = polySubTypeOf-identity

-- == Relationships =======================
