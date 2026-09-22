{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Concept Domain Map: 
A Concept Domain Map is a top level assembly of Concept Domains that defines the scope of information that Management System is responsible of.

Documentation : https://framework.sysfeat.com/pages/203b8fdb5a5f43dd.htm

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
st-203b8fdb5a5f43dd-6bf190796859b4ff : ConceptDomainMap ⊏ₐₑ (DictionaryBlock (lsuc(lzero)))
st-203b8fdb5a5f43dd-6bf190796859b4ff = polySubTypeOf-identity

--  ConceptDomainMap is subTypeOf InformationMap
st-203b8fdb5a5f43dd-d6cd2d8e5ab98edc : ConceptDomainMap ⊏ₑ InformationMap
st-203b8fdb5a5f43dd-d6cd2d8e5ab98edc = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Sub Activity Domain: -}
-- Aggregate Member : Sub Activity Domain
SubActivityDomain : ClassOfClassOfIndividual
SubActivityDomain = ClassOfIndividual


--  SubActivityDomain is subTypeOf InformationDomainMember
st-dd25ddb95ebb089b-dfa4e2865ebb4e38 : SubActivityDomain ⊏ₑ InformationDomainMember
st-dd25ddb95ebb089b-dfa4e2865ebb4e38 = polySubTypeOf-identity

--  SubActivityDomain is subTypeOf ConceptDomain
st-dd25ddb95ebb089b-203b8ff05a5f43fe : SubActivityDomain ⊏ₑ ConceptDomain
st-dd25ddb95ebb089b-203b8ff05a5f43fe = polySubTypeOf-identity

-- Membership relation
membershipOfSubActivityDomain :  Linkage ConceptDomainMap SubActivityDomain
membershipOfSubActivityDomain = make_upwardNestingRelation "subActivityDomain membership" "nested subActivityDomain"

-- Aggregation relation
aggregationOfConceptDomainSubActivityDomain :  Linkage SubActivityDomain ConceptDomain
aggregationOfConceptDomainSubActivityDomain = make_Relation "ConceptDomain aggregation" "aggregated ConceptDomain"

{- subActivityDomain : derived relation obtained by composing
   membershipOfSubActivityDomain and aggregationOfConceptDomainSubActivityDomain
   It directly links an Concept Domain Map to the final aggregated ConceptDomain
   hiding the reifying SubActivityDomain
-}
subActivityDomain : Linkage ConceptDomainMap ConceptDomain
subActivityDomain = membershipOfSubActivityDomain  ∘  aggregationOfConceptDomainSubActivityDomain



-- -------------------------------------------------------------------------------------------- 
{- External Concept Domain Member: -}
-- Aggregate Member : External Concept Domain Member
ExternalConceptDomainMember : ClassOfClassOfIndividual
ExternalConceptDomainMember = ClassOfIndividual


--  ExternalConceptDomainMember is subTypeOf externalInformationArea
st-dd25de465ebb0b45-dfa4e2b35ebb4ee8 : ExternalConceptDomainMember ⊏ₑ externalInformationArea
st-dd25de465ebb0b45-dfa4e2b35ebb4ee8 = polySubTypeOf-identity

--  ExternalConceptDomainMember is subTypeOf ConceptDomain
st-dd25de465ebb0b45-203b8ff05a5f43fe : ExternalConceptDomainMember ⊏ₑ ConceptDomain
st-dd25de465ebb0b45-203b8ff05a5f43fe = polySubTypeOf-identity

-- Membership relation
membershipOfExternalConceptDomainMember :  Linkage ConceptDomainMap ExternalConceptDomainMember
membershipOfExternalConceptDomainMember = make_upwardNestingRelation "externalConceptDomainMember membership" "nested externalConceptDomainMember"

-- Aggregation relation
aggregationOfConceptDomainExternalConceptDomainMember :  Linkage ExternalConceptDomainMember ConceptDomain
aggregationOfConceptDomainExternalConceptDomainMember = make_Relation "ConceptDomain aggregation" "aggregated ConceptDomain"

{- externalConceptDomainMember : derived relation obtained by composing
   membershipOfExternalConceptDomainMember and aggregationOfConceptDomainExternalConceptDomainMember
   It directly links an Concept Domain Map to the final aggregated ConceptDomain
   hiding the reifying ExternalConceptDomainMember
-}
externalConceptDomainMember : Linkage ConceptDomainMap ConceptDomain
externalConceptDomainMember = membershipOfExternalConceptDomainMember  ∘  aggregationOfConceptDomainExternalConceptDomainMember


