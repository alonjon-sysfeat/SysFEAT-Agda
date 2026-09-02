{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Concept Lineage: 
Concept Lineage is about tracking the flow of information.It is necessary to guarantee the quality, usability and security of business data.For large organizations, it is also a key conformity legal requirement: BCBS 239, Solvency II.Business Data Lineage is defined as a business data life cycle that describes the source of business data and where it moves over time.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.7d37c0565fd067ce where -- ========== Concept Lineage

open import Agda.Primitive
open import SysFEAT.EA.23ab2e945da829b8 public -- Data Lineage
open import SysFEAT.SOF.24ae31d75ed1c747 public -- Behavioral Event
open import SysFEAT.EA.229b34eb5b3f79d2 public -- Conceptual Entity

ConceptLineage : ClassOfClassOfBoundedIndividual
ConceptLineage = ClassOfBoundedIndividual

--  ConceptLineage is subTypeOf DataLineage
st-7d37c0615fd06838 : ConceptLineage ⊏ₑ DataLineage
st-7d37c0615fd06838 = polySubTypeOf-identity

-- == Relationships =======================

{- Concept Lineage Flow: -}
-- Aggregate Member : Concept Lineage Flow
ConceptLineageFlow : ClassOfClassOfIndividual
ConceptLineageFlow = ClassOfIndividual

-- Membership relation
membershipOfConceptLineageFlow :  Linkage ConceptLineage ConceptLineageFlow
membershipOfConceptLineageFlow = membershipOfAggregateMember

-- Aggregation relation
aggregationOfBehavioralEventConceptLineageFlow :  Linkage ConceptLineageFlow BehavioralEvent
aggregationOfBehavioralEventConceptLineageFlow = aggregationOfBuildingBlock

{- conceptLineageFlow : derived relation obtained by composing
   membershipOfConceptLineageFlow and aggregationOfBehavioralEventConceptLineageFlow
   It directly links an Concept Lineage to the final aggregated BehavioralEvent
   hiding the reifying ConceptLineageFlow
-}
conceptLineageFlow : Linkage ConceptLineage BehavioralEvent
conceptLineageFlow = membershipOfConceptLineageFlow  ∘  aggregationOfBehavioralEventConceptLineageFlow

{- Final Business Object: -}
-- Aggregate Member : Final Business Object
FinalBusinessObject : ClassOfClassOfIndividual
FinalBusinessObject = ClassOfIndividual

-- Membership relation
membershipOfFinalBusinessObject :  Linkage ConceptLineage FinalBusinessObject
membershipOfFinalBusinessObject = membershipOfAggregateMember

-- Aggregation relation
aggregationOfConceptualEntityFinalBusinessObject :  Linkage FinalBusinessObject ConceptualEntity
aggregationOfConceptualEntityFinalBusinessObject = aggregationOfBuildingBlock

{- finalBusinessObject : derived relation obtained by composing
   membershipOfFinalBusinessObject and aggregationOfConceptualEntityFinalBusinessObject
   It directly links an Concept Lineage to the final aggregated ConceptualEntity
   hiding the reifying FinalBusinessObject
-}
finalBusinessObject : Linkage ConceptLineage ConceptualEntity
finalBusinessObject = membershipOfFinalBusinessObject  ∘  aggregationOfConceptualEntityFinalBusinessObject

{- Origin Business Object: -}
-- Aggregate Member : Origin Business Object
OriginBusinessObject : ClassOfClassOfIndividual
OriginBusinessObject = ClassOfIndividual

-- Membership relation
membershipOfOriginBusinessObject :  Linkage ConceptLineage OriginBusinessObject
membershipOfOriginBusinessObject = membershipOfAggregateMember

-- Aggregation relation
aggregationOfConceptualEntityOriginBusinessObject :  Linkage OriginBusinessObject ConceptualEntity
aggregationOfConceptualEntityOriginBusinessObject = aggregationOfBuildingBlock

{- originBusinessObject : derived relation obtained by composing
   membershipOfOriginBusinessObject and aggregationOfConceptualEntityOriginBusinessObject
   It directly links an Concept Lineage to the final aggregated ConceptualEntity
   hiding the reifying OriginBusinessObject
-}
originBusinessObject : Linkage ConceptLineage ConceptualEntity
originBusinessObject = membershipOfOriginBusinessObject  ∘  aggregationOfConceptualEntityOriginBusinessObject

{- Business Object Store: -}
-- Aggregate Member : Business Object Store
BusinessObjectStore : ClassOfClassOfIndividual
BusinessObjectStore = ClassOfIndividual

-- Membership relation
membershipOfBusinessObjectStore :  Linkage ConceptLineage BusinessObjectStore
membershipOfBusinessObjectStore = membershipOfAggregateMember

-- Aggregation relation
aggregationOfConceptualEntityBusinessObjectStore :  Linkage BusinessObjectStore ConceptualEntity
aggregationOfConceptualEntityBusinessObjectStore = aggregationOfBuildingBlock

{- businessObjectStore : derived relation obtained by composing
   membershipOfBusinessObjectStore and aggregationOfConceptualEntityBusinessObjectStore
   It directly links an Concept Lineage to the final aggregated ConceptualEntity
   hiding the reifying BusinessObjectStore
-}
businessObjectStore : Linkage ConceptLineage ConceptualEntity
businessObjectStore = membershipOfBusinessObjectStore  ∘  aggregationOfConceptualEntityBusinessObjectStore
