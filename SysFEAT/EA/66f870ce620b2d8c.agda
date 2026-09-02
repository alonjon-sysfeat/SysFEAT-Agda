{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Individual Business Software System: 

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.66f870ce620b2d8c where -- ========== Individual Business Software System

open import Agda.Primitive
open import SysFEAT.EA.3642454f6007e80e public -- Deployed Business System
open import SysFEAT.EA.d6cd02865ab966e8 public -- Business Software System

IndividualBusinessSOftwareSystem : ClassOfBoundedIndividual
IndividualBusinessSOftwareSystem = BoundedIndividual

--  IndividualBusinessSOftwareSystem is subTypeOf DeployedBusinessSystem
st-66f87105620b2eee : IndividualBusinessSOftwareSystem ⊏ₑ DeployedBusinessSystem
st-66f87105620b2eee = polySubTypeOf-identity

-- == Relationships =======================

{- Software System Type: -}
sOftwareSystemType :  Linkage IndividualBusinessSOftwareSystem BusinessSOftwareSystem
sOftwareSystemType = make_instanceOf "Software System Type" "sOftwareSystemType"

postulate -- sOftwareSystemType is subTypeOf businessSystemType
  st-e2dc060266fd4c0c-e2dc074666fd6d03  : sOftwareSystemType   ⊏⋆ᵣ  businessSystemType 

{- Deployed Software Component: -}
-- Aggregate Member : Deployed Software Component
DeployedSOftwareComponent : ClassOfOrderedEntity (lsuc(lzero))
DeployedSOftwareComponent = AggregateMember (lsuc(lzero))


-- Membership relation
membershipOfDeployedSOftwareComponent :  Linkage IndividualBusinessSOftwareSystem DeployedSOftwareComponent
membershipOfDeployedSOftwareComponent = membershipOfAggregateMember

-- Aggregation relation
aggregationOfIndividualBusinessSOftwareSystemDeployedSOftwareComponent :  Linkage DeployedSOftwareComponent IndividualBusinessSOftwareSystem
aggregationOfIndividualBusinessSOftwareSystemDeployedSOftwareComponent = aggregationOfBuildingBlock

{- deployedSOftwareComponent : derived relation obtained by composing
   membershipOfDeployedSOftwareComponent and aggregationOfIndividualBusinessSOftwareSystemDeployedSOftwareComponent
   It directly links an Individual Business Software System to the final aggregated IndividualBusinessSOftwareSystem
   hiding the reifying DeployedSOftwareComponent
-}
deployedSOftwareComponent : Linkage IndividualBusinessSOftwareSystem IndividualBusinessSOftwareSystem
deployedSOftwareComponent = membershipOfDeployedSOftwareComponent  ∘  aggregationOfIndividualBusinessSOftwareSystemDeployedSOftwareComponent
