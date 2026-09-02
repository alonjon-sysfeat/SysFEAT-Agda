{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Application System Deployment Architecture: 
An Application System Deployment Architecture describes one possible deployment configuration of an Application System. It contains chosen deployment architectures for component applications and identifies communication protocols (and port numbers) they use to communicate with each other.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.1084480e5fce4ccb where -- ========== Application System Deployment Architecture

open import Agda.Primitive
open import SysFEAT.EA.10844c325fce4e80 public -- Software Deployment Architecture
open import SysFEAT.EA.46194ca7560d3a45 public -- Application System
open import SysFEAT.EA.d5e6d7c65c464ae3 public -- Application Deployment Architecture

ApplicationSystemDeploymentArchitecture : ClassOfClassOfBoundedIndividual
ApplicationSystemDeploymentArchitecture = ClassOfBoundedIndividual

--  ApplicationSystemDeploymentArchitecture is subTypeOf SOftwareDeploymentArchitecture
st-10844d125fce5059 : ApplicationSystemDeploymentArchitecture ⊏ₑ SOftwareDeploymentArchitecture
st-10844d125fce5059 = polySubTypeOf-identity

-- == Relationships =======================

{- Deployable Application System: -}
deployableApplicationSystem :  Linkage ApplicationSystemDeploymentArchitecture ApplicationSystem
deployableApplicationSystem = make_subTypeOf "Deployable Application System" "deployableApplicationSystem"

postulate -- deployableApplicationSystem is subTypeOf deployableSOftwareSystem
  st-ca58cb69684f73f8-ca58cad6684f737d  : deployableApplicationSystem   ⊏⋆ᵣ  deployableSOftwareSystem 

{- System Architecture Member: -}
-- Aggregate Member : System Architecture Member
SystemArchitectureMember : ClassOfClassOfIndividual
SystemArchitectureMember = ClassOfIndividual

-- Membership relation
membershipOfSystemArchitectureMember :  Linkage ApplicationSystemDeploymentArchitecture SystemArchitectureMember
membershipOfSystemArchitectureMember = membershipOfAggregateMember

-- Aggregation relation
aggregationOfApplicationDeploymentArchitectureSystemArchitectureMember :  Linkage SystemArchitectureMember ApplicationDeploymentArchitecture
aggregationOfApplicationDeploymentArchitectureSystemArchitectureMember = aggregationOfBuildingBlock

{- systemArchitectureMember : derived relation obtained by composing
   membershipOfSystemArchitectureMember and aggregationOfApplicationDeploymentArchitectureSystemArchitectureMember
   It directly links an Application System Deployment Architecture to the final aggregated ApplicationDeploymentArchitecture
   hiding the reifying SystemArchitectureMember
-}
systemArchitectureMember : Linkage ApplicationSystemDeploymentArchitecture ApplicationDeploymentArchitecture
systemArchitectureMember = membershipOfSystemArchitectureMember  ∘  aggregationOfApplicationDeploymentArchitectureSystemArchitectureMember

{- Application Deployment Member: -}
-- Aggregate Member : Application Deployment Member
ApplicationDeploymentMember : ClassOfClassOfIndividual
ApplicationDeploymentMember = ClassOfIndividual

-- Membership relation
membershipOfApplicationDeploymentMember :  Linkage ApplicationSystemDeploymentArchitecture ApplicationDeploymentMember
membershipOfApplicationDeploymentMember = membershipOfAggregateMember

-- Aggregation relation
aggregationOfApplicationDeploymentArchitectureApplicationDeploymentMember :  Linkage ApplicationDeploymentMember ApplicationDeploymentArchitecture
aggregationOfApplicationDeploymentArchitectureApplicationDeploymentMember = aggregationOfBuildingBlock

{- applicationDeploymentMember : derived relation obtained by composing
   membershipOfApplicationDeploymentMember and aggregationOfApplicationDeploymentArchitectureApplicationDeploymentMember
   It directly links an Application System Deployment Architecture to the final aggregated ApplicationDeploymentArchitecture
   hiding the reifying ApplicationDeploymentMember
-}
applicationDeploymentMember : Linkage ApplicationSystemDeploymentArchitecture ApplicationDeploymentArchitecture
applicationDeploymentMember = membershipOfApplicationDeploymentMember  ∘  aggregationOfApplicationDeploymentArchitectureApplicationDeploymentMember
