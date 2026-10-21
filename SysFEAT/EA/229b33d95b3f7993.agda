{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Concept View: 
A Concept View specifies an aspect of a Conceptual Entity based on the selection of characteristics and relationship of this Conceptual Entity that matter for a particular processing.

Documentation : https://framework.sysfeat.com/pages/229b33d95b3f7993.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.229b33d95b3f7993 where -- ========== Concept View

open import Agda.Primitive
open import SysFEAT.EA.362fc8045b3c3e65 public -- Conceptual Entity Asset
open import SysFEAT.EA.229b34eb5b3f79d2 public -- Conceptual Entity

ConceptView : ClassOfClassOfBoundedIndividual
ConceptView = ClassOfBoundedIndividual


--  ConceptView is subTypeOf ConceptualEntityAsset
st-229b33d95b3f7993-362fc8045b3c3e65 : ConceptView ⊏ₑ ConceptualEntityAsset
st-229b33d95b3f7993-362fc8045b3c3e65 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- View Specification: -}
viewSpecification :  Linkage ConceptView ConceptualEntity
viewSpecification = make_classOfHolonymy "View Specification" "View Specification"


-- -------------------------------------------------------------------------------------------- 
{- Embedding Member: -}
-- Aggregate Member : Embedding Member
EmbeddingMember : ClassOfClassOfBoundedIndividual
EmbeddingMember = ClassOfBoundedIndividual



--  EmbeddingMember is subTypeOf ConceptualEntityAsset
st-dfa4e11c5ebb489a-362fc8045b3c3e65 : EmbeddingMember ⊏ₑ ConceptualEntityAsset
st-dfa4e11c5ebb489a-362fc8045b3c3e65 = polySubTypeOf-identity

-- Membership relation
membershipOfEmbeddingMember :  Linkage ConceptView EmbeddingMember
membershipOfEmbeddingMember = make_upwardNestingRelation "embeddingMember membership" "nested embeddingMember"

-- Aggregation relation
aggregationOfConceptualEntityAssetEmbeddingMember :  Linkage EmbeddingMember ConceptualEntityAsset
aggregationOfConceptualEntityAssetEmbeddingMember = make_Relation "ConceptualEntityAsset aggregation" "aggregated ConceptualEntityAsset"

{- embeddingMember : derived relation obtained by composing
   membershipOfEmbeddingMember and aggregationOfConceptualEntityAssetEmbeddingMember
   It directly links an Concept View to the final aggregated ConceptualEntityAsset
   hiding the reifying EmbeddingMember
-}
embeddingMember : Linkage ConceptView ConceptualEntityAsset
embeddingMember = membershipOfEmbeddingMember  ∘  aggregationOfConceptualEntityAssetEmbeddingMember



-- -------------------------------------------------------------------------------------------- 
{- Referencing Member: -}
-- Aggregate Member : Referencing Member
ReferencingMember : ClassOfClassOfBoundedIndividual
ReferencingMember = ClassOfBoundedIndividual



--  ReferencingMember is subTypeOf ConceptualEntityAsset
st-dfa4e1325ebb4926-362fc8045b3c3e65 : ReferencingMember ⊏ₑ ConceptualEntityAsset
st-dfa4e1325ebb4926-362fc8045b3c3e65 = polySubTypeOf-identity

-- Membership relation
membershipOfReferencingMember :  Linkage ConceptView ReferencingMember
membershipOfReferencingMember = make_upwardNestingRelation "referencingMember membership" "nested referencingMember"

-- Aggregation relation
aggregationOfConceptualEntityAssetReferencingMember :  Linkage ReferencingMember ConceptualEntityAsset
aggregationOfConceptualEntityAssetReferencingMember = make_Relation "ConceptualEntityAsset aggregation" "aggregated ConceptualEntityAsset"

{- referencingMember : derived relation obtained by composing
   membershipOfReferencingMember and aggregationOfConceptualEntityAssetReferencingMember
   It directly links an Concept View to the final aggregated ConceptualEntityAsset
   hiding the reifying ReferencingMember
-}
referencingMember : Linkage ConceptView ConceptualEntityAsset
referencingMember = membershipOfReferencingMember  ∘  aggregationOfConceptualEntityAssetReferencingMember


