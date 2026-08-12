{- ============================== 
   Copyright (c) 2026 SysFEAT - Systemic Framework for Enterprise Architecture & Transformation
   This work is released under the MIT License.
   framework.sysfeat.com

Business Dictionary: 
A Business Dictionary is a cluster of Business Dictionary Blocks whose existence and meaning are defined by the Business Dictionary.It comprises the Concepts,  Event Concepts along with the terminology (Terms) used to describe this branch of knowledge or discipline.A  Business Dictionary is both:1. A lexical scope (Dictionary Lexical Scope): the meaning of a Dictionary Block can only be determined by the  Business Dictionary where it was created.2. A universe of discourse: the complete range of Conceptual Objects that are expressed, assumed, or implied in a branch of knowledge, a discipline or a field of study.Example: - The Harward Medical Dictionary of Health Terms :
 - ============================== -}

{-# OPTIONS --cubical --guardedness #-}

module SysFEAT.EA.6bf191f66859b74b where -- ========== Business Dictionary

open import Agda.Primitive
open import SysFEAT.SOF.6c5f8352685881a1 public -- Information Dictionary
open import SysFEAT.EA.3f066acc68587000 public -- Dictionary Vocabulary
open import SysFEAT.EA.6bf190796859b4ff public -- Dictionary Block

BusinessDictionary : FirstOrderClass
BusinessDictionary = FirstOrderEntity


postulate --  BusinessDictionary is subTypeOf InformationDictionary
  st-6bf192296859b7d4 : BusinessDictionary ⊏ₑ InformationDictionary

postulate --  BusinessDictionary withAspect DictionaryVocabulary
  st-6bf192326859b80e : BusinessDictionary ⊏ₐₑ (DictionaryVocabulary lzero)

-- == Relationships =======================

{- Packaged Dictionary Asset: -}
packagedDictionaryAsset : ∀ {u} →  Linkage BusinessDictionary (DictionaryBlock u)
packagedDictionaryAsset = make_nestingRelation "Packaged Dictionary Asset" "packagedDictionaryAsset"

postulate -- packagedDictionaryAsset is subTypeOf scopedDictionaryBlock
  st-9397da2b6877c770-6bf192976859b8ba  : packagedDictionaryAsset  {lzero}  ⊏⋆ᵣ  scopedDictionaryBlock {lzero}

{- Imported Business Dictionary: 
The Imported Business Dictionary relationship extends the Dictionary Lexical Scope of a Business Dictionary to Dictionary Blocks of the imported Business Dictionary.
-}
importedBusinessDictionary :  Linkage BusinessDictionary BusinessDictionary
importedBusinessDictionary = make_Relation "Imported Business Dictionary" "importedBusinessDictionary"

postulate -- importedBusinessDictionary is subTypeOf importedInformationDictionary
  st-6bf19cf86859bd39-0f64145168598226  : importedBusinessDictionary   ⊏⋆ᵣ  importedInformationDictionary 
