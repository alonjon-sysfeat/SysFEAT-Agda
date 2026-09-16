{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Physical Capability: 
A Physical Capability is a Business Resource Capability provided by Physical Business Agents representing their ability to produce Physical Outcome Events.A Physical Capability defines WHAT a Physical Business Agent can provide.Physical Capabilitys are used to express the need of obtaining Physical Outcome Event that will be utilized by Physical Business Agents (people or some Business Systems ) when performing their job.For internal users, these jobs correspond to Activitys described in Business Processes (see Instrument).For enterprise Customers, these jobs correspond to Job-to-be-done in the context of Customer Journeys.Examples: - 3D Printing.-  Automated Parcel Delivery.- Metal Shaping.

Documentation : https://framework.sysfeat.com/pages/9b089d1868a45ed3.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.9b089d1868a45ed3 where -- ========== Physical Capability

open import Agda.Primitive
open import SysFEAT.EA.dd26288968a05d00 public -- Business Resource Capability

PhysicalCapability : PropertyType
PhysicalCapability = ClassOfProperty

--  PhysicalCapability is subTypeOf BusinessResourceCapability
st-9b089d1868a45ed3-dd26288968a05d00 : PhysicalCapability ⊏ₑ BusinessResourceCapability
st-9b089d1868a45ed3-dd26288968a05d00 = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Physical Capability: -}
specializedPhysicalCapability :  Linkage PhysicalCapability PhysicalCapability
specializedPhysicalCapability = make_subTypeOf "Specialized Physical Capability" "Specialized Physical Capability"

postulate -- specializedPhysicalCapability is subTypeOf specializedBusinessResourceCapability
  st-9b089da068a45f91-dd2683b668a1bbb3  : specializedPhysicalCapability   ⊏⋆ᵣ  specializedBusinessResourceCapability 

{- Physical Capability Part: -}
-- Aggregate Member : Physical Capability Part
PhysicalCapabilityPart : ClassOfClassOfIndividual
PhysicalCapabilityPart = ClassOfIndividual

-- Membership relation
membershipOfPhysicalCapabilityPart :  Linkage PhysicalCapability PhysicalCapabilityPart
membershipOfPhysicalCapabilityPart = make_upwardNestingRelation "physicalCapabilityPart membership" "nested physicalCapabilityPart"

-- Aggregation relation
aggregationOfPhysicalCapabilityPhysicalCapabilityPart :  Linkage PhysicalCapabilityPart PhysicalCapability
aggregationOfPhysicalCapabilityPhysicalCapabilityPart = make_Relation "PhysicalCapability aggregation" "aggregated PhysicalCapability"

{- physicalCapabilityPart : derived relation obtained by composing
   membershipOfPhysicalCapabilityPart and aggregationOfPhysicalCapabilityPhysicalCapabilityPart
   It directly links an Physical Capability to the final aggregated PhysicalCapability
   hiding the reifying PhysicalCapabilityPart
-}
physicalCapabilityPart : Linkage PhysicalCapability PhysicalCapability
physicalCapabilityPart = membershipOfPhysicalCapabilityPart  ∘  aggregationOfPhysicalCapabilityPhysicalCapabilityPart

postulate -- physicalCapabilityPart is subTypeOf businessResourceCapabilityPart
  st-9b089de468a4607c-dd27af0168a10530  : physicalCapabilityPart   ⊏⋆ᵣ  businessResourceCapabilityPart 

