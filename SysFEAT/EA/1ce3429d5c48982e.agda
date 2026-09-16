{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Application Portfolio: 
Application Portfolios are Enduring Initiatives aimed at managing a set of Applications delivering functionalities required by enterprise operations.The purpose of Application Portfolios is efficiency: managed Applications must provide expected functionalities in the best cost / performance ratio.

Documentation : https://framework.sysfeat.com/pages/1ce3429d5c48982e.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.1ce3429d5c48982e where -- ========== Application Portfolio

open import Agda.Primitive
open import SysFEAT.EA.26b8889c5eea8ab7 public -- Asset Portfolio
open import SysFEAT.EA.052015c666474dfe public -- Application Portfolio Stage
open import SysFEAT.EA.bcebd8e9549144db public -- Application

ApplicationPortfolio : ClassOfBoundedIndividual
ApplicationPortfolio = BoundedIndividual

--  ApplicationPortfolio is subTypeOf AssetPortfolio
st-1ce3429d5c48982e-26b8889c5eea8ab7 : ApplicationPortfolio ⊏ₑ AssetPortfolio
st-1ce3429d5c48982e-26b8889c5eea8ab7 = polySubTypeOf-identity

-- == Relationships =======================

{- Roadmap: -}
roadmap :  Linkage ApplicationPortfolio ApplicationPortfolioStage
roadmap = make_holonymyRelation "Roadmap" "Roadmap"

postulate -- roadmap is subTypeOf portfolioRoadmap
  st-5b7a06e961f5595c-f277fa24601bef67  : roadmap   ⊏⋆ᵣ  portfolioRoadmap 

{- Managed Application: 
A Managed Application represents the status of an Application under the management of an Application Portfolio.
-}
-- Aggregate Member : Managed Application
ManagedApplication : ClassOfClassOfIndividual
ManagedApplication = ClassOfIndividual

-- Membership relation
membershipOfManagedApplication :  Linkage ApplicationPortfolio ManagedApplication
membershipOfManagedApplication = make_upwardNestingRelation "managedApplication membership" "nested managedApplication"

-- Aggregation relation
aggregationOfApplicationManagedApplication :  Linkage ManagedApplication Application
aggregationOfApplicationManagedApplication = make_Relation "Application aggregation" "aggregated Application"

{- managedApplication : derived relation obtained by composing
   membershipOfManagedApplication and aggregationOfApplicationManagedApplication
   It directly links an Application Portfolio to the final aggregated Application
   hiding the reifying ManagedApplication
-}
managedApplication : Linkage ApplicationPortfolio Application
managedApplication = membershipOfManagedApplication  ∘  aggregationOfApplicationManagedApplication

postulate -- managedApplication is subTypeOf managedResourceAsset
  st-c334ec9b5ecbb0d4-f57af6ca62d21904  : managedApplication   ⊏⋆ᵣ  managedResourceAsset 

