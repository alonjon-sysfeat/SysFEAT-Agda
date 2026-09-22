{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Concept Lineage: 
Concept Lineage is about tracking the flow of information.It is necessary to guarantee the quality, usability and security of business data.For large organizations, it is also a key conformity legal requirement: BCBS 239, Solvency II.Business Data Lineage is defined as a business data life cycle that describes the source of business data and where it moves over time.

Documentation : https://framework.sysfeat.com/pages/7d37c0565fd067ce.htm

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
st-7d37c0565fd067ce-23ab2e945da829b8 : ConceptLineage ⊏ₑ DataLineage
st-7d37c0565fd067ce-23ab2e945da829b8 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Concept Lineage Flow: -}
-- Aggregate Member : Concept Lineage Flow
ConceptLineageFlow : ClassOfClassOfIndividual
ConceptLineageFlow = ClassOfIndividual


-- Membership relation
membershipOfConceptLineageFlow :  Linkage ConceptLineage ConceptLineageFlow
membershipOfConceptLineageFlow = make_upwardNestingRelation "conceptLineageFlow membership" "nested conceptLineageFlow"

-- Aggregation relation
aggregationOfBehavioralEventConceptLineageFlow :  Linkage ConceptLineageFlow BehavioralEvent
aggregationOfBehavioralEventConceptLineageFlow = make_Relation "BehavioralEvent aggregation" "aggregated BehavioralEvent"

{- conceptLineageFlow : derived relation obtained by composing
   membershipOfConceptLineageFlow and aggregationOfBehavioralEventConceptLineageFlow
   It directly links an Concept Lineage to the final aggregated BehavioralEvent
   hiding the reifying ConceptLineageFlow
-}
conceptLineageFlow : Linkage ConceptLineage BehavioralEvent
conceptLineageFlow = membershipOfConceptLineageFlow  ∘  aggregationOfBehavioralEventConceptLineageFlow



-- -------------------------------------------------------------------------------------------- 
{- Final Business Object: -}
-- Aggregate Member : Final Business Object
FinalBusinessObject : ClassOfClassOfBoundedIndividual
FinalBusinessObject = ClassOfBoundedIndividual



--  FinalBusinessObject is subTypeOf FinalEntity
st-acb4b7e762457faf-acb4b3b562457c32 : FinalBusinessObject ⊏ₑ FinalEntity
st-acb4b7e762457faf-acb4b3b562457c32 = polySubTypeOf-identity

--  FinalBusinessObject is subTypeOf ConceptualEntity
st-acb4b7e762457faf-229b34eb5b3f79d2 : FinalBusinessObject ⊏ₑ ConceptualEntity
st-acb4b7e762457faf-229b34eb5b3f79d2 = polySubTypeOf-identity

-- Membership relation
membershipOfFinalBusinessObject :  Linkage ConceptLineage FinalBusinessObject
membershipOfFinalBusinessObject = make_upwardNestingRelation "finalBusinessObject membership" "nested finalBusinessObject"

-- Aggregation relation
aggregationOfConceptualEntityFinalBusinessObject :  Linkage FinalBusinessObject ConceptualEntity
aggregationOfConceptualEntityFinalBusinessObject = make_Relation "ConceptualEntity aggregation" "aggregated ConceptualEntity"

{- finalBusinessObject : derived relation obtained by composing
   membershipOfFinalBusinessObject and aggregationOfConceptualEntityFinalBusinessObject
   It directly links an Concept Lineage to the final aggregated ConceptualEntity
   hiding the reifying FinalBusinessObject
-}
finalBusinessObject : Linkage ConceptLineage ConceptualEntity
finalBusinessObject = membershipOfFinalBusinessObject  ∘  aggregationOfConceptualEntityFinalBusinessObject



-- -------------------------------------------------------------------------------------------- 
{- Origin Business Object: -}
-- Aggregate Member : Origin Business Object
OriginBusinessObject : ClassOfClassOfBoundedIndividual
OriginBusinessObject = ClassOfBoundedIndividual



--  OriginBusinessObject is subTypeOf OriginEntity
st-acb4b81362458092-acb4af8462457ab3 : OriginBusinessObject ⊏ₑ OriginEntity
st-acb4b81362458092-acb4af8462457ab3 = polySubTypeOf-identity

--  OriginBusinessObject is subTypeOf ConceptualEntity
st-acb4b81362458092-229b34eb5b3f79d2 : OriginBusinessObject ⊏ₑ ConceptualEntity
st-acb4b81362458092-229b34eb5b3f79d2 = polySubTypeOf-identity

-- Membership relation
membershipOfOriginBusinessObject :  Linkage ConceptLineage OriginBusinessObject
membershipOfOriginBusinessObject = make_upwardNestingRelation "originBusinessObject membership" "nested originBusinessObject"

-- Aggregation relation
aggregationOfConceptualEntityOriginBusinessObject :  Linkage OriginBusinessObject ConceptualEntity
aggregationOfConceptualEntityOriginBusinessObject = make_Relation "ConceptualEntity aggregation" "aggregated ConceptualEntity"

{- originBusinessObject : derived relation obtained by composing
   membershipOfOriginBusinessObject and aggregationOfConceptualEntityOriginBusinessObject
   It directly links an Concept Lineage to the final aggregated ConceptualEntity
   hiding the reifying OriginBusinessObject
-}
originBusinessObject : Linkage ConceptLineage ConceptualEntity
originBusinessObject = membershipOfOriginBusinessObject  ∘  aggregationOfConceptualEntityOriginBusinessObject



-- -------------------------------------------------------------------------------------------- 
{- Business Object Store: -}
-- Aggregate Member : Business Object Store
BusinessObjectStore : ClassOfClassOfBoundedIndividual
BusinessObjectStore = ClassOfBoundedIndividual



--  BusinessObjectStore is subTypeOf IntermediateEntity
st-acb4b83f6245816d-acb4b3f162457d1a : BusinessObjectStore ⊏ₑ IntermediateEntity
st-acb4b83f6245816d-acb4b3f162457d1a = polySubTypeOf-identity

--  BusinessObjectStore is subTypeOf ConceptualEntity
st-acb4b83f6245816d-229b34eb5b3f79d2 : BusinessObjectStore ⊏ₑ ConceptualEntity
st-acb4b83f6245816d-229b34eb5b3f79d2 = polySubTypeOf-identity

-- Membership relation
membershipOfBusinessObjectStore :  Linkage ConceptLineage BusinessObjectStore
membershipOfBusinessObjectStore = make_upwardNestingRelation "businessObjectStore membership" "nested businessObjectStore"

-- Aggregation relation
aggregationOfConceptualEntityBusinessObjectStore :  Linkage BusinessObjectStore ConceptualEntity
aggregationOfConceptualEntityBusinessObjectStore = make_Relation "ConceptualEntity aggregation" "aggregated ConceptualEntity"

{- businessObjectStore : derived relation obtained by composing
   membershipOfBusinessObjectStore and aggregationOfConceptualEntityBusinessObjectStore
   It directly links an Concept Lineage to the final aggregated ConceptualEntity
   hiding the reifying BusinessObjectStore
-}
businessObjectStore : Linkage ConceptLineage ConceptualEntity
businessObjectStore = membershipOfBusinessObjectStore  ∘  aggregationOfConceptualEntityBusinessObjectStore


