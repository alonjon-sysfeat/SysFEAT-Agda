{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Application System Deployment Architecture: 
An Application System Deployment Architecture describes one possible deployment configuration of an Application System. It contains chosen deployment architectures for component applications and identifies communication protocols (and port numbers) they use to communicate with each other.

Documentation : https://framework.sysfeat.com/pages/1084480e5fce4ccb.htm

External references:
  C4 Model - Level 1 - System Context Diagram: https://c4model.com/#SystemContextDiagram
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
st-1084480e5fce4ccb-10844c325fce4e80 : ApplicationSystemDeploymentArchitecture ⊏ₑ SOftwareDeploymentArchitecture
st-1084480e5fce4ccb-10844c325fce4e80 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Deployable Application System: -}
deployableApplicationSystem :  Linkage ApplicationSystemDeploymentArchitecture ApplicationSystem
deployableApplicationSystem = make_subTypeOf "Deployable Application System" "Deployable Application System"

postulate -- deployableApplicationSystem is subTypeOf deployableSOftwareSystem
  st-ca58cb69684f73f8-ca58cad6684f737d  : deployableApplicationSystem  ⊏⋆ᵣ  deployableSOftwareSystem

-- -------------------------------------------------------------------------------------------- 
{- System Architecture Member: -}
-- Aggregate Member : System Architecture Member
SystemArchitectureMember : ClassOfClassOfBoundedIndividual
SystemArchitectureMember = ClassOfBoundedIndividual



--  SystemArchitectureMember is subTypeOf DeployableSOftwareMember
st-10845e385fce6ce2-624e6cab5ed977a2 : SystemArchitectureMember ⊏ₑ DeployableSOftwareMember
st-10845e385fce6ce2-624e6cab5ed977a2 = polySubTypeOf-identity

--  SystemArchitectureMember is subTypeOf ApplicationDeploymentArchitecture
st-10845e385fce6ce2-d5e6d7c65c464ae3 : SystemArchitectureMember ⊏ₑ ApplicationDeploymentArchitecture
st-10845e385fce6ce2-d5e6d7c65c464ae3 = polySubTypeOf-identity

-- Membership relation
membershipOfSystemArchitectureMember :  Linkage ApplicationSystemDeploymentArchitecture SystemArchitectureMember
membershipOfSystemArchitectureMember = make_upwardNestingRelation "systemArchitectureMember membership" "nested systemArchitectureMember"

-- Aggregation relation
aggregationOfApplicationDeploymentArchitectureSystemArchitectureMember :  Linkage SystemArchitectureMember ApplicationDeploymentArchitecture
aggregationOfApplicationDeploymentArchitectureSystemArchitectureMember = make_Relation "ApplicationDeploymentArchitecture aggregation" "aggregated ApplicationDeploymentArchitecture"

{- systemArchitectureMember : derived relation obtained by composing
   membershipOfSystemArchitectureMember and aggregationOfApplicationDeploymentArchitectureSystemArchitectureMember
   It directly links an Application System Deployment Architecture to the final aggregated ApplicationDeploymentArchitecture
   hiding the reifying SystemArchitectureMember
-}
systemArchitectureMember : Linkage ApplicationSystemDeploymentArchitecture ApplicationDeploymentArchitecture
systemArchitectureMember = membershipOfSystemArchitectureMember  ∘  aggregationOfApplicationDeploymentArchitectureSystemArchitectureMember



-- -------------------------------------------------------------------------------------------- 
{- Application Deployment Member: -}
-- Aggregate Member : Application Deployment Member
ApplicationDeploymentMember : ClassOfClassOfBoundedIndividual
ApplicationDeploymentMember = ClassOfBoundedIndividual



--  ApplicationDeploymentMember is subTypeOf DeployableSOftwareMember
st-37b77384602a0acc-624e6cab5ed977a2 : ApplicationDeploymentMember ⊏ₑ DeployableSOftwareMember
st-37b77384602a0acc-624e6cab5ed977a2 = polySubTypeOf-identity

--  ApplicationDeploymentMember is subTypeOf ApplicationDeploymentArchitecture
st-37b77384602a0acc-d5e6d7c65c464ae3 : ApplicationDeploymentMember ⊏ₑ ApplicationDeploymentArchitecture
st-37b77384602a0acc-d5e6d7c65c464ae3 = polySubTypeOf-identity

-- Membership relation
membershipOfApplicationDeploymentMember :  Linkage ApplicationSystemDeploymentArchitecture ApplicationDeploymentMember
membershipOfApplicationDeploymentMember = make_upwardNestingRelation "applicationDeploymentMember membership" "nested applicationDeploymentMember"

-- Aggregation relation
aggregationOfApplicationDeploymentArchitectureApplicationDeploymentMember :  Linkage ApplicationDeploymentMember ApplicationDeploymentArchitecture
aggregationOfApplicationDeploymentArchitectureApplicationDeploymentMember = make_Relation "ApplicationDeploymentArchitecture aggregation" "aggregated ApplicationDeploymentArchitecture"

{- applicationDeploymentMember : derived relation obtained by composing
   membershipOfApplicationDeploymentMember and aggregationOfApplicationDeploymentArchitectureApplicationDeploymentMember
   It directly links an Application System Deployment Architecture to the final aggregated ApplicationDeploymentArchitecture
   hiding the reifying ApplicationDeploymentMember
-}
applicationDeploymentMember : Linkage ApplicationSystemDeploymentArchitecture ApplicationDeploymentArchitecture
applicationDeploymentMember = membershipOfApplicationDeploymentMember  ∘  aggregationOfApplicationDeploymentArchitectureApplicationDeploymentMember


