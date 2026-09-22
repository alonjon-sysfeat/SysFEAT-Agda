{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Physical Business Agent: 
A Physical Business Agent is any identifiable Business Agent Type that exists in the physical universe. It is characterized by its ability to occupy space, possess mass, and interact with other Physical Business Agents through fundamental forces. Physical Business Agents are subject to the laws of physics and can be observed, measured, and analyzed using scientific methods. They can produce and consume Physical Outcome Events.

Documentation : https://framework.sysfeat.com/pages/be94e82f655c90e7.htm

External references:
  WordNet - Physical Object: https://en-word.net/ili/i35549
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
st-be94e82f655c90e7-bcebd31f5491302c : PhysicalBusinessAgent ⊏ₑ BusinessAgentType
st-be94e82f655c90e7-bcebd31f5491302c = polySubTypeOf-identity

--  PhysicalBusinessAgent is subTypeOf PhysicalResourceAgent
st-be94e82f655c90e7-340f52dc686212f5 : PhysicalBusinessAgent ⊏ₑ PhysicalResourceAgent
st-be94e82f655c90e7-340f52dc686212f5 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Fulfilled Physical Capability: -}
fulfilledPhysicalCapability :  Linkage PhysicalBusinessAgent PhysicalCapability
fulfilledPhysicalCapability = make_subTypeOf "Fulfilled Physical Capability" "Fulfilled Physical Capability"


-- -------------------------------------------------------------------------------------------- 
{- Physical Resource Agent Part: 
Structural composition of a Physical Business Agent.
-}
-- Aggregate Member : Physical Resource Agent Part
PhysicalResourceAgentPart : ClassOfClassOfBoundedIndividual
PhysicalResourceAgentPart = ClassOfBoundedIndividual



--  PhysicalResourceAgentPart is subTypeOf ResourceAgentPart
st-c80a1a0f67854745-24034f6d5fc79c3f : PhysicalResourceAgentPart ⊏ₑ ResourceAgentPart
st-c80a1a0f67854745-24034f6d5fc79c3f = polySubTypeOf-identity

--  PhysicalResourceAgentPart is subTypeOf PhysicalBusinessAgent
st-c80a1a0f67854745-be94e82f655c90e7 : PhysicalResourceAgentPart ⊏ₑ PhysicalBusinessAgent
st-c80a1a0f67854745-be94e82f655c90e7 = polySubTypeOf-identity

-- Membership relation
membershipOfPhysicalResourceAgentPart :  Linkage PhysicalBusinessAgent PhysicalResourceAgentPart
membershipOfPhysicalResourceAgentPart = make_upwardNestingRelation "physicalResourceAgentPart membership" "nested physicalResourceAgentPart"

-- Aggregation relation
aggregationOfPhysicalBusinessAgentPhysicalResourceAgentPart :  Linkage PhysicalResourceAgentPart PhysicalBusinessAgent
aggregationOfPhysicalBusinessAgentPhysicalResourceAgentPart = make_Relation "PhysicalBusinessAgent aggregation" "aggregated PhysicalBusinessAgent"

{- physicalResourceAgentPart : derived relation obtained by composing
   membershipOfPhysicalResourceAgentPart and aggregationOfPhysicalBusinessAgentPhysicalResourceAgentPart
   It directly links an Physical Business Agent to the final aggregated PhysicalBusinessAgent
   hiding the reifying PhysicalResourceAgentPart
-}
physicalResourceAgentPart : Linkage PhysicalBusinessAgent PhysicalBusinessAgent
physicalResourceAgentPart = membershipOfPhysicalResourceAgentPart  ∘  aggregationOfPhysicalBusinessAgentPhysicalResourceAgentPart


