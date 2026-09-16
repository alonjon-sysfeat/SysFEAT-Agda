{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Deployed Business System: 
A Deployed Business System is a man made Individual Business Agent that delivers business outcomes.

Documentation : https://framework.sysfeat.com/pages/3642454f6007e80e.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.3642454f6007e80e where -- ========== Deployed Business System

open import Agda.Primitive
open import SysFEAT.EA.66f8685a620b1440 public -- Individual Business Agent
open import SysFEAT.EA.278675d65b252f4d public -- Business System

DeployedBusinessSystem : ClassOfBoundedIndividual
DeployedBusinessSystem = BoundedIndividual

--  DeployedBusinessSystem is subTypeOf IndividualBusinessAgent
st-3642454f6007e80e-66f8685a620b1440 : DeployedBusinessSystem ⊏ₑ IndividualBusinessAgent
st-3642454f6007e80e-66f8685a620b1440 = polySubTypeOf-identity

-- == Relationships =======================

{- Business System Type: -}
businessSystemType :  Linkage DeployedBusinessSystem BusinessSystem
businessSystemType = make_instanceOf "Business System Type" "Business System Type"


{- Deployed System Component: -}
-- Aggregate Member : Deployed System Component
DeployedSystemComponent : ClassOfOrderedEntity (lsuc(lzero))
DeployedSystemComponent = AggregateMember (lsuc(lzero))


-- Membership relation
membershipOfDeployedSystemComponent :  Linkage DeployedBusinessSystem DeployedSystemComponent
membershipOfDeployedSystemComponent = make_upwardNestingRelation "deployedSystemComponent membership" "nested deployedSystemComponent"

-- Aggregation relation
aggregationOfDeployedBusinessSystemDeployedSystemComponent :  Linkage DeployedSystemComponent DeployedBusinessSystem
aggregationOfDeployedBusinessSystemDeployedSystemComponent = make_Relation "DeployedBusinessSystem aggregation" "aggregated DeployedBusinessSystem"

{- deployedSystemComponent : derived relation obtained by composing
   membershipOfDeployedSystemComponent and aggregationOfDeployedBusinessSystemDeployedSystemComponent
   It directly links an Deployed Business System to the final aggregated DeployedBusinessSystem
   hiding the reifying DeployedSystemComponent
-}
deployedSystemComponent : Linkage DeployedBusinessSystem DeployedBusinessSystem
deployedSystemComponent = membershipOfDeployedSystemComponent  ∘  aggregationOfDeployedBusinessSystemDeployedSystemComponent

postulate -- deployedSystemComponent is subTypeOf deployedBusinessAgentPart
  st-9d38a3d061c41a2b-66f868de620b14e6  : deployedSystemComponent   ⊏⋆ᵣ  deployedBusinessAgentPart 

