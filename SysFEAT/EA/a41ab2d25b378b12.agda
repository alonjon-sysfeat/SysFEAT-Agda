{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Computer Network: 
A Computer Network is an assembly of Network Devices (e.g. routers, switches, firewalls) that enables communications between Computing Systems (e.g. Computer Servers).A Computer Network may breakdown into sub-networks.
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
st-a41ab3225b378bb7 : ComputerNetwork ⊏ₑ ITInfrastructureSystem
st-a41ab3225b378bb7 = polySubTypeOf-identity

--  ComputerNetwork is subTypeOf NetworkingSystem
st-070b1093640122ba : ComputerNetwork ⊏ₑ NetworkingSystem
st-070b1093640122ba = polySubTypeOf-identity

-- == Relationships =======================

{- Network Node: 
Role of a Network Device in a Computer Network.
-}
-- Aggregate Member : Network Node
NetworkNode : ClassOfClassOfIndividual
NetworkNode = ClassOfIndividual

-- Membership relation
membershipOfNetworkNode :  Linkage ComputerNetwork NetworkNode
membershipOfNetworkNode = membershipOfAggregateMember

-- Aggregation relation
aggregationOfNetworkDeviceNetworkNode :  Linkage NetworkNode NetworkDevice
aggregationOfNetworkDeviceNetworkNode = aggregationOfBuildingBlock

{- networkNode : derived relation obtained by composing
   membershipOfNetworkNode and aggregationOfNetworkDeviceNetworkNode
   It directly links an Computer Network to the final aggregated NetworkDevice
   hiding the reifying NetworkNode
-}
networkNode : Linkage ComputerNetwork NetworkDevice
networkNode = membershipOfNetworkNode  ∘  aggregationOfNetworkDeviceNetworkNode
