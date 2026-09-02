{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Individual Physical Resource Agent: 
An Individual Physical Resource Agent is any identifiable and tangible Individual Resource Agent that exists in the physical universe that can cast a shadow.It is characterized by its ability to occupy space, possess mass, and interact with other Individual Physical Resource Agents through fundamental forces. Individual Physical Resource Agents are subject to the laws of physics and can be observed, measured, and analyzed using scientific methods.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.3b1bb56c68cd9bfa where -- ========== Individual Physical Resource Agent

open import Agda.Primitive
open import SysFEAT.EA.fe1c231267880201 public -- Individual Resource Agent
open import SysFEAT.EA.340f52dc686212f5 public -- Physical Resource Agent

IndividualPhysicalResourceAgent : ClassOfBoundedIndividual
IndividualPhysicalResourceAgent = BoundedIndividual

--  IndividualPhysicalResourceAgent is subTypeOf IndividualResourceAgent
st-3b1bb59268cd9c87 : IndividualPhysicalResourceAgent ⊏ₑ IndividualResourceAgent
st-3b1bb59268cd9c87 = polySubTypeOf-identity

-- == Relationships =======================
