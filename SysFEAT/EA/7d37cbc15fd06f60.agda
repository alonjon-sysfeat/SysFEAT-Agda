{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Physical Data Lineage: 
Business Data lineage is about tracking the flow of information.It is necessary to guarantee the quality, usability and security of business data.For large organizations, it is also a key conformity legal requirement: BCBS 239, Solvency II.Business Data Lineage is defined as a business data life cycle that describes the source of business data and where it moves over time.

Documentation : https://framework.sysfeat.com/pages/7d37cbc15fd06f60.htm

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
st-7d37cbc15fd06f60-23ab2e945da829b8 : PhysicalDataLineage ⊏ₑ DataLineage
st-7d37cbc15fd06f60-23ab2e945da829b8 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Realized Business Lineage: -}
realizedBusinessLineage :  Linkage PhysicalDataLineage ConceptLineage
realizedBusinessLineage = make_subTypeOf "Realized Business Lineage" "Realized Business Lineage"

postulate -- realizedBusinessLineage is subTypeOf realizedDataLineage
  st-325a3a1066f357a9-325a3a1066f35805  : realizedBusinessLineage  ⊏⋆ᵣ  realizedDataLineage

-- -------------------------------------------------------------------------------------------- 
{- Physical Lineage Flow: -}
-- Aggregate Member : Physical Lineage Flow
PhysicalLineageFlow : ClassOfClassOfIndividual
PhysicalLineageFlow = ClassOfIndividual


--  PhysicalLineageFlow is subTypeOf DataLineageFlow
st-8f6d923a68e36fb8-8f6d8ff668e36bd7 : PhysicalLineageFlow ⊏ₑ DataLineageFlow
st-8f6d923a68e36fb8-8f6d8ff668e36bd7 = polySubTypeOf-identity

-- Membership relation
membershipOfPhysicalLineageFlow :  Linkage PhysicalDataLineage PhysicalLineageFlow
membershipOfPhysicalLineageFlow = make_upwardNestingRelation "physicalLineageFlow membership" "nested physicalLineageFlow"

-- Aggregation relation
aggregationOfBehavioralEventPhysicalLineageFlow :  Linkage PhysicalLineageFlow BehavioralEvent
aggregationOfBehavioralEventPhysicalLineageFlow = make_Relation "BehavioralEvent aggregation" "aggregated BehavioralEvent"

{- physicalLineageFlow : derived relation obtained by composing
   membershipOfPhysicalLineageFlow and aggregationOfBehavioralEventPhysicalLineageFlow
   It directly links an Physical Data Lineage to the final aggregated BehavioralEvent
   hiding the reifying PhysicalLineageFlow
-}
physicalLineageFlow : Linkage PhysicalDataLineage BehavioralEvent
physicalLineageFlow = membershipOfPhysicalLineageFlow  ∘  aggregationOfBehavioralEventPhysicalLineageFlow



-- -------------------------------------------------------------------------------------------- 
{- Origin Physical Entity: -}
-- Aggregate Member : Origin Physical Entity
OriginPhysicalEntity : ClassOfClassOfBoundedIndividual
OriginPhysicalEntity = ClassOfBoundedIndividual



--  OriginPhysicalEntity is subTypeOf OriginEntity
st-acb4c817624587c9-acb4af8462457ab3 : OriginPhysicalEntity ⊏ₑ OriginEntity
st-acb4c817624587c9-acb4af8462457ab3 = polySubTypeOf-identity

--  OriginPhysicalEntity is subTypeOf PhysicalDataEntity
st-acb4c817624587c9-762582bb5f6bd659 : OriginPhysicalEntity ⊏ₑ PhysicalDataEntity
st-acb4c817624587c9-762582bb5f6bd659 = polySubTypeOf-identity

-- Membership relation
membershipOfOriginPhysicalEntity :  Linkage PhysicalDataLineage OriginPhysicalEntity
membershipOfOriginPhysicalEntity = make_upwardNestingRelation "originPhysicalEntity membership" "nested originPhysicalEntity"

-- Aggregation relation
aggregationOfPhysicalDataEntityOriginPhysicalEntity :  Linkage OriginPhysicalEntity PhysicalDataEntity
aggregationOfPhysicalDataEntityOriginPhysicalEntity = make_Relation "PhysicalDataEntity aggregation" "aggregated PhysicalDataEntity"

{- originPhysicalEntity : derived relation obtained by composing
   membershipOfOriginPhysicalEntity and aggregationOfPhysicalDataEntityOriginPhysicalEntity
   It directly links an Physical Data Lineage to the final aggregated PhysicalDataEntity
   hiding the reifying OriginPhysicalEntity
-}
originPhysicalEntity : Linkage PhysicalDataLineage PhysicalDataEntity
originPhysicalEntity = membershipOfOriginPhysicalEntity  ∘  aggregationOfPhysicalDataEntityOriginPhysicalEntity



-- -------------------------------------------------------------------------------------------- 
{- Final Physical Entity: -}
-- Aggregate Member : Final Physical Entity
FinalPhysicalEntity : ClassOfClassOfBoundedIndividual
FinalPhysicalEntity = ClassOfBoundedIndividual



--  FinalPhysicalEntity is subTypeOf FinalEntity
st-acb4c83f624588a3-acb4b3b562457c32 : FinalPhysicalEntity ⊏ₑ FinalEntity
st-acb4c83f624588a3-acb4b3b562457c32 = polySubTypeOf-identity

--  FinalPhysicalEntity is subTypeOf PhysicalDataEntity
st-acb4c83f624588a3-762582bb5f6bd659 : FinalPhysicalEntity ⊏ₑ PhysicalDataEntity
st-acb4c83f624588a3-762582bb5f6bd659 = polySubTypeOf-identity

-- Membership relation
membershipOfFinalPhysicalEntity :  Linkage PhysicalDataLineage FinalPhysicalEntity
membershipOfFinalPhysicalEntity = make_upwardNestingRelation "finalPhysicalEntity membership" "nested finalPhysicalEntity"

-- Aggregation relation
aggregationOfPhysicalDataEntityFinalPhysicalEntity :  Linkage FinalPhysicalEntity PhysicalDataEntity
aggregationOfPhysicalDataEntityFinalPhysicalEntity = make_Relation "PhysicalDataEntity aggregation" "aggregated PhysicalDataEntity"

{- finalPhysicalEntity : derived relation obtained by composing
   membershipOfFinalPhysicalEntity and aggregationOfPhysicalDataEntityFinalPhysicalEntity
   It directly links an Physical Data Lineage to the final aggregated PhysicalDataEntity
   hiding the reifying FinalPhysicalEntity
-}
finalPhysicalEntity : Linkage PhysicalDataLineage PhysicalDataEntity
finalPhysicalEntity = membershipOfFinalPhysicalEntity  ∘  aggregationOfPhysicalDataEntityFinalPhysicalEntity



-- -------------------------------------------------------------------------------------------- 
{- Intermediate Store: -}
-- Aggregate Member : Intermediate Store
IntermediateStore : ClassOfClassOfBoundedIndividual
IntermediateStore = ClassOfBoundedIndividual



--  IntermediateStore is subTypeOf IntermediateEntity
st-acb4c86d62458979-acb4b3f162457d1a : IntermediateStore ⊏ₑ IntermediateEntity
st-acb4c86d62458979-acb4b3f162457d1a = polySubTypeOf-identity

--  IntermediateStore is subTypeOf PhysicalDataEntity
st-acb4c86d62458979-762582bb5f6bd659 : IntermediateStore ⊏ₑ PhysicalDataEntity
st-acb4c86d62458979-762582bb5f6bd659 = polySubTypeOf-identity

-- Membership relation
membershipOfIntermediateStore :  Linkage PhysicalDataLineage IntermediateStore
membershipOfIntermediateStore = make_upwardNestingRelation "intermediateStore membership" "nested intermediateStore"

-- Aggregation relation
aggregationOfPhysicalDataEntityIntermediateStore :  Linkage IntermediateStore PhysicalDataEntity
aggregationOfPhysicalDataEntityIntermediateStore = make_Relation "PhysicalDataEntity aggregation" "aggregated PhysicalDataEntity"

{- intermediateStore : derived relation obtained by composing
   membershipOfIntermediateStore and aggregationOfPhysicalDataEntityIntermediateStore
   It directly links an Physical Data Lineage to the final aggregated PhysicalDataEntity
   hiding the reifying IntermediateStore
-}
intermediateStore : Linkage PhysicalDataLineage PhysicalDataEntity
intermediateStore = membershipOfIntermediateStore  ∘  aggregationOfPhysicalDataEntityIntermediateStore


