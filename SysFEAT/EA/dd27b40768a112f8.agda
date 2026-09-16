{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Technology Capability Map: 
Family of Technology Capabilitys used to scope technology portfolios.

Documentation : https://framework.sysfeat.com/pages/dd27b40768a112f8.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.dd27b40768a112f8 where -- ========== Technology Capability Map

open import Agda.Primitive
open import SysFEAT.EA.dd26307668a065f5 public -- Resource Capability Map
open import SysFEAT.EA.dd27b08d68a10b12 public -- Technology Capability

TechnologyCapabilityMap : PropertyType
TechnologyCapabilityMap = ClassOfProperty

--  TechnologyCapabilityMap is subTypeOf ResourceCapabilityMap
st-dd27b40768a112f8-dd26307668a065f5 : TechnologyCapabilityMap ⊏ₑ ResourceCapabilityMap
st-dd27b40768a112f8-dd26307668a065f5 = polySubTypeOf-identity

-- == Relationships =======================

{- Tehnology Capability Member: -}
-- Aggregate Member : Tehnology Capability Member
TehnologyCapabilityMember : ClassOfClassOfIndividual
TehnologyCapabilityMember = ClassOfIndividual

-- Membership relation
membershipOfTehnologyCapabilityMember :  Linkage TechnologyCapabilityMap TehnologyCapabilityMember
membershipOfTehnologyCapabilityMember = make_upwardNestingRelation "tehnologyCapabilityMember membership" "nested tehnologyCapabilityMember"

-- Aggregation relation
aggregationOfTechnologyCapabilityTehnologyCapabilityMember :  Linkage TehnologyCapabilityMember TechnologyCapability
aggregationOfTechnologyCapabilityTehnologyCapabilityMember = make_Relation "TechnologyCapability aggregation" "aggregated TechnologyCapability"

{- tehnologyCapabilityMember : derived relation obtained by composing
   membershipOfTehnologyCapabilityMember and aggregationOfTechnologyCapabilityTehnologyCapabilityMember
   It directly links an Technology Capability Map to the final aggregated TechnologyCapability
   hiding the reifying TehnologyCapabilityMember
-}
tehnologyCapabilityMember : Linkage TechnologyCapabilityMap TechnologyCapability
tehnologyCapabilityMember = membershipOfTehnologyCapabilityMember  ∘  aggregationOfTechnologyCapabilityTehnologyCapabilityMember

postulate -- tehnologyCapabilityMember is subTypeOf resourceCapabilityMember
  st-dd27d05d68a11646-dd26325f68a0682c  : tehnologyCapabilityMember   ⊏⋆ᵣ  resourceCapabilityMember 

