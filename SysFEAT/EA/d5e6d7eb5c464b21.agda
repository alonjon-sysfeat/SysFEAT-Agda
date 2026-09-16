{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Deployable Application Package: 
A Deployable Application Package  is a split of application code according to deployment criteria at runtime. For example, it may be Front End/Back End or GUI/Business Logic etc.. Each Deployable Application Package is associated to required Software Technology(ies) (for running) and can host code of several Application Component. Architects can also prescribe a kind of hosting artefact (IaaS/PaaS cloud service or IT server model).

Documentation : https://framework.sysfeat.com/pages/d5e6d7eb5c464b21.htm

External references:
  C4 Model - Level 2 - Container Diagram: https://c4model.com/#ContainerDiagram
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.d5e6d7eb5c464b21 where -- ========== Deployable Application Package

open import Agda.Primitive
open import SysFEAT.EA.4c7883cd5fca4d5b public -- Deployable Package
open import SysFEAT.EA.46194ce9560d3ab8 public -- Application Component
open import SysFEAT.EA.d5e6dc425c46518a public -- Deployable Data Package

DeployableApplicationPackage : ClassOfClassOfBoundedIndividual
DeployableApplicationPackage = ClassOfBoundedIndividual

--  DeployableApplicationPackage is subTypeOf DeployablePackage
st-d5e6d7eb5c464b21-4c7883cd5fca4d5b : DeployableApplicationPackage ⊏ₑ DeployablePackage
st-d5e6d7eb5c464b21-4c7883cd5fca4d5b = polySubTypeOf-identity

-- == Relationships =======================

{- Packaged IT Service: 
A Packaged IT Service is a configuration of an Application Component in a Deployable Application Package according to deployment and runtime requirements.
-}
-- Aggregate Member : Packaged IT Service
PackagedITService : ClassOfClassOfIndividual
PackagedITService = ClassOfIndividual

-- Membership relation
membershipOfPackagedITService :  Linkage DeployableApplicationPackage PackagedITService
membershipOfPackagedITService = make_upwardNestingRelation "packagedITService membership" "nested packagedITService"

-- Aggregation relation
aggregationOfApplicationComponentPackagedITService :  Linkage PackagedITService ApplicationComponent
aggregationOfApplicationComponentPackagedITService = make_Relation "ApplicationComponent aggregation" "aggregated ApplicationComponent"

{- packagedITService : derived relation obtained by composing
   membershipOfPackagedITService and aggregationOfApplicationComponentPackagedITService
   It directly links an Deployable Application Package to the final aggregated ApplicationComponent
   hiding the reifying PackagedITService
-}
packagedITService : Linkage DeployableApplicationPackage ApplicationComponent
packagedITService = membershipOfPackagedITService  ∘  aggregationOfApplicationComponentPackagedITService



{- Member Package: -}
-- Aggregate Member : Member Package
MemberPackage : ClassOfClassOfIndividual
MemberPackage = ClassOfIndividual

-- Membership relation
membershipOfMemberPackage :  Linkage DeployableApplicationPackage MemberPackage
membershipOfMemberPackage = make_upwardNestingRelation "memberPackage membership" "nested memberPackage"

-- Aggregation relation
aggregationOfDeployableApplicationPackageMemberPackage :  Linkage MemberPackage DeployableApplicationPackage
aggregationOfDeployableApplicationPackageMemberPackage = make_Relation "DeployableApplicationPackage aggregation" "aggregated DeployableApplicationPackage"

{- memberPackage : derived relation obtained by composing
   membershipOfMemberPackage and aggregationOfDeployableApplicationPackageMemberPackage
   It directly links an Deployable Application Package to the final aggregated DeployableApplicationPackage
   hiding the reifying MemberPackage
-}
memberPackage : Linkage DeployableApplicationPackage DeployableApplicationPackage
memberPackage = membershipOfMemberPackage  ∘  aggregationOfDeployableApplicationPackageMemberPackage

postulate -- memberPackage is subTypeOf deployableSOftwareMember
  st-624e72a25ed98474-624e6cab5ed977a2  : memberPackage   ⊏⋆ᵣ  deployableSOftwareMember 


{- Physical Domain Member: -}
-- Aggregate Member : Physical Domain Member
PhysicalDomainMember : ClassOfClassOfIndividual
PhysicalDomainMember = ClassOfIndividual

-- Membership relation
membershipOfPhysicalDomainMember :  Linkage DeployableApplicationPackage PhysicalDomainMember
membershipOfPhysicalDomainMember = make_upwardNestingRelation "physicalDomainMember membership" "nested physicalDomainMember"

-- Aggregation relation
aggregationOfDeployableDataPackagePhysicalDomainMember :  Linkage PhysicalDomainMember DeployableDataPackage
aggregationOfDeployableDataPackagePhysicalDomainMember = make_Relation "DeployableDataPackage aggregation" "aggregated DeployableDataPackage"

{- physicalDomainMember : derived relation obtained by composing
   membershipOfPhysicalDomainMember and aggregationOfDeployableDataPackagePhysicalDomainMember
   It directly links an Deployable Application Package to the final aggregated DeployableDataPackage
   hiding the reifying PhysicalDomainMember
-}
physicalDomainMember : Linkage DeployableApplicationPackage DeployableDataPackage
physicalDomainMember = membershipOfPhysicalDomainMember  ∘  aggregationOfDeployableDataPackagePhysicalDomainMember

postulate -- physicalDomainMember is subTypeOf deployableSOftwareMember
  st-4c7884f65fca4ed4-624e6cab5ed977a2  : physicalDomainMember   ⊏⋆ᵣ  deployableSOftwareMember 

