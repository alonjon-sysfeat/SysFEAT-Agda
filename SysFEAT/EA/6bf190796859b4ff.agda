{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Dictionary Block: 
A Dictionary Block is an Dictionary Block involved in informative descriptions of the enterprise.Dictionary Blocks range from Conceptual Entity Assets to Concept Domain Maps..Conceptual Entity Assets are managed in Data Catalogs.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.6bf190796859b4ff where -- ========== Dictionary Block

open import Agda.Primitive
open import SysFEAT.EA.9397d98f6877c4e5 public -- Dictionary Lexical Block

DictionaryBlock : ∀ (u : Level) → ClassOfMixedOrderEntity u
DictionaryBlock u = MixedOrderEntity u

--  DictionaryBlock is subTypeOf DictionaryLexicalBlock
st-9397d9c16877c56a : ∀ {u v} → (DictionaryBlock u) ⊏⋆ₑ (DictionaryLexicalBlock v)
st-9397d9c16877c56a = trivialPolySubTypeOfEntity

-- == Relationships =======================
