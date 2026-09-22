{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Physical Outcome Event: 
A Physical Outcome Event is a Business Outcome Event that signals the happening of a change in the state of a Physical Business Agent, produced by a Physical Business Agent for the benefits of an internal or external consumer.

Documentation : https://framework.sysfeat.com/pages/c334e2925ecb8db4.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.c334e2925ecb8db4 where -- ========== Physical Outcome Event

open import Agda.Primitive
open import SysFEAT.EA.9dcea4535ec76e6c public -- Business Outcome Event
open import SysFEAT.EA.be94e82f655c90e7 public -- Physical Business Agent

PhysicalOutcomeEvent : ClassOfClassOfBoundedIndividual
PhysicalOutcomeEvent = ClassOfBoundedIndividual


--  PhysicalOutcomeEvent is subTypeOf BusinessOutcomeEvent
st-c334e2925ecb8db4-9dcea4535ec76e6c : PhysicalOutcomeEvent ⊏ₑ BusinessOutcomeEvent
st-c334e2925ecb8db4-9dcea4535ec76e6c = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Physical Outcome: 
A Physical Outcome is a state of any Physical Business Agent that is the subject of a business transaction.As such, a Physical Business Agent is created, enhanced or transformed through the Behavior of a producer Hardware System, resulting in an increase in value (Physical Outcome Event) that benefits (value) to the Business Behavior of a consumer Hardware System.Examples:- A produced manufactured product (car, appliance, furniture, etc.) that is the result of development, production and sales activities of a manufacturing company (producer Agent) for the benefit of an end user (Retail customers, wholesale customers, ...).
-}
-- Aggregate Member : Physical Outcome
PhysicalOutcome : ClassOfClassOfBoundedIndividual
PhysicalOutcome = ClassOfBoundedIndividual



--  PhysicalOutcome is subTypeOf BusinessOutcome
st-be94eb36655c95ea-be94e0c4655c85b4 : PhysicalOutcome ⊏ₑ BusinessOutcome
st-be94eb36655c95ea-be94e0c4655c85b4 = polySubTypeOf-identity

--  PhysicalOutcome is subTypeOf PhysicalBusinessAgent
st-be94eb36655c95ea-be94e82f655c90e7 : PhysicalOutcome ⊏ₑ PhysicalBusinessAgent
st-be94eb36655c95ea-be94e82f655c90e7 = polySubTypeOf-identity

-- Membership relation
membershipOfPhysicalOutcome :  Linkage PhysicalOutcomeEvent PhysicalOutcome
membershipOfPhysicalOutcome = make_upwardNestingRelation "physicalOutcome membership" "nested physicalOutcome"

-- Aggregation relation
aggregationOfPhysicalBusinessAgentPhysicalOutcome :  Linkage PhysicalOutcome PhysicalBusinessAgent
aggregationOfPhysicalBusinessAgentPhysicalOutcome = make_Relation "PhysicalBusinessAgent aggregation" "aggregated PhysicalBusinessAgent"

{- physicalOutcome : derived relation obtained by composing
   membershipOfPhysicalOutcome and aggregationOfPhysicalBusinessAgentPhysicalOutcome
   It directly links an Physical Outcome Event to the final aggregated PhysicalBusinessAgent
   hiding the reifying PhysicalOutcome
-}
physicalOutcome : Linkage PhysicalOutcomeEvent PhysicalBusinessAgent
physicalOutcome = membershipOfPhysicalOutcome  ∘  aggregationOfPhysicalBusinessAgentPhysicalOutcome


