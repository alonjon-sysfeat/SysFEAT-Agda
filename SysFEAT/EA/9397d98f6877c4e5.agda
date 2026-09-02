{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Dictionary Lexical Block: 
A Dictionary Lexical Block is an Information Block that is part of a Business Dictionary.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.9397d98f6877c4e5 where -- ========== Dictionary Lexical Block

open import Agda.Primitive
open import SysFEAT.SOF.6c5f80e468587f06 public -- Information Block

DictionaryLexicalBlock : ∀ (u : Level) → ClassOfMixedOrderEntity u
DictionaryLexicalBlock u = MixedOrderEntity u

--  DictionaryLexicalBlock is subTypeOf InformationBlock
st-6bf190ab6859b569 : ∀ {u v} → (DictionaryLexicalBlock u) ⊏⋆ₑ (InformationBlock v)
st-6bf190ab6859b569 = trivialPolySubTypeOfEntity

-- == Relationships =======================
