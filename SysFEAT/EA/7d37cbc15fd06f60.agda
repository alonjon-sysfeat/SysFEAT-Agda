{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Physical Data Lineage: 
Business Data lineage is about tracking the flow of information.It is necessary to guarantee the quality, usability and security of business data.For large organizations, it is also a key conformity legal requirement: BCBS 239, Solvency II.Business Data Lineage is defined as a business data life cycle that describes the source of business data and where it moves over time.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.7d37cbc15fd06f60 where -- ========== Physical Data Lineage

open import Agda.Primitive
open import SysFEAT.EA.23ab2e945da829b8 public -- Data Lineage
open import SysFEAT.EA.7d37c0565fd067ce public -- Concept Lineage
open import SysFEAT.SOF.24ae31d75ed1c747 public -- Behavioral Event
open import SysFEAT.EA.762582bb5f6bd659 public -- Physical Data Entity

PhysicalDataLineage : ClassOfClassOfBoundedIndividual
PhysicalDataLineage = ClassOfBoundedIndividual

--  PhysicalDataLineage is subTypeOf DataLineage
st-7d37cbc75fd06fca : PhysicalDataLineage ⊏ₑ DataLineage
st-7d37cbc75fd06fca = polySubTypeOf-identity

-- == Relationships =======================

{- Realized Business Lineage: -}
realizedBusinessLineage :  Linkage PhysicalDataLineage ConceptLineage
realizedBusinessLineage = make_subTypeOf "Realized Business Lineage" "realizedBusinessLineage"

postulate -- realizedBusinessLineage is subTypeOf realizedDataLineage
  st-325a3a1066f357a9-325a3a1066f35805  : realizedBusinessLineage   ⊏⋆ᵣ  realizedDataLineage 

{- Physical Lineage Flow: -}
-- Aggregate Member : Physical Lineage Flow
PhysicalLineageFlow : ClassOfClassOfIndividual
PhysicalLineageFlow = ClassOfIndividual

-- Membership relation
membershipOfPhysicalLineageFlow :  Linkage PhysicalDataLineage PhysicalLineageFlow
membershipOfPhysicalLineageFlow = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBehavioralEventPhysicalLineageFlow :  Linkage PhysicalLineageFlow BehavioralEvent
aggregationOfBehavioralEventPhysicalLineageFlow = aggregationOfBuildingBlock

{- physicalLineageFlow : derived relation obtained by composing
   membershipOfPhysicalLineageFlow and aggregationOfBehavioralEventPhysicalLineageFlow
   It directly links an Physical Data Lineage to the final aggregated BehavioralEvent
   hiding the reifying PhysicalLineageFlow
-}
physicalLineageFlow : Linkage PhysicalDataLineage BehavioralEvent
physicalLineageFlow = membershipOfPhysicalLineageFlow  ∘  aggregationOfBehavioralEventPhysicalLineageFlow

{- Origin Physical Entity: -}
-- Aggregate Member : Origin Physical Entity
OriginPhysicalEntity : ClassOfClassOfIndividual
OriginPhysicalEntity = ClassOfIndividual

-- Membership relation
membershipOfOriginPhysicalEntity :  Linkage PhysicalDataLineage OriginPhysicalEntity
membershipOfOriginPhysicalEntity = membershipOfAggregateMember

-- Aggregation relation
aggregationOfPhysicalDataEntityOriginPhysicalEntity :  Linkage OriginPhysicalEntity PhysicalDataEntity
aggregationOfPhysicalDataEntityOriginPhysicalEntity = aggregationOfBuildingBlock

{- originPhysicalEntity : derived relation obtained by composing
   membershipOfOriginPhysicalEntity and aggregationOfPhysicalDataEntityOriginPhysicalEntity
   It directly links an Physical Data Lineage to the final aggregated PhysicalDataEntity
   hiding the reifying OriginPhysicalEntity
-}
originPhysicalEntity : Linkage PhysicalDataLineage PhysicalDataEntity
originPhysicalEntity = membershipOfOriginPhysicalEntity  ∘  aggregationOfPhysicalDataEntityOriginPhysicalEntity

{- Final Physical Entity: -}
-- Aggregate Member : Final Physical Entity
FinalPhysicalEntity : ClassOfClassOfIndividual
FinalPhysicalEntity = ClassOfIndividual

-- Membership relation
membershipOfFinalPhysicalEntity :  Linkage PhysicalDataLineage FinalPhysicalEntity
membershipOfFinalPhysicalEntity = membershipOfAggregateMember

-- Aggregation relation
aggregationOfPhysicalDataEntityFinalPhysicalEntity :  Linkage FinalPhysicalEntity PhysicalDataEntity
aggregationOfPhysicalDataEntityFinalPhysicalEntity = aggregationOfBuildingBlock

{- finalPhysicalEntity : derived relation obtained by composing
   membershipOfFinalPhysicalEntity and aggregationOfPhysicalDataEntityFinalPhysicalEntity
   It directly links an Physical Data Lineage to the final aggregated PhysicalDataEntity
   hiding the reifying FinalPhysicalEntity
-}
finalPhysicalEntity : Linkage PhysicalDataLineage PhysicalDataEntity
finalPhysicalEntity = membershipOfFinalPhysicalEntity  ∘  aggregationOfPhysicalDataEntityFinalPhysicalEntity

{- Intermediate Store: -}
-- Aggregate Member : Intermediate Store
IntermediateStore : ClassOfClassOfIndividual
IntermediateStore = ClassOfIndividual

-- Membership relation
membershipOfIntermediateStore :  Linkage PhysicalDataLineage IntermediateStore
membershipOfIntermediateStore = membershipOfAggregateMember

-- Aggregation relation
aggregationOfPhysicalDataEntityIntermediateStore :  Linkage IntermediateStore PhysicalDataEntity
aggregationOfPhysicalDataEntityIntermediateStore = aggregationOfBuildingBlock

{- intermediateStore : derived relation obtained by composing
   membershipOfIntermediateStore and aggregationOfPhysicalDataEntityIntermediateStore
   It directly links an Physical Data Lineage to the final aggregated PhysicalDataEntity
   hiding the reifying IntermediateStore
-}
intermediateStore : Linkage PhysicalDataLineage PhysicalDataEntity
intermediateStore = membershipOfIntermediateStore  ∘  aggregationOfPhysicalDataEntityIntermediateStore
