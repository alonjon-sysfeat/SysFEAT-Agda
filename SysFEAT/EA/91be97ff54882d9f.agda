{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Project: 
A Project is a course of action that is being executed or has been selected for execution. An enterprises Initiatives represent the choices the enterprise has made about how to pursue the change that allows it to achieve its objectives.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.91be97ff54882d9f where -- ========== Project

open import Agda.Primitive
open import SysFEAT.EA.05201b936647570a public -- Management Initiative
open import SysFEAT.EA.2b5887d05ef07b3b public -- Program Asset
open import SysFEAT.EA.84c799c1664d8b2f public -- Epic
open import SysFEAT.EA.2d18f6705ac37b70 public -- Projet Risk Type
open import SysFEAT.EA.24ac695354881cbe public -- Project Type
open import SysFEAT.EA.dd268f2868a08150 public -- Business Capability
open import SysFEAT.EA.f8e61da0621db6fa public -- Resource Operating Asset

Project : ClassOfBoundedIndividual
Project = BoundedIndividual

--  Project is subTypeOf ManagementInitiative
st-24f828f866475703 : Project ⊏ₑ ManagementInitiative
st-24f828f866475703 = polySubTypeOf-identity

--  Project is subTypeOf ProgramAsset
st-2b5888175ef07cee : Project ⊏ₑ ProgramAsset
st-2b5888175ef07cee = polySubTypeOf-identity

--  Project is subTypeOf Epic
st-0ffefd28600be783 : Project ⊏ₑ Epic
st-0ffefd28600be783 = polySubTypeOf-identity

-- == Relationships =======================

{- Project Risk: -}
projectRisk :  Linkage Project ProjetRiskType
projectRisk = make_Relation "Project Risk" "projectRisk"


{- Project Classification: -}
projectClassification :  Linkage Project ProjectType
projectClassification = make_instanceOf "Project Classification" "projectClassification"


{- Project Dependency: -}
-- Aggregate Member : Project Dependency
ProjectDependency : ClassOfOrderedEntity (lsuc(lzero))
ProjectDependency = AggregateMember (lsuc(lzero))


-- Membership relation
membershipOfProjectDependency :  Linkage Project ProjectDependency
membershipOfProjectDependency = membershipOfAggregateMember

-- Aggregation relation
aggregationOfProjectProjectDependency :  Linkage ProjectDependency Project
aggregationOfProjectProjectDependency = aggregationOfBuildingBlock

{- projectDependency : derived relation obtained by composing
   membershipOfProjectDependency and aggregationOfProjectProjectDependency
   It directly links an Project to the final aggregated Project
   hiding the reifying ProjectDependency
-}
projectDependency : Linkage Project Project
projectDependency = membershipOfProjectDependency  ∘  aggregationOfProjectProjectDependency

{- Project Purpose: -}
-- Aggregate Member : Project Purpose
ProjectPurpose : ClassOfClassOfIndividual
ProjectPurpose = ClassOfIndividual

-- Membership relation
membershipOfProjectPurpose :  Linkage Project ProjectPurpose
membershipOfProjectPurpose = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBusinessCapabilityProjectPurpose :  Linkage ProjectPurpose BusinessCapability
aggregationOfBusinessCapabilityProjectPurpose = aggregationOfBuildingBlock

{- projectPurpose : derived relation obtained by composing
   membershipOfProjectPurpose and aggregationOfBusinessCapabilityProjectPurpose
   It directly links an Project to the final aggregated BusinessCapability
   hiding the reifying ProjectPurpose
-}
projectPurpose : Linkage Project BusinessCapability
projectPurpose = membershipOfProjectPurpose  ∘  aggregationOfBusinessCapabilityProjectPurpose

{- Project Deliverable: -}
-- Aggregate Member : Project Deliverable
ProjectDeliverable : ClassOfClassOfIndividual
ProjectDeliverable = ClassOfIndividual

-- Membership relation
membershipOfProjectDeliverable :  Linkage Project ProjectDeliverable
membershipOfProjectDeliverable = membershipOfAggregateMember

-- Aggregation relation
aggregationOfResourceOperatingAssetProjectDeliverable :  Linkage ProjectDeliverable ResourceOperatingAsset
aggregationOfResourceOperatingAssetProjectDeliverable = aggregationOfBuildingBlock

{- projectDeliverable : derived relation obtained by composing
   membershipOfProjectDeliverable and aggregationOfResourceOperatingAssetProjectDeliverable
   It directly links an Project to the final aggregated ResourceOperatingAsset
   hiding the reifying ProjectDeliverable
-}
projectDeliverable : Linkage Project ResourceOperatingAsset
projectDeliverable = membershipOfProjectDeliverable  ∘  aggregationOfResourceOperatingAssetProjectDeliverable

{- Project Risk: -}
-- Aggregate Member : Project Risk
ProjectRisk : ClassOfClassOfIndividual
ProjectRisk = ClassOfIndividual

-- Membership relation
membershipOfProjectRisk :  Linkage Project ProjectRisk
membershipOfProjectRisk = membershipOfAggregateMember

-- Aggregation relation
aggregationOfProjetRiskTypeProjectRisk :  Linkage ProjectRisk ProjetRiskType
aggregationOfProjetRiskTypeProjectRisk = aggregationOfBuildingBlock

{- projectRisk : derived relation obtained by composing
   membershipOfProjectRisk and aggregationOfProjetRiskTypeProjectRisk
   It directly links an Project to the final aggregated ProjetRiskType
   hiding the reifying ProjectRisk
-}
projectRisk : Linkage Project ProjetRiskType
projectRisk = membershipOfProjectRisk  ∘  aggregationOfProjetRiskTypeProjectRisk
