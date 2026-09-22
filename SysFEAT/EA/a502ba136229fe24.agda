{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Physical Service Interface: 
A Physical Service Interface is a Business Service Interface that describes a typical course of interactions intended to produce and consume Physical Outcome Events through the involvement of Concrete Hardware Systems.

Documentation : https://framework.sysfeat.com/pages/a502ba136229fe24.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.a502ba136229fe24 where -- ========== Physical Service Interface

open import Agda.Primitive
open import SysFEAT.EA.9dcea2655ec768ee public -- Business Service Interface
open import SysFEAT.EA.c334e2925ecb8db4 public -- Physical Outcome Event

PhysicalServiceInterface : ClassOfClassOfBoundedIndividual
PhysicalServiceInterface = ClassOfBoundedIndividual


--  PhysicalServiceInterface is subTypeOf BusinessServiceInterface
st-a502ba136229fe24-9dcea2655ec768ee : PhysicalServiceInterface ⊏ₑ BusinessServiceInterface
st-a502ba136229fe24-9dcea2655ec768ee = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Choreographed Material Outcome: -}
-- Aggregate Member : Choreographed Material Outcome
ChoreographedMaterialOutcome : ClassOfClassOfBoundedIndividual
ChoreographedMaterialOutcome = ClassOfBoundedIndividual



--  ChoreographedMaterialOutcome is subTypeOf BusinessFlowConnection
st-c561eaa0680f8632-c561d97c680f6e84 : ChoreographedMaterialOutcome ⊏ₑ BusinessFlowConnection
st-c561eaa0680f8632-c561d97c680f6e84 = polySubTypeOf-identity

-- Membership relation
membershipOfChoreographedMaterialOutcome :  Linkage PhysicalServiceInterface ChoreographedMaterialOutcome
membershipOfChoreographedMaterialOutcome = make_upwardNestingRelation "choreographedMaterialOutcome membership" "nested choreographedMaterialOutcome"

-- Aggregation relation
aggregationOfPhysicalOutcomeEventChoreographedMaterialOutcome :  Linkage ChoreographedMaterialOutcome PhysicalOutcomeEvent
aggregationOfPhysicalOutcomeEventChoreographedMaterialOutcome = make_Relation "PhysicalOutcomeEvent aggregation" "aggregated PhysicalOutcomeEvent"

{- choreographedMaterialOutcome : derived relation obtained by composing
   membershipOfChoreographedMaterialOutcome and aggregationOfPhysicalOutcomeEventChoreographedMaterialOutcome
   It directly links an Physical Service Interface to the final aggregated PhysicalOutcomeEvent
   hiding the reifying ChoreographedMaterialOutcome
-}
choreographedMaterialOutcome : Linkage PhysicalServiceInterface PhysicalOutcomeEvent
choreographedMaterialOutcome = membershipOfChoreographedMaterialOutcome  ∘  aggregationOfPhysicalOutcomeEventChoreographedMaterialOutcome


