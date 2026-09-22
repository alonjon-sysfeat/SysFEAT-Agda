{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Conceptual Entity Asset: 
A Conceptual Entity Asset is the representation of any type of tangible or intanglible resource, or its respective state, that is critical for comprehending an enterprise, including its data, resources, and activities.Similar to any Information Asset, a Conceptual Entity Asset can be classified into three categories:1)  Conceptual Entitys denote entities that can change over time.2) Event Concepts embody the temporal boundaries associated with Conceptual Entitys.3) Concept Propertys represent immutable characteristics of Conceptual Entitys.

Documentation : https://framework.sysfeat.com/pages/362fc8045b3c3e65.htm

External references:
  OMG - UAF - OperationalInformation: https://www.omg.org/spec/UAF/1.2/Beta1/DMM/PDF#OperationalInformation
  Russell Ackoff - Choice & Communication - Concept: ../resources/external-references/Ackoff-1967-Choice-Communication-and-Conflict.pdf#Concept
  OMG - BACM - Business Object: https://www.omg.org/spec/BACM/1.0/PDF#page=47
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
st-362fc8045b3c3e65-4aebd76d69641638 : ConceptualEntityAsset ⊏ₐₑ (ConceptualElement (lsuc(lzero)))
st-362fc8045b3c3e65-4aebd76d69641638 = polySubTypeOf-identity

--  ConceptualEntityAsset withAspect DictionaryBlock
st-362fc8045b3c3e65-6bf190796859b4ff : ConceptualEntityAsset ⊏ₐₑ (DictionaryBlock (lsuc(lzero)))
st-362fc8045b3c3e65-6bf190796859b4ff = polySubTypeOf-identity

--  ConceptualEntityAsset is subTypeOf InformationAsset
st-362fc8045b3c3e65-e6f250185f772ee1 : ConceptualEntityAsset ⊏ₑ InformationAsset
st-362fc8045b3c3e65-e6f250185f772ee1 = polySubTypeOf-identity

--  ConceptualEntityAsset is subTypeOf ConceptualFunctionalAsset
st-362fc8045b3c3e65-cb94ec53681855c2 : ConceptualEntityAsset ⊏ₑ ConceptualFunctionalAsset
st-362fc8045b3c3e65-cb94ec53681855c2 = polySubTypeOf-identity


-- == Relations =======================

-- -------------------------------------------------------------------------------------------- 
{- Specialized Business Object: -}
specializedBusinessObject :  Linkage ConceptualEntityAsset ConceptualEntityAsset
specializedBusinessObject = make_subTypeOf "Specialized Business Object" "Specialized Business Object"

postulate -- specializedBusinessObject is subTypeOf specializedInformationAsset
  st-325a375966f33f85-325a372e66f33bca  : specializedBusinessObject  ⊏⋆ᵣ  specializedInformationAsset

-- -------------------------------------------------------------------------------------------- 
{- Conceptual Asset Relationship: -}
-- Aggregate Member : Conceptual Asset Relationship
ConceptualAssetRelationship : ClassOfClassOfBoundedIndividual
ConceptualAssetRelationship = ClassOfBoundedIndividual



--  ConceptualAssetRelationship is subTypeOf InformationAssetRelationship
st-18eb202f5fdb706c-18eb1f335fdb6e7f : ConceptualAssetRelationship ⊏ₑ InformationAssetRelationship
st-18eb202f5fdb706c-18eb1f335fdb6e7f = polySubTypeOf-identity

--  ConceptualAssetRelationship is subTypeOf ConceptualEntityAsset
st-18eb202f5fdb706c-362fc8045b3c3e65 : ConceptualAssetRelationship ⊏ₑ ConceptualEntityAsset
st-18eb202f5fdb706c-362fc8045b3c3e65 = polySubTypeOf-identity

-- Membership relation
membershipOfConceptualAssetRelationship :  Linkage ConceptualEntityAsset ConceptualAssetRelationship
membershipOfConceptualAssetRelationship = make_upwardNestingRelation "conceptualAssetRelationship membership" "nested conceptualAssetRelationship"

-- Aggregation relation
aggregationOfConceptualEntityAssetConceptualAssetRelationship :  Linkage ConceptualAssetRelationship ConceptualEntityAsset
aggregationOfConceptualEntityAssetConceptualAssetRelationship = make_Relation "ConceptualEntityAsset aggregation" "aggregated ConceptualEntityAsset"

{- conceptualAssetRelationship : derived relation obtained by composing
   membershipOfConceptualAssetRelationship and aggregationOfConceptualEntityAssetConceptualAssetRelationship
   It directly links an Conceptual Entity Asset to the final aggregated ConceptualEntityAsset
   hiding the reifying ConceptualAssetRelationship
-}
conceptualAssetRelationship : Linkage ConceptualEntityAsset ConceptualEntityAsset
conceptualAssetRelationship = membershipOfConceptualAssetRelationship  ∘  aggregationOfConceptualEntityAssetConceptualAssetRelationship


