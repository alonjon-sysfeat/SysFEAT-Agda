{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Concept Synonym: 
A Concept Synonym  is an alternative Concept Designation for a given Dictionary Vocabulary.

Documentation : https://framework.sysfeat.com/pages/67d36da56aa444d7.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.67d36da56aa444d7 where -- ========== Concept Synonym

open import Agda.Primitive
open import SysFEAT.UpperOntology.5425a2df6aa225cf public -- First Order Entity
open import SysFEAT.EA.67d36e746aa44590 public -- Term
open import SysFEAT.EA.4aebd76d69641638 public -- Conceptual Element

ConceptSynonym : ClassOfIndividual
ConceptSynonym = Individual

--  ConceptSynonym is subTypeOf FirstOrderEntity
st-67d36da56aa444d7-5425a2df6aa225cf : ConceptSynonym ⊏ₑ FirstOrderEntity
st-67d36da56aa444d7-5425a2df6aa225cf = polySubTypeOf-identity

-- == Relationships =======================

{- Designating Term: -}
designatingTerm :  Linkage ConceptSynonym Term
designatingTerm = make_Relation "Designating Term" "Designating Term"

postulate -- designatingTerm is subTypeOf existentialDependency
  st-67d373756aa44bf1-cbfce7da685358e9  : designatingTerm   ⊏⋆ᵣ  existentialDependency {lzero} {lzero}

{- Synonym: -}
synonym : ∀ {u} →  Linkage ConceptSynonym (ConceptualElement u)
synonym = make_Relation "Synonym" "Synonym"

postulate -- synonym is subTypeOf designation
  st-4aebdd71696420d6-4aebdcf669642033  : synonym  {lzero}  ⊏⋆ᵣ  designation  {lzero}
