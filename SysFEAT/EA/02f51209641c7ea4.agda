{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Computing Device: 
A Computing Device is a physical or virtual computer that can host and run software code. Together with their Deployable Application Packages, they provide Information Outcomes.Examples: Computer Device, Computer Server.

Documentation : https://framework.sysfeat.com/pages/02f51209641c7ea4.htm

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
st-02f51209641c7ea4-26b8384f5eeae33c : ComputingDevice ⊏ₑ NetworkingSystem
st-02f51209641c7ea4-26b8384f5eeae33c = polySubTypeOf-identity

--  ComputingDevice is subTypeOf ComputingSystem
st-02f51209641c7ea4-f4be0eda5ee1d6c0 : ComputingDevice ⊏ₑ ComputingSystem
st-02f51209641c7ea4-f4be0eda5ee1d6c0 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Hosted Application Package: 
Hosting of a Deployable Application Package in a Computing System.
-}
-- Aggregate Member : Hosted Application Package
HostedApplicationPackage : ClassOfClassOfBoundedIndividual
HostedApplicationPackage = ClassOfBoundedIndividual



--  HostedApplicationPackage is subTypeOf HostedSOftware
st-f4be10485ee1dbcc-70ba9b2e64224962 : HostedApplicationPackage ⊏ₑ HostedSOftware
st-f4be10485ee1dbcc-70ba9b2e64224962 = polySubTypeOf-identity

--  HostedApplicationPackage is subTypeOf NetworkingPart
st-f4be10485ee1dbcc-26b8386e5eeae4a4 : HostedApplicationPackage ⊏ₑ NetworkingPart
st-f4be10485ee1dbcc-26b8386e5eeae4a4 = polySubTypeOf-identity

--  HostedApplicationPackage is subTypeOf DeployableApplicationPackage
st-f4be10485ee1dbcc-d5e6d7eb5c464b21 : HostedApplicationPackage ⊏ₑ DeployableApplicationPackage
st-f4be10485ee1dbcc-d5e6d7eb5c464b21 = polySubTypeOf-identity

-- Membership relation
membershipOfHostedApplicationPackage :  Linkage ComputingDevice HostedApplicationPackage
membershipOfHostedApplicationPackage = make_upwardNestingRelation "hostedApplicationPackage membership" "nested hostedApplicationPackage"

-- Aggregation relation
aggregationOfDeployableApplicationPackageHostedApplicationPackage :  Linkage HostedApplicationPackage DeployableApplicationPackage
aggregationOfDeployableApplicationPackageHostedApplicationPackage = make_Relation "DeployableApplicationPackage aggregation" "aggregated DeployableApplicationPackage"

{- hostedApplicationPackage : derived relation obtained by composing
   membershipOfHostedApplicationPackage and aggregationOfDeployableApplicationPackageHostedApplicationPackage
   It directly links an Computing Device to the final aggregated DeployableApplicationPackage
   hiding the reifying HostedApplicationPackage
-}
hostedApplicationPackage : Linkage ComputingDevice DeployableApplicationPackage
hostedApplicationPackage = membershipOfHostedApplicationPackage  ∘  aggregationOfDeployableApplicationPackageHostedApplicationPackage



-- -------------------------------------------------------------------------------------------- 
{- Hosted Micro-Service: 
Hosting of a MicroService in a Computing System.
-}
-- Aggregate Member : Hosted Micro-Service
HostedMicroService : ClassOfClassOfBoundedIndividual
HostedMicroService = ClassOfBoundedIndividual



--  HostedMicroService is subTypeOf NetworkingPart
st-26b830735eeadc36-26b8386e5eeae4a4 : HostedMicroService ⊏ₑ NetworkingPart
st-26b830735eeadc36-26b8386e5eeae4a4 = polySubTypeOf-identity

--  HostedMicroService is subTypeOf MicroService
st-26b830735eeadc36-d6a956495a395d28 : HostedMicroService ⊏ₑ MicroService
st-26b830735eeadc36-d6a956495a395d28 = polySubTypeOf-identity

-- Membership relation
membershipOfHostedMicroService :  Linkage ComputingDevice HostedMicroService
membershipOfHostedMicroService = make_upwardNestingRelation "hostedMicroService membership" "nested hostedMicroService"

-- Aggregation relation
aggregationOfMicroServiceHostedMicroService :  Linkage HostedMicroService MicroService
aggregationOfMicroServiceHostedMicroService = make_Relation "MicroService aggregation" "aggregated MicroService"

{- hostedMicroService : derived relation obtained by composing
   membershipOfHostedMicroService and aggregationOfMicroServiceHostedMicroService
   It directly links an Computing Device to the final aggregated MicroService
   hiding the reifying HostedMicroService
-}
hostedMicroService : Linkage ComputingDevice MicroService
hostedMicroService = membershipOfHostedMicroService  ∘  aggregationOfMicroServiceHostedMicroService



-- -------------------------------------------------------------------------------------------- 
{- Hosted Data: 
Hosting a set of Physical Data Assets in a data store of a Computing System.
-}
-- Aggregate Member : Hosted Data
HostedData : ClassOfClassOfBoundedIndividual
HostedData = ClassOfBoundedIndividual



--  HostedData is subTypeOf NetworkingPart
st-26b831345eeadddc-26b8386e5eeae4a4 : HostedData ⊏ₑ NetworkingPart
st-26b831345eeadddc-26b8386e5eeae4a4 = polySubTypeOf-identity

--  HostedData is subTypeOf PhysicalDataDomain
st-26b831345eeadddc-028f03ff5b4f55ee : HostedData ⊏ₑ PhysicalDataDomain
st-26b831345eeadddc-028f03ff5b4f55ee = polySubTypeOf-identity

-- Membership relation
membershipOfHostedData :  Linkage ComputingDevice HostedData
membershipOfHostedData = make_upwardNestingRelation "hostedData membership" "nested hostedData"

-- Aggregation relation
aggregationOfPhysicalDataDomainHostedData :  Linkage HostedData PhysicalDataDomain
aggregationOfPhysicalDataDomainHostedData = make_Relation "PhysicalDataDomain aggregation" "aggregated PhysicalDataDomain"

{- hostedData : derived relation obtained by composing
   membershipOfHostedData and aggregationOfPhysicalDataDomainHostedData
   It directly links an Computing Device to the final aggregated PhysicalDataDomain
   hiding the reifying HostedData
-}
hostedData : Linkage ComputingDevice PhysicalDataDomain
hostedData = membershipOfHostedData  ∘  aggregationOfPhysicalDataDomainHostedData



-- -------------------------------------------------------------------------------------------- 
{- Hosted Software Technology: 
Hosting of a Software Technology in a Computing Device.
-}
-- Aggregate Member : Hosted Software Technology
HostedSOftwareTechnology : ClassOfClassOfBoundedIndividual
HostedSOftwareTechnology = ClassOfBoundedIndividual



--  HostedSOftwareTechnology is subTypeOf NetworkingPart
st-26b847ee5eea002d-26b8386e5eeae4a4 : HostedSOftwareTechnology ⊏ₑ NetworkingPart
st-26b847ee5eea002d-26b8386e5eeae4a4 = polySubTypeOf-identity

--  HostedSOftwareTechnology is subTypeOf SOftwareTechnology
st-26b847ee5eea002d-d5e6ddd05c46547c : HostedSOftwareTechnology ⊏ₑ SOftwareTechnology
st-26b847ee5eea002d-d5e6ddd05c46547c = polySubTypeOf-identity

-- Membership relation
membershipOfHostedSOftwareTechnology :  Linkage ComputingDevice HostedSOftwareTechnology
membershipOfHostedSOftwareTechnology = make_upwardNestingRelation "hostedSOftwareTechnology membership" "nested hostedSOftwareTechnology"

-- Aggregation relation
aggregationOfSOftwareTechnologyHostedSOftwareTechnology :  Linkage HostedSOftwareTechnology SOftwareTechnology
aggregationOfSOftwareTechnologyHostedSOftwareTechnology = make_Relation "SOftwareTechnology aggregation" "aggregated SOftwareTechnology"

{- hostedSOftwareTechnology : derived relation obtained by composing
   membershipOfHostedSOftwareTechnology and aggregationOfSOftwareTechnologyHostedSOftwareTechnology
   It directly links an Computing Device to the final aggregated SOftwareTechnology
   hiding the reifying HostedSOftwareTechnology
-}
hostedSOftwareTechnology : Linkage ComputingDevice SOftwareTechnology
hostedSOftwareTechnology = membershipOfHostedSOftwareTechnology  ∘  aggregationOfSOftwareTechnologyHostedSOftwareTechnology


