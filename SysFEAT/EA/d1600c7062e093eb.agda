{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Capability Configuration: 
A Capability Configuration is a Business Agent Type which combines Org-Unit Types and Business Systems along with networking capabilities in order to provide Business Capability(ies).There are two levels of granularity of Capability Configurations: System of Systems and System of Resources.

Documentation : https://framework.sysfeat.com/pages/d1600c7062e093eb.htm

External references:
  OpenGroup - TOGAF - Definition - Business System: https://pubs.opengroup.org/togaf-standard/introduction/apdxb.html#tag_06_03
  OMG - BACM - CapabilityImplementation: https://www.omg.org/spec/BACM/1.0/PDF#page=49
  OMG - UAF - CapabilityConfiguration: https://www.omg.org/spec/UAF/1.2/Beta1/DMM/PDF#CapabilityConfiguration
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
st-d1600c7062e093eb-bcebd31f5491302c : CapabilityConfiguration ⊏ₑ BusinessAgentType
st-d1600c7062e093eb-bcebd31f5491302c = polySubTypeOf-identity

--  CapabilityConfiguration is subTypeOf NetworkingSystem
st-d1600c7062e093eb-26b8384f5eeae33c : CapabilityConfiguration ⊏ₑ NetworkingSystem
st-d1600c7062e093eb-26b8384f5eeae33c = polySubTypeOf-identity

--  CapabilityConfiguration is subTypeOf ResourceAgentConfiguration
st-d1600c7062e093eb-ffdf64a868608999 : CapabilityConfiguration ⊏ₑ ResourceAgentConfiguration
st-d1600c7062e093eb-ffdf64a868608999 = polySubTypeOf-identity

-- == Relationships =======================

{- Hardware Asset: 
An Hardware Asset helps to define which hardware artifact or IoT Device is used within a System of Resources
-}
-- Aggregate Member : Hardware Asset
HardwareAsset : ClassOfClassOfIndividual
HardwareAsset = ClassOfIndividual

-- Membership relation
membershipOfHardwareAsset :  Linkage CapabilityConfiguration HardwareAsset
membershipOfHardwareAsset = make_upwardNestingRelation "hardwareAsset membership" "nested hardwareAsset"

-- Aggregation relation
aggregationOfConcreteHardwareSystemHardwareAsset :  Linkage HardwareAsset ConcreteHardwareSystem
aggregationOfConcreteHardwareSystemHardwareAsset = make_Relation "ConcreteHardwareSystem aggregation" "aggregated ConcreteHardwareSystem"

{- hardwareAsset : derived relation obtained by composing
   membershipOfHardwareAsset and aggregationOfConcreteHardwareSystemHardwareAsset
   It directly links an Capability Configuration to the final aggregated ConcreteHardwareSystem
   hiding the reifying HardwareAsset
-}
hardwareAsset : Linkage CapabilityConfiguration ConcreteHardwareSystem
hardwareAsset = membershipOfHardwareAsset  ∘  aggregationOfConcreteHardwareSystemHardwareAsset

postulate -- hardwareAsset is subTypeOf networkingPart
  st-f4be14665ee1e9a0-26b8386e5eeae4a4  : hardwareAsset   ⊏⋆ᵣ  networkingPart 
postulate -- hardwareAsset is subTypeOf resourceAgentPart
  st-f4be14665ee1e9a0-24034f6d5fc79c3f  : hardwareAsset   ⊏⋆ᵣ  resourceAgentPart 


{- IT Infrastructure Part: 
An IT Infrastrucure component helps to define that an IT Infrastructure or an IT Network is used within a System of Resources (Resource Architecture or Facility)
-}
-- Aggregate Member : IT Infrastructure Part
ITInfrastructurePart : ClassOfClassOfIndividual
ITInfrastructurePart = ClassOfIndividual

-- Membership relation
membershipOfITInfrastructurePart :  Linkage CapabilityConfiguration ITInfrastructurePart
membershipOfITInfrastructurePart = make_upwardNestingRelation "iTInfrastructurePart membership" "nested iTInfrastructurePart"

-- Aggregation relation
aggregationOfITInfrastructureSystemITInfrastructurePart :  Linkage ITInfrastructurePart ITInfrastructureSystem
aggregationOfITInfrastructureSystemITInfrastructurePart = make_Relation "ITInfrastructureSystem aggregation" "aggregated ITInfrastructureSystem"

{- iTInfrastructurePart : derived relation obtained by composing
   membershipOfITInfrastructurePart and aggregationOfITInfrastructureSystemITInfrastructurePart
   It directly links an Capability Configuration to the final aggregated ITInfrastructureSystem
   hiding the reifying ITInfrastructurePart
-}
iTInfrastructurePart : Linkage CapabilityConfiguration ITInfrastructureSystem
iTInfrastructurePart = membershipOfITInfrastructurePart  ∘  aggregationOfITInfrastructureSystemITInfrastructurePart

postulate -- iTInfrastructurePart is subTypeOf resourceAgentPart
  st-f4be18df5ee1f18d-24034f6d5fc79c3f  : iTInfrastructurePart   ⊏⋆ᵣ  resourceAgentPart 
postulate -- iTInfrastructurePart is subTypeOf networkingPart
  st-f4be18df5ee1f18d-26b8386e5eeae4a4  : iTInfrastructurePart   ⊏⋆ᵣ  networkingPart 


{- Human Resource: -}
-- Aggregate Member : Human Resource
HumanResource : ClassOfClassOfIndividual
HumanResource = ClassOfIndividual

-- Membership relation
membershipOfHumanResource :  Linkage CapabilityConfiguration HumanResource
membershipOfHumanResource = make_upwardNestingRelation "humanResource membership" "nested humanResource"

-- Aggregation relation
aggregationOfOrgUnitTypeHumanResource :  Linkage HumanResource OrgUnitType
aggregationOfOrgUnitTypeHumanResource = make_Relation "OrgUnitType aggregation" "aggregated OrgUnitType"

{- humanResource : derived relation obtained by composing
   membershipOfHumanResource and aggregationOfOrgUnitTypeHumanResource
   It directly links an Capability Configuration to the final aggregated OrgUnitType
   hiding the reifying HumanResource
-}
humanResource : Linkage CapabilityConfiguration OrgUnitType
humanResource = membershipOfHumanResource  ∘  aggregationOfOrgUnitTypeHumanResource

postulate -- humanResource is subTypeOf resourceAgentPart
  st-26b8578c5eeae1c8-24034f6d5fc79c3f  : humanResource   ⊏⋆ᵣ  resourceAgentPart 

