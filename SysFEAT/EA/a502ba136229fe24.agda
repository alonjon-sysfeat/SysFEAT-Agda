{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Physical Service Interface: 
A Physical Service Interface is a Business Service Interface that describes a typical course of interactions intended to produce and consume Physical Outcome Events through the involvement of Concrete Hardware Systems.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.a502ba136229fe24 where -- ========== Physical Service Interface

open import Agda.Primitive
open import SysFEAT.EA.9dcea2655ec768ee public -- Business Service Interface
open import SysFEAT.EA.c334e2925ecb8db4 public -- Physical Outcome Event

PhysicalServiceInterface : ClassOfClassOfIndividual
PhysicalServiceInterface = ClassOfIndividual

--  PhysicalServiceInterface is subTypeOf BusinessServiceInterface
st-a502ba276229fe85 : PhysicalServiceInterface ⊏ₑ BusinessServiceInterface
st-a502ba276229fe85 = polySubTypeOf-identity

-- == Relationships =======================

{- Choreographed Material Outcome: -}
-- Aggregate Member : Choreographed Material Outcome
ChoreographedMaterialOutcome : ClassOfClassOfIndividual
ChoreographedMaterialOutcome = ClassOfIndividual

-- Membership relation
membershipOfChoreographedMaterialOutcome :  Linkage PhysicalServiceInterface ChoreographedMaterialOutcome
membershipOfChoreographedMaterialOutcome = membershipOfAggregateMember

-- Aggregation relation
aggregationOfPhysicalOutcomeEventChoreographedMaterialOutcome :  Linkage ChoreographedMaterialOutcome PhysicalOutcomeEvent
aggregationOfPhysicalOutcomeEventChoreographedMaterialOutcome = aggregationOfBuildingBlock

{- choreographedMaterialOutcome : derived relation obtained by composing
   membershipOfChoreographedMaterialOutcome and aggregationOfPhysicalOutcomeEventChoreographedMaterialOutcome
   It directly links an Physical Service Interface to the final aggregated PhysicalOutcomeEvent
   hiding the reifying ChoreographedMaterialOutcome
-}
choreographedMaterialOutcome : Linkage PhysicalServiceInterface PhysicalOutcomeEvent
choreographedMaterialOutcome = membershipOfChoreographedMaterialOutcome  ∘  aggregationOfPhysicalOutcomeEventChoreographedMaterialOutcome
