{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Concept Domain: 
A Concept Domain is a subset of the Concepts of a Business Dictionary that are relevant to an Operating Domain.For instance, a  Sales Concept Domain  comprises at least the Concepts of  Customer  and  Order  while a standard  Marketing Concept Domain  comprises at least the Concepts of  Market Segment ,  Product  and  Value Proposition .
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
st-7db00d0c61f99ef7 : ConceptDomain ⊏ₐₑ (DictionaryBlock (lsuc(lzero)))
st-7db00d0c61f99ef7 = polySubTypeOf-identity

--  ConceptDomain is subTypeOf InformationDomain
st-d2a7d5405ee869d8 : ConceptDomain ⊏ₑ InformationDomain
st-d2a7d5405ee869d8 = polySubTypeOf-identity

-- == Relationships =======================

{- Sub Activity Domain: -}
-- Aggregate Member : Sub Activity Domain
SubActivityDomain : ClassOfClassOfIndividual
SubActivityDomain = ClassOfIndividual

-- Membership relation
membershipOfSubActivityDomain :  Linkage ConceptDomain SubActivityDomain
membershipOfSubActivityDomain = membershipOfAggregateMember

-- Aggregation relation
aggregationOfConceptDomainSubActivityDomain :  Linkage SubActivityDomain ConceptDomain
aggregationOfConceptDomainSubActivityDomain = aggregationOfBuildingBlock

{- subActivityDomain : derived relation obtained by composing
   membershipOfSubActivityDomain and aggregationOfConceptDomainSubActivityDomain
   It directly links an Concept Domain to the final aggregated ConceptDomain
   hiding the reifying SubActivityDomain
-}
subActivityDomain : Linkage ConceptDomain ConceptDomain
subActivityDomain = membershipOfSubActivityDomain  ∘  aggregationOfConceptDomainSubActivityDomain

{- Domain Concept: -}
-- Aggregate Member : Domain Concept
DomainConcept : ClassOfClassOfIndividual
DomainConcept = ClassOfIndividual

-- Membership relation
membershipOfDomainConcept :  Linkage ConceptDomain DomainConcept
membershipOfDomainConcept = membershipOfAggregateMember

-- Aggregation relation
aggregationOfConceptualEntityAssetDomainConcept :  Linkage DomainConcept ConceptualEntityAsset
aggregationOfConceptualEntityAssetDomainConcept = aggregationOfBuildingBlock

{- domainConcept : derived relation obtained by composing
   membershipOfDomainConcept and aggregationOfConceptualEntityAssetDomainConcept
   It directly links an Concept Domain to the final aggregated ConceptualEntityAsset
   hiding the reifying DomainConcept
-}
domainConcept : Linkage ConceptDomain ConceptualEntityAsset
domainConcept = membershipOfDomainConcept  ∘  aggregationOfConceptualEntityAssetDomainConcept
