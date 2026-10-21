{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Asset Portfolio: 
An Asset Portfolio is a Management System aimed at developing and maintaining in operational conditions a set of Mezzo Resource Operating Assets, delivering Resource Capabilitys required by Business Operations.The purpose of Asset Portfolios is efficiency: Managed Resource Assets must provide expected Resource Capabilitys in the best cost / performance ratio.

Documentation : https://framework.sysfeat.com/pages/26b8889c5eea8ab7.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.26b8889c5eea8ab7 where -- ========== Asset Portfolio

open import Agda.Primitive
open import SysFEAT.EA.29df3f4060084c07 public -- Management System
open import SysFEAT.SOF.299e882b68488d2c public -- Operational Transformation
open import SysFEAT.EA.05201bc866475765 public -- Asset Management Initiative
open import SysFEAT.EA.0520133e66474954 public -- Asset Portfolio Stage
open import SysFEAT.EA.dd26307668a065f5 public -- Resource Capability Map
open import SysFEAT.EA.61e3afb3679f1256 public -- Mezzo Resource Operating Asset

AssetPortfolio : ClassOfBoundedIndividual
AssetPortfolio = BoundedIndividual


--  AssetPortfolio is subTypeOf ManagementSystem
st-26b8889c5eea8ab7-29df3f4060084c07 : AssetPortfolio ⊏ₑ ManagementSystem
st-26b8889c5eea8ab7-29df3f4060084c07 = polySubTypeOf-identity

--  AssetPortfolio is subTypeOf OperationalTransformation
st-26b8889c5eea8ab7-299e882b68488d2c : AssetPortfolio ⊏ₑ OperationalTransformation
st-26b8889c5eea8ab7-299e882b68488d2c = polySubTypeOf-identity

--  AssetPortfolio is subTypeOf AssetManagementInitiative
st-26b8889c5eea8ab7-05201bc866475765 : AssetPortfolio ⊏ₑ AssetManagementInitiative
st-26b8889c5eea8ab7-05201bc866475765 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Portfolio Roadmap: 
Set of all Asset Portfolio Stages of an Asset Portfolio that , in conjunction with coordinating initiative milestones, establishes the roadmap for the Business Operating Assets under its supervision.
-}
portfolioRoadmap :  Linkage AssetPortfolio AssetPortfolioStage
portfolioRoadmap = make_holonymyRelation "Portfolio Roadmap" "Portfolio Roadmap"

postulate -- portfolioRoadmap is subTypeOf /ManagementRoadmap
  st-f277fa24601bef67-612367e761dd7a42  : portfolioRoadmap  ⊏⋆ᵣ  /ManagementRoadmap

-- -------------------------------------------------------------------------------------------- 
{- Portfolio Functional Scope: -}
portfolioFunctionalScope :  Linkage AssetPortfolio ResourceCapabilityMap
portfolioFunctionalScope = make_instanceOf "Portfolio Functional Scope" "Portfolio Functional Scope"

postulate -- portfolioFunctionalScope is subTypeOf functionalScope
  st-dd2630ca68a0669f-01f1214c689b6e0f  : portfolioFunctionalScope  ⊏⋆ᵣ  functionalScope

-- -------------------------------------------------------------------------------------------- 
{- Managed Resource Asset: 
A Managed Resource Asset represents the status of a Business Operating Asset which creation, maintenance, evolutation and rating is under the control of an Asset Portfolio.
-}
-- Aggregate Member : Managed Resource Asset
ManagedResourceAsset : ClassOfClassOfIndividual
ManagedResourceAsset = ClassOfIndividual


--  ManagedResourceAsset withAspect ManagementSystemSubject
st-f57af6ca62d21904-6bf17ffc68598c26 : ManagedResourceAsset ⊏ₐₑ (ManagementSystemSubject (lsuc(lzero)))
st-f57af6ca62d21904-6bf17ffc68598c26 = polySubTypeOf-identity

-- Membership relation
membershipOfManagedResourceAsset :  Linkage AssetPortfolio ManagedResourceAsset
membershipOfManagedResourceAsset = make_upwardNestingRelation "managedResourceAsset membership" "nested managedResourceAsset"

-- Aggregation relation
aggregationOfMezzoResourceOperatingAssetManagedResourceAsset :  Linkage ManagedResourceAsset MezzoResourceOperatingAsset
aggregationOfMezzoResourceOperatingAssetManagedResourceAsset = make_Relation "MezzoResourceOperatingAsset aggregation" "aggregated MezzoResourceOperatingAsset"

{- managedResourceAsset : derived relation obtained by composing
   membershipOfManagedResourceAsset and aggregationOfMezzoResourceOperatingAssetManagedResourceAsset
   It directly links an Asset Portfolio to the final aggregated MezzoResourceOperatingAsset
   hiding the reifying ManagedResourceAsset
-}
managedResourceAsset : Linkage AssetPortfolio MezzoResourceOperatingAsset
managedResourceAsset = membershipOfManagedResourceAsset  ∘  aggregationOfMezzoResourceOperatingAssetManagedResourceAsset


