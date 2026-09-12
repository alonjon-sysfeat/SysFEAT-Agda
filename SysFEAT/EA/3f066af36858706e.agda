{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Vocabulary Block: 
A Vocabulary Block is a Dictionary Lexical Block used in the designation of Conceptual Elements.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.3f066af36858706e where -- ========== Vocabulary Block

open import Agda.Primitive
open import SysFEAT.EA.9397d98f6877c4e5 public -- Dictionary Lexical Block

VocabularyBlock : ∀ (u : Level) → ClassOfMixedOrderEntity u
VocabularyBlock u = MixedOrderEntity u

--  VocabularyBlock is subTypeOf DictionaryLexicalBlock
st-3f066b01685870bb : ∀ {u v} → (VocabularyBlock u) ⊏⋆ₑ (DictionaryLexicalBlock v)
st-3f066b01685870bb = trivialPolySubTypeOfEntity

-- == Relationships =======================
