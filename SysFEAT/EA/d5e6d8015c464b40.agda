{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Deployable Software System: 
Deployable Software System is the super-type of all concepts used to describe the deployment of Business Software Systems.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.d5e6d8015c464b40 where -- ========== Deployable Software System

open import Agda.Primitive
open import SysFEAT.EA.24035cc65fc7ad7f public -- Concrete Software System
open import SysFEAT.EA.d6cd02865ab966e8 public -- Business Software System
open import SysFEAT.EA.624e6ac55ed972a7 public -- Physical Software Interface

DeployableSOftwareSystem : ClassOfClassOfBoundedIndividual
DeployableSOftwareSystem = ClassOfBoundedIndividual

--  DeployableSOftwareSystem is subTypeOf ConcreteSOftwareSystem
st-78277e445ee345ff : DeployableSOftwareSystem ⊏ₑ ConcreteSOftwareSystem
st-78277e445ee345ff = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Deployable Software: -}
specializedDeployableSOftware :  Linkage DeployableSOftwareSystem DeployableSOftwareSystem
specializedDeployableSOftware = make_subTypeOf "Specialized Deployable Software" "specializedDeployableSOftware"


{- Deployable Software System: -}
deployableSOftwareSystem :  Linkage DeployableSOftwareSystem BusinessSOftwareSystem
deployableSOftwareSystem = make_subTypeOf "Deployable Software System" "deployableSOftwareSystem"


{- Software Physical Channel: 
A Software Physical Channel represents a technical connection between Deployable Software Member through input to output communication ports. The output technical port of a technical area or architecture asks the input technical port of the other technical architecture or area to open the communication line.
-}
-- Aggregate Member : Software Physical Channel
SOftwarePhysicalChannel : ClassOfClassOfIndividual
SOftwarePhysicalChannel = ClassOfIndividual

-- Membership relation
membershipOfSOftwarePhysicalChannel :  Linkage DeployableSOftwareSystem SOftwarePhysicalChannel
membershipOfSOftwarePhysicalChannel = membershipOfAggregateMember

-- Aggregation relation
aggregationOfPhysicalSOftwareInterfaceSOftwarePhysicalChannel :  Linkage SOftwarePhysicalChannel PhysicalSOftwareInterface
aggregationOfPhysicalSOftwareInterfaceSOftwarePhysicalChannel = aggregationOfBuildingBlock

{- sOftwarePhysicalChannel : derived relation obtained by composing
   membershipOfSOftwarePhysicalChannel and aggregationOfPhysicalSOftwareInterfaceSOftwarePhysicalChannel
   It directly links an Deployable Software System to the final aggregated PhysicalSOftwareInterface
   hiding the reifying SOftwarePhysicalChannel
-}
sOftwarePhysicalChannel : Linkage DeployableSOftwareSystem PhysicalSOftwareInterface
sOftwarePhysicalChannel = membershipOfSOftwarePhysicalChannel  ∘  aggregationOfPhysicalSOftwareInterfaceSOftwarePhysicalChannel

{- Deployable Software Member: -}
-- Aggregate Member : Deployable Software Member
DeployableSOftwareMember : ClassOfClassOfIndividual
DeployableSOftwareMember = ClassOfIndividual

-- Membership relation
membershipOfDeployableSOftwareMember :  Linkage DeployableSOftwareSystem DeployableSOftwareMember
membershipOfDeployableSOftwareMember = membershipOfAggregateMember

-- Aggregation relation
aggregationOfDeployableSOftwareSystemDeployableSOftwareMember :  Linkage DeployableSOftwareMember DeployableSOftwareSystem
aggregationOfDeployableSOftwareSystemDeployableSOftwareMember = aggregationOfBuildingBlock

{- deployableSOftwareMember : derived relation obtained by composing
   membershipOfDeployableSOftwareMember and aggregationOfDeployableSOftwareSystemDeployableSOftwareMember
   It directly links an Deployable Software System to the final aggregated DeployableSOftwareSystem
   hiding the reifying DeployableSOftwareMember
-}
deployableSOftwareMember : Linkage DeployableSOftwareSystem DeployableSOftwareSystem
deployableSOftwareMember = membershipOfDeployableSOftwareMember  ∘  aggregationOfDeployableSOftwareSystemDeployableSOftwareMember
