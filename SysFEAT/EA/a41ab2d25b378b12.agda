{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Computer Network: 
A Computer Network is an assembly of Network Devices (e.g. routers, switches, firewalls) that enables communications between Computing Systems (e.g. Computer Servers).A Computer Network may breakdown into sub-networks.

Documentation : https://framework.sysfeat.com/pages/a41ab2d25b378b12.htm

External references:
  UCF Glossary - Network: https://compliancedictionary.com/term/853
  AWS - What is Computer Networking?: https://aws.amazon.com/what-is/computer-networking/#:~:text=Computer%20networking%20refers%20to%20interconnected,over%20physical%20or%20wireless%20technologies.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.a41ab2d25b378b12 where -- ========== Computer Network

open import Agda.Primitive
open import SysFEAT.EA.a41ab3105b378b66 public -- IT Infrastructure System
open import SysFEAT.EA.070b0d5564011dbb public -- Networking System
open import SysFEAT.EA.f4be0fba5ee1d935 public -- Network Device

ComputerNetwork : ClassOfClassOfBoundedIndividual
ComputerNetwork = ClassOfBoundedIndividual

--  ComputerNetwork is subTypeOf ITInfrastructureSystem
st-a41ab2d25b378b12-a41ab3105b378b66 : ComputerNetwork ⊏ₑ ITInfrastructureSystem
st-a41ab2d25b378b12-a41ab3105b378b66 = polySubTypeOf-identity

--  ComputerNetwork is subTypeOf NetworkingSystem
st-a41ab2d25b378b12-070b0d5564011dbb : ComputerNetwork ⊏ₑ NetworkingSystem
st-a41ab2d25b378b12-070b0d5564011dbb = polySubTypeOf-identity

-- == Relationships =======================

{- Network Node: 
Role of a Network Device in a Computer Network.
-}
-- Aggregate Member : Network Node
NetworkNode : ClassOfClassOfIndividual
NetworkNode = ClassOfIndividual

-- Membership relation
membershipOfNetworkNode :  Linkage ComputerNetwork NetworkNode
membershipOfNetworkNode = make_upwardNestingRelation "networkNode membership" "nested networkNode"

-- Aggregation relation
aggregationOfNetworkDeviceNetworkNode :  Linkage NetworkNode NetworkDevice
aggregationOfNetworkDeviceNetworkNode = make_Relation "NetworkDevice aggregation" "aggregated NetworkDevice"

{- networkNode : derived relation obtained by composing
   membershipOfNetworkNode and aggregationOfNetworkDeviceNetworkNode
   It directly links an Computer Network to the final aggregated NetworkDevice
   hiding the reifying NetworkNode
-}
networkNode : Linkage ComputerNetwork NetworkDevice
networkNode = membershipOfNetworkNode  ∘  aggregationOfNetworkDeviceNetworkNode

postulate -- networkNode is subTypeOf networkingPart
  st-f4be0fd85ee1da9d-26b8386e5eeae4a4  : networkNode   ⊏⋆ᵣ  networkingPart 

