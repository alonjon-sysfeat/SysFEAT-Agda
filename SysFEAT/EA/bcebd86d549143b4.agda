{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

IT Infrastructure: 
An IT Infrastructure is a configuration of Computing Systems and of Computer Networks that  enable the operation the Business Systems of an enterprise.

Documentation : https://framework.sysfeat.com/pages/bcebd86d549143b4.htm

External references:
  UCF Glossary - IT Infrastructure: https://compliancedictionary.com/term/3127
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
st-bcebd86d549143b4-a41ab3105b378b66 : ITInfrastructure ⊏ₑ ITInfrastructureSystem
st-bcebd86d549143b4-a41ab3105b378b66 = polySubTypeOf-identity

--  ITInfrastructure is subTypeOf ConfiguredTechnologySystem
st-bcebd86d549143b4-27a456b46407c665 : ITInfrastructure ⊏ₑ ConfiguredTechnologySystem
st-bcebd86d549143b4-27a456b46407c665 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Network Part: -}
-- Aggregate Member : Network Part
NetworkPart : ClassOfClassOfBoundedIndividual
NetworkPart = ClassOfBoundedIndividual



--  NetworkPart is subTypeOf NetworkingPart
st-3a0ec88263ce3a46-26b8386e5eeae4a4 : NetworkPart ⊏ₑ NetworkingPart
st-3a0ec88263ce3a46-26b8386e5eeae4a4 = polySubTypeOf-identity

--  NetworkPart is subTypeOf ComputerNetwork
st-3a0ec88263ce3a46-a41ab2d25b378b12 : NetworkPart ⊏ₑ ComputerNetwork
st-3a0ec88263ce3a46-a41ab2d25b378b12 = polySubTypeOf-identity

-- Membership relation
membershipOfNetworkPart :  Linkage ITInfrastructure NetworkPart
membershipOfNetworkPart = make_upwardNestingRelation "networkPart membership" "nested networkPart"

-- Aggregation relation
aggregationOfComputerNetworkNetworkPart :  Linkage NetworkPart ComputerNetwork
aggregationOfComputerNetworkNetworkPart = make_Relation "ComputerNetwork aggregation" "aggregated ComputerNetwork"

{- networkPart : derived relation obtained by composing
   membershipOfNetworkPart and aggregationOfComputerNetworkNetworkPart
   It directly links an IT Infrastructure to the final aggregated ComputerNetwork
   hiding the reifying NetworkPart
-}
networkPart : Linkage ITInfrastructure ComputerNetwork
networkPart = membershipOfNetworkPart  ∘  aggregationOfComputerNetworkNetworkPart


