{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Technology Portfolio: 
Technology Portfolios are Asset Portfolios aimed at managing a set of Software Technologys delivering functionalities required by enterprise operations.The purpose of Technology Portfolios is efficiency: managed Managed Software Technologys must provide expected Software Technology Capabilitys in the best cost / performance ratio.

Documentation : https://framework.sysfeat.com/pages/6ce61b9d5ef382cf.htm

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
st-6ce61b9d5ef382cf-26b8889c5eea8ab7 : TechnologyPortfolio ⊏ₑ AssetPortfolio
st-6ce61b9d5ef382cf-26b8889c5eea8ab7 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Functional Scope: -}
functionalScope :  Linkage TechnologyPortfolio SOftwareTechnologyCapabilityMap
functionalScope = make_instanceOf "Functional Scope" "Functional Scope"

postulate -- functionalScope is subTypeOf portfolioFunctionalScope
  st-dd27b95768a114e1-dd2630ca68a0669f  : functionalScope  ⊏⋆ᵣ  portfolioFunctionalScope

-- -------------------------------------------------------------------------------------------- 
{- Managed Software Technology: 
A Managed Software Technology represents the characterics of a Software Technology under the management of a Technology Portfolio.
-}
-- Aggregate Member : Managed Software Technology
ManagedSOftwareTechnology : ClassOfClassOfIndividual
ManagedSOftwareTechnology = ClassOfIndividual


--  ManagedSOftwareTechnology withAspect ManagementSystemSubject
st-e9b802705f51200e-6bf17ffc68598c26 : ManagedSOftwareTechnology ⊏ₐₑ (ManagementSystemSubject (lsuc(lzero)))
st-e9b802705f51200e-6bf17ffc68598c26 = polySubTypeOf-identity

--  ManagedSOftwareTechnology is subTypeOf ManagedResourceAsset
st-e9b802705f51200e-f57af6ca62d21904 : ManagedSOftwareTechnology ⊏⋆ₑ ManagedResourceAsset
st-e9b802705f51200e-f57af6ca62d21904 = polySubTypeOf-identity

-- Membership relation
membershipOfManagedSOftwareTechnology :  Linkage TechnologyPortfolio ManagedSOftwareTechnology
membershipOfManagedSOftwareTechnology = make_upwardNestingRelation "managedSOftwareTechnology membership" "nested managedSOftwareTechnology"

-- Aggregation relation
aggregationOfSOftwareTechnologyManagedSOftwareTechnology :  Linkage ManagedSOftwareTechnology SOftwareTechnology
aggregationOfSOftwareTechnologyManagedSOftwareTechnology = make_Relation "SOftwareTechnology aggregation" "aggregated SOftwareTechnology"

{- managedSOftwareTechnology : derived relation obtained by composing
   membershipOfManagedSOftwareTechnology and aggregationOfSOftwareTechnologyManagedSOftwareTechnology
   It directly links an Technology Portfolio to the final aggregated SOftwareTechnology
   hiding the reifying ManagedSOftwareTechnology
-}
managedSOftwareTechnology : Linkage TechnologyPortfolio SOftwareTechnology
managedSOftwareTechnology = membershipOfManagedSOftwareTechnology  ∘  aggregationOfSOftwareTechnologyManagedSOftwareTechnology


