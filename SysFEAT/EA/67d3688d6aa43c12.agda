{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Dictionary: 
A Business Dictionary is a cluster of Business Dictionary Blocks whose existence and meaning are defined by the Business Dictionary.It comprises the Concepts,  Event Concepts along with the terminology (Terms) used to describe this branch of knowledge or discipline.A Business Dictionary is both:1. A lexical scope (Dictionary Lexical Scope): the meaning of a Dictionary Block can only be determined by the Business Dictionary where it was created.2. A universe of discourse: the complete range of Conceptual Objects that are expressed, assumed, or implied in a branch of knowledge, a discipline or a field of study.Example: - The Harward Medical Dictionary of Health Terms :

Documentation : https://framework.sysfeat.com/pages/67d3688d6aa43c12.htm

 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.67d3688d6aa43c12 where -- ========== Business Dictionary

open import Agda.Primitive
open import SysFEAT.EA.6c5f6da668587c34 public -- Dictionary Lexical Scope
open import SysFEAT.EA.3f066acc68587000 public -- Dictionary Vocabulary
open import SysFEAT.EA.6bf190796859b4ff public -- Dictionary Block

BusinessDictionary : ClassOfIndividual
BusinessDictionary = Individual

--  BusinessDictionary withAspect DictionaryLexicalScope
st-67d3688d6aa43c12-6c5f6da668587c34 : BusinessDictionary ⊏ₐₑ (DictionaryLexicalScope lzero)
st-67d3688d6aa43c12-6c5f6da668587c34 = polySubTypeOf-identity

--  BusinessDictionary withAspect DictionaryVocabulary
st-67d3688d6aa43c12-3f066acc68587000 : BusinessDictionary ⊏ₐₑ (DictionaryVocabulary lzero)
st-67d3688d6aa43c12-3f066acc68587000 = polySubTypeOf-identity

-- == Relationships =======================

{- Packaged Dictionary Asset: -}
packagedDictionaryAsset : ∀ {u} →  Linkage BusinessDictionary (DictionaryBlock u)
packagedDictionaryAsset = make_nestingRelation "Packaged Dictionary Asset" "Packaged Dictionary Asset"

postulate -- packagedDictionaryAsset is subTypeOf scopedDictionaryBlock
  st-9397da2b6877c770-6bf192976859b8ba  : packagedDictionaryAsset  {lzero}  ⊏⋆ᵣ  scopedDictionaryBlock {lzero}

{- Imported Business Dictionary: 
The Imported Business Dictionary relationship extends the Dictionary Lexical Scope of a Business Dictionary to Dictionary Blocks of the imported Business Dictionary.
-}
importedBusinessDictionary :  Linkage BusinessDictionary BusinessDictionary
importedBusinessDictionary = make_Relation "Imported Business Dictionary" "Imported Business Dictionary"

