{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

IT Infrastructure: 
An IT Infrastructure is a configuration of Computing Systems and of Computer Networks that  enable the operation the Business Systems of an enterprise.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.bcebd86d549143b4 where -- ========== IT Infrastructure

open import Agda.Primitive
open import SysFEAT.EA.a41ab3105b378b66 public -- IT Infrastructure System
open import SysFEAT.EA.27a456b46407c665 public -- Configured Technology System
open import SysFEAT.EA.a41ab2d25b378b12 public -- Computer Network

ITInfrastructure : ClassOfClassOfBoundedIndividual
ITInfrastructure = ClassOfBoundedIndividual

--  ITInfrastructure is subTypeOf ITInfrastructureSystem
st-f4be123f5ee1e3ab : ITInfrastructure ⊏ₑ ITInfrastructureSystem
st-f4be123f5ee1e3ab = polySubTypeOf-identity

--  ITInfrastructure is subTypeOf ConfiguredTechnologySystem
st-e1a419d264028756 : ITInfrastructure ⊏ₑ ConfiguredTechnologySystem
st-e1a419d264028756 = polySubTypeOf-identity

-- == Relationships =======================

{- Network Part: -}
-- Aggregate Member : Network Part
NetworkPart : ClassOfClassOfIndividual
NetworkPart = ClassOfIndividual

-- Membership relation
membershipOfNetworkPart :  Linkage ITInfrastructure NetworkPart
membershipOfNetworkPart = membershipOfAggregateMember

-- Aggregation relation
aggregationOfComputerNetworkNetworkPart :  Linkage NetworkPart ComputerNetwork
aggregationOfComputerNetworkNetworkPart = aggregationOfBuildingBlock

{- networkPart : derived relation obtained by composing
   membershipOfNetworkPart and aggregationOfComputerNetworkNetworkPart
   It directly links an IT Infrastructure to the final aggregated ComputerNetwork
   hiding the reifying NetworkPart
-}
networkPart : Linkage ITInfrastructure ComputerNetwork
networkPart = membershipOfNetworkPart  ∘  aggregationOfComputerNetworkNetworkPart
