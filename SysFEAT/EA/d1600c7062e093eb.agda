{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Capability Configuration: 
A Capability Configuration is a Business Agent Type which combines Org-Unit Types and Business Systems along with networking capabilities in order to provide Business Capability(ies).There are two levels of granularity of Capability Configurations: System of Systems and System of Resources.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.d1600c7062e093eb where -- ========== Capability Configuration

open import Agda.Primitive
open import SysFEAT.EA.bcebd31f5491302c public -- Business Agent Type
open import SysFEAT.EA.26b8384f5eeae33c public -- Networking System
open import SysFEAT.EA.ffdf64a868608999 public -- Resource Agent Configuration
open import SysFEAT.EA.c30bf4015a5da72b public -- Concrete Hardware System
open import SysFEAT.EA.a41ab3105b378b66 public -- IT Infrastructure System
open import SysFEAT.EA.076d15425a5e158c public -- Org-Unit Type

CapabilityConfiguration : ClassOfClassOfBoundedIndividual
CapabilityConfiguration = ClassOfBoundedIndividual

--  CapabilityConfiguration is subTypeOf BusinessAgentType
st-d1600c9362e09465 : CapabilityConfiguration ⊏ₑ BusinessAgentType
st-d1600c9362e09465 = polySubTypeOf-identity

--  CapabilityConfiguration is subTypeOf NetworkingSystem
st-d1601dc362e0afd3 : CapabilityConfiguration ⊏ₑ NetworkingSystem
st-d1601dc362e0afd3 = polySubTypeOf-identity

--  CapabilityConfiguration is subTypeOf ResourceAgentConfiguration
st-8f1c973868ca873c : CapabilityConfiguration ⊏ₑ ResourceAgentConfiguration
st-8f1c973868ca873c = polySubTypeOf-identity

-- == Relationships =======================

{- Hardware Asset: 
An Hardware Asset helps to define which hardware artifact or IoT Device is used within a System of Resources
-}
-- Aggregate Member : Hardware Asset
HardwareAsset : ClassOfClassOfIndividual
HardwareAsset = ClassOfIndividual

-- Membership relation
membershipOfHardwareAsset :  Linkage CapabilityConfiguration HardwareAsset
membershipOfHardwareAsset = membershipOfAggregateMember

-- Aggregation relation
aggregationOfConcreteHardwareSystemHardwareAsset :  Linkage HardwareAsset ConcreteHardwareSystem
aggregationOfConcreteHardwareSystemHardwareAsset = aggregationOfBuildingBlock

{- hardwareAsset : derived relation obtained by composing
   membershipOfHardwareAsset and aggregationOfConcreteHardwareSystemHardwareAsset
   It directly links an Capability Configuration to the final aggregated ConcreteHardwareSystem
   hiding the reifying HardwareAsset
-}
hardwareAsset : Linkage CapabilityConfiguration ConcreteHardwareSystem
hardwareAsset = membershipOfHardwareAsset  ∘  aggregationOfConcreteHardwareSystemHardwareAsset

{- IT Infrastructure Part: 
An IT Infrastrucure component helps to define that an IT Infrastructure or an IT Network is used within a System of Resources (Resource Architecture or Facility)
-}
-- Aggregate Member : IT Infrastructure Part
ITInfrastructurePart : ClassOfClassOfIndividual
ITInfrastructurePart = ClassOfIndividual

-- Membership relation
membershipOfITInfrastructurePart :  Linkage CapabilityConfiguration ITInfrastructurePart
membershipOfITInfrastructurePart = membershipOfAggregateMember

-- Aggregation relation
aggregationOfITInfrastructureSystemITInfrastructurePart :  Linkage ITInfrastructurePart ITInfrastructureSystem
aggregationOfITInfrastructureSystemITInfrastructurePart = aggregationOfBuildingBlock

{- iTInfrastructurePart : derived relation obtained by composing
   membershipOfITInfrastructurePart and aggregationOfITInfrastructureSystemITInfrastructurePart
   It directly links an Capability Configuration to the final aggregated ITInfrastructureSystem
   hiding the reifying ITInfrastructurePart
-}
iTInfrastructurePart : Linkage CapabilityConfiguration ITInfrastructureSystem
iTInfrastructurePart = membershipOfITInfrastructurePart  ∘  aggregationOfITInfrastructureSystemITInfrastructurePart

{- Human Resource: -}
-- Aggregate Member : Human Resource
HumanResource : ClassOfClassOfIndividual
HumanResource = ClassOfIndividual

-- Membership relation
membershipOfHumanResource :  Linkage CapabilityConfiguration HumanResource
membershipOfHumanResource = membershipOfAggregateMember

-- Aggregation relation
aggregationOfOrgUnitTypeHumanResource :  Linkage HumanResource OrgUnitType
aggregationOfOrgUnitTypeHumanResource = aggregationOfBuildingBlock

{- humanResource : derived relation obtained by composing
   membershipOfHumanResource and aggregationOfOrgUnitTypeHumanResource
   It directly links an Capability Configuration to the final aggregated OrgUnitType
   hiding the reifying HumanResource
-}
humanResource : Linkage CapabilityConfiguration OrgUnitType
humanResource = membershipOfHumanResource  ∘  aggregationOfOrgUnitTypeHumanResource
