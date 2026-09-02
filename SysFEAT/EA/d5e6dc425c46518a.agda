{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Deployable Data Package: 
A Deployable Data Package  represents a data part of an Application that must be hosted and accessed by application services (code) to run. Each Deployable Data Package is associated to Required Software Technologys (for data hosting and access) and can host several data structures. Architect can also prescribes a kind of hosting artefact (IaaS/PaaS cloud service or IT server model).
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.d5e6dc425c46518a where -- ========== Deployable Data Package

open import Agda.Primitive
open import SysFEAT.EA.4c7883cd5fca4d5b public -- Deployable Package
open import SysFEAT.EA.028f03ff5b4f55ee public -- Physical Data Domain

DeployableDataPackage : ClassOfClassOfBoundedIndividual
DeployableDataPackage = ClassOfBoundedIndividual

--  DeployableDataPackage is subTypeOf DeployablePackage
st-d5e6dcee5c4651f5 : DeployableDataPackage ⊏ₑ DeployablePackage
st-d5e6dcee5c4651f5 = polySubTypeOf-identity

-- == Relationships =======================

{- Technical Data Store: 
A technical data store represents the usage of a physical data area in a technical data area of the technical architecture of an application.
-}
-- Aggregate Member : Technical Data Store
TechnicalDataStore : ClassOfClassOfIndividual
TechnicalDataStore = ClassOfIndividual

-- Membership relation
membershipOfTechnicalDataStore :  Linkage DeployableDataPackage TechnicalDataStore
membershipOfTechnicalDataStore = membershipOfAggregateMember

-- Aggregation relation
aggregationOfPhysicalDataDomainTechnicalDataStore :  Linkage TechnicalDataStore PhysicalDataDomain
aggregationOfPhysicalDataDomainTechnicalDataStore = aggregationOfBuildingBlock

{- technicalDataStore : derived relation obtained by composing
   membershipOfTechnicalDataStore and aggregationOfPhysicalDataDomainTechnicalDataStore
   It directly links an Deployable Data Package to the final aggregated PhysicalDataDomain
   hiding the reifying TechnicalDataStore
-}
technicalDataStore : Linkage DeployableDataPackage PhysicalDataDomain
technicalDataStore = membershipOfTechnicalDataStore  ∘  aggregationOfPhysicalDataDomainTechnicalDataStore
