{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Computing Device: 
A Computing Device is a physical or virtual computer that can host and run software code. Together with their Deployable Application Packages, they provide Information Outcomes.Examples: Computer Device, Computer Server.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.02f51209641c7ea4 where -- ========== Computing Device

open import Agda.Primitive
open import SysFEAT.EA.26b8384f5eeae33c public -- Networking System
open import SysFEAT.EA.f4be0eda5ee1d6c0 public -- Computing System
open import SysFEAT.EA.d5e6d7eb5c464b21 public -- Deployable Application Package
open import SysFEAT.EA.d6a956495a395d28 public -- MicroService
open import SysFEAT.EA.028f03ff5b4f55ee public -- Physical Data Domain
open import SysFEAT.EA.d5e6ddd05c46547c public -- Software Technology

ComputingDevice : ClassOfClassOfBoundedIndividual
ComputingDevice = ClassOfBoundedIndividual

--  ComputingDevice is subTypeOf NetworkingSystem
st-02f5121d641c7ef7 : ComputingDevice ⊏ₑ NetworkingSystem
st-02f5121d641c7ef7 = polySubTypeOf-identity

--  ComputingDevice is subTypeOf ComputingSystem
st-02f5155c641c8262 : ComputingDevice ⊏ₑ ComputingSystem
st-02f5155c641c8262 = polySubTypeOf-identity

-- == Relationships =======================

{- Hosted Application Package: 
Hosting of a Deployable Application Package in a Computing System.
-}
-- Aggregate Member : Hosted Application Package
HostedApplicationPackage : ClassOfClassOfIndividual
HostedApplicationPackage = ClassOfIndividual

-- Membership relation
membershipOfHostedApplicationPackage :  Linkage ComputingDevice HostedApplicationPackage
membershipOfHostedApplicationPackage = membershipOfAggregateMember

-- Aggregation relation
aggregationOfDeployableApplicationPackageHostedApplicationPackage :  Linkage HostedApplicationPackage DeployableApplicationPackage
aggregationOfDeployableApplicationPackageHostedApplicationPackage = aggregationOfBuildingBlock

{- hostedApplicationPackage : derived relation obtained by composing
   membershipOfHostedApplicationPackage and aggregationOfDeployableApplicationPackageHostedApplicationPackage
   It directly links an Computing Device to the final aggregated DeployableApplicationPackage
   hiding the reifying HostedApplicationPackage
-}
hostedApplicationPackage : Linkage ComputingDevice DeployableApplicationPackage
hostedApplicationPackage = membershipOfHostedApplicationPackage  ∘  aggregationOfDeployableApplicationPackageHostedApplicationPackage

{- Hosted Micro-Service: 
Hosting of a MicroService in a Computing System.
-}
-- Aggregate Member : Hosted Micro-Service
HostedMicroService : ClassOfClassOfIndividual
HostedMicroService = ClassOfIndividual

-- Membership relation
membershipOfHostedMicroService :  Linkage ComputingDevice HostedMicroService
membershipOfHostedMicroService = membershipOfAggregateMember

-- Aggregation relation
aggregationOfMicroServiceHostedMicroService :  Linkage HostedMicroService MicroService
aggregationOfMicroServiceHostedMicroService = aggregationOfBuildingBlock

{- hostedMicroService : derived relation obtained by composing
   membershipOfHostedMicroService and aggregationOfMicroServiceHostedMicroService
   It directly links an Computing Device to the final aggregated MicroService
   hiding the reifying HostedMicroService
-}
hostedMicroService : Linkage ComputingDevice MicroService
hostedMicroService = membershipOfHostedMicroService  ∘  aggregationOfMicroServiceHostedMicroService

{- Hosted Data: 
Hosting a set of Physical Data Assets in a data store of a Computing System.
-}
-- Aggregate Member : Hosted Data
HostedData : ClassOfClassOfIndividual
HostedData = ClassOfIndividual

-- Membership relation
membershipOfHostedData :  Linkage ComputingDevice HostedData
membershipOfHostedData = membershipOfAggregateMember

-- Aggregation relation
aggregationOfPhysicalDataDomainHostedData :  Linkage HostedData PhysicalDataDomain
aggregationOfPhysicalDataDomainHostedData = aggregationOfBuildingBlock

{- hostedData : derived relation obtained by composing
   membershipOfHostedData and aggregationOfPhysicalDataDomainHostedData
   It directly links an Computing Device to the final aggregated PhysicalDataDomain
   hiding the reifying HostedData
-}
hostedData : Linkage ComputingDevice PhysicalDataDomain
hostedData = membershipOfHostedData  ∘  aggregationOfPhysicalDataDomainHostedData

{- Hosted Software Technology: 
Hosting of a Software Technology in a Computing Device.
-}
-- Aggregate Member : Hosted Software Technology
HostedSOftwareTechnology : ClassOfClassOfIndividual
HostedSOftwareTechnology = ClassOfIndividual

-- Membership relation
membershipOfHostedSOftwareTechnology :  Linkage ComputingDevice HostedSOftwareTechnology
membershipOfHostedSOftwareTechnology = membershipOfAggregateMember

-- Aggregation relation
aggregationOfSOftwareTechnologyHostedSOftwareTechnology :  Linkage HostedSOftwareTechnology SOftwareTechnology
aggregationOfSOftwareTechnologyHostedSOftwareTechnology = aggregationOfBuildingBlock

{- hostedSOftwareTechnology : derived relation obtained by composing
   membershipOfHostedSOftwareTechnology and aggregationOfSOftwareTechnologyHostedSOftwareTechnology
   It directly links an Computing Device to the final aggregated SOftwareTechnology
   hiding the reifying HostedSOftwareTechnology
-}
hostedSOftwareTechnology : Linkage ComputingDevice SOftwareTechnology
hostedSOftwareTechnology = membershipOfHostedSOftwareTechnology  ∘  aggregationOfSOftwareTechnologyHostedSOftwareTechnology
