{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Application Deployment Architecture: 
An Application Deployment Architecture describes one possible deployment configuration of an Application. It contains Deployable Packages to host, prescribed type of hosting and required Software Physical Channels (with communication protocols, port numbers...) to communicate with each other.

Documentation : https://framework.sysfeat.com/pages/d5e6d7c65c464ae3.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.d5e6d7c65c464ae3 where -- ========== Application Deployment Architecture

open import Agda.Primitive
open import SysFEAT.EA.10844c325fce4e80 public -- Software Deployment Architecture
open import SysFEAT.EA.bcebd8e9549144db public -- Application
open import SysFEAT.EA.d5e6dc425c46518a public -- Deployable Data Package
open import SysFEAT.EA.d6a956495a395d28 public -- MicroService
open import SysFEAT.EA.d5e6d7eb5c464b21 public -- Deployable Application Package
open import SysFEAT.EA.f4be0eda5ee1d6c0 public -- Computing System

ApplicationDeploymentArchitecture : ClassOfClassOfBoundedIndividual
ApplicationDeploymentArchitecture = ClassOfBoundedIndividual

--  ApplicationDeploymentArchitecture is subTypeOf SOftwareDeploymentArchitecture
st-d5e6d7c65c464ae3-10844c325fce4e80 : ApplicationDeploymentArchitecture ⊏ₑ SOftwareDeploymentArchitecture
st-d5e6d7c65c464ae3-10844c325fce4e80 = polySubTypeOf-identity

--  ApplicationDeploymentArchitecture is subTypeOf Application
st-d5e6d7c65c464ae3-bcebd8e9549144db : ApplicationDeploymentArchitecture ⊏ₑ Application
st-d5e6d7c65c464ae3-bcebd8e9549144db = polySubTypeOf-identity

-- == Relationships =======================

{- Data Part: -}
-- Aggregate Member : Data Part
DataPart : ClassOfClassOfIndividual
DataPart = ClassOfIndividual

-- Membership relation
membershipOfDataPart :  Linkage ApplicationDeploymentArchitecture DataPart
membershipOfDataPart = make_upwardNestingRelation "dataPart membership" "nested dataPart"

-- Aggregation relation
aggregationOfDeployableDataPackageDataPart :  Linkage DataPart DeployableDataPackage
aggregationOfDeployableDataPackageDataPart = make_Relation "DeployableDataPackage aggregation" "aggregated DeployableDataPackage"

{- dataPart : derived relation obtained by composing
   membershipOfDataPart and aggregationOfDeployableDataPackageDataPart
   It directly links an Application Deployment Architecture to the final aggregated DeployableDataPackage
   hiding the reifying DataPart
-}
dataPart : Linkage ApplicationDeploymentArchitecture DeployableDataPackage
dataPart = membershipOfDataPart  ∘  aggregationOfDeployableDataPackageDataPart

postulate -- dataPart is subTypeOf packageMember
  st-4c7802355fceb073-c993ce46602b668a  : dataPart   ⊏⋆ᵣ  packageMember 


{- Micro Service Part: 
Role of a MicroService in an Application Deployment Architecture.
-}
-- Aggregate Member : Micro Service Part
MicroServicePart : ClassOfClassOfIndividual
MicroServicePart = ClassOfIndividual

-- Membership relation
membershipOfMicroServicePart :  Linkage ApplicationDeploymentArchitecture MicroServicePart
membershipOfMicroServicePart = make_upwardNestingRelation "microServicePart membership" "nested microServicePart"

-- Aggregation relation
aggregationOfMicroServiceMicroServicePart :  Linkage MicroServicePart MicroService
aggregationOfMicroServiceMicroServicePart = make_Relation "MicroService aggregation" "aggregated MicroService"

{- microServicePart : derived relation obtained by composing
   membershipOfMicroServicePart and aggregationOfMicroServiceMicroServicePart
   It directly links an Application Deployment Architecture to the final aggregated MicroService
   hiding the reifying MicroServicePart
-}
microServicePart : Linkage ApplicationDeploymentArchitecture MicroService
microServicePart = membershipOfMicroServicePart  ∘  aggregationOfMicroServiceMicroServicePart

postulate -- microServicePart is subTypeOf packageMember
  st-cd7a3e5c5ff3d634-c993ce46602b668a  : microServicePart   ⊏⋆ᵣ  packageMember 


{- Application Part: 
Role of a Deployable Application Package is an Application Deployment Architecture.
-}
-- Aggregate Member : Application Part
ApplicationPart : ClassOfClassOfIndividual
ApplicationPart = ClassOfIndividual

-- Membership relation
membershipOfApplicationPart :  Linkage ApplicationDeploymentArchitecture ApplicationPart
membershipOfApplicationPart = make_upwardNestingRelation "applicationPart membership" "nested applicationPart"

-- Aggregation relation
aggregationOfDeployableApplicationPackageApplicationPart :  Linkage ApplicationPart DeployableApplicationPackage
aggregationOfDeployableApplicationPackageApplicationPart = make_Relation "DeployableApplicationPackage aggregation" "aggregated DeployableApplicationPackage"

{- applicationPart : derived relation obtained by composing
   membershipOfApplicationPart and aggregationOfDeployableApplicationPackageApplicationPart
   It directly links an Application Deployment Architecture to the final aggregated DeployableApplicationPackage
   hiding the reifying ApplicationPart
-}
applicationPart : Linkage ApplicationDeploymentArchitecture DeployableApplicationPackage
applicationPart = membershipOfApplicationPart  ∘  aggregationOfDeployableApplicationPackageApplicationPart

postulate -- applicationPart is subTypeOf packageMember
  st-624e6a1a5ed97133-c993ce46602b668a  : applicationPart   ⊏⋆ᵣ  packageMember 


{- Required Computing Capability: -}
-- Aggregate Member : Required Computing Capability
RequiredComputingCapability : ClassOfClassOfIndividual
RequiredComputingCapability = ClassOfIndividual

-- Membership relation
1B046A4C69F8602C :  Linkage ApplicationDeploymentArchitecture RequiredComputingCapability
1B046A4C69F8602C = make_upwardNestingRelation "requiredComputingCapability membership" "nested requiredComputingCapability"

-- Aggregation relation
aggregationOfComputingSystemRequiredComputingCapability :  Linkage RequiredComputingCapability ComputingSystem
aggregationOfComputingSystemRequiredComputingCapability = make_Relation "ComputingSystem aggregation" "aggregated ComputingSystem"

{- requiredComputingCapability : derived relation obtained by composing
   1B046A4C69F8602C and aggregationOfComputingSystemRequiredComputingCapability
   It directly links an Application Deployment Architecture to the final aggregated ComputingSystem
   hiding the reifying RequiredComputingCapability
-}
requiredComputingCapability : Linkage ApplicationDeploymentArchitecture ComputingSystem
requiredComputingCapability = 1B046A4C69F8602C  ∘  aggregationOfComputingSystemRequiredComputingCapability


