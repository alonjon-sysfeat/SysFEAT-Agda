{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Technology Capability: 
A Technology Capability is a Resource Capability offered by Technology Systems and aimed at producing Technology Outcome Events.Technology Capabilitys define WHAT Technology Capabilitys can do, They are used to understand whether two types of Technology Capabilitys are fundamentally doing the same thing.They are also used in Software System ArcOps to identify where there are redundancies in Technology Portfolios.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.dd27b08d68a10b12 where -- ========== Technology Capability

open import Agda.Primitive
open import SysFEAT.EA.dd265414689f5987 public -- Resource Capability

TechnologyCapability : PropertyType
TechnologyCapability = ClassOfProperty

--  TechnologyCapability is subTypeOf ResourceCapability
st-dd27b13568a10c0f : TechnologyCapability ⊏ₑ ResourceCapability
st-dd27b13568a10c0f = polySubTypeOf-identity

-- == Relationships =======================

{- Technology Capability Part: -}
-- Aggregate Member : Technology Capability Part
TechnologyCapabilityPart : ClassOfClassOfIndividual
TechnologyCapabilityPart = ClassOfIndividual

-- Membership relation
membershipOfTechnologyCapabilityPart :  Linkage TechnologyCapability TechnologyCapabilityPart
membershipOfTechnologyCapabilityPart = membershipOfAggregateMember

-- Aggregation relation
aggregationOfTechnologyCapabilityTechnologyCapabilityPart :  Linkage TechnologyCapabilityPart TechnologyCapability
aggregationOfTechnologyCapabilityTechnologyCapabilityPart = aggregationOfBuildingBlock

{- technologyCapabilityPart : derived relation obtained by composing
   membershipOfTechnologyCapabilityPart and aggregationOfTechnologyCapabilityTechnologyCapabilityPart
   It directly links an Technology Capability to the final aggregated TechnologyCapability
   hiding the reifying TechnologyCapabilityPart
-}
technologyCapabilityPart : Linkage TechnologyCapability TechnologyCapability
technologyCapabilityPart = membershipOfTechnologyCapabilityPart  ∘  aggregationOfTechnologyCapabilityTechnologyCapabilityPart
