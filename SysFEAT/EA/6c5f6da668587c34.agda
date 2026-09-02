{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Dictionary Lexical Scope: 
A Dictionary Lexical Scope is a kind of Information Lexical Scope for Dictionary Blocks.
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.6c5f6da668587c34 where -- ========== Dictionary Lexical Scope

open import Agda.Primitive
open import SysFEAT.SOF.6c5f808b68587e49 public -- Information Lexical Scope

DictionaryLexicalScope : ∀ (u : Level) → ClassOfMixedOrderEntity u
DictionaryLexicalScope u = MixedOrderEntity u

--  DictionaryLexicalScope is subTypeOf InformationLexicalScope
st-6bf191b16859b6e0 : ∀ {u v} → (DictionaryLexicalScope u) ⊏⋆ₑ (InformationLexicalScope v)
st-6bf191b16859b6e0 = trivialPolySubTypeOfEntity

-- == Relationships =======================
