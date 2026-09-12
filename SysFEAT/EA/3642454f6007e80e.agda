{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Deployed Business System: 
A Deployed Business System is a man made Individual Business Agent that delivers business outcomes.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.3642454f6007e80e where -- ========== Deployed Business System

open import Agda.Primitive
open import SysFEAT.EA.66f8685a620b1440 public -- Individual Business Agent
open import SysFEAT.EA.278675d65b252f4d public -- Business System

DeployedBusinessSystem : ClassOfBoundedIndividual
DeployedBusinessSystem = BoundedIndividual

--  DeployedBusinessSystem is subTypeOf IndividualBusinessAgent
st-66f86c01620b2071 : DeployedBusinessSystem ⊏ₑ IndividualBusinessAgent
st-66f86c01620b2071 = polySubTypeOf-identity

-- == Relationships =======================

{- Business System Type: -}
businessSystemType :  Linkage DeployedBusinessSystem BusinessSystem
businessSystemType = make_instanceOf "Business System Type" "businessSystemType"


{- Deployed System Component: -}
-- Aggregate Member : Deployed System Component
DeployedSystemComponent : ClassOfOrderedEntity (lsuc(lzero))
DeployedSystemComponent = AggregateMember (lsuc(lzero))


-- Membership relation
membershipOfDeployedSystemComponent :  Linkage DeployedBusinessSystem DeployedSystemComponent
membershipOfDeployedSystemComponent = membershipOfAggregateMember

-- Aggregation relation
aggregationOfDeployedBusinessSystemDeployedSystemComponent :  Linkage DeployedSystemComponent DeployedBusinessSystem
aggregationOfDeployedBusinessSystemDeployedSystemComponent = aggregationOfBuildingBlock

{- deployedSystemComponent : derived relation obtained by composing
   membershipOfDeployedSystemComponent and aggregationOfDeployedBusinessSystemDeployedSystemComponent
   It directly links an Deployed Business System to the final aggregated DeployedBusinessSystem
   hiding the reifying DeployedSystemComponent
-}
deployedSystemComponent : Linkage DeployedBusinessSystem DeployedBusinessSystem
deployedSystemComponent = membershipOfDeployedSystemComponent  ∘  aggregationOfDeployedBusinessSystemDeployedSystemComponent
