{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Asset Portfolio Stage: 
An Asset Portfolio Stage is a past, current or future state of an Asset Portfolio.Each Asset Portfolio represents an initiative comprising a purposeful set of activities whose primary purpose is focused on achieving a set of clearly defined objectives assigned to assets managed in the Asset Portfolio. It may transcend organisational boundaries and consequently require integrated team working under the direction of a Management Team.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.0520133e66474954 where -- ========== Asset Portfolio Stage

open import Agda.Primitive
open import SysFEAT.EA.05200e1c66474509 public -- Management Stage
open import SysFEAT.EA.05201bc866475765 public -- Asset Management Initiative
open import SysFEAT.EA.dd265414689f5987 public -- Resource Capability

AssetPortfolioStage : StateClass
AssetPortfolioStage = StateConcept


--  AssetPortfolioStage is subTypeOf ManagementStage
st-0520135d664749b7 : AssetPortfolioStage ⊏ₑ ManagementStage
st-0520135d664749b7 = polySubTypeOf-identity

--  AssetPortfolioStage is subTypeOf AssetManagementInitiative
st-0520132c66474953 : AssetPortfolioStage ⊏ₑ AssetManagementInitiative
st-0520132c66474953 = polySubTypeOf-identity

-- == Relationships =======================

{- Exhibited Resource Capability: -}
-- Aggregate Member : Exhibited Resource Capability
ExhibitedResourceCapability : ClassOfClassOfIndividual
ExhibitedResourceCapability = ClassOfIndividual

-- Membership relation
membershipOfExhibitedResourceCapability :  Linkage AssetPortfolioStage ExhibitedResourceCapability
membershipOfExhibitedResourceCapability = membershipOfAggregateMember

-- Aggregation relation
aggregationOfResourceCapabilityExhibitedResourceCapability :  Linkage ExhibitedResourceCapability ResourceCapability
aggregationOfResourceCapabilityExhibitedResourceCapability = aggregationOfBuildingBlock

{- exhibitedResourceCapability : derived relation obtained by composing
   membershipOfExhibitedResourceCapability and aggregationOfResourceCapabilityExhibitedResourceCapability
   It directly links an Asset Portfolio Stage to the final aggregated ResourceCapability
   hiding the reifying ExhibitedResourceCapability
-}
exhibitedResourceCapability : Linkage AssetPortfolioStage ResourceCapability
exhibitedResourceCapability = membershipOfExhibitedResourceCapability  ∘  aggregationOfResourceCapabilityExhibitedResourceCapability
