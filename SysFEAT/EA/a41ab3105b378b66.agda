{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

IT Infrastructure System: 
An IT Infrastructure System is an assembly of  Computing Systems and Network Devices required to to run Business Systems and Business Operations.An IT Infrastructure System is either an IT Infrastructure or an Computer Network.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.a41ab3105b378b66 where -- ========== IT Infrastructure System

open import Agda.Primitive
open import SysFEAT.EA.26b8384f5eeae33c public -- Networking System
open import SysFEAT.EA.02f51209641c7ea4 public -- Computing Device

ITInfrastructureSystem : ClassOfClassOfBoundedIndividual
ITInfrastructureSystem = ClassOfBoundedIndividual

--  ITInfrastructureSystem is subTypeOf NetworkingSystem
st-26b83a985eeaeb10 : ITInfrastructureSystem ⊏ₑ NetworkingSystem
st-26b83a985eeaeb10 = polySubTypeOf-identity

-- == Relationships =======================

{- Computing Node: 
Role of a Computing System in an IT Infrastructure System.
-}
-- Aggregate Member : Computing Node
ComputingNode : ClassOfClassOfIndividual
ComputingNode = ClassOfIndividual

-- Membership relation
membershipOfComputingNode :  Linkage ITInfrastructureSystem ComputingNode
membershipOfComputingNode = membershipOfAggregateMember

-- Aggregation relation
aggregationOfComputingDeviceComputingNode :  Linkage ComputingNode ComputingDevice
aggregationOfComputingDeviceComputingNode = aggregationOfBuildingBlock

{- computingNode : derived relation obtained by composing
   membershipOfComputingNode and aggregationOfComputingDeviceComputingNode
   It directly links an IT Infrastructure System to the final aggregated ComputingDevice
   hiding the reifying ComputingNode
-}
computingNode : Linkage ITInfrastructureSystem ComputingDevice
computingNode = membershipOfComputingNode  ∘  aggregationOfComputingDeviceComputingNode
