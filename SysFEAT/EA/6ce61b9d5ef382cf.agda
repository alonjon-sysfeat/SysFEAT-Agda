{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Technology Portfolio: 
Technology Portfolios are Asset Portfolios aimed at managing a set of Software Technologys delivering functionalities required by enterprise operations.The purpose of Technology Portfolios is efficiency: managed Managed Software Technologys must provide expected Software Technology Capabilitys in the best cost / performance ratio.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.6ce61b9d5ef382cf where -- ========== Technology Portfolio

open import Agda.Primitive
open import SysFEAT.EA.26b8889c5eea8ab7 public -- Asset Portfolio
open import SysFEAT.EA.dd27b91368a11464 public -- Software Technology Capability Map
open import SysFEAT.EA.d5e6ddd05c46547c public -- Software Technology

TechnologyPortfolio : ClassOfBoundedIndividual
TechnologyPortfolio = BoundedIndividual

--  TechnologyPortfolio is subTypeOf AssetPortfolio
st-6ce61bac5ef383d0 : TechnologyPortfolio ⊏ₑ AssetPortfolio
st-6ce61bac5ef383d0 = polySubTypeOf-identity

-- == Relationships =======================

{- Functional Scope: -}
functionalScope :  Linkage TechnologyPortfolio SOftwareTechnologyCapabilityMap
functionalScope = make_instanceOf "Functional Scope" "functionalScope"

postulate -- functionalScope is subTypeOf portfolioFunctionalScope
  st-dd27b95768a114e1-dd2630ca68a0669f  : functionalScope   ⊏⋆ᵣ  portfolioFunctionalScope 

{- Managed Software Technology: 
A Managed Software Technology represents the characterics of a Software Technology under the management of a Technology Portfolio.
-}
-- Aggregate Member : Managed Software Technology
ManagedSOftwareTechnology : ClassOfClassOfIndividual
ManagedSOftwareTechnology = ClassOfIndividual

-- Membership relation
membershipOfManagedSOftwareTechnology :  Linkage TechnologyPortfolio ManagedSOftwareTechnology
membershipOfManagedSOftwareTechnology = membershipOfAggregateMember

-- Aggregation relation
aggregationOfSOftwareTechnologyManagedSOftwareTechnology :  Linkage ManagedSOftwareTechnology SOftwareTechnology
aggregationOfSOftwareTechnologyManagedSOftwareTechnology = aggregationOfBuildingBlock

{- managedSOftwareTechnology : derived relation obtained by composing
   membershipOfManagedSOftwareTechnology and aggregationOfSOftwareTechnologyManagedSOftwareTechnology
   It directly links an Technology Portfolio to the final aggregated SOftwareTechnology
   hiding the reifying ManagedSOftwareTechnology
-}
managedSOftwareTechnology : Linkage TechnologyPortfolio SOftwareTechnology
managedSOftwareTechnology = membershipOfManagedSOftwareTechnology  ∘  aggregationOfSOftwareTechnologyManagedSOftwareTechnology
