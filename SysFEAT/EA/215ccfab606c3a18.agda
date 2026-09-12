{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Product Portfolio: 
A Product Portfolio is a Management System within an enterprise which purpose is to develop, maintain, transform and deliver a set of  Products of the Enterprise.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.215ccfab606c3a18 where -- ========== Product Portfolio

open import Agda.Primitive
open import SysFEAT.EA.29df3f4060084c07 public -- Management System
open import SysFEAT.EA.31257f5261dcdfca public -- Product Portfolio Stage
open import SysFEAT.EA.56ea5ff966047632 public -- Product

ProductPortfolio : ClassOfBoundedIndividual
ProductPortfolio = BoundedIndividual

--  ProductPortfolio is subTypeOf ManagementSystem
st-215c69dc606d58a4 : ProductPortfolio ⊏ₑ ManagementSystem
st-215c69dc606d58a4 = polySubTypeOf-identity

-- == Relationships =======================

{- Owned Portfolio Stage: -}
ownedPortfolioStage :  Linkage ProductPortfolio ProductPortfolioStage
ownedPortfolioStage = make_holonymyRelation "Owned Portfolio Stage" "ownedPortfolioStage"

postulate -- ownedPortfolioStage is subTypeOf roadmap
  st-31257f8561dce177-29df685860086c52  : ownedPortfolioStage   ⊏⋆ᵣ  roadmap 

{- Managed Product: -}
-- Aggregate Member : Managed Product
ManagedProduct : ClassOfClassOfIndividual
ManagedProduct = ClassOfIndividual

-- Membership relation
membershipOfManagedProduct :  Linkage ProductPortfolio ManagedProduct
membershipOfManagedProduct = membershipOfAggregateMember

-- Aggregation relation
aggregationOfProductManagedProduct :  Linkage ManagedProduct Product
aggregationOfProductManagedProduct = aggregationOfBuildingBlock

{- managedProduct : derived relation obtained by composing
   membershipOfManagedProduct and aggregationOfProductManagedProduct
   It directly links an Product Portfolio to the final aggregated Product
   hiding the reifying ManagedProduct
-}
managedProduct : Linkage ProductPortfolio Product
managedProduct = membershipOfManagedProduct  ∘  aggregationOfProductManagedProduct
