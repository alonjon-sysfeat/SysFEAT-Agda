{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Networking System: 
Networking System is Technology Operating Asset that provides networking capabilites through the use of Network Interfaces.

Documentation : https://framework.sysfeat.com/pages/26b8384f5eeae33c.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.26b8384f5eeae33c where -- ========== Networking System

open import Agda.Primitive
open import SysFEAT.EA.d16006d362e085f2 public -- Technology Operating Asset
open import SysFEAT.EA.d160042562e08353 public -- Network Interface

NetworkingSystem : ClassOfClassOfBoundedIndividual
NetworkingSystem = ClassOfBoundedIndividual


--  NetworkingSystem is subTypeOf TechnologyOperatingAsset
st-26b8384f5eeae33c-d16006d362e085f2 : NetworkingSystem ⊏ₑ TechnologyOperatingAsset
st-26b8384f5eeae33c-d16006d362e085f2 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Network Connection: 
A Network Connection is  a Communication channel that represent physical/virtual connections between Networking Systems.They connect Networking Systems through their Network Ports.They convey interactions between physical resources.
-}
-- Aggregate Member : Network Connection
NetworkConnection : ClassOfClassOfIndividual
NetworkConnection = ClassOfIndividual


--  NetworkConnection is subTypeOf TechnologyConnection
st-26b839785eeae7d2-d1600add62e090a8 : NetworkConnection ⊏ₑ TechnologyConnection
st-26b839785eeae7d2-d1600add62e090a8 = polySubTypeOf-identity

-- Membership relation
membershipOfNetworkConnection :  Linkage NetworkingSystem NetworkConnection
membershipOfNetworkConnection = make_upwardNestingRelation "networkConnection membership" "nested networkConnection"

-- Aggregation relation
aggregationOfNetworkInterfaceNetworkConnection :  Linkage NetworkConnection NetworkInterface
aggregationOfNetworkInterfaceNetworkConnection = make_Relation "NetworkInterface aggregation" "aggregated NetworkInterface"

{- networkConnection : derived relation obtained by composing
   membershipOfNetworkConnection and aggregationOfNetworkInterfaceNetworkConnection
   It directly links an Networking System to the final aggregated NetworkInterface
   hiding the reifying NetworkConnection
-}
networkConnection : Linkage NetworkingSystem NetworkInterface
networkConnection = membershipOfNetworkConnection  ∘  aggregationOfNetworkInterfaceNetworkConnection



-- -------------------------------------------------------------------------------------------- 
{- Networking Part: -}
-- Aggregate Member : Networking Part
NetworkingPart : ClassOfClassOfBoundedIndividual
NetworkingPart = ClassOfBoundedIndividual



--  NetworkingPart is subTypeOf TechnologySystemMember
st-26b8386e5eeae4a4-d1600a8f62e08fb2 : NetworkingPart ⊏ₑ TechnologySystemMember
st-26b8386e5eeae4a4-d1600a8f62e08fb2 = polySubTypeOf-identity

--  NetworkingPart is subTypeOf NetworkingSystem
st-26b8386e5eeae4a4-26b8384f5eeae33c : NetworkingPart ⊏ₑ NetworkingSystem
st-26b8386e5eeae4a4-26b8384f5eeae33c = polySubTypeOf-identity

-- Membership relation
membershipOfNetworkingPart :  Linkage NetworkingSystem NetworkingPart
membershipOfNetworkingPart = make_upwardNestingRelation "networkingPart membership" "nested networkingPart"

-- Aggregation relation
aggregationOfNetworkingSystemNetworkingPart :  Linkage NetworkingPart NetworkingSystem
aggregationOfNetworkingSystemNetworkingPart = make_Relation "NetworkingSystem aggregation" "aggregated NetworkingSystem"

{- networkingPart : derived relation obtained by composing
   membershipOfNetworkingPart and aggregationOfNetworkingSystemNetworkingPart
   It directly links an Networking System to the final aggregated NetworkingSystem
   hiding the reifying NetworkingPart
-}
networkingPart : Linkage NetworkingSystem NetworkingSystem
networkingPart = membershipOfNetworkingPart  ∘  aggregationOfNetworkingSystemNetworkingPart


