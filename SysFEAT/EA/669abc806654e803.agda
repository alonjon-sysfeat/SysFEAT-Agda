{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Technology Functional Asset: 
Technology Functional Assets encompasse all Resource Functional Assets used to describe why and how specify technologies function to support  Business Systems. This includes the purposes of Technology Systems (Technology Capability) and the way these system operates: their  Behaviors (Technology Behavior).Technology Functional Assets include:1. Assets defining results of Technology Behavior that benefit to it internal or external Business Systems : Technology Outcome Event,2. Assets used to describe the capabilities of Technology Operating Asset: Technology Capabilitys,3. Assets used to describe how technologies operates: Technology Operating Assets (Technology Systems, Technology Processes, Technology Interfaces).All Technology Functional Assets are constrained by Policys and are exposed to Technology Risk Types.

Documentation : https://framework.sysfeat.com/pages/669abc806654e803.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.669abc806654e803 where -- ========== Technology Functional Asset

open import Agda.Primitive
open import SysFEAT.EA.9bec9fbf66fb0d6f public -- Resource Functional Asset
open import SysFEAT.EA.5d4e752066f27329 public -- Technology Risk Type

TechnologyFunctionalAsset : ClassOfClassOfBoundedIndividual
TechnologyFunctionalAsset = ClassOfBoundedIndividual

--  TechnologyFunctionalAsset is subTypeOf ResourceFunctionalAsset
st-669abc806654e803-9bec9fbf66fb0d6f : TechnologyFunctionalAsset ⊏ₑ ResourceFunctionalAsset
st-669abc806654e803-9bec9fbf66fb0d6f = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Technology Asset: -}
specializedTechnologyAsset :  Linkage TechnologyFunctionalAsset TechnologyFunctionalAsset
specializedTechnologyAsset = make_subTypeOf "Specialized Technology Asset" "Specialized Technology Asset"

postulate -- specializedTechnologyAsset is subTypeOf specializedFunctionalAsset
  st-7e1a9a4f66f54f71-6a7076d2678731e2  : specializedTechnologyAsset   ⊏⋆ᵣ  specializedFunctionalAsset 

{- Technology Risk: -}
-- Aggregate Member : Technology Risk
TechnologyRisk : ThirdOrderClass
TechnologyRisk = SecondOrderClass

-- Membership relation
membershipOfTechnologyRisk :  Linkage TechnologyFunctionalAsset TechnologyRisk
membershipOfTechnologyRisk = make_upwardNestingRelation "technologyRisk membership" "nested technologyRisk"

-- Aggregation relation
aggregationOfTechnologyRiskTypeTechnologyRisk :  Linkage TechnologyRisk TechnologyRiskType
aggregationOfTechnologyRiskTypeTechnologyRisk = make_Relation "TechnologyRiskType aggregation" "aggregated TechnologyRiskType"

{- technologyRisk : derived relation obtained by composing
   membershipOfTechnologyRisk and aggregationOfTechnologyRiskTypeTechnologyRisk
   It directly links an Technology Functional Asset to the final aggregated TechnologyRiskType
   hiding the reifying TechnologyRisk
-}
technologyRisk : Linkage TechnologyFunctionalAsset TechnologyRiskType
technologyRisk = membershipOfTechnologyRisk  ∘  aggregationOfTechnologyRiskTypeTechnologyRisk

postulate -- technologyRisk is subTypeOf risk
  st-5d4e755966f27379-0e55219466f11fd7  : technologyRisk   ⊏⋆ᵣ  risk 

