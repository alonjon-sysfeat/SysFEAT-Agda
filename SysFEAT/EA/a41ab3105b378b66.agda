{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

IT Infrastructure System: 
An IT Infrastructure System is an assembly of  Computing Systems and Network Devices required to to run Business Systems and Business Operations.An IT Infrastructure System is either an IT Infrastructure or an Computer Network.

Documentation : https://framework.sysfeat.com/pages/a41ab3105b378b66.htm

External references:
  OpenGroup - OAA - Software Defined Infrastructure: https://pubs.opengroup.org/architecture/o-aa-standard/hardware-architecture.html
  UCF Glossary - IT Infrastructure: https://compliancedictionary.com/term/3127
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.a41ab3105b378b66 where -- ========== IT Infrastructure System

open import Agda.Primitive
open import SysFEAT.EA.26b8384f5eeae33c public -- Networking System
open import SysFEAT.EA.02f51209641c7ea4 public -- Computing Device

ITInfrastructureSystem : ClassOfClassOfBoundedIndividual
ITInfrastructureSystem = ClassOfBoundedIndividual


--  ITInfrastructureSystem is subTypeOf NetworkingSystem
st-a41ab3105b378b66-26b8384f5eeae33c : ITInfrastructureSystem ⊏ₑ NetworkingSystem
st-a41ab3105b378b66-26b8384f5eeae33c = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Computing Node: 
Role of a Computing System in an IT Infrastructure System.
-}
-- Aggregate Member : Computing Node
ComputingNode : ClassOfClassOfBoundedIndividual
ComputingNode = ClassOfBoundedIndividual



--  ComputingNode is subTypeOf NetworkingPart
st-f4be0f185ee1d804-26b8386e5eeae4a4 : ComputingNode ⊏ₑ NetworkingPart
st-f4be0f185ee1d804-26b8386e5eeae4a4 = polySubTypeOf-identity

--  ComputingNode is subTypeOf ComputingDevice
st-f4be0f185ee1d804-02f51209641c7ea4 : ComputingNode ⊏ₑ ComputingDevice
st-f4be0f185ee1d804-02f51209641c7ea4 = polySubTypeOf-identity

-- Membership relation
membershipOfComputingNode :  Linkage ITInfrastructureSystem ComputingNode
membershipOfComputingNode = make_upwardNestingRelation "computingNode membership" "nested computingNode"

-- Aggregation relation
aggregationOfComputingDeviceComputingNode :  Linkage ComputingNode ComputingDevice
aggregationOfComputingDeviceComputingNode = make_Relation "ComputingDevice aggregation" "aggregated ComputingDevice"

{- computingNode : derived relation obtained by composing
   membershipOfComputingNode and aggregationOfComputingDeviceComputingNode
   It directly links an IT Infrastructure System to the final aggregated ComputingDevice
   hiding the reifying ComputingNode
-}
computingNode : Linkage ITInfrastructureSystem ComputingDevice
computingNode = membershipOfComputingNode  ∘  aggregationOfComputingDeviceComputingNode


