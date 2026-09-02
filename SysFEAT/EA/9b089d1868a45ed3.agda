{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Physical Capability: 
A Physical Capability is a Business Resource Capability provided by Physical Business Agents representing their ability to produce Physical Outcome Events.A Physical Capability defines WHAT a Physical Business Agent can provide.Physical Capabilitys are used to express the need of obtaining Physical Outcome Event that will be utilized by Physical Business Agents (people or some Business Systems ) when performing their job.For internal users, these jobs correspond to Activitys described in Business Processes (see Instrument).For enterprise Customers, these jobs correspond to Job-to-be-done in the context of Customer Journeys.Examples: - 3D Printing.-  Automated Parcel Delivery.- Metal Shaping.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.9b089d1868a45ed3 where -- ========== Physical Capability

open import Agda.Primitive
open import SysFEAT.EA.dd26288968a05d00 public -- Business Resource Capability

PhysicalCapability : PropertyType
PhysicalCapability = ClassOfProperty

--  PhysicalCapability is subTypeOf BusinessResourceCapability
st-215c624c606d46b2 : PhysicalCapability ⊏ₑ BusinessResourceCapability
st-215c624c606d46b2 = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Physical Capability: -}
specializedPhysicalCapability :  Linkage PhysicalCapability PhysicalCapability
specializedPhysicalCapability = make_subTypeOf "Specialized Physical Capability" "specializedPhysicalCapability"

postulate -- specializedPhysicalCapability is subTypeOf specializedBusinessResourceCapability
  st-9b089da068a45f91-dd2683b668a1bbb3  : specializedPhysicalCapability   ⊏⋆ᵣ  specializedBusinessResourceCapability 

{- Physical Capability Part: -}
-- Aggregate Member : Physical Capability Part
PhysicalCapabilityPart : ClassOfClassOfIndividual
PhysicalCapabilityPart = ClassOfIndividual

-- Membership relation
membershipOfPhysicalCapabilityPart :  Linkage PhysicalCapability PhysicalCapabilityPart
membershipOfPhysicalCapabilityPart = membershipOfAggregateMember

-- Aggregation relation
aggregationOfPhysicalCapabilityPhysicalCapabilityPart :  Linkage PhysicalCapabilityPart PhysicalCapability
aggregationOfPhysicalCapabilityPhysicalCapabilityPart = aggregationOfBuildingBlock

{- physicalCapabilityPart : derived relation obtained by composing
   membershipOfPhysicalCapabilityPart and aggregationOfPhysicalCapabilityPhysicalCapabilityPart
   It directly links an Physical Capability to the final aggregated PhysicalCapability
   hiding the reifying PhysicalCapabilityPart
-}
physicalCapabilityPart : Linkage PhysicalCapability PhysicalCapability
physicalCapabilityPart = membershipOfPhysicalCapabilityPart  ∘  aggregationOfPhysicalCapabilityPhysicalCapabilityPart
