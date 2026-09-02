{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Conceptual Entity Asset: 
A Conceptual Entity Asset is the representation of any type of tangible or intanglible resource, or its respective state, that is critical for comprehending an enterprise, including its data, resources, and activities.Similar to any Information Asset, a Conceptual Entity Asset can be classified into three categories:1)  Conceptual Entitys denote entities that can change over time.2) Event Concepts embody the temporal boundaries associated with Conceptual Entitys.3) Concept Propertys represent immutable characteristics of Conceptual Entitys.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.362fc8045b3c3e65 where -- ========== Conceptual Entity Asset

open import Agda.Primitive
open import SysFEAT.EA.4aebd76d69641638 public -- Conceptual Element
open import SysFEAT.EA.6bf190796859b4ff public -- Dictionary Block
open import SysFEAT.SOF.e6f250185f772ee1 public -- Information Asset
open import SysFEAT.EA.cb94ec53681855c2 public -- Conceptual Functional Asset

ConceptualEntityAsset : ClassOfClassOfBoundedIndividual
ConceptualEntityAsset = ClassOfBoundedIndividual

--  ConceptualEntityAsset withAspect ConceptualElement
st-ecdf0cf2682264fc : ConceptualEntityAsset ⊏ₐₑ (ConceptualElement (lsuc(lzero)))
st-ecdf0cf2682264fc = polySubTypeOf-identity

--  ConceptualEntityAsset withAspect DictionaryBlock
st-7db00d1361f99f3d : ConceptualEntityAsset ⊏ₐₑ (DictionaryBlock (lsuc(lzero)))
st-7db00d1361f99f3d = polySubTypeOf-identity

--  ConceptualEntityAsset is subTypeOf InformationAsset
st-fa41fca65fd95078 : ConceptualEntityAsset ⊏ₑ InformationAsset
st-fa41fca65fd95078 = polySubTypeOf-identity

--  ConceptualEntityAsset is subTypeOf ConceptualFunctionalAsset
st-ecdff7ec68214e8c : ConceptualEntityAsset ⊏ₑ ConceptualFunctionalAsset
st-ecdff7ec68214e8c = polySubTypeOf-identity

-- == Relationships =======================

{- Specialized Business Object: -}
specializedBusinessObject :  Linkage ConceptualEntityAsset ConceptualEntityAsset
specializedBusinessObject = make_subTypeOf "Specialized Business Object" "specializedBusinessObject"

postulate -- specializedBusinessObject is subTypeOf specializedInformationAsset
  st-325a375966f33f85-325a372e66f33bca  : specializedBusinessObject   ⊏⋆ᵣ  specializedInformationAsset 

{- Conceptual Asset Relationship: -}
-- Aggregate Member : Conceptual Asset Relationship
ConceptualAssetRelationship : ClassOfClassOfIndividual
ConceptualAssetRelationship = ClassOfIndividual

-- Membership relation
membershipOfConceptualAssetRelationship :  Linkage ConceptualEntityAsset ConceptualAssetRelationship
membershipOfConceptualAssetRelationship = membershipOfAggregateMember

-- Aggregation relation
aggregationOfConceptualEntityAssetConceptualAssetRelationship :  Linkage ConceptualAssetRelationship ConceptualEntityAsset
aggregationOfConceptualEntityAssetConceptualAssetRelationship = aggregationOfBuildingBlock

{- conceptualAssetRelationship : derived relation obtained by composing
   membershipOfConceptualAssetRelationship and aggregationOfConceptualEntityAssetConceptualAssetRelationship
   It directly links an Conceptual Entity Asset to the final aggregated ConceptualEntityAsset
   hiding the reifying ConceptualAssetRelationship
-}
conceptualAssetRelationship : Linkage ConceptualEntityAsset ConceptualEntityAsset
conceptualAssetRelationship = membershipOfConceptualAssetRelationship  ∘  aggregationOfConceptualEntityAssetConceptualAssetRelationship
