{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Concrete Hardware System: 
A Concrete Hardware System is a man made tangible artifact which exposes Hardware Capability(ies) and can produce and react to Physical Outcome Events.A Concrete Hardware System performs System Processes and participates to System Processes or to Business Processes.A Concrete Hardware System can embed Computing Systems. Together with its embedded Computing Systems, a Concrete Hardware System can also produce and react to Information Outcome Events.A Concrete Hardware System may be based on a set of Hardware Technology(ies).Examples:- Connected Drone with Online Payment App.- 3D printer.- Automated Guided Vehicles (AGVs)- Connected fridge providing an ordering Functionality and of course a freezing Hardware Capability.- Production equipment in an assembly line (metal forging machine)- Car

Documentation : https://framework.sysfeat.com/pages/c30bf4015a5da72b.htm

External references:
  OMG - UAF - System: https://www.omg.org/spec/UAF/1.2/Beta1/DMM/PDF#System
  OpenGroup - OAA - Hardware: https://pubs.opengroup.org/architecture/o-aa-standard/definitions.html#_hardware
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.c30bf4015a5da72b where -- ========== Concrete Hardware System

open import Agda.Primitive
open import SysFEAT.EA.be94e82f655c90e7 public -- Physical Business Agent
open import SysFEAT.EA.ffdf60af68608674 public -- Hardware System Category
open import SysFEAT.EA.278675d65b252f4d public -- Business System
open import SysFEAT..3b364dc363d9bda7 public -- Hardware Technology
open import SysFEAT.EA.c334e2925ecb8db4 public -- Physical Outcome Event
open import SysFEAT.EA.02f51209641c7ea4 public -- Computing Device

ConcreteHardwareSystem : ClassOfClassOfBoundedIndividual
ConcreteHardwareSystem = ClassOfBoundedIndividual

--  ConcreteHardwareSystem is subTypeOf PhysicalBusinessAgent
st-c30bf4015a5da72b-be94e82f655c90e7 : ConcreteHardwareSystem ⊏ₑ PhysicalBusinessAgent
st-c30bf4015a5da72b-be94e82f655c90e7 = polySubTypeOf-identity

--  ConcreteHardwareSystem is subTypeOf HardwareSystemCategory
st-c30bf4015a5da72b-ffdf60af68608674 : ConcreteHardwareSystem ⊏ₑ HardwareSystemCategory
st-c30bf4015a5da72b-ffdf60af68608674 = polySubTypeOf-identity

--  ConcreteHardwareSystem is subTypeOf BusinessSystem
st-c30bf4015a5da72b-278675d65b252f4d : ConcreteHardwareSystem ⊏ₑ BusinessSystem
st-c30bf4015a5da72b-278675d65b252f4d = polySubTypeOf-identity

-- == Relationships =======================

{- Required Hardware Technology: 
Set of Hardware Technology(ies) on which a Concrete Hardware System is based.
-}
requiredHardwareTechnology :  Linkage ConcreteHardwareSystem HardwareTechnology
requiredHardwareTechnology = make_classOfHolonymy "Required Hardware Technology" "Required Hardware Technology"


{- Physical Interaction Channel: -}
-- Aggregate Member : Physical Interaction Channel
PhysicalInteractionChannel : ClassOfClassOfIndividual
PhysicalInteractionChannel = ClassOfIndividual

-- Membership relation
membershipOfPhysicalInteractionChannel :  Linkage ConcreteHardwareSystem PhysicalInteractionChannel
membershipOfPhysicalInteractionChannel = make_upwardNestingRelation "physicalInteractionChannel membership" "nested physicalInteractionChannel"

-- Aggregation relation
aggregationOfPhysicalOutcomeEventPhysicalInteractionChannel :  Linkage PhysicalInteractionChannel PhysicalOutcomeEvent
aggregationOfPhysicalOutcomeEventPhysicalInteractionChannel = make_Relation "PhysicalOutcomeEvent aggregation" "aggregated PhysicalOutcomeEvent"

{- physicalInteractionChannel : derived relation obtained by composing
   membershipOfPhysicalInteractionChannel and aggregationOfPhysicalOutcomeEventPhysicalInteractionChannel
   It directly links an Concrete Hardware System to the final aggregated PhysicalOutcomeEvent
   hiding the reifying PhysicalInteractionChannel
-}
physicalInteractionChannel : Linkage ConcreteHardwareSystem PhysicalOutcomeEvent
physicalInteractionChannel = membershipOfPhysicalInteractionChannel  ∘  aggregationOfPhysicalOutcomeEventPhysicalInteractionChannel

postulate -- physicalInteractionChannel is subTypeOf businessConnection
  st-a503bb286229006f-1f942587622764f8  : physicalInteractionChannel   ⊏⋆ᵣ  businessConnection 


{- Hosted Computing Device: -}
-- Aggregate Member : Hosted Computing Device
HostedComputingDevice : ClassOfClassOfIndividual
HostedComputingDevice = ClassOfIndividual

-- Membership relation
membershipOfHostedComputingDevice :  Linkage ConcreteHardwareSystem HostedComputingDevice
membershipOfHostedComputingDevice = make_upwardNestingRelation "hostedComputingDevice membership" "nested hostedComputingDevice"

-- Aggregation relation
aggregationOfComputingDeviceHostedComputingDevice :  Linkage HostedComputingDevice ComputingDevice
aggregationOfComputingDeviceHostedComputingDevice = make_Relation "ComputingDevice aggregation" "aggregated ComputingDevice"

{- hostedComputingDevice : derived relation obtained by composing
   membershipOfHostedComputingDevice and aggregationOfComputingDeviceHostedComputingDevice
   It directly links an Concrete Hardware System to the final aggregated ComputingDevice
   hiding the reifying HostedComputingDevice
-}
hostedComputingDevice : Linkage ConcreteHardwareSystem ComputingDevice
hostedComputingDevice = membershipOfHostedComputingDevice  ∘  aggregationOfComputingDeviceHostedComputingDevice



{- Hardware Part: -}
-- Aggregate Member : Hardware Part
HardwarePart : ClassOfClassOfIndividual
HardwarePart = ClassOfIndividual

-- Membership relation
membershipOfHardwarePart :  Linkage ConcreteHardwareSystem HardwarePart
membershipOfHardwarePart = make_upwardNestingRelation "hardwarePart membership" "nested hardwarePart"

-- Aggregation relation
aggregationOfConcreteHardwareSystemHardwarePart :  Linkage HardwarePart ConcreteHardwareSystem
aggregationOfConcreteHardwareSystemHardwarePart = make_Relation "ConcreteHardwareSystem aggregation" "aggregated ConcreteHardwareSystem"

{- hardwarePart : derived relation obtained by composing
   membershipOfHardwarePart and aggregationOfConcreteHardwareSystemHardwarePart
   It directly links an Concrete Hardware System to the final aggregated ConcreteHardwareSystem
   hiding the reifying HardwarePart
-}
hardwarePart : Linkage ConcreteHardwareSystem ConcreteHardwareSystem
hardwarePart = membershipOfHardwarePart  ∘  aggregationOfConcreteHardwareSystemHardwarePart

postulate -- hardwarePart is subTypeOf resourceAgentPart
  st-c334e3e75ecb964e-24034f6d5fc79c3f  : hardwarePart   ⊏⋆ᵣ  resourceAgentPart 

