{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Technology Capability Map: 
Family of Technology Capabilitys used to scope technology portfolios.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.dd27b40768a112f8 where -- ========== Technology Capability Map

open import Agda.Primitive
open import SysFEAT.EA.dd26307668a065f5 public -- Resource Capability Map
open import SysFEAT.EA.dd27b08d68a10b12 public -- Technology Capability

TechnologyCapabilityMap : PropertyType
TechnologyCapabilityMap = ClassOfProperty

--  TechnologyCapabilityMap is subTypeOf ResourceCapabilityMap
st-09d112a2679e58c5 : TechnologyCapabilityMap ⊏ₑ ResourceCapabilityMap
st-09d112a2679e58c5 = polySubTypeOf-identity

-- == Relationships =======================

{- Tehnology Capability Member: -}
-- Aggregate Member : Tehnology Capability Member
TehnologyCapabilityMember : ClassOfClassOfIndividual
TehnologyCapabilityMember = ClassOfIndividual

-- Membership relation
membershipOfTehnologyCapabilityMember :  Linkage TechnologyCapabilityMap TehnologyCapabilityMember
membershipOfTehnologyCapabilityMember = membershipOfAggregateMember

-- Aggregation relation
aggregationOfTechnologyCapabilityTehnologyCapabilityMember :  Linkage TehnologyCapabilityMember TechnologyCapability
aggregationOfTechnologyCapabilityTehnologyCapabilityMember = aggregationOfBuildingBlock

{- tehnologyCapabilityMember : derived relation obtained by composing
   membershipOfTehnologyCapabilityMember and aggregationOfTechnologyCapabilityTehnologyCapabilityMember
   It directly links an Technology Capability Map to the final aggregated TechnologyCapability
   hiding the reifying TehnologyCapabilityMember
-}
tehnologyCapabilityMember : Linkage TechnologyCapabilityMap TechnologyCapability
tehnologyCapabilityMember = membershipOfTehnologyCapabilityMember  ∘  aggregationOfTechnologyCapabilityTehnologyCapabilityMember
