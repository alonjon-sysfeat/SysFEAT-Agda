{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Technology Operating Asset: 
A Technology Operating Asset is an Operating Asset Type that describes the way Technology Outcome Events are produced and consumed: how technologies (Behaviors) and by whom (Technology System).Technology Operating Assets include Technology Systems and their Behaviors (Technology Processes, Technology Interfaces and Interaction Scenarios).

Documentation : https://framework.sysfeat.com/pages/d16006d362e085f2.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.d16006d362e085f2 where -- ========== Technology Operating Asset

open import Agda.Primitive
open import SysFEAT.EA.f8e61da0621db6fa public -- Resource Operating Asset
open import SysFEAT.EA.669abc806654e803 public -- Technology Functional Asset
open import SysFEAT.EA.dd27b08d68a10b12 public -- Technology Capability
open import SysFEAT.EA.d265d82a68b13af0 public -- Technology Rule

TechnologyOperatingAsset : ClassOfClassOfBoundedIndividual
TechnologyOperatingAsset = ClassOfBoundedIndividual

--  TechnologyOperatingAsset is subTypeOf ResourceOperatingAsset
st-d16006d362e085f2-f8e61da0621db6fa : TechnologyOperatingAsset ⊏ₑ ResourceOperatingAsset
st-d16006d362e085f2-f8e61da0621db6fa = polySubTypeOf-identity

--  TechnologyOperatingAsset is subTypeOf TechnologyFunctionalAsset
st-d16006d362e085f2-669abc806654e803 : TechnologyOperatingAsset ⊏ₑ TechnologyFunctionalAsset
st-d16006d362e085f2-669abc806654e803 = polySubTypeOf-identity

-- == Relationships =======================

{- Fulfilled Technology Capability: -}
fulfilledTechnologyCapability :  Linkage TechnologyOperatingAsset TechnologyCapability
fulfilledTechnologyCapability = make_subTypeOf "Fulfilled Technology Capability" "Fulfilled Technology Capability"

postulate -- fulfilledTechnologyCapability is subTypeOf fulfilledResourceCapability
  st-dd27b1d668a10d0a-dd265468689f5a22  : fulfilledTechnologyCapability   ⊏⋆ᵣ  fulfilledResourceCapability 

{- Technology Operating Asset Part: -}
-- Aggregate Member : Technology Operating Asset Part
TechnologyOperatingAssetPart : ClassOfClassOfIndividual
TechnologyOperatingAssetPart = ClassOfIndividual

-- Membership relation
membershipOfTechnologyOperatingAssetPart :  Linkage TechnologyOperatingAsset TechnologyOperatingAssetPart
membershipOfTechnologyOperatingAssetPart = make_upwardNestingRelation "technologyOperatingAssetPart membership" "nested technologyOperatingAssetPart"

-- Aggregation relation
aggregationOfTechnologyOperatingAssetTechnologyOperatingAssetPart :  Linkage TechnologyOperatingAssetPart TechnologyOperatingAsset
aggregationOfTechnologyOperatingAssetTechnologyOperatingAssetPart = make_Relation "TechnologyOperatingAsset aggregation" "aggregated TechnologyOperatingAsset"

{- technologyOperatingAssetPart : derived relation obtained by composing
   membershipOfTechnologyOperatingAssetPart and aggregationOfTechnologyOperatingAssetTechnologyOperatingAssetPart
   It directly links an Technology Operating Asset to the final aggregated TechnologyOperatingAsset
   hiding the reifying TechnologyOperatingAssetPart
-}
technologyOperatingAssetPart : Linkage TechnologyOperatingAsset TechnologyOperatingAsset
technologyOperatingAssetPart = membershipOfTechnologyOperatingAssetPart  ∘  aggregationOfTechnologyOperatingAssetTechnologyOperatingAssetPart

postulate -- technologyOperatingAssetPart is subTypeOf resourceOperatingAssetPart
  st-d265d98e68b13ce4-b776bf0868b0fbb3  : technologyOperatingAssetPart   ⊏⋆ᵣ  resourceOperatingAssetPart 


{- Technology Rule Enforcement: -}
-- Aggregate Member : Technology Rule Enforcement
TechnologyRuleEnforcement : ClassOfClassOfIndividual
TechnologyRuleEnforcement = ClassOfIndividual

-- Membership relation
membershipOfTechnologyRuleEnforcement :  Linkage TechnologyOperatingAsset TechnologyRuleEnforcement
membershipOfTechnologyRuleEnforcement = make_upwardNestingRelation "technologyRuleEnforcement membership" "nested technologyRuleEnforcement"

-- Aggregation relation
aggregationOfTechnologyRuleTechnologyRuleEnforcement :  Linkage TechnologyRuleEnforcement TechnologyRule
aggregationOfTechnologyRuleTechnologyRuleEnforcement = make_Relation "TechnologyRule aggregation" "aggregated TechnologyRule"

{- technologyRuleEnforcement : derived relation obtained by composing
   membershipOfTechnologyRuleEnforcement and aggregationOfTechnologyRuleTechnologyRuleEnforcement
   It directly links an Technology Operating Asset to the final aggregated TechnologyRule
   hiding the reifying TechnologyRuleEnforcement
-}
technologyRuleEnforcement : Linkage TechnologyOperatingAsset TechnologyRule
technologyRuleEnforcement = membershipOfTechnologyRuleEnforcement  ∘  aggregationOfTechnologyRuleTechnologyRuleEnforcement

postulate -- technologyRuleEnforcement is subTypeOf resourceRuleEnforcement
  st-d265d83268b13b1d-07b60bd468a50731  : technologyRuleEnforcement   ⊏⋆ᵣ  resourceRuleEnforcement 

