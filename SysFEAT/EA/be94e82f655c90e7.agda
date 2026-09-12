{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Physical Business Agent: 
A Physical Business Agent is any identifiable Business Agent Type that exists in the physical universe. It is characterized by its ability to occupy space, possess mass, and interact with other Physical Business Agents through fundamental forces. Physical Business Agents are subject to the laws of physics and can be observed, measured, and analyzed using scientific methods. They can produce and consume Physical Outcome Events.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.be94e82f655c90e7 where -- ========== Physical Business Agent

open import Agda.Primitive
open import SysFEAT.EA.bcebd31f5491302c public -- Business Agent Type
open import SysFEAT.EA.340f52dc686212f5 public -- Physical Resource Agent
open import SysFEAT.EA.9b089d1868a45ed3 public -- Physical Capability

PhysicalBusinessAgent : ClassOfClassOfBoundedIndividual
PhysicalBusinessAgent = ClassOfBoundedIndividual

--  PhysicalBusinessAgent is subTypeOf BusinessAgentType
st-be94e918655c935e : PhysicalBusinessAgent ⊏ₑ BusinessAgentType
st-be94e918655c935e = polySubTypeOf-identity

--  PhysicalBusinessAgent is subTypeOf PhysicalResourceAgent
st-3b1b716d68cd5f92 : PhysicalBusinessAgent ⊏ₑ PhysicalResourceAgent
st-3b1b716d68cd5f92 = polySubTypeOf-identity

-- == Relationships =======================

{- Fulfilled Physical Capability: -}
fulfilledPhysicalCapability :  Linkage PhysicalBusinessAgent PhysicalCapability
fulfilledPhysicalCapability = make_subTypeOf "Fulfilled Physical Capability" "fulfilledPhysicalCapability"


{- Physical Resource Agent Part: 
Structural composition of a Physical Business Agent.
-}
-- Aggregate Member : Physical Resource Agent Part
PhysicalResourceAgentPart : ClassOfClassOfIndividual
PhysicalResourceAgentPart = ClassOfIndividual

-- Membership relation
membershipOfPhysicalResourceAgentPart :  Linkage PhysicalBusinessAgent PhysicalResourceAgentPart
membershipOfPhysicalResourceAgentPart = membershipOfAggregateMember

-- Aggregation relation
aggregationOfPhysicalBusinessAgentPhysicalResourceAgentPart :  Linkage PhysicalResourceAgentPart PhysicalBusinessAgent
aggregationOfPhysicalBusinessAgentPhysicalResourceAgentPart = aggregationOfBuildingBlock

{- physicalResourceAgentPart : derived relation obtained by composing
   membershipOfPhysicalResourceAgentPart and aggregationOfPhysicalBusinessAgentPhysicalResourceAgentPart
   It directly links an Physical Business Agent to the final aggregated PhysicalBusinessAgent
   hiding the reifying PhysicalResourceAgentPart
-}
physicalResourceAgentPart : Linkage PhysicalBusinessAgent PhysicalBusinessAgent
physicalResourceAgentPart = membershipOfPhysicalResourceAgentPart  ∘  aggregationOfPhysicalBusinessAgentPhysicalResourceAgentPart
