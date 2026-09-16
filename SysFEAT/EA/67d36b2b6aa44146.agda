{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Concept Designation: 
In a given Dictionary Vocabulary, a Concept Designation is a terminological representation that associates a Term to its corresponding Conceptual Element.Example:The term  Effeil Tower  is used in English to designate the metalic tower located near the Seine, constructed by Gustave Eiffel.

Documentation : https://framework.sysfeat.com/pages/67d36b2b6aa44146.htm

External references:
  OMG - SBVR - Designation: https://www.omg.org/spec/SBVR/1.5/PDF#page=60
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.67d36b2b6aa44146 where -- ========== Concept Designation

open import Agda.Primitive
open import SysFEAT.UpperOntology.5425a2df6aa225cf public -- First Order Entity
open import SysFEAT.EA.3f066af36858706e public -- Vocabulary Block
open import SysFEAT.EA.67d36c2a6aa4424e public -- Language
open import SysFEAT.EA.4aebd76d69641638 public -- Conceptual Element

ConceptDesignation : ClassOfIndividual
ConceptDesignation = Individual

--  ConceptDesignation is subTypeOf FirstOrderEntity
st-67d36b2b6aa44146-5425a2df6aa225cf : ConceptDesignation ⊏ₑ FirstOrderEntity
st-67d36b2b6aa44146-5425a2df6aa225cf = polySubTypeOf-identity

--  ConceptDesignation withAspect VocabularyBlock
st-67d36b2b6aa44146-3f066af36858706e : ConceptDesignation ⊏ₐₑ (VocabularyBlock lzero)
st-67d36b2b6aa44146-3f066af36858706e = polySubTypeOf-identity

-- == Relationships =======================

{- Designation Language: -}
designationLanguage :  Linkage ConceptDesignation Language
designationLanguage = make_Relation "Designation Language" "Designation Language"

postulate -- designationLanguage is subTypeOf meronymyRelation
  st-4aebda5d69641c8d-4aeab6186964fd66  : designationLanguage   ⊏⋆ᵣ  meronymyRelation 

{- Designation: -}
designation : ∀ {u} →  Linkage ConceptDesignation (ConceptualElement u)
designation = make_Relation "Designation" "Designation"

postulate -- designation is subTypeOf existentialDependency
  st-4aebdcf669642033-cbfce7da685358e9  : designation  {lzero}  ⊏⋆ᵣ  existentialDependency {lzero} {lzero}
