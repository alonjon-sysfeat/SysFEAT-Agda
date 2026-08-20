{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Operating Asset Type: 
An Operating Asset Type is a Functional Asset that describes the way Outcome Events are produced and consumed: how (Behavior Types) and by whom (Agent Types).Operating Asset Types fulfill Capability(ies) (Fulfilled Capability).As any Functional Architecture Asset, Operating Asset Types are subject to Policy Conformances. In addition, they define Rule Enforcements to indicate how Policy Conformances are met.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.SOF.a371a43b5b865817 where -- ========== Operating Asset Type

open import Agda.Primitive
open import SysFEAT.SOF.a44fb6bc6748b088 public -- Functional Asset
open import SysFEAT.SOF.0c4559c86a033792 public -- Operating Asset
open import SysFEAT.SOF.515c13db68953887 public -- Capability
open import SysFEAT.SOF.190c74f868966584 public -- Behavioral Rule

OperatingAssetType : ClassOfClassOfBoundedIndividual
OperatingAssetType = ClassOfBoundedIndividual

--  OperatingAssetType is subTypeOf FunctionalAsset
st-43ee7c9663725e73 : OperatingAssetType ⊏ₑ FunctionalAsset
st-43ee7c9663725e73 = polySubTypeOf-identity

--  OperatingAssetType withAspect OperatingAsset
st-9397bd8568778340 : OperatingAssetType ⊏ₐₑ (OperatingAsset (lsuc(lzero)))
st-9397bd8568778340 = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Operating Asset: -}
specializedOperatingAsset :  Linkage OperatingAssetType OperatingAssetType
specializedOperatingAsset = make_subTypeOf "Specialized Operating Asset" "specializedOperatingAsset"

postulate -- specializedOperatingAsset is subTypeOf specializedFunctionalAsset
  st-6a70772167873276-6a7076d2678731e2  : specializedOperatingAsset   ⊏⋆ᵣ  specializedFunctionalAsset 
postulate -- specializedOperatingAsset is subTypeOf specializedClassOfBoundedIndividual
  st-6a70772167873276-e53a627766e4b4cd  : specializedOperatingAsset   ⊏⋆ᵣ  specializedClassOfBoundedIndividual 

{- Realized Operating Asset: -}
realizedOperatingAsset :  Linkage OperatingAssetType OperatingAssetType
realizedOperatingAsset = make_subTypeOf "Realized Operating Asset" "realizedOperatingAsset"

postulate -- realizedOperatingAsset is subTypeOf realizedFunctionalAsset
  st-7dc193da6849536c-7dc1907b684951ae  : realizedOperatingAsset   ⊏⋆ᵣ  realizedFunctionalAsset 

{- Fulfilled Capability: 
Capability(ies) fulfilled by an Agent Type and its Behavior Types.
-}
fulfilledCapability :  Linkage OperatingAssetType Capability
fulfilledCapability = make_subTypeOf "Fulfilled Capability" "fulfilledCapability"

postulate -- fulfilledCapability is subTypeOf assetTypeQualification
  st-190c72c368966198-190c1f3b68964a27  : fulfilledCapability   ⊏⋆ᵣ  assetTypeQualification 

{- Rule Enforcement: 
A Rule Enforcementt is the application of a Behavioral Rule in an Operating Asset Type.In a Action Process Type, a Rule Enforcement is a guide to Process Steps.In an Agent Type, a Rule Enforcement is a guide to its structure: Agent Parts, Information Stores, Performed Processes.
-}
-- Aggregate Member : Rule Enforcement
RuleEnforcement : ClassOfClassOfIndividual
RuleEnforcement = ClassOfIndividual

-- Membership relation
membershipOfRuleEnforcement :  Linkage OperatingAssetType RuleEnforcement
membershipOfRuleEnforcement = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBehavioralRuleRuleEnforcement :  Linkage RuleEnforcement BehavioralRule
aggregationOfBehavioralRuleRuleEnforcement = aggregationOfBuildingBlock

{- ruleEnforcement : derived relation obtained by composing
   membershipOfRuleEnforcement and aggregationOfBehavioralRuleRuleEnforcement
   It directly links an Operating Asset Type to the final aggregated BehavioralRule
   hiding the reifying RuleEnforcement
-}
ruleEnforcement : Linkage OperatingAssetType BehavioralRule
ruleEnforcement = membershipOfRuleEnforcement  ∘  aggregationOfBehavioralRuleRuleEnforcement

{- Operating Asset Part: -}
-- Aggregate Member : Operating Asset Part
OperatingAssetPart : ClassOfClassOfIndividual
OperatingAssetPart = ClassOfIndividual

-- Membership relation
membershipOfOperatingAssetPart :  Linkage OperatingAssetType OperatingAssetPart
membershipOfOperatingAssetPart = membershipOfAggregateMember

-- Aggregation relation
aggregationOfOperatingAssetTypeOperatingAssetPart :  Linkage OperatingAssetPart OperatingAssetType
aggregationOfOperatingAssetTypeOperatingAssetPart = aggregationOfBuildingBlock

{- operatingAssetPart : derived relation obtained by composing
   membershipOfOperatingAssetPart and aggregationOfOperatingAssetTypeOperatingAssetPart
   It directly links an Operating Asset Type to the final aggregated OperatingAssetType
   hiding the reifying OperatingAssetPart
-}
operatingAssetPart : Linkage OperatingAssetType OperatingAssetType
operatingAssetPart = membershipOfOperatingAssetPart  ∘  aggregationOfOperatingAssetTypeOperatingAssetPart
