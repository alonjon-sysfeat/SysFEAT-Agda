{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

System of Systems: 
A System of Systems is a Macro Capability Configuration that combine several System of Resources to deliver a common high level Business Capability.Examples:- Air traffic control system- Smart city system- Health Care System- Search and Resue system (SAR)- Naval squadron consisting of an aircraft carrier, its escort ships and its C5ISR capabilities.

Documentation : https://framework.sysfeat.com/pages/46195775560d4ec0.htm

External references:
  OMG - UAF - CapabilityConfiguration: https://www.omg.org/spec/UAF/1.2/Beta1/DMM/PDF#CapabilityConfiguration
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.46195775560d4ec0 where -- ========== System of Systems

open import Agda.Primitive
open import SysFEAT.EA.d1600c7062e093eb public -- Capability Configuration
open import SysFEAT.EA.f4be11b15ee1e0fa public -- System of Resources

SystemOfSystems : ClassOfClassOfBoundedIndividual
SystemOfSystems = ClassOfBoundedIndividual

--  SystemOfSystems is subTypeOf CapabilityConfiguration
st-46195775560d4ec0-d1600c7062e093eb : SystemOfSystems ⊏ₑ CapabilityConfiguration
st-46195775560d4ec0-d1600c7062e093eb = polySubTypeOf-identity

-- == Relationships =======================

{- System of System Member: -}
-- Aggregate Member : System of System Member
SystemOfSystemMember : ClassOfClassOfIndividual
SystemOfSystemMember = ClassOfIndividual

-- Membership relation
membershipOfSystemOfSystemMember :  Linkage SystemOfSystems SystemOfSystemMember
membershipOfSystemOfSystemMember = make_upwardNestingRelation "systemOfSystemMember membership" "nested systemOfSystemMember"

-- Aggregation relation
aggregationOfSystemOfSystemsSystemOfSystemMember :  Linkage SystemOfSystemMember SystemOfSystems
aggregationOfSystemOfSystemsSystemOfSystemMember = make_Relation "SystemOfSystems aggregation" "aggregated SystemOfSystems"

{- systemOfSystemMember : derived relation obtained by composing
   membershipOfSystemOfSystemMember and aggregationOfSystemOfSystemsSystemOfSystemMember
   It directly links an System of Systems to the final aggregated SystemOfSystems
   hiding the reifying SystemOfSystemMember
-}
systemOfSystemMember : Linkage SystemOfSystems SystemOfSystems
systemOfSystemMember = membershipOfSystemOfSystemMember  ∘  aggregationOfSystemOfSystemsSystemOfSystemMember

postulate -- systemOfSystemMember is subTypeOf resourceAgentPart
  st-f4be19a45ee1f3c0-24034f6d5fc79c3f  : systemOfSystemMember   ⊏⋆ᵣ  resourceAgentPart 
postulate -- systemOfSystemMember is subTypeOf networkingPart
  st-f4be19a45ee1f3c0-26b8386e5eeae4a4  : systemOfSystemMember   ⊏⋆ᵣ  networkingPart 


{- System of Resource Member: -}
-- Aggregate Member : System of Resource Member
SystemOfResourceMember : ClassOfClassOfIndividual
SystemOfResourceMember = ClassOfIndividual

-- Membership relation
membershipOfSystemOfResourceMember :  Linkage SystemOfSystems SystemOfResourceMember
membershipOfSystemOfResourceMember = make_upwardNestingRelation "systemOfResourceMember membership" "nested systemOfResourceMember"

-- Aggregation relation
aggregationOfSystemOfResourcesSystemOfResourceMember :  Linkage SystemOfResourceMember SystemOfResources
aggregationOfSystemOfResourcesSystemOfResourceMember = make_Relation "SystemOfResources aggregation" "aggregated SystemOfResources"

{- systemOfResourceMember : derived relation obtained by composing
   membershipOfSystemOfResourceMember and aggregationOfSystemOfResourcesSystemOfResourceMember
   It directly links an System of Systems to the final aggregated SystemOfResources
   hiding the reifying SystemOfResourceMember
-}
systemOfResourceMember : Linkage SystemOfSystems SystemOfResources
systemOfResourceMember = membershipOfSystemOfResourceMember  ∘  aggregationOfSystemOfResourcesSystemOfResourceMember


