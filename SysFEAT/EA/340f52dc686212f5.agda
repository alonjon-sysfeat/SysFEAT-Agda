{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Physical Resource Agent: 
A Physical Resource Agent is any identifiable and tangible Resource Agent Type that exists in the physical universe that can cast a shadow, or more generally, that occupies a region of space from which other material entities are excluded.It is characterized by its ability to occupy space, possess mass, and interacts with other Physical Resource Agents through fundamental forces. Physical Resource Agents are subject to the laws of physics and can be observed, measured, and analyzed using scientific methods. 
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.340f52dc686212f5 where -- ========== Physical Resource Agent

open import Agda.Primitive
open import SysFEAT.EA.e2ef091962147ad7 public -- Resource Agent Type

PhysicalResourceAgent : ClassOfClassOfBoundedIndividual
PhysicalResourceAgent = ClassOfBoundedIndividual

--  PhysicalResourceAgent is subTypeOf ResourceAgentType
st-340f52e96862133c : PhysicalResourceAgent ⊏ₑ ResourceAgentType
st-340f52e96862133c = polySubTypeOf-identity

-- == Relationships =======================
