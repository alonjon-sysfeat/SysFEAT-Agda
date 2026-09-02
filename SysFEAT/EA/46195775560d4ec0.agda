{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

System of Systems: 
A System of Systems is a Macro Capability Configuration that combine several System of Resources to deliver a common high level Business Capability.Examples:- Air traffic control system- Smart city system- Health Care System- Search and Resue system (SAR)- Naval squadron consisting of an aircraft carrier, its escort ships and its C5ISR capabilities.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.46195775560d4ec0 where -- ========== System of Systems

open import Agda.Primitive
open import SysFEAT.EA.d1600c7062e093eb public -- Capability Configuration
open import SysFEAT.EA.f4be11b15ee1e0fa public -- System of Resources

SystemOfSystems : ClassOfClassOfBoundedIndividual
SystemOfSystems = ClassOfBoundedIndividual

--  SystemOfSystems is subTypeOf CapabilityConfiguration
st-d1600d4e62e0953d : SystemOfSystems ⊏ₑ CapabilityConfiguration
st-d1600d4e62e0953d = polySubTypeOf-identity

-- == Relationships =======================

{- System of System Member: -}
-- Aggregate Member : System of System Member
SystemOfSystemMember : ClassOfClassOfIndividual
SystemOfSystemMember = ClassOfIndividual

-- Membership relation
membershipOfSystemOfSystemMember :  Linkage SystemOfSystems SystemOfSystemMember
membershipOfSystemOfSystemMember = membershipOfAggregateMember

-- Aggregation relation
aggregationOfSystemOfSystemsSystemOfSystemMember :  Linkage SystemOfSystemMember SystemOfSystems
aggregationOfSystemOfSystemsSystemOfSystemMember = aggregationOfBuildingBlock

{- systemOfSystemMember : derived relation obtained by composing
   membershipOfSystemOfSystemMember and aggregationOfSystemOfSystemsSystemOfSystemMember
   It directly links an System of Systems to the final aggregated SystemOfSystems
   hiding the reifying SystemOfSystemMember
-}
systemOfSystemMember : Linkage SystemOfSystems SystemOfSystems
systemOfSystemMember = membershipOfSystemOfSystemMember  ∘  aggregationOfSystemOfSystemsSystemOfSystemMember

{- System of Resource Member: -}
-- Aggregate Member : System of Resource Member
SystemOfResourceMember : ClassOfClassOfIndividual
SystemOfResourceMember = ClassOfIndividual

-- Membership relation
membershipOfSystemOfResourceMember :  Linkage SystemOfSystems SystemOfResourceMember
membershipOfSystemOfResourceMember = membershipOfAggregateMember

-- Aggregation relation
aggregationOfSystemOfResourcesSystemOfResourceMember :  Linkage SystemOfResourceMember SystemOfResources
aggregationOfSystemOfResourcesSystemOfResourceMember = aggregationOfBuildingBlock

{- systemOfResourceMember : derived relation obtained by composing
   membershipOfSystemOfResourceMember and aggregationOfSystemOfResourcesSystemOfResourceMember
   It directly links an System of Systems to the final aggregated SystemOfResources
   hiding the reifying SystemOfResourceMember
-}
systemOfResourceMember : Linkage SystemOfSystems SystemOfResources
systemOfResourceMember = membershipOfSystemOfResourceMember  ∘  aggregationOfSystemOfResourcesSystemOfResourceMember
