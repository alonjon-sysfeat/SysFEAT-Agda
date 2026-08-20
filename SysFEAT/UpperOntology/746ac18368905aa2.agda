{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Class of Property: 
A Class of Property is an abstract Class of Individual, which purpose is to qualify Bounded Individuals and their classes (Class of Bounded Individual).Because instances of Class of Property are Propertys, they do not have proper instances: there are no instances of  red , but there are red Bounded Individuals.Example:- 10 degree celcius;- Ability to cook (a capability);- Red;- 12 kg;-  Top Secret (TS) confidentiality.- 7/7 availability
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.UpperOntology.746ac18368905aa2 where -- ========== Class of Property

open import Agda.Primitive
open import SysFEAT.UpperOntology.6aa8cbcb65b32971 public -- Class of Individual
open import SysFEAT.UpperOntology.23d5a9ea68513ced public -- Building Block
open import SysFEAT.UpperOntology.87d3062666e33965 public -- Property Type

ClassOfProperty : PropertyType
ClassOfProperty = ClassOfIndividual

--  ClassOfProperty is subTypeOf ClassOfIndividual
st-744b93fa5fbfe28c : ClassOfProperty ⊏ₑ ClassOfIndividual
st-744b93fa5fbfe28c = polySubTypeOf-identity

--  ClassOfProperty withAspect BuildingBlock
st-4299b1aa6a853e9a : ClassOfProperty ⊏ₐₑ (BuildingBlock (lsuc(lzero)))
st-4299b1aa6a853e9a = polySubTypeOf-identity

-- == Relationships =======================

{- Property Classification: 
Property Classification is a classification of Class of Propertys by Property Types.
-}
propertyClassification :  Linkage ClassOfProperty PropertyType
propertyClassification = make_instanceOf "Property Classification" "propertyClassification"

postulate -- propertyClassification is subTypeOf instanceOfEntity
  st-1976247d68925c3e-34a453a068f7a3ef  : propertyClassification   ⊏⋆ᵣ  instanceOfEntity {lzero} {lsuc(lzero)}

{- Specialized Property: 
Specialization relationship between Class of Property(ies).
-}
specializedProperty :  Linkage ClassOfProperty ClassOfProperty
specializedProperty = make_subTypeOf "Specialized Property" "specializedProperty"

postulate -- specializedProperty is subTypeOf specializedClassOfIndividual
  st-1662112a68925f90-e429632e66ec72ab  : specializedProperty   ⊏⋆ᵣ  specializedClassOfIndividual 
