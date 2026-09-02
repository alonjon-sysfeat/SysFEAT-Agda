{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Concept Designation: 
In a given Dictionary Vocabulary, a Concept Designation is a terminological representation that associates a Term to its corresponding Conceptual Element.Example:The term  Effeil Tower  is used in English to designate the metalic tower located near the Seine, constructed by Gustave Eiffel.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.4aebd80e6964192e where -- ========== Concept Designation

open import Agda.Primitive
open import SysFEAT.UpperOntology.f41700e868ee0f29 public -- First Order Entity
open import SysFEAT.EA.3f066af36858706e public -- Vocabulary Block
open import SysFEAT.EA.4aebda1369641bea public -- Language
open import SysFEAT.EA.4aebd72b696415c6 public -- Term
open import SysFEAT.EA.4aebd76d69641638 public -- Conceptual Element

ConceptDesignation : ∀ (u : Level) → ClassOfMixedOrderEntity u
ConceptDesignation u = MixedOrderEntity u

--  ConceptDesignation is subTypeOf FirstOrderEntity
st-4aebd91969641a34 : ∀ {u} → (ConceptDesignation u) ⊏ₘₑ FirstOrderEntity
st-4aebd91969641a34 = polySubTypeOf-identity

--  ConceptDesignation is subTypeOf VocabularyBlock
st-4aebd96069641aeb : ∀ {u v} → (ConceptDesignation u) ⊏⋆ₑ (VocabularyBlock v)
st-4aebd96069641aeb = trivialPolySubTypeOfEntity

-- == Relationships =======================

{- Designation Language: -}
designationLanguage : ∀ {u v} →  Linkage (ConceptDesignation u) (Language v)
designationLanguage = make_Relation "Designation Language" "designationLanguage"

postulate -- designationLanguage is subTypeOf meronymyRelation
  st-4aebda5d69641c8d-4aeab6186964fd66  : ∀ {u v} → designationLanguage {u} {v}  ⊏⋆ᵣ  meronymyRelation

{- Designating Term: -}
designatingTerm : ∀ {u v} →  Linkage (ConceptDesignation u) (Term v)
designatingTerm = make_Relation "Designating Term" "designatingTerm"

postulate -- designatingTerm is subTypeOf holonymyRelation
  st-4aebdb4469641dc0-c2f2c6ce66e90be7  : ∀ {u v} → designatingTerm {u} {v}  ⊏⋆ᵣ  holonymyRelation

{- Designation: -}
designation : ∀ {u v} →  Linkage (ConceptDesignation u) (ConceptualElement v)
designation = make_Relation "Designation" "designation"

postulate -- designation is subTypeOf existentialDependency
  st-4aebdcf669642033-cbfce7da685358e9  : ∀ {u v} → designation {u} {v}  ⊏⋆ᵣ  existentialDependency {u} {v}
