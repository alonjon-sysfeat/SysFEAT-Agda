{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Application Portfolio: 
Application Portfolios are Enduring Initiatives aimed at managing a set of Applications delivering functionalities required by enterprise operations.The purpose of Application Portfolios is efficiency: managed Applications must provide expected functionalities in the best cost / performance ratio.
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
st-6ce61b895ef3827b : ApplicationPortfolio ⊏ₑ AssetPortfolio
st-6ce61b895ef3827b = polySubTypeOf-identity

-- == Relationships =======================

{- Roadmap: -}
roadmap :  Linkage ApplicationPortfolio ApplicationPortfolioStage
roadmap = make_holonymyRelation "Roadmap" "roadmap"

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
membershipOfManagedApplication = membershipOfAggregateMember

-- Aggregation relation
aggregationOfApplicationManagedApplication :  Linkage ManagedApplication Application
aggregationOfApplicationManagedApplication = aggregationOfBuildingBlock

{- managedApplication : derived relation obtained by composing
   membershipOfManagedApplication and aggregationOfApplicationManagedApplication
   It directly links an Application Portfolio to the final aggregated Application
   hiding the reifying ManagedApplication
-}
managedApplication : Linkage ApplicationPortfolio Application
managedApplication = membershipOfManagedApplication  ∘  aggregationOfApplicationManagedApplication
