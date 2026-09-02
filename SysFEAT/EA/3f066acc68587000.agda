{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Dictionary Vocabulary: 
A Dictionary Vocabulary is a Model Lexical Scope that provides, for a given Business Dictionary, designation to concepts: Terms, Concept Name and Concept Synonyms.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.3f066acc68587000 where -- ========== Dictionary Vocabulary

open import Agda.Primitive
open import SysFEAT.SOF.0eb95db46855bdd5 public -- Model Lexical Scope
open import SysFEAT.EA.3f066af36858706e public -- Vocabulary Block

DictionaryVocabulary : ∀ (u : Level) → ClassOfMixedOrderEntity u
DictionaryVocabulary u = MixedOrderEntity u

--  DictionaryVocabulary is subTypeOf ModelLexicalScope
st-3f066ae068587032 : ∀ {u v} → (DictionaryVocabulary u) ⊏⋆ₑ (ModelLexicalScope v)
st-3f066ae068587032 = trivialPolySubTypeOfEntity

-- == Relationships =======================

{- Packaged Vocabulary Block: -}
packagedVocabularyBlock : ∀ {u v} →  Linkage (DictionaryVocabulary u) (VocabularyBlock v)
packagedVocabularyBlock = make_nestingRelation "Packaged Vocabulary Block" "packagedVocabularyBlock"

postulate -- packagedVocabularyBlock is subTypeOf scopedDictionaryBlock
  st-6c5f6d3968587b98-6bf192976859b8ba  : ∀ {u v} → packagedVocabularyBlock {u} {v}  ⊏⋆ᵣ  scopedDictionaryBlock {u} {v}
