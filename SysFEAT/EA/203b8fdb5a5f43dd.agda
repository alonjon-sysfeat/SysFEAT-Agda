{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Concept Domain Map: 
A Concept Domain Map is a top level assembly of Concept Domains that defines the scope of information that Management System is responsible of.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.203b8fdb5a5f43dd where -- ========== Concept Domain Map

open import Agda.Primitive
open import SysFEAT.EA.6bf190796859b4ff public -- Dictionary Block
open import SysFEAT.SOF.d6cd2d8e5ab98edc public -- Information Map
open import SysFEAT.EA.203b8ff05a5f43fe public -- Concept Domain

ConceptDomainMap : ClassOfClassOfBoundedIndividual
ConceptDomainMap = ClassOfBoundedIndividual

--  ConceptDomainMap withAspect DictionaryBlock
st-7db00d0561f99eb1 : ConceptDomainMap ⊏ₐₑ (DictionaryBlock (lsuc(lzero)))
st-7db00d0561f99eb1 = polySubTypeOf-identity

--  ConceptDomainMap is subTypeOf InformationMap
st-d2a7d54f5ee86a7a : ConceptDomainMap ⊏ₑ InformationMap
st-d2a7d54f5ee86a7a = polySubTypeOf-identity

-- == Relationships =======================

{- Sub Activity Domain: -}
-- Aggregate Member : Sub Activity Domain
SubActivityDomain : ClassOfClassOfIndividual
SubActivityDomain = ClassOfIndividual

-- Membership relation
membershipOfSubActivityDomain :  Linkage ConceptDomainMap SubActivityDomain
membershipOfSubActivityDomain = membershipOfAggregateMember

-- Aggregation relation
aggregationOfConceptDomainSubActivityDomain :  Linkage SubActivityDomain ConceptDomain
aggregationOfConceptDomainSubActivityDomain = aggregationOfBuildingBlock

{- subActivityDomain : derived relation obtained by composing
   membershipOfSubActivityDomain and aggregationOfConceptDomainSubActivityDomain
   It directly links an Concept Domain Map to the final aggregated ConceptDomain
   hiding the reifying SubActivityDomain
-}
subActivityDomain : Linkage ConceptDomainMap ConceptDomain
subActivityDomain = membershipOfSubActivityDomain  ∘  aggregationOfConceptDomainSubActivityDomain

{- External Concept Domain Member: -}
-- Aggregate Member : External Concept Domain Member
ExternalConceptDomainMember : ClassOfClassOfIndividual
ExternalConceptDomainMember = ClassOfIndividual

-- Membership relation
membershipOfExternalConceptDomainMember :  Linkage ConceptDomainMap ExternalConceptDomainMember
membershipOfExternalConceptDomainMember = membershipOfAggregateMember

-- Aggregation relation
aggregationOfConceptDomainExternalConceptDomainMember :  Linkage ExternalConceptDomainMember ConceptDomain
aggregationOfConceptDomainExternalConceptDomainMember = aggregationOfBuildingBlock

{- externalConceptDomainMember : derived relation obtained by composing
   membershipOfExternalConceptDomainMember and aggregationOfConceptDomainExternalConceptDomainMember
   It directly links an Concept Domain Map to the final aggregated ConceptDomain
   hiding the reifying ExternalConceptDomainMember
-}
externalConceptDomainMember : Linkage ConceptDomainMap ConceptDomain
externalConceptDomainMember = membershipOfExternalConceptDomainMember  ∘  aggregationOfConceptDomainExternalConceptDomainMember
