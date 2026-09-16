{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Project: 
A Project is a course of action that is being executed or has been selected for execution. An enterprises Initiatives represent the choices the enterprise has made about how to pursue the change that allows it to achieve its objectives.

Documentation : https://framework.sysfeat.com/pages/91be97ff54882d9f.htm

External references:
  OMG - UAF - ActualProject: https://www.omg.org/spec/UAF/1.2/Beta1/DMM/PDF#ActualProject
  OpenGroup - TOGAF - Definitions - Work Package: https://pubs.opengroup.org/togaf-standard/introduction/chap04.html#tag_04_88
  Martin Fowler - Products over Projects: https://martinfowler.com/articles/products-over-projects.html
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
st-91be97ff54882d9f-05201b936647570a : Project ⊏ₑ ManagementInitiative
st-91be97ff54882d9f-05201b936647570a = polySubTypeOf-identity

--  Project is subTypeOf ProgramAsset
st-91be97ff54882d9f-2b5887d05ef07b3b : Project ⊏ₑ ProgramAsset
st-91be97ff54882d9f-2b5887d05ef07b3b = polySubTypeOf-identity

--  Project is subTypeOf Epic
st-91be97ff54882d9f-84c799c1664d8b2f : Project ⊏ₑ Epic
st-91be97ff54882d9f-84c799c1664d8b2f = polySubTypeOf-identity

-- == Relationships =======================

{- Project Risk: -}
projectRisk :  Linkage Project ProjetRiskType
projectRisk = make_Relation "Project Risk" "Project Risk"


{- Project Classification: -}
projectClassification :  Linkage Project ProjectType
projectClassification = make_instanceOf "Project Classification" "Project Classification"


{- Project Dependency: -}
-- Aggregate Member : Project Dependency
ProjectDependency : ClassOfOrderedEntity (lsuc(lzero))
ProjectDependency = AggregateMember (lsuc(lzero))


-- Membership relation
membershipOfProjectDependency :  Linkage Project ProjectDependency
membershipOfProjectDependency = make_upwardNestingRelation "projectDependency membership" "nested projectDependency"

-- Aggregation relation
aggregationOfProjectProjectDependency :  Linkage ProjectDependency Project
aggregationOfProjectProjectDependency = make_Relation "Project aggregation" "aggregated Project"

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
membershipOfProjectPurpose = make_upwardNestingRelation "projectPurpose membership" "nested projectPurpose"

-- Aggregation relation
aggregationOfBusinessCapabilityProjectPurpose :  Linkage ProjectPurpose BusinessCapability
aggregationOfBusinessCapabilityProjectPurpose = make_Relation "BusinessCapability aggregation" "aggregated BusinessCapability"

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
membershipOfProjectDeliverable = make_upwardNestingRelation "projectDeliverable membership" "nested projectDeliverable"

-- Aggregation relation
aggregationOfResourceOperatingAssetProjectDeliverable :  Linkage ProjectDeliverable ResourceOperatingAsset
aggregationOfResourceOperatingAssetProjectDeliverable = make_Relation "ResourceOperatingAsset aggregation" "aggregated ResourceOperatingAsset"

{- projectDeliverable : derived relation obtained by composing
   membershipOfProjectDeliverable and aggregationOfResourceOperatingAssetProjectDeliverable
   It directly links an Project to the final aggregated ResourceOperatingAsset
   hiding the reifying ProjectDeliverable
-}
projectDeliverable : Linkage Project ResourceOperatingAsset
projectDeliverable = membershipOfProjectDeliverable  ∘  aggregationOfResourceOperatingAssetProjectDeliverable

postulate -- projectDeliverable is subTypeOf initiativeSubject
  st-3c8b5d236283cb99-0f642fd06859b0d5  : projectDeliverable   ⊏⋆ᵣ  initiativeSubject  {lzero}


{- Project Risk: -}
-- Aggregate Member : Project Risk
ProjectRisk : ClassOfClassOfIndividual
ProjectRisk = ClassOfIndividual

-- Membership relation
membershipOfProjectRisk :  Linkage Project ProjectRisk
membershipOfProjectRisk = make_upwardNestingRelation "projectRisk membership" "nested projectRisk"

-- Aggregation relation
aggregationOfProjetRiskTypeProjectRisk :  Linkage ProjectRisk ProjetRiskType
aggregationOfProjetRiskTypeProjectRisk = make_Relation "ProjetRiskType aggregation" "aggregated ProjetRiskType"

{- projectRisk : derived relation obtained by composing
   membershipOfProjectRisk and aggregationOfProjetRiskTypeProjectRisk
   It directly links an Project to the final aggregated ProjetRiskType
   hiding the reifying ProjectRisk
-}
projectRisk : Linkage Project ProjetRiskType
projectRisk = membershipOfProjectRisk  ∘  aggregationOfProjetRiskTypeProjectRisk


