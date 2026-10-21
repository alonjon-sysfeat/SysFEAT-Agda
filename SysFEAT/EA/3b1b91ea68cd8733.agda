{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Individual Artifact: 


Documentation : https://framework.sysfeat.com/pages/3b1b91ea68cd8733.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.3b1b91ea68cd8733 where -- ========== Individual Artifact

open import Agda.Primitive
open import SysFEAT.EA.fe1c231267880201 public -- Individual Resource Agent
open import SysFEAT.EA.ffdf5eb7686083b4 public -- Artifact

IndividualArtifact : AgentType
IndividualArtifact = IndividualAgent


--  IndividualArtifact is subTypeOf IndividualResourceAgent
st-3b1b91ea68cd8733-fe1c231267880201 : IndividualArtifact ⊏ₑ IndividualResourceAgent
st-3b1b91ea68cd8733-fe1c231267880201 = polySubTypeOf-identity


-- == Relations =======================
