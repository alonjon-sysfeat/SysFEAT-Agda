{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Infrastructure Landscape: 
An Infrastructure Landscape is a set of human and physical resources (hardware and software) required for the existence, operation and management of an enterprise in its environment.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.9e38361d6192f8da where -- ========== Infrastructure Landscape

open import Agda.Primitive
open import SysFEAT.EA.66f8685a620b1440 public -- Individual Business Agent
open import SysFEAT.EA.9e38352f6192f750 public -- Data Center
open import SysFEAT.EA.46195775560d4ec0 public -- System of Systems

InfrastructureLandscape : ClassOfBoundedIndividual
InfrastructureLandscape = BoundedIndividual

--  InfrastructureLandscape is subTypeOf IndividualBusinessAgent
st-66f8703f620b2b5d : InfrastructureLandscape ⊏ₑ IndividualBusinessAgent
st-66f8703f620b2b5d = polySubTypeOf-identity

-- == Relationships =======================

{- Owned Data Center: -}
ownedDataCenter :  Linkage InfrastructureLandscape DataCenter
ownedDataCenter = make_holonymyRelation "Owned Data Center" "ownedDataCenter"


{- Infrastructure Type: -}
infrastructureType :  Linkage InfrastructureLandscape SystemOfSystems
infrastructureType = make_instanceOf "Infrastructure Type" "infrastructureType"

