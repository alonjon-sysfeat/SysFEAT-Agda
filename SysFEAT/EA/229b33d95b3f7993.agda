{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Concept View: 
A Concept View specifies an aspect of a Conceptual Entity based on the selection of characteristics and relationship of this Conceptual Entity that matter for a particular processing.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.229b33d95b3f7993 where -- ========== Concept View

open import Agda.Primitive
open import SysFEAT.EA.362fc8045b3c3e65 public -- Conceptual Entity Asset
open import SysFEAT.EA.229b34eb5b3f79d2 public -- Conceptual Entity

ConceptView : ClassOfClassOfBoundedIndividual
ConceptView = ClassOfBoundedIndividual

--  ConceptView is subTypeOf ConceptualEntityAsset
st-dfa4e1d35ebb4a34 : ConceptView ⊏ₑ ConceptualEntityAsset
st-dfa4e1d35ebb4a34 = polySubTypeOf-identity

-- == Relationships =======================

{- View Specification: -}
viewSpecification :  Linkage ConceptView ConceptualEntity
viewSpecification = make_classOfHolonymy "View Specification" "viewSpecification"


{- Embedding Member: -}
-- Aggregate Member : Embedding Member
EmbeddingMember : ClassOfClassOfIndividual
EmbeddingMember = ClassOfIndividual

-- Membership relation
membershipOfEmbeddingMember :  Linkage ConceptView EmbeddingMember
membershipOfEmbeddingMember = membershipOfAggregateMember

-- Aggregation relation
aggregationOfConceptualEntityAssetEmbeddingMember :  Linkage EmbeddingMember ConceptualEntityAsset
aggregationOfConceptualEntityAssetEmbeddingMember = aggregationOfBuildingBlock

{- embeddingMember : derived relation obtained by composing
   membershipOfEmbeddingMember and aggregationOfConceptualEntityAssetEmbeddingMember
   It directly links an Concept View to the final aggregated ConceptualEntityAsset
   hiding the reifying EmbeddingMember
-}
embeddingMember : Linkage ConceptView ConceptualEntityAsset
embeddingMember = membershipOfEmbeddingMember  ∘  aggregationOfConceptualEntityAssetEmbeddingMember

{- Referencing Member: -}
-- Aggregate Member : Referencing Member
ReferencingMember : ClassOfClassOfIndividual
ReferencingMember = ClassOfIndividual

-- Membership relation
membershipOfReferencingMember :  Linkage ConceptView ReferencingMember
membershipOfReferencingMember = membershipOfAggregateMember

-- Aggregation relation
aggregationOfConceptualEntityAssetReferencingMember :  Linkage ReferencingMember ConceptualEntityAsset
aggregationOfConceptualEntityAssetReferencingMember = aggregationOfBuildingBlock

{- referencingMember : derived relation obtained by composing
   membershipOfReferencingMember and aggregationOfConceptualEntityAssetReferencingMember
   It directly links an Concept View to the final aggregated ConceptualEntityAsset
   hiding the reifying ReferencingMember
-}
referencingMember : Linkage ConceptView ConceptualEntityAsset
referencingMember = membershipOfReferencingMember  ∘  aggregationOfConceptualEntityAssetReferencingMember
