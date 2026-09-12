{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Individual Artifact: 

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.3b1b91ea68cd8733 where -- ========== Individual Artifact

open import Agda.Primitive
open import SysFEAT.EA.fe1c231267880201 public -- Individual Resource Agent
open import SysFEAT.EA.ffdf5eb7686083b4 public -- Artifact

IndividualArtifact : ClassOfBoundedIndividual
IndividualArtifact = BoundedIndividual

--  IndividualArtifact is subTypeOf IndividualResourceAgent
st-3b1b920068cd8784 : IndividualArtifact ⊏ₑ IndividualResourceAgent
st-3b1b920068cd8784 = polySubTypeOf-identity

-- == Relationships =======================
