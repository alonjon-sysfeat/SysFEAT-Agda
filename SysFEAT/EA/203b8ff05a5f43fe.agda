{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Concept Domain: 
A Concept Domain is a subset of the Concepts of a Business Dictionary that are relevant to an Operating Domain.For instance, a  Sales Concept Domain  comprises at least the Concepts of  Customer  and  Order  while a standard  Marketing Concept Domain  comprises at least the Concepts of  Market Segment ,  Product  and  Value Proposition .

Documentation : https://framework.sysfeat.com/pages/203b8ff05a5f43fe.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.203b8ff05a5f43fe where -- ========== Concept Domain

open import Agda.Primitive
open import SysFEAT.EA.6bf190796859b4ff public -- Dictionary Block
open import SysFEAT.SOF.d6cd116d5ab97525 public -- Information Domain
open import SysFEAT.EA.362fc8045b3c3e65 public -- Conceptual Entity Asset

ConceptDomain : ClassOfClassOfBoundedIndividual
ConceptDomain = ClassOfBoundedIndividual

--  ConceptDomain withAspect DictionaryBlock
st-203b8ff05a5f43fe-6bf190796859b4ff : ConceptDomain ⊏ₐₑ (DictionaryBlock (lsuc(lzero)))
st-203b8ff05a5f43fe-6bf190796859b4ff = polySubTypeOf-identity

--  ConceptDomain is subTypeOf InformationDomain
st-203b8ff05a5f43fe-d6cd116d5ab97525 : ConceptDomain ⊏ₑ InformationDomain
st-203b8ff05a5f43fe-d6cd116d5ab97525 = polySubTypeOf-identity

-- == Relationships =======================

{- Sub Activity Domain: -}
-- Aggregate Member : Sub Activity Domain
SubActivityDomain : ClassOfClassOfIndividual
SubActivityDomain = ClassOfIndividual

-- Membership relation
membershipOfSubActivityDomain :  Linkage ConceptDomain SubActivityDomain
membershipOfSubActivityDomain = make_upwardNestingRelation "subActivityDomain membership" "nested subActivityDomain"

-- Aggregation relation
aggregationOfConceptDomainSubActivityDomain :  Linkage SubActivityDomain ConceptDomain
aggregationOfConceptDomainSubActivityDomain = make_Relation "ConceptDomain aggregation" "aggregated ConceptDomain"

{- subActivityDomain : derived relation obtained by composing
   membershipOfSubActivityDomain and aggregationOfConceptDomainSubActivityDomain
   It directly links an Concept Domain to the final aggregated ConceptDomain
   hiding the reifying SubActivityDomain
-}
subActivityDomain : Linkage ConceptDomain ConceptDomain
subActivityDomain = membershipOfSubActivityDomain  ∘  aggregationOfConceptDomainSubActivityDomain

postulate -- subActivityDomain is subTypeOf subInformationArea
  st-dd25ddee5ebb09a5-24ae4a625ed16c60  : subActivityDomain   ⊏⋆ᵣ  subInformationArea 


{- Domain Concept: -}
-- Aggregate Member : Domain Concept
DomainConcept : ClassOfClassOfIndividual
DomainConcept = ClassOfIndividual

-- Membership relation
membershipOfDomainConcept :  Linkage ConceptDomain DomainConcept
membershipOfDomainConcept = make_upwardNestingRelation "domainConcept membership" "nested domainConcept"

-- Aggregation relation
aggregationOfConceptualEntityAssetDomainConcept :  Linkage DomainConcept ConceptualEntityAsset
aggregationOfConceptualEntityAssetDomainConcept = make_Relation "ConceptualEntityAsset aggregation" "aggregated ConceptualEntityAsset"

{- domainConcept : derived relation obtained by composing
   membershipOfDomainConcept and aggregationOfConceptualEntityAssetDomainConcept
   It directly links an Concept Domain to the final aggregated ConceptualEntityAsset
   hiding the reifying DomainConcept
-}
domainConcept : Linkage ConceptDomain ConceptualEntityAsset
domainConcept = membershipOfDomainConcept  ∘  aggregationOfConceptualEntityAssetDomainConcept

postulate -- domainConcept is subTypeOf domainAsset
  st-e3b8e4595ebb40da-24ae4a405ed16bcf  : domainConcept   ⊏⋆ᵣ  domainAsset 

