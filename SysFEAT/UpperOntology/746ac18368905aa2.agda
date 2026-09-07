{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Property: 
A Property is an abstract Class of Individual, which purpose is to qualify Bounded Individuals and their classes (Class of Bounded Individual).Because instances of Property are Property Values, they do not have proper instances: there are no instances of  red , but there are red Bounded Individuals.Example:- 10 degree celcius;- Ability to cook (a capability);- Red;- 12 kg;-  Top Secret (TS) confidentiality.- 7/7 availability

Documentation : https://framework.sysfeat.com/pages/746ac18368905aa2.htm

External references:
  Matthew West - Ontology meets Business - Properties: ../resources/external-references/Matthew-West-2009_Ontology-meets-business.pdf#page=27
  Russell Ackoff - Choice & Communication - Property: ../resources/external-references/Ackoff-1967-Choice-Communication-and-Conflict.pdf#Property
  OMG - SBVR - Categorization: https://www.omg.org/spec/SBVR/1.5/PDF#page=92
  WordNet - Property: https://en-word.net/ili/i62823
  ISO 15926 - Property: https://15926.blog/topics/data-model/index.htm#Property
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.746ac18368905aa2 where -- ========== Property

open import Agda.Primitive
open import SysFEAT.UpperOntology.6aa8cbcb65b32971 public -- Class of Individual
open import SysFEAT.UpperOntology.23d5a9ea68513ced public -- Building Block
open import SysFEAT.UpperOntology.87d3062666e33965 public -- Property Type

Property : PropertyType
Property = ClassOfIndividual

--  Property is subTypeOf ClassOfIndividual
st-744b93fa5fbfe28c : Property ⊏ₑ ClassOfIndividual
st-744b93fa5fbfe28c = polySubTypeOf-identity

--  Property withAspect BuildingBlock
st-4299b1aa6a853e9a : Property ⊏ₐₑ (BuildingBlock (lsuc(lzero)))
st-4299b1aa6a853e9a = polySubTypeOf-identity

-- == Relationships =======================

{- Property Classification: 
Property Classification is a classification of Propertys by Property Types.
-}
propertyClassification :  Linkage Property PropertyType
propertyClassification = make_instanceOf "Property Classification" "Property Classification"

postulate -- propertyClassification is subTypeOf instanceOfEntity
  st-1976247d68925c3e-34a453a068f7a3ef  : propertyClassification   ⊏⋆ᵣ  instanceOfEntity {lzero} {lsuc(lzero)}

{- Specialized Property: 
Specialization relationship between Property(ies).
-}
specializedProperty :  Linkage Property Property
specializedProperty = make_subTypeOf "Property Specialization" "Specialized Property"

postulate -- specializedProperty is subTypeOf specializedClassOfIndividual
  st-1662112a68925f90-e429632e66ec72ab  : specializedProperty   ⊏⋆ᵣ  specializedClassOfIndividual 
