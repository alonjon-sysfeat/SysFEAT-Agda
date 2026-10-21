{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Individual Business Software System: 


Documentation : https://framework.sysfeat.com/pages/66f870ce620b2d8c.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.66f870ce620b2d8c where -- ========== Individual Business Software System

open import Agda.Primitive
open import SysFEAT.EA.3642454f6007e80e public -- Deployed Business System
open import SysFEAT.EA.d6cd02865ab966e8 public -- Business Software System

IndividualBusinessSOftwareSystem : ClassOfBoundedIndividual
IndividualBusinessSOftwareSystem = BoundedIndividual


--  IndividualBusinessSOftwareSystem is subTypeOf DeployedBusinessSystem
st-66f870ce620b2d8c-3642454f6007e80e : IndividualBusinessSOftwareSystem ⊏ₑ DeployedBusinessSystem
st-66f870ce620b2d8c-3642454f6007e80e = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Software System Type: -}
sOftwareSystemType :  Linkage IndividualBusinessSOftwareSystem BusinessSOftwareSystem
sOftwareSystemType = make_instanceOf "Software System Type" "Software System Type"

postulate -- sOftwareSystemType is subTypeOf businessSystemType
  st-e2dc060266fd4c0c-e2dc074666fd6d03  : sOftwareSystemType  ⊏⋆ᵣ  businessSystemType

-- -------------------------------------------------------------------------------------------- 
{- Deployed Software Component: -}
-- Aggregate Member : Deployed Software Component
DeployedSOftwareComponent : AgentType
DeployedSOftwareComponent = IndividualAgent



--  DeployedSOftwareComponent is subTypeOf DeployedSystemComponent
st-66f87126620b2f4d-9d38a3d061c41a2b : DeployedSOftwareComponent ⊏ₑ DeployedSystemComponent
st-66f87126620b2f4d-9d38a3d061c41a2b = polySubTypeOf-identity

--  DeployedSOftwareComponent is subTypeOf IndividualBusinessSOftwareSystem
st-66f87126620b2f4d-66f870ce620b2d8c : DeployedSOftwareComponent ⊏ₑ IndividualBusinessSOftwareSystem
st-66f87126620b2f4d-66f870ce620b2d8c = polySubTypeOf-identity

-- Membership relation
membershipOfDeployedSOftwareComponent :  Linkage IndividualBusinessSOftwareSystem DeployedSOftwareComponent
membershipOfDeployedSOftwareComponent = make_upwardNestingRelation "deployedSOftwareComponent membership" "nested deployedSOftwareComponent"

-- Aggregation relation
aggregationOfIndividualBusinessSOftwareSystemDeployedSOftwareComponent :  Linkage DeployedSOftwareComponent IndividualBusinessSOftwareSystem
aggregationOfIndividualBusinessSOftwareSystemDeployedSOftwareComponent = make_Relation "IndividualBusinessSOftwareSystem aggregation" "aggregated IndividualBusinessSOftwareSystem"

{- deployedSOftwareComponent : derived relation obtained by composing
   membershipOfDeployedSOftwareComponent and aggregationOfIndividualBusinessSOftwareSystemDeployedSOftwareComponent
   It directly links an Individual Business Software System to the final aggregated IndividualBusinessSOftwareSystem
   hiding the reifying DeployedSOftwareComponent
-}
deployedSOftwareComponent : Linkage IndividualBusinessSOftwareSystem IndividualBusinessSOftwareSystem
deployedSOftwareComponent = membershipOfDeployedSOftwareComponent  ∘  aggregationOfIndividualBusinessSOftwareSystemDeployedSOftwareComponent


